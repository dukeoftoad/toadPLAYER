# Toadplayer — Cross-Platform Hi-Fi Music Player

**Toadplayer** is a standalone, offline-first music player built on **Flutter/Dart UI + Rust backend + Android/iOS/Desktop native audio bridges** (hi-res/bit-perfect playback, parametric EQ, gapless, USB DAC). This alpha (`v0.2.0`) was bootstrapped from an earlier prototype codebase and fully rebranded — every symbol, module, channel, crate, asset and icon now carries the Toadplayer identity (`com.toadplayer.app`).

## Alpha Builds (CI)

One APK, one target: GitHub Actions (`.github/workflows/android.yml`) builds a single **arm64-v8a release APK targeting API 37** on every push to `main`, and publishes it as a **pre-release** whenever a `v*` tag is pushed:

- `toadplayer-alpha-r<run>-<sha>-arm64-v8a.apk` — the one and only build artifact
- **versionCode is stamped from the CI run number** (`GITHUB_RUN_NUMBER`) in `android/app/build.gradle.kts`, so every alpha upgrades over the previous one without a manual bump (local builds fall back to the pubspec build number)
- Gradle, Rust and pub caches keep warm runs well under the old 30-minute build

The alpha APK is debug-signed unless repo signing secrets are present. The pipeline builds the Rust backend for `aarch64-linux-android`, compiles the native C++ audio engine with NDK 30 + CMake 4.x, and produces a minified release APK with Flutter AOT.

> **Note:** the package id is `com.toadplayer.app`. Builds from before the rename (`com.zarz.toadplayer`) cannot be updated in place — uninstall the old app first.

## Home & Library UI (v0.2.0 alpha)

The standalone home is a library, not a button row:

- **Search bar as the top bar** — live-filters every tab (`lib/screens/library_home_screen.dart`).
- **Library tabs** — Songs (artwork, artist • album, duration, sort menu), Artists, Albums, **Genres** and Playlists, grouped from the session queue (`lib/widgets/library/library_views.dart`, `lib/screens/library_detail_screen.dart`).
- **Smart playlists** — Favourites (the loved collection) and Recently added (songs ordered by when they first entered the library, persisted across runs) sit above the user's own playlists (`lib/screens/library_smart_screen.dart`, `lib/services/recently_added_store.dart`).
- **Overflow menu** — Open audio files, Full player, Shuffle, Refresh (re-read every queued song's tags and covers), Quick refresh (append new songs from the default folder), Equaliser and Settings. The queue button is gone; playback lives in the bottom-right play/pause button, the home lyrics widget and the full player.
- **Home lyrics widget** — the current line floats above the mini player (`lib/widgets/lyrics_preview_card.dart`).
- **Themes** — Appearance offers the default **System Material** (wallpaper-driven Material You), the crafted **Toad** palette (fixed moss green, `lib/theme/toad_theme.dart`) and the frosted **Glass** Toadplayer style.
- **Per-track actions** — long-press a song for Play next, Add to queue and Add to playlist; playlists support create / rename / delete, play-all from the saved order, and per-row remove.

## Architecture & Rust <-> Dart FFI Setup

1. **Ordinary & Gapless Audio Playback + Per-Player Equalizer DSP**:
   - **Android**: `third_party/audioplayers_android` (`AudioplayersPlaybackDeck` in `lib/services/music_playback_deck.dart`) attaches Android `DynamicsProcessing` (5/10/15/31-band parametric/graphic EQ), chains gapless `MediaPlayer.setNextMediaPlayer`, and duplicates `/proc/self/fd/<fd>` SAF playback descriptors.
   - **iOS & macOS**: `third_party/audioplayers_darwin` installs an `MTAudioProcessingTap` (`EqualizerAudioTap.swift` + `EqualizerDSP.swift` cascaded RBJ peaking biquads, preamp, balance, compressor, limiter) and sample-accurate FLAC timing (`AVURLAssetPreferPreciseDurationAndTimingKey`).
   - **Windows, Linux & Desktop Exclusive Output**: `libmpv` via `media_kit` (`lib/services/media_kit_playback_deck.dart` and `lib/services/exclusive_output_deck.dart` for WASAPI exclusive, Core Audio hog mode, and ALSA `hw:`).
2. **Android Native Hi-Res / Bit-Perfect & Direct USB DAC Playback**:
   - **JNI C++ Engine (`android/app/src/main/cpp/` -> `libtoadplayer_audio.so`)**: Links Google **Oboe 1.11.0**, **libFLAC 1.5.0**, and **WavPack 5.9.0** (with DSD) for AAudio exclusive / bit-perfect playback (`NativeAudio.kt`, `HiResPlayback.kt`, `BitPerfectPcm.kt`).
   - **Rust Direct USB DAC Transport (`rust_backend/crates/mobile/src/usb_audio.rs` + `vendor/libusb1-sys-0.7.0`)**: Mixer-free USB isochronous audio transport (`UsbDirectOutput`) supporting raw PCM, DoP (DSD over PCM), and Native DSD (`dsd_be`, `dsd_le`) plus hardware USB volume control (`UsbBitPerfectPlugin.kt`, `UsbDirectPlayback.kt`).
3. **Rust <-> Dart FFI & Native Channel Architecture**:
   - **Desktop (`linux`, `macos`, `windows`)**: Flutter loads `libtoadplayer_desktop.{so,dylib,dll}` directly via `dart:ffi` (`lib/services/backend/ffi_backend_transport.dart` -> `rust_backend/crates/desktop/src/ffi.rs`), calling C ABI symbols `toadplayer_init`, `toadplayer_call`, `toadplayer_cancel`, `toadplayer_subscribe`, `toadplayer_unsubscribe`, and `toadplayer_free`.
   - **Mobile (`android`, `ios`)**: Flutter calls `MethodChannel('com.toadplayer.app/backend')` (`lib/services/backend/method_channel_backend.dart`), which routes to `SelectedCoreBackend.kt` (Android) and `CoreBackend.swift` (iOS) over **UniFFI** bindings generated by `toadplayer-bindgen` from `rust_backend/crates/mobile` (`libtoadplayer_mobile.so` loaded via JNA on Android; `ToadplayerBackendFFI.xcframework` linked via CocoaPods on iOS).
   - **Player DSP Data Jobs in Rust (`runNativeDataJob`)**: Executes `automix` (beat grid, BPM, downbeat, phrase entry/exit points in `toadplayer_core::native_audio_analysis`), `audio_features` (22-dim acoustic vectors in `toadplayer_core::native_audio_features`), `spectral_cutoff` (spectrogram brickwall estimator), `palette` (cover art color quantization in `toadplayer_core::native_palette`), `parse_lyrics` / `parse_lyrics_translation_reply`, `write_id3v23_lyrics`, and local tag/cover/CUE sheet parsing (`toadplayer_core::tags`, `toadplayer_core::cue`).

## Build & Run Commands

### 1. Build the Rust Backend & FFI Bindings
- **Desktop (Linux / macOS)**:
  ```bash
  bash scripts/build_rust_backend.sh desktop
  ```
- **Desktop (Windows PowerShell)**:
  ```powershell
  powershell -ExecutionPolicy Bypass -File scripts/build_rust_backend_windows.ps1
  ```
- **Android (generates Kotlin UniFFI bindings + `jniLibs` for `arm64-v8a` / `armeabi-v7a`)**:
  ```bash
  export ANDROID_NDK_HOME=/path/to/sdk/ndk/30.0.16248370
  bash scripts/build_rust_backend.sh android
  ```
  *(Note: `android/app/build.gradle.kts` also runs `buildRustBackend` automatically before `preBuild`.)*
- **iOS (macOS host — generates Swift UniFFI bindings + `ToadplayerBackendFFI.xcframework`)**:
  ```bash
  bash scripts/build_rust_backend.sh ios
  (cd ios && pod install)
  ```

### 2. Fetch Flutter Packages & Run
```bash
flutter pub get
flutter gen-l10n
flutter run
```
