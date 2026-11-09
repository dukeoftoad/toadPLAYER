# Implicit State Machines — Field Guide

**Status:** authoritative audit as of `c6ffab9` (v1.2.0). Line refs drift; names
and invariants don't.
**Audience:** humans onboarding to the playback core, and AI agents working on
this repo. If you are an agent: this page exists so you don't have to
re-derive the concurrency model from 60 scattered booleans before touching
anything. Read §0, the table in §1, then the section that owns the file you
are about to edit.

---

## 0. How state is actually modeled here (read this first)

This codebase predates an explicit state-machine layer. Its real concurrency
model is built from **five recurring idioms**. Learn them once and every
machine below becomes legible:

1. **Generation counters as cancellation tokens.** `_playRequestGeneration`
   (music_player_service.dart) is the master epoch, bumped from 7 sites in 4
   files (`_playIndex`, `_pausePlayback`, `stop`, dispose, cast
   `_changed`, gapless `handoff()`, automix `_start`). Every async step
   re-checks the token it captured before acting. These counters are doing
   triple duty as request IDs, cancellation tokens, and mutexes. **Do not try
   to remove them** — name them, and re-check them after every `await`.
2. **Serialized future tails.** `_sourceChangeTail` (handler),
   `_writes`/`_commands` (widget service), `_tail` (session writer, analysis
   scheduler) — a never-terminating `Future` chain that serializes an
   operation class. Errors are swallowed with `catchError(_{})` so the chain
   never poisons; that also means failures inside are invisible.
3. **Desired-vs-applied pairs.** `_requestedDevice` vs `_appliedDevice`
   (cast), `_wantsExclusive` vs `_active` (exclusive deck),
   `_nextSource` vs engine playlist (MediaKit), `_scheduledRevision` vs
   `_persistedRevision` (session writer). The gap between the pair *is* the
   "switching" state; a revision counter invalidates stale convergence.
4. **`wantsX` / `onX` mirror predicates.** `wantsPosition`/`onPosition`
   (gapless), automix's pair, autoplay's `wouldFill`/`fill` — the "should I
   care?" predicate is a hand-maintained mirror of the action's early-return
   chain. The files openly document the risk ("Keep in step with the early
   returns"). Any change to one side MUST be mirrored in the other.
5. **Nullable sentinels as enums.** `-1` index ("no item"), `null` deck
   ("no transition prepared"), `_muted: bool?` ("unknown"),
   `_searchFtsAvailable: bool?` ("not probed yet"), `UsbAudioStatus.reason`
   strings. The one production bug this class already caused (FTS5 seeding,
   commit `2b44621`) is the standing argument for promoting these to real
   enums.

---

## 1. Inventory

| ID | Machine | Owner | Explicit model today | Risk to change |
|----|---------|-------|----------------------|----------------|
| P1 | Play-request / source-load lifecycle | music_player_service.dart | `PlaybackDeckState` per deck only | High (load-bearing) |
| P2 | Pause ownership & interruption | music_player_service.dart + playback_automation.dart | none | Medium |
| P3 | Gapless handoff | music_player_gapless.dart | none (nullable sentinels) | Medium — safest big machine |
| P4 | Automix transition | music_player_automix.dart | `AutoMixStatus` (display-only) | High (time-continuous) |
| P5 | USB direct-output dual mode | music_playback_deck.dart | stringly `UsbAudioStatus.reason` | Medium, contained |
| P6 | Source-change serialization & deck swap | handler + exclusive/mediaKit/cast decks | none | High |
| P7 | Session persist/restore/archive | playback_session_*.dart | revision triad (writer only) | Low-Medium |
| P8 | Position ticks & volume rides | music_player_service.dart | none (scheduling policy) | Low — do not enum-ify |
| U1 | Zen view (chrome hide / blackout) | now_playing_screen.dart | none (2 bools, 3 legal states) | Medium |
| U2 | Lyrics chrome immersion | now_playing_screen.dart + toadplayer_landscape_player.dart | none | Medium-High (duplicated) |
| U3 | Player page selection (0/1/2) | now_playing_screen.dart | none (int + flags) | Low |
| U4 | Sleep timer modes | music_player_service.dart + sleep_timer_sheet.dart | none (which-field-is-non-null) | Low |
| U5 | Theme player-variant fork | theme_settings.dart + now_playing_screen.dart | `AppThemeStyle` enum | n/a (keep) |
| L1 | Per-track lyrics lifecycle | player_metadata_controller.dart | none | Medium (partially fixed, see L1 notes) |
| L2 | Verify-first flow & deletion counter | lyrics_verification_store.dart + sheet | `_ReviewAction` only | Low-Medium |
| L3 | AI translation job/pipeline | lyrics_translation_provider.dart + lyrics_translation.dart + lyrics_ai_client.dart | `LyricsAiErrorKind` etc. | Medium |
| L4 | Translation sharing overlay | lyrics_translation_sharing.dart | none | Low |
| L5 | Synced-lyrics line follower | player_lyrics.dart | none (−1 sentinels) | High (60 fps entangled) |
| L6 | Lyrics search index pass | library_lyrics_search.dart | progress record only | Low |
| S1 | Backend init/retry gate | platform_bridge.dart | none | Low-Medium |
| S2 | Boot phase (headless→attached→deferred) | main.dart | none (control-flow position) | Medium-High (ordering sacred) |
| S3 | Runtime init/attach | music_player_runtime.dart | none | Medium |
| S4 | FTS capability latch | history_database.dart + library_database.dart | `bool?` tri-state | Low |
| S5 | Shell navigation tabs | shell_navigation_service.dart | `ShellTab` (index mapping implicit) | Low-Medium |
| S6 | Song-analysis scheduler | song_analysis.dart | `_Outcome`, `SongAnalysisSweep` | Low-Medium |
| S7 | Analysis job queue | audio_analysis_jobs.dart + widget | none | Low |
| S8 | Cover-cache maintenance | cover_cache_manager.dart + periodic_async_task.dart | none | Low |
| S9 | System-UI locks (wakelock/orientation/keyboard) | lyrics_screen_awake.dart, app_orientation.dart, android_keyboard_lifecycle.dart | none ("wanted vs applied" pairs) | Low |
| S10 | Migration tombstones | *_database.dart, preference_blob_store.dart | one-way bool keys | Low |

---

## 2. Playback engine (P1–P8)

### P1 — Play-request / source-load lifecycle (the load-bearing wall)

**Encoded as** (all in `MusicPlayerHandler`): `_playRequestGeneration`,
`_switchingGeneration` (non-zero = a load is in flight; zeroed from four
owners), `_sourceReady`, `_playbackError` (error latch — exit only via the
next `_playIndex`), `_index = -1` sentinel, `_activePlayOperation`
(play single-flight), `_sourceChangeTail` (serialization), `_completing`
(EOF re-entrancy), `_player` itself (the deck is *replaced*, not restarted,
by 4 owners: gapless handoff, automix, cast swap, SAF-deletion recreate),
`_serverDiedReloads` (bounded at 2).

**Real state set:** `idle → loading → ready(playing|paused) ⇄ switching →
completed | error-latched → stopped → disposed`, with three bypass routes
that skip `_loadIndex` entirely (gapless `handoff()`, automix `_start`,
cast deck swap).

**Traps:**
- `_shouldIgnoreComplete` is a 5-term OR across four owners
  (`_switchingGeneration`, `_failures.checking`, `_interruptionActive`,
  `_userPaused`, `_playbackError`) — an undocumented composite "ignore EOF"
  state.
- Generation re-checks (`_isCurrentPlayRequest`) are what stop a late
  `resume()` from playing the wrong source; every `await` in `_loadIndex`
  is followed by one. Preserve this shape exactly.
- Deck identity: callbacks capture `player` and must re-check
  `identical(player, _player)`; a volume ride can otherwise write into a
  disposed deck.
- `_activePlayOperation` coalescing silently drops a `play()` that arrives
  while another is pending.

**Explicit-model plan (roadmap, do LAST):** `enum PlaybackPhase { idle,
loading, ready, switching, failed, stopped, disposed }` written only from
`_loadIndex`'s two exits; replace the `_shouldIgnoreComplete` OR with a
phase test. Keep generation counters as tokens.

### P2 — Pause ownership ("who paused, and may auto-resume")

**Encoded as:** `_userPaused`, `_pausedByInterruption`, `_interruptionActive`
(handler) + `PlaybackAutomation`'s `_muted: bool?` (tri-state),
`_pausedByMute`, `_allowMutedPlayback` (sticky after a second manual play),
`_pauseOnMute`, `_headphones: Set?` (null = inventory not yet seen),
`_intentRevision` (queued auto-action token).

**Real state set:** `clear | paused-by-user (never auto-resume) |
paused-by-interruption (resume on pause-type end) | paused-by-mute (resume
on unmute) | paused-by-route-loss (becoming-noisy: never resume)`.

**Traps:** all three pause flags can legally be true at once (pause during
interruption while muted); `_loadIndex` wipes all of them, so an
interruption ending during a source change resumes nothing; a sleep timer
armed to "stop after track" while paused fires nothing until the next
completion (no Timer object exists for that mode — it is consumed only in
`_handlePlayerComplete`).

**Explicit-model plan (roadmap #2):** `enum PauseOwner { none, user,
interruption, mute, routeLost }` + one `resumeAllowed()` predicate. Must be
done at predicate level first — `_broadcastState` does not currently encode
pause cause, and `_shouldIgnoreComplete` reads two of these flags.

### P3 — Gapless handoff (safest big machine to formalize)

**Encoded as:** nullable sentinels `_prepared` / `_queuedDeck` / `_next` /
`_nextIndex(-1)` + `_preparing`, `_attempt` memo (`'$playGen:$queueRev'`),
own `_generation` token, crossfade `_crossfading`/`_crossfadeTimer`/`_clock`.

**Real state set:** `idle → preparing → prepared{native-chained |
second-deck | queued-on-output} → crossfading → handoff → idle`, plus
`cancel` from anywhere.

**Traps:** `_current(generation)` is a 4-way conjunction re-checked after
every await; `handoff()` duplicates ~40 lines of `_loadIndex` track-start
bookkeeping (already diverged: it never calls `_resetAbRepeatForNewTrack`);
cancel restores old-deck volume while an error inside `handoff()` does not.

**Explicit-model plan (roadmap #3):** `sealed class PendingTransition {
nativeChained | secondDeck | queued | crossfading }` + `enum Phase { idle,
preparing, prepared, crossfading }`. Five entry points only. Extract the
duplicated bookkeeping BEFORE freezing it into the transition function.

### P4 — Automix transition

Display mirror `AutoMixStatus { idle, mixing, crossfading }` +
`autoMixPreparing` (automix_status.dart) exists but the real FSM —
`idle → preparing → planned → starting → fading → idle`, with a `_cancelling`
counter and `_abandonStart`'s "permanently failed for this attempt" state —
is flags. Transitions are time-continuous (40 ms envelope writes, phase-lock
loop): **a naive enum rewrite that adds awaits between checks will introduce
audible glitches.** Extend `AutoMixStatus` to the true phases and derive the
`wantsPosition` mirror from it; leave the fade-tick internals alone.

### P5 — USB direct-output dual mode

One class, two interleaved machines: ordinary (plugin stream +
`Completer` preparation + `_ordinaryError` latch) and native USB-direct
(`_direct`, `_directState`, `_routeLost`, `_nativeStarted`,
`_volumeBlocked`, `_preparedStatus`, token discipline). Hidden transition:
`resume()` on a non-USB driver migrates the whole song back to the ordinary
engine mid-flight, carrying position — it must stay atomic. Roadmap:
`enum OutputMode { ordinary, native, routeLost }` + promote
`UsbAudioStatus.reason` strings to an enum. Blast radius: one file + native
reason strings.

### P6 — Source-change serialization & deck swap

The "desired vs applied + tail + revision" idiom in 4 flavors (handler tail,
`ExclusiveOutputDeck`'s three revision counters, MediaKit playlist
`_nextSource`, cast's device pair). Traps: the handler tail grows forever and
swallows errors; cast swap left with `_player.state == stopped` +
`_sourceReady == true` if `createCastDeck` throws (generation re-checks
catch it later); `ExclusiveOutputDeck._requestedState` can replay a stale
pause/resume after a race. Consolidate LAST, after P3/P5, into one
`SwitchPhase { idle, switching, failed }` per owner.

### P7 — Session persist / restore / archive

Writer (revision triad `_queueRevision/_scheduledRevision/_persistedRevision`,
`-1` = "row stale") is clean — **do not rewrite it**. The implicit part is
the handler's restore pair: `_restoringSession` (narrow) vs
`_pendingRestorePosition` (six writers, three clearers, four files). The
"restored, never played" state is inferred from
`!_sourceReady && _index >= 0 && _pendingRestorePosition != null`.
Roadmap: `enum SessionPhase { empty, restored, active, archived }` and fold
the pending position into a `RestoredSession` record. Preserve the
`expectedPlaybackGeneration` guard and the `getChildren(recentRootId)`
Android resumption path exactly.

### P8 — Position ticks & volume rides (scheduling policy — NOT a lifecycle)

`_positionClock` (stopwatch), `_lastPositionReadAt`, `_positionQueriedAt`,
`_positionCheckDue` (benign leak if the deck never answers),
`_lastBroadcastPosition/_lastPositionBroadcastAt` (500 ms),
`_lastPeriodicPersistAt` (10 s), `_volumeRideGeneration`, `_fadeOutStarted`.
Do **not** enum-ify; instead extract the `wantsPosition` / `_wantsFadeOut` /
`_gapless.wantsPosition` / `_autoMix.wantsPosition` / `_autoplay.wouldFill`
predicates into one `PositionInterest` aggregator so the mirrors can't drift.
Preserve "ride generation bump on every track start" exactly; the
fade-out-vs-crossfade interplay around `_cancelVolumeRide` is
order-sensitive.

Secondary playback machines (catalog): cast deck load (`_ready`/`_token`/
`_serving`), server-died retry counter (bounded 2), autoplay refill
(`_pending`/`_generation`/`_attempt`), failure skip budget
(`_skipGeneration`/`_checkingGeneration`), prefetch interest memo,
listening-stats self-arming flush timer, notification action mutexes,
exclusive-output notifier trio, arriving-file registry, desktop volume
restore debounce.

---

## 3. Player UI (U1–U5)

Hub: `lib/screens/now_playing_screen.dart` forks into
`ToadplayerPlayerLayout` (glass) and `MaterialPlayerLayout` (material) on
`context.isToadplayer`. Both layouts receive **projections of the same
screen-level machines** — glass via `uiHidden`/`lyricsControlsHidden`,
material via `immersive`/`uiHidden` + `PlayerLyricsControlsCollapse` vs
`PlayerLyricsControlsVisibility`. When adding a UI mode, decide which
projection carries it **on both branches**.

### U1 — Zen view (double-tap hide / blackout)

**Encoded as:** `_playerUiHidden` + `_playerUiBlackout` (two bools, but only
3 legal states — blackout is reachable *only* through the explicit
double-tap, never through idle auto-hide) + `_playerUiIdleTimer` (5 s).

**Transitions:** double-tap (page 0 only) toggles hidden, arms blackout from
`playerZenBlackout`; single tap while hidden → reveal; idle hide (setting
`playerAutoHideUi`, glass portrait, page 0, playing, not accessible nav) →
hidden, blackout forced false; pause → both false; landscape/rotation →
both false; page change off page 0 → both false.

**Traps:** blackout re-derives only at the next double-tap (toggling the
setting while hidden does nothing until then); the illegal 4th bool combo is
prevented at every write site, but nothing enforces it.

**Explicit-model plan (roadmap #4):** `enum ZenState { visible, hidden,
blackout }` in now_playing_screen.dart. Mechanical (one file, ~7 write
sites, all of which already write the two fields together) — do it in an
isolated commit and test the double-tap/idle/pause/rotation/page-change
matrix on device before merging.

### U2 — Lyrics chrome immersion (largest UI machine)

**Encoded as:** `_lyricsControlsHidden`, `_lyricsForceFullscreen`
(cover-tap → lyrics → 3 s `_lyricsFullscreenTimer` → fullscreen),
`_lyricsIdleTimer` (5 s), `_lyricsPointers` + `_lyricsPointerMoved`
(tap-vs-drag arbitration, >12 px), `_lyricsScrollDistance` (16 px
accumulate), `_lyricsOptionsOpen`/`_audioOutputOpen` (freeze timers),
`_compactPlayerTouched` (cross-widget mutable field, set without setState).
Derived: `_lyricsImmersive = page 1 && autoHideLayout && (controlsHidden ||
forceFullscreen)`. The landscape player (toadplayer_landscape_player.dart)
implements **the same 5 s hide machine a second time** (`_actionsVisible` /
`_hideTimer`), and Material expresses hide as a collapse (fold) vs glass
fade-in-place, chosen by `_autoHidingLyricsControls`.

**Traps:** the pointer listener wraps both layouts, so cover taps also reset
lyrics timers (U1 and U2 timers couple); hide timers check
`ModalRoute.isCurrent` and *reschedule* rather than pause; rotation moves
between two independently implemented copies of the machine.

**Explicit-model plan (roadmap):** one shared `ChromeAutoHide` controller +
`enum LyricsChromeState { shown, hidden, forcedFullscreen }`; extract the
landscape duplicate first.

### U3 — Page selection (0 player / 1 lyrics / 2 Up Next)

`_currentPage` + `_queueSheetShowing` + desktop `_toggleInspector` override.
`_setToadplayerPage` is the single transition function — keep it that way;
it also resets U1/U2 state (this cross-machine reset is load-bearing).

### U4 — Sleep timer

Two mutually exclusive modes encoded by "which field is non-null":
`_sleepTimer` (Timer, presets/custom) vs `_sleepTimerEndsAt` +
`_sleepTimerStopAfterTrack` (consumed only in `_handlePlayerComplete`).
Trap: "stop after track" has no Timer and no countdown UI while paused.

### U5 — Theme fork

`AppThemeStyle { material, toad, toadplayer }` (models/theme_settings.dart)
→ `ToadplayerTheme` extension presence → `context.isToadplayer` → layout
fork. Both `toad` and `material` render `MaterialPlayerLayout`; only
`toadplayer` renders the glass layout. New player features must be projected
into BOTH layouts or explicitly gated (see U1/U2 notes).

---

## 4. Lyrics (L1–L6)

### L1 — Per-track lyrics lifecycle (player_metadata_controller.dart)

**Encoded as:** `_loading` + `_probePending` (coupled at
`_publishMetadata`), `_searchingOnline`, `_onlineSearchMissed`,
`_onlineLyricsSaveFailed`, `_savingLyricsSources` (in-flight write sentinel
+ echo suppressor for `SourceMetadataEvents`), `_generation` (track epoch),
`_metadataRevision` (parse epoch), `_requestKey` (identity tuple),
`_lyricsRaw` / `ParsedLyrics _lyrics` (`ParsedLyrics.empty` = none).

**Real state set:** `idle → probing → parsed{lyrics | empty} →
[searchingOnline → missed | fetched+embed{saved | saveFailed}]`, reset by
`load()` on track change.

**Fixed defects (this audit round — keep these invariants):**
- *Cross-track approve race:* the review sheet lives on the root navigator
  and survives track changes; `saveFetchedOnlineLyrics` now takes the
  **fetch-time** `source` + `generation` (returned by
  `fetchOnlineForReview`), so approval always embeds into the file that was
  fetched for, and `_persistFetchedOnlineLyrics`'s generation guard keeps
  the stale text off the new track's display.
- *Deletion signal vs pending probe:* `saveEditedLyrics` counts a deletion
  only if lyrics existed; the in-memory view is empty while the file probe
  is still running, so early deletes were never counted. It now probes the
  file itself (`_fileHasLyrics`) when the in-memory view is empty;
  unreadable/remote sources answer false (old behavior).

**Remaining traps:** a fetch that returns early on a stale generation leaves
`_searchingOnline` true until the next `load()` heals it — any new entry
path that skips `load()` will hang the spinner; save success mutates
`_metadata`/`_lyrics`/`_lyricsRaw` directly, bypassing `_metadataRevision`.

### L2 — Verify-first flow & deletion counter

Persisted `lyrics.delete_counts.v1` (cap 200, LRU eviction can downgrade a
count-1 song back to auto-embed — known, accepted). Flow:
`search → review → save | refine → search → …` (`_ReviewAction { save,
refine }` is the only explicit enum). Deletion counts only when the file had
lyrics (see L1 fix); approve resets the counter, auto-embed must NOT.
Roadmap: `enum LyricsMatchPolicy { autoEmbed, requireVerification }`
derived once per track + sealed `VerificationStep` replacing the while-loop.
Keep the persisted format byte-compatible.

### L3 — Translation pipeline

Three layers: job lifecycle (provider — `job != null` = running; cancel
token; per-job media-item subscription that cancels on track change), batch
repair (`settled`/`stopped`/`softError` + `retried`/`repairingMissing` loop),
HTTP retry (style flip once, backoff ≤ 2). Traps: cancel between cache write
and `_finish` reports `cancelled` while the cache persists (they disagree);
`'link:latest'` is a dead pseudo-key used only to invalidate watchers;
`_autoAttempted` suppresses auto-translate for a key until cache clear.
Roadmap: sealed `TranslationJobState` + sealed `TranslationOutcome`.

### L4 — Sharing overlay

`_available` (LRU 50) + `_received` (origin set) + single-slot
`requestedSourceHash` (really "last requested"). Echo-loop prevention rests
on `_remember` evicting both maps in sync — preserve that pairing. Roadmap:
`enum SharingOrigin { local, remote }` on the map value.

### L5 — Synced-lyrics line follower

`_active = -1` / `_focus = -1` sentinels, `_hasStarted` latch, `_userScrolling`
(4 s idle timer), `_awaitingFirstScroll`, ad-hoc `_lineBoundaryTimer`
(one-shot, speed-divided), measurement pipeline. Three mirrors of "which
line is active" exist (in-app, widget feed, home card) and only the in-app
one respects buffering/`_hasStarted`/speed. Roadmap: extract one shared
`activeLineFor(position, offset, {hasStarted})` used by all three; do NOT
enum-ify the view state while it is entangled with 60 fps animation.

### L6 — Lyrics search index pass

`_opening` / `_readTail` (concurrency 1) / `_hasFts` / `_generation`;
validity is a persisted **row** (`version` string), so an embed/deletion
bumps the version and re-indexes. A cancelled pass emits no terminal event —
consumers infer "aborted" from stream end. Failure is never cached as
"no lyrics". Roadmap: `enum IndexPassState { idle, scanning, aborted,
complete }`; keep the version format and the FTS rowid-preserving UPDATE.

---

## 5. Lifecycle & infrastructure (S1–S10)

### S1 — Backend init/retry gate (platform_bridge.dart)

`_backendInitFuture` (memoized, **never cleared**) + `_mobileBackendReady`
(false both while *pending* and after *exhaustion* — indistinguishable) +
5×400 ms retry loop + activity-attach gate. Contract: the future completes
normally even on failure; owner-dependent ops degrade per-call.
`_pendingLyricsProviders` / `_pendingLyricsFetchOptions` are
write-through-and-keep replay buffers. Roadmap: `enum BackendPhase {
uninitialized, waitingActivity, retrying(attempt), ready, degraded }` as a
queryable mirror; the "never throws after exhaustion" contract is sacred.

### S2 — Boot phase (main.dart)

No variables — the phase is control-flow position (guard-zoned body →
attach wait → runApp → post-frame deferred services → bootstrap post-frame).
Headless start (`_startBackgroundPlayback`) runs the same restore through
the runtime's memoized futures. Restore is invoked from three places and
deduped only by the runtime's `??=` futures. Do NOT re-order; the
post-frame deferral exists because backend init blocked the platform thread.

### S3 — Runtime init/attach (music_player_runtime.dart)

`_handler` nullable (getter returns null **while initializing**), `_initFuture`
(failure NOT memoized — retry allowed), `_restoreFuture` (nulled on detach
and player-mode switch), `_initializing` (suppresses broadcast during
attach), `_handlers` stream emits handler-or-null. The handler-internal
pause flags (P2) are the high-blast-radius remainder — separate pass.

### S4 — FTS capability latch (the bug that justifies this whole page)

`bool? _searchFtsAvailable` in history + library databases: `null` = not
probed, `false` = probed-and-missing (final). The getter collapses `?? false`,
so readers can't tell "waiting" from "absent" — safe only because every
reader awaits `database` first. The v1.0.0 fresh-install bug (`2b44621`)
was exactly this latch being seeded from `onCreate`. Roadmap:
`enum FtsCapability { unprobed, available, unavailable }` with the getter
contract preserved. `_trigramFts5Capability` (process-wide probe memo,
deferred inside transactions) stays as-is.

### S5 — Shell navigation

`ShellTab` enum exists; the **implicit** part is the tab-index ↔ enum
mapping duplicated in three places, falling through to `ShellTab.settings`
for unmatched indices. Dormant in this slice (desktop shell wires it).
Roadmap: `(int, bool, bool)` → `ShellTab? selected + Set<ShellTab> visible`.

### S6 — Song-analysis scheduler

`_started`/`_disposed`/two generation counters/`_tail`/`_sinceChange`
busy window + persisted per-song `version`/`failed` rows; `_busy` reads the
AutoMix notifiers (a machine gating on another machine's mirror). Backoff
constants: 90 s start, 1 h retry-later, 30 min next pass. Roadmap:
`enum SweepPhase { stopped, waitingSweep, sweeping, backingOff(until) }`.

### S7–S10 (compact)

- **S7 analysis jobs:** `_generation` + `_activeId` + `isCancelled` polling;
  widget has its own `_spectrogramRequestId` duplicating the lower-layer
  generation. `AnalysisCardPhase` would map 1:1.
- **S8 cover-cache maintenance:** `PeriodicAsyncTask` (once-latched start,
  generation stop, no-overlap reschedule); `CoverCacheManager.initialize`
  nulls `_initialization` on failure (retry allowed) but flush-on-pause
  installs only on success. `start()` after `stop()` mid-run can create a
  second pending chain — known.
- **S9 system-UI locks:** every lock is a "wanted vs applied" pair with
  re-apply on resume (`LyricsScreenAwake`, orientation, keyboard, marquee,
  contrast…). A shared `SystemUiLock` mediator would dedupe ~10 copies.
- **S10 migration tombstones:** one-way persisted bools
  (`history_migrated_to_sqlite`, app-state queue/recent migrations,
  collections `_migrationDoneKey`). A `MigrationRegistry` would centralize;
  low urgency.

---

## 6. Roadmap (safety × value order)

1. **Done in this audit's fix pass:** L1 cross-track approve binding, L1
   deletion-probe, `PlayerWidgetService` retry latch (a one-shot
   `_initialized` latch set before its first platform call meant a transient
   `PlatformException` killed the widget bridge permanently; now:
   success/desktop latch, mobile failure retried by the next `initialize()`
   via a single-flight).
2. `enum FtsCapability` (S4) — prevents a repeat of `2b44621`; contained.
3. `enum ZenState` (U1) — isolated, mechanical; test the gesture matrix.
4. `PauseOwner` (P2) — predicate-level first.
5. Gapless `PendingTransition` (P3) — extract handoff bookkeeping first.
6. `BackendPhase` (S1) + `OutputMode`/`UsbAudioReason` (P5).
7. `AutoMixStatus` extension (P4) — phases only, fade internals untouched.
8. `SessionPhase` (P7), `PlaybackPhase` (P1) last, with P6 consolidation.

**Standing rules for any agent touching these machines:** re-check the
generation token after every `await`; keep both halves of every `wantsX`
mirror in the same commit; never reorder boot deferral (S2); never rewrite
the session writer's revision triad (P7); when adding a player UI feature,
project it into both theme layouts (U5).
