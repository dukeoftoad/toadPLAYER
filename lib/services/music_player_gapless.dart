part of 'music_player_service.dart';

/// Gapless playback: queues the next song on a continuous output, or loads it
/// on a second deck shortly before the current one ends and starts it the
/// moment the current one completes,
/// chained natively where the engine can (see [PlaybackDeck.setNextDeck]).
/// AutoMix replaces it while on. Repeat one and USB output
/// keep the ordinary transition, which loads the next song after the end.
class _MusicGapless {
  _MusicGapless(this.handler);

  /// How long before the end the next song loads.
  static const lead = Duration(seconds: 30);

  final MusicPlayerHandler handler;
  final _pins = <String>{};
  PlaybackDeck? _prepared;
  PlaybackDeck? _queuedDeck;
  PlayableMedia? _next;
  String? _nextPath;
  Duration? _nextDuration;
  double _nextVolume = 1;
  bool _nextIsCopy = false;
  int _nextIndex = -1;
  int _queueRevision = -1;
  int _playGeneration = -1;
  int _generation = 0;
  String? _attempt;
  bool _preparing = false;

  // Crossfade state: the overlap between the current deck and the prepared
  // one, timed by a stopwatch with 50 ms envelope steps.
  bool _crossfading = false;
  Timer? _crossfadeTimer;
  Stopwatch? _crossfadeClock;
  bool _writing = false;

  Set<String> get pinnedPaths => _pins;

  /// Whether an overlap between the current deck and the prepared one is in
  /// flight; a seek must drop it, since the overlap tracks the old position.
  bool get crossfading => _crossfading;

  bool get _enabled {
    final settings = handler._settings;
    // Crossfade rides the same preparation: the next song's deck must exist
    // before the overlap can start.
    return (settings.gaplessPlayback || settings.crossfadePlayback) &&
        !handler._cast.active &&
        (!settings.autoMix || playbackExclusiveOutput.value) &&
        !settings.usbBitPerfect &&
        // Exclusive devices must be fed by their existing output instance.
        (!playbackExclusiveOutput.value || _canQueue) &&
        !handler._player.isDirect &&
        !handler._disposed &&
        handler._sourceReady &&
        handler._repeatMode != AudioServiceRepeatMode.one;
  }

  /// Whether a simple crossfade replaces the native handoff: the prepared
  /// deck starts [crossfadeDuration] before the current song ends and the
  /// two decks swap volumes across the overlap.
  bool get _crossfadeEnabled {
    final settings = handler._settings;
    return settings.crossfadePlayback &&
        !settings.autoMix &&
        !handler._cast.active &&
        !settings.usbBitPerfect &&
        !playbackExclusiveOutput.value &&
        !handler._player.isDirect &&
        !handler._disposed &&
        handler._repeatMode != AudioServiceRepeatMode.one;
  }

  Duration get _crossfadeOverlap =>
      Duration(seconds: handler._settings.crossfadeDuration.clamp(1, 12));

  bool get _canQueue =>
      handler._player is QueuedPlaybackDeck &&
      (handler._player as QueuedPlaybackDeck).canQueueNextSource;

  bool _current(int generation) =>
      generation == _generation &&
      _enabled &&
      _playGeneration == handler._playRequestGeneration &&
      _queueRevision == handler._sessionQueueRevision;

  /// Whether [onPosition] may act on a position near [estimate]: it drops a
  /// prepared song no longer next, and prepares the next one once [lead]
  /// remains. A second of slack keeps the tick that crosses [lead] read.
  /// Keep in step with the early returns of [onPosition].
  bool wantsPosition(Duration estimate) {
    if (_preparing) return false;
    if (_prepared != null || _queuedDeck != null) {
      // A crossfade reads 200 ms ticks so the overlap starts on time; the
      // ordinary handoff needs none once the deck is prepared.
      if (_crossfadeEnabled && _queuedDeck == null && !_crossfading) {
        return true;
      }
      return !_current(_generation);
    }
    if (!_enabled) return false;
    final duration = handler.mediaItem.value?.duration;
    return duration != null &&
        duration > Duration.zero &&
        duration - estimate <= lead + const Duration(seconds: 1) &&
        _attempt !=
            '${handler._playRequestGeneration}:${handler._sessionQueueRevision}';
  }

  void onPosition(Duration position) {
    if (_preparing) return;
    if (_prepared != null || _queuedDeck != null) {
      if (!_current(_generation)) {
        unawaited(cancel());
        return;
      }
      _maybeStartCrossfade(position);
      return;
    }
    if (!_enabled) return;
    final duration = handler.mediaItem.value?.duration;
    if (duration == null ||
        duration <= Duration.zero ||
        duration - position > lead) {
      return;
    }
    final key =
        '${handler._playRequestGeneration}:${handler._sessionQueueRevision}';
    if (_attempt == key) return;
    _attempt = key;
    unawaited(_prepare(duration - position));
  }

  /// Starts the overlap once the current song reaches the crossfade window.
  /// Ticks arrive every 200 ms, so the start may land up to a fifth of a
  /// second late — inaudible against an overlap seconds long.
  void _maybeStartCrossfade(Duration position) {
    if (!_crossfadeEnabled || _crossfading) return;
    // The native queue cannot overlap (the engine owns the transition); only
    // a prepared second deck crossfades.
    if (_prepared == null || _queuedDeck != null) return;
    final duration = handler.mediaItem.value?.duration;
    if (duration == null || duration <= Duration.zero) return;
    final remaining = duration - position;
    if (remaining <= Duration.zero || remaining > _crossfadeOverlap) return;
    unawaited(_startCrossfade());
  }

  /// Starts the prepared deck silently and swaps the two decks' volumes
  /// across the overlap. Pausing, seeking or skipping mid-overlap cancels it
  /// back to the ordinary path.
  Future<void> _startCrossfade() async {
    final incoming = _prepared;
    if (incoming == null || _crossfading) return;
    if (!_current(_generation) ||
        _nextIndex >= handler._media.length ||
        !identical(handler._media[_nextIndex], _next)) {
      await cancel();
      return;
    }
    final generation = _generation;
    final outgoing = handler._player;
    final outgoingVolume = handler._normalizationVolume;
    final incomingVolume = _nextVolume;
    final overlap = _crossfadeOverlap;
    _crossfading = true;
    _crossfadeClock = Stopwatch()..start();
    try {
      await incoming.resume();
    } catch (error) {
      _log.w('Crossfade start failed: $error');
      _crossfading = false;
      _crossfadeClock = null;
      if (generation == _generation) await cancel();
      return;
    }
    if (generation != _generation) {
      _crossfading = false;
      _crossfadeClock = null;
      return;
    }
    _log.d('Crossfade started (${overlap.inSeconds} s overlap)');
    _crossfadeTimer?.cancel();
    _crossfadeTimer = Timer.periodic(const Duration(milliseconds: 50), (_) {
      _crossfadeTick(
        generation,
        outgoing,
        incoming,
        outgoingVolume,
        incomingVolume,
        overlap,
      );
    });
  }

  /// One envelope step: the outgoing deck rides down while the incoming one
  /// rides up; at the end the incoming deck becomes the current song.
  Future<void> _crossfadeTick(
    int generation,
    PlaybackDeck outgoing,
    PlaybackDeck incoming,
    double outgoingVolume,
    double incomingVolume,
    Duration overlap,
  ) async {
    if (_writing) return;
    _writing = true;
    try {
      final clock = _crossfadeClock;
      if (clock == null ||
          generation != _generation ||
          handler._disposed ||
          handler._settings.crossfadePlayback == false) {
        unawaited(_abortCrossfade());
        return;
      }
      final t = (clock.elapsedMicroseconds / overlap.inMicroseconds).clamp(
        0.0,
        1.0,
      );
      try {
        await outgoing.setVolume(outgoingVolume * (1 - t));
        await incoming.setVolume(incomingVolume * t);
      } catch (error) {
        _log.w('Crossfade volume failed: $error');
        unawaited(_abortCrossfade());
        return;
      }
      if (t >= 1.0) {
        _crossfadeTimer?.cancel();
        _crossfadeTimer = null;
        await handoff();
      }
    } finally {
      _writing = false;
    }
  }

  /// Drops the overlap and restores the current song's volume, leaving the
  /// ordinary completion to bring the next song.
  Future<void> _abortCrossfade() => cancel();

  /// How long before the end a network song stops waiting for its local
  /// copy and loads from the server instead.
  static const _serverLead = Duration(seconds: 10);

  /// Prepares the next song while [remaining] of the current one plays.
  Future<void> _prepare(Duration remaining) async {
    _preparing = true;
    final generation = ++_generation;
    _playGeneration = handler._playRequestGeneration;
    _queueRevision = handler._sessionQueueRevision;
    final index = handler._index;
    final nextIndex = index + 1 < handler._media.length
        ? index + 1
        : handler._repeatMode == AudioServiceRepeatMode.all
        ? handler._repeatPassStart()
        : -1;
    PlaybackDeck? deck;
    ContentUriPlaybackLease? lease;
    try {
      if (index < 0 || nextIndex < 0 || nextIndex == index) return;
      final next = handler._media[nextIndex];
      // DSD needs the USB output, which the ordinary transition opens.
      if (MusicPlayerHandler._requiresDsd(next)) return;
      // A network song still downloading may finish in time to open from
      // disk, which a native queue needs to start it without a gap.
      if (next.source.startsWith('network://')) {
        await handler._prefetch.ready(next, remaining - _serverLead);
        if (!_current(generation)) return;
      }
      if (handler._dependencies.isAndroid && next.isContentUri) {
        try {
          lease = await PlatformBridge.openContentUriPlaybackLease(next.source);
        } catch (error) {
          _log.w('Gapless SAF lease unavailable: $error');
        }
        if (!_current(generation)) return;
      }
      final path = lease?.path ?? await handler._formats.resolve(next);
      if (path == null || !_current(generation)) return;
      final isCopy =
          (next.isContentUri && lease == null) ||
          handler._sourceCache.ownsPath(path) ||
          handler._formats.owns(path);
      if (isCopy) _pins.add(path);
      final volume = await handler._normalizationVolumeFor(
        path,
        cacheKey: next.isContentUri ? next.source : null,
        displayName: lease?.displayName,
      );
      if (!_current(generation)) return;
      if (_canQueue && !_crossfadeEnabled) {
        final output = handler._player;
        _queuedDeck = output;
        _next = next;
        _nextIndex = nextIndex;
        _nextPath = path;
        _nextDuration = next.duration;
        _nextVolume = volume;
        _nextIsCopy = isCopy;
        var accepted = false;
        try {
          final queued = await (output as QueuedPlaybackDeck).queueNextSource(
            path,
            volume: volume,
            onStarted: () {
              if (generation == _generation && identical(_queuedDeck, output)) {
                unawaited(
                  handoff(sourceStarted: true).catchError((Object error) {
                    _log.w('Gapless source handoff failed: $error');
                    return false;
                  }),
                );
              }
            },
          );
          if (queued && _current(generation)) {
            accepted = true;
            _log.d('Gapless queued on the current output');
            return;
          }
        } finally {
          if (!accepted && identical(_queuedDeck, output)) {
            _queuedDeck = null;
            await (output as QueuedPlaybackDeck).clearNextSource();
          }
        }
        // The native queue declined. Ordinary completion loads the next song.
        return;
      }
      deck = handler._dependencies.createDeck(
        'music-gapless-$generation-${DateTime.now().microsecondsSinceEpoch}',
      );
      handler._listenToPlayer(deck);
      await deck.configureOutput();
      // The prepared deck waits silent: whether the native chain or the
      // handoff makes it audible, the volume rides up at the transition, so
      // the new AudioTrack never opens on audible content (a click on many
      // devices).
      await deck.setVolume(0);
      if (!_current(generation)) return;
      if (const {'http', 'https'}.contains(Uri.tryParse(path)?.scheme)) {
        await deck.setNetworkSource(
          path,
          arriving: handler._runtime.streamsArrivingFile(path),
        );
      } else {
        await deck.setFileSource(path);
      }
      if (!_current(generation)) return;
      final duration = await deck.getDuration();
      if (!_current(generation)) return;
      // A crossfade starts the deck itself; a native chain would fire at
      // completion and fight the overlap.
      final chained = _crossfadeEnabled
          ? false
          : await handler._player.setNextDeck(deck);
      if (!_current(generation)) {
        if (chained) await handler._player.setNextDeck(null);
        return;
      }
      _prepared = deck;
      deck = null;
      _next = next;
      _nextIndex = nextIndex;
      _nextPath = path;
      _nextDuration = duration != null && duration > Duration.zero
          ? duration
          : next.duration;
      _nextVolume = volume;
      _nextIsCopy = isCopy;
      _log.d('Gapless prepared (${chained ? 'native' : 'on completion'})');
    } catch (error) {
      _log.w('Gapless preparation skipped: $error');
    } finally {
      if (lease != null) {
        await PlatformBridge.closeContentUriPlaybackLease(lease.token);
      }
      if (deck != null) await handler._disposeDeck(deck);
      if (generation == _generation) {
        _preparing = false;
        if (_prepared == null && _queuedDeck == null) _pins.clear();
      }
      await handler._cleanupPendingResolvedPaths();
    }
  }

  /// Makes the prepared song current as the current one completes. False
  /// leaves the ordinary transition to the caller.
  Future<bool> handoff({bool sourceStarted = false}) async {
    final queued = _queuedDeck;
    if (sourceStarted != (queued != null)) return false;
    final incoming = queued ?? _prepared;
    final next = _next;
    if (incoming == null || next == null) return false;
    if (!_current(_generation) ||
        _nextIndex >= handler._media.length ||
        !identical(handler._media[_nextIndex], next)) {
      await cancel();
      return false;
    }
    final generation = _generation;
    final playGeneration = handler._playRequestGeneration;
    // A crossfade promotion: the envelope already moved both decks; the
    // incoming one is audible and needs no resume or ride.
    _crossfadeTimer?.cancel();
    _crossfadeTimer = null;
    _crossfadeClock = null;
    final crossfading = _crossfading;
    _crossfading = false;
    try {
      // A natively chained deck already plays; this confirms its state.
      if (queued == null) {
        if (crossfading) {
          handler._runtime.personalization.finish();
          await incoming.setVolume(_nextVolume);
        } else {
          await incoming.resume();
        }
      } else {
        handler._runtime.personalization.finish();
      }
    } catch (error) {
      _log.w('Gapless start failed: $error');
      if (generation == _generation) await cancel();
      return playGeneration != handler._playRequestGeneration;
    }
    // Another request (Next, a new queue) took over meanwhile.
    if (generation != _generation) {
      return playGeneration != handler._playRequestGeneration;
    }
    // The prepared deck waited silent so the native chain never opened on
    // audible content; ride it up now that it is the current source. The
    // intent in this path is always an audible start, and the state read
    // can lag the native chain, so it is not consulted here. The fade
    // setting stretches the same ride across the configured seconds.
    if (queued == null && !crossfading) {
      await handler._rideVolume(
        incoming,
        0,
        _nextVolume,
        duration: handler._fadeInRideDuration(
          userSkip: false,
          startPaused: false,
        ),
      );
    }
    final outgoing = handler._player;
    final path = _nextPath;
    _prepared = null;
    _queuedDeck = null;
    _next = null;
    _pins.clear();
    handler._player = incoming;
    // An index at or before the current one wraps to a new repeat-all pass.
    final index = _nextIndex > handler._index
        ? _nextIndex
        : handler._beginRepeatPass(_nextIndex);
    handler._index = index;
    final current = ++handler._playRequestGeneration;
    handler._serverDiedReloads = 0;
    handler._playbackAutomation.cancelPendingActions();
    handler._recordPlayHistory(index);
    handler._normalizationVolume = _nextVolume;
    handler._activeResolvedPath = _nextIsCopy ? path : null;
    handler._failures.started(next, path);
    handler._pendingRestorePosition = null;
    handler._runtime.personalization.begin(_learningTrack(next));
    handler._playbackInstance++;
    handler.mediaItem.add(
      handler
          ._toMediaItem(next, resolvedSource: _nextIsCopy ? path : null)
          .copyWith(duration: _nextDuration),
    );
    handler._covers
      ..fetchFor(next)
      ..fetchAhead();
    handler._lastBroadcastPosition = Duration.zero;
    handler._lastPositionBroadcastAt = null;
    handler._broadcastPosition(Duration.zero, force: true);
    handler._broadcastState(
      playerState: queued != null && incoming.state == PlaybackDeckState.paused
          ? PlaybackDeckState.paused
          : PlaybackDeckState.playing,
    );
    handler._lastPeriodicPersistAt = DateTime.now();
    unawaited(handler._persistSession(position: Duration.zero));
    if (!next.isNetwork) {
      unawaited(handler._recoverEmbeddedArtwork(next, current));
    }
    if (next.source.startsWith('network://')) {
      unawaited(handler._loadNetworkMetadata(next, current));
    }
    unawaited(handler._ensureDurationKnown(next, current));
    unawaited(handler._autoplay.fill());
    _log.d('Gapless transition');
    if (!identical(outgoing, incoming)) await handler._disposeDeck(outgoing);
    await handler._cleanupPendingResolvedPaths();
    return true;
  }

  Future<void> cancel() async {
    _generation++;
    _preparing = false;
    _attempt = null;
    _crossfadeTimer?.cancel();
    _crossfadeTimer = null;
    _crossfadeClock = null;
    if (_crossfading) {
      _crossfading = false;
      // The overlap was swapping volumes; leave the current song at full
      // loudness so the ordinary completion can fade or hand off normally.
      if (!handler._disposed && !handler._cast.active) {
        try {
          await handler._player.setVolume(handler._normalizationVolume);
        } catch (_) {}
      }
    }
    final prepared = _prepared;
    final queued = _queuedDeck;
    _prepared = null;
    _queuedDeck = null;
    _next = null;
    _nextPath = null;
    _pins.clear();
    if (queued is QueuedPlaybackDeck) await queued.clearNextSource();
    if (prepared == null) return;
    try {
      await handler._player.setNextDeck(null);
    } catch (error) {
      _log.w('Gapless unlink failed: $error');
    }
    await handler._disposeDeck(prepared);
    await handler._cleanupPendingResolvedPaths();
  }

  Future<void> dispose() => cancel();
}
