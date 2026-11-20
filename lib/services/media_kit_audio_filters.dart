import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:toadplayer/models/equalizer_settings.dart';
import 'package:toadplayer/services/playback_deck.dart' show PlaybackPitch;

/// One filter in the equalizer's libavfilter graph.
@immutable
class MpvAudioFilter {
  const MpvAudioFilter(this.id, this.name, {this.options = const {}});

  /// Instance name in the graph (`name@id`).
  final String id;

  /// libavfilter filter name.
  final String name;

  final Map<String, String> options;

  String get spec {
    final values = [
      for (final entry in options.entries) '${entry.key}=${entry.value}',
    ];
    return '$name@$id=${values.join(':')}';
  }
}

/// The mpv audio filter chain that reproduces the Darwin and Android
/// equalizer (`EqualizerDSP.swift`): input gain, peaking bands, balance,
/// compressor, then a -0.5 dBFS limiter.
///
/// The filters form one libavfilter graph behind mpv's `lavfi` filter,
/// after mpv converts the audio to planar float. Separate `lavfi-*` filters
/// fail from the third one on with mpv 0.36 and FFmpeg 6 ("Layout indicates
/// a different number of channels"), and media_kit's builds have no
/// `aresample` to convert formats inside a graph.
///
/// Changes set the `af` property again. `af-command` on a graph reaches
/// every filter but reports the result of the graph's last one, the input
/// buffer, which rejects every command, so success cannot be told apart
/// from failure.
///
/// media_kit's Windows and macOS libmpv builds also include few filters
/// (`equalizer`, not `volume` or the dynamics filters), while Linux uses the
/// distribution's full build. Filters listed in `unavailable` are left out;
/// without `volume` the input gain moves to [volumeGainDb], which the deck
/// applies through mpv's volume.
@immutable
class MpvAudioFilterChain {
  const MpvAudioFilterChain(this.filters, {this.volumeGainDb = 0});

  static const empty = MpvAudioFilterChain([]);

  /// Filters a libmpv build may lack. Every build has `equalizer`.
  static const optionalFilters = {
    'volume',
    'stereotools',
    'acompressor',
    'alimiter',
  };

  /// Sample rate assumed before the decoder reports one. Bands above 45% of
  /// the real rate are rebuilt once it is known.
  static const defaultSampleRate = 44100;

  final List<MpvAudioFilter> filters;

  /// Input gain that could not be placed in the graph.
  final double volumeGainDb;

  factory MpvAudioFilterChain.fromEqualizer(
    EqualizerSettings settings, {
    int? sampleRate,
    Set<String> unavailable = const {},
  }) {
    if (!settings.enabled) return empty;
    bool has(String name) => !unavailable.contains(name);
    final rate = (sampleRate == null || sampleRate <= 0)
        ? defaultSampleRate
        : sampleRate;
    final frequencies = settings.frequencies;
    final gains = settings.effectiveGains;
    final step = math.pow(
      frequencies.last / frequencies.first,
      1 / (frequencies.length - 1),
    );
    final q = math.sqrt(step) / (step - 1);
    return MpvAudioFilterChain(
      volumeGainDb: has('volume') ? 0 : settings.inputGain,
      [
        if (has('volume'))
          MpvAudioFilter(
            'pre',
            'volume',
            options: {
              'precision': 'float',
              'volume': '${_number(settings.inputGain)}dB',
            },
          ),
        for (var i = 0; i < gains.length; i++)
          MpvAudioFilter(
            'band$i',
            'equalizer',
            options: {
              'f': _number(math.min(frequencies[i], rate * 0.45)),
              't': 'q',
              'w': _number(q),
              'g': _number(gains[i]),
            },
          ),
        // Applied only when set: the filter converts its input to stereo.
        if (settings.balance != 0 && has('stereotools'))
          MpvAudioFilter(
            'balance',
            'stereotools',
            options: {
              'balance_out': _number(settings.balance.clamp(-1.0, 1.0)),
            },
          ),
        if (settings.compressor && has('acompressor'))
          MpvAudioFilter(
            'compressor',
            'acompressor',
            options: {
              'detection': 'peak',
              'link': 'maximum',
              'knee': '1',
              'makeup': '1',
              'threshold': _number(
                math.pow(10, settings.threshold.clamp(-60.0, 0.0) / 20),
              ),
              'ratio': _number(settings.ratio.clamp(1.0, 20.0)),
              'attack': _number(settings.attack.clamp(1.0, 100.0)),
              'release': _number(settings.release.clamp(20.0, 1000.0)),
            },
          ),
        if (settings.limiter && has('alimiter'))
          MpvAudioFilter(
            'limiter',
            'alimiter',
            options: {
              'limit': _number(math.pow(10, -0.5 / 20)),
              'attack': '5',
              'release': '60',
              // Automatic level would raise quiet output, unlike the other OSes.
              'level': '0',
            },
          ),
      ],
    );
  }

  /// The value of mpv's `af` property.
  String get spec => filters.isEmpty
      ? ''
      : '@toadplayer_format:format=format=floatp,'
            '@toadplayer_dsp:lavfi=[${filters.map((filter) => filter.spec).join(',')}]';

  bool get isEmpty => filters.isEmpty;

  /// This chain with the shift [tempo] asks for. A shift through
  /// `rubberband` joins the graph; without the filter the shift rides the
  /// speed (`audio-pitch-correction` off), which the deck applies apart.
  MpvAudioFilterChain withTempo(MpvTempo tempo) {
    if (tempo.ratio == 1) return this;
    return MpvAudioFilterChain([
      ...filters,
      MpvAudioFilter(
        'tempo',
        'rubberband',
        options: {'pitch': _number(tempo.ratio)},
      ),
    ], volumeGainDb: volumeGainDb);
  }

  static String _number(num value) {
    final text = value.toStringAsFixed(4);
    final trimmed = text.contains('.')
        ? text.replaceFirst(RegExp(r'\.?0+$'), '')
        : text;
    return trimmed == '-0' ? '0' : trimmed;
  }
}

/// The speed and pitch handling a libmpv output applies for the current
/// [PlaybackPitch]. `MpvTempo.of` works out both from what the libmpv build
/// can do: a semitone shift prefers the `rubberband` filter in the graph;
/// without it, the shift rides the speed with the pitch correction off
/// (the song plays faster or slower with it, as a turntable would).
@immutable
class MpvTempo {
  const MpvTempo({
    required this.speed,
    required this.pitchCorrection,
    this.ratio = 1,
  });

  /// Speed mpv plays at; a shift without `rubberband` carries its factor.
  final double speed;

  /// mpv's `audio-pitch-correction`: true keeps the pitch while the speed
  /// changes, false lets it follow.
  final bool pitchCorrection;

  /// Pitch factor the `rubberband` filter applies, 1 for none.
  final double ratio;

  /// Filters a semitone shift prefers. Probed like the equalizer's filters,
  /// once a shift is first asked for.
  static const Set<String> optionalFilters = {'rubberband'};

  /// The tempo for [rate] (the effective rate, [playbackSpeed] included)
  /// and [pitch], given the libavfilter filters [unavailable] here.
  factory MpvTempo.of(
    double rate,
    PlaybackPitch pitch, {
    Set<String> unavailable = const {},
  }) {
    final shift = math.pow(2, pitch.semitones / 12).toDouble();
    final canRubberband =
        pitch.semitones != 0 && !unavailable.contains('rubberband');
    if (canRubberband) {
      // The shift goes through rubberband; the pitch follows the rate only
      // when asked to, with the correction off.
      return MpvTempo(
        speed: rate,
        pitchCorrection: !pitch.followsRate,
        ratio: shift,
      );
    }
    if (pitch.semitones == 0 && !pitch.followsRate) {
      // No shift; the pitch stays put while the speed changes.
      return MpvTempo(speed: rate, pitchCorrection: true);
    }
    // The shift, and the pitch following the rate, ride the speed.
    return MpvTempo(speed: rate * shift, pitchCorrection: false, ratio: 1);
  }
}
