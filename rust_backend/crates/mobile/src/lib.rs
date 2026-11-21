//! Isolated Music Player UniFFI mobile API (`toadplayer-mobile`).
//! Preserves USB DAC direct audio, Cast, local tag/cover/CUE/lyrics operations,
//! and player DSP data jobs (AutoMix, audio features, spectrogram cutoff, palette).

mod cancellation;
mod cast;
mod data_jobs;
mod extensions;
mod ffmpeg;
mod filename;
mod hires;
mod library_metadata;
mod logging;
mod lyrics;
mod manager;
mod metadata;
mod native_autoplay_taste;
mod native_cache;
mod native_collections;
mod native_directory_stats;
mod native_id3;
mod native_library;
mod native_listing;
mod native_lyrics;
mod native_lyrics_translation;
mod native_playlist_write;
mod native_playlists;
mod progress;
mod repository;
mod tags;
mod usb_audio;

uniffi::setup_scaffolding!();

pub use cancellation::{CancellationDomain, CancellationError, CancellationRegistry, RequestLease};
pub use data_jobs::run_native_data_job;
pub use extensions::{DownloadDirectoryScope, ExtensionEnvironment, JsExtensionError};
pub use ffmpeg::FfmpegCommands;
pub use filename::build_filename;
pub use hires::check_hires_authenticity;
pub use logging::LogBuffer;
pub use lyrics::LyricsRequest;
pub use manager::{ExtensionManager, ExtensionManagerError};
pub use progress::{DownloadProgressSubscription, DownloadState};
pub use repository::ExtensionRepository;
pub use tags::read_file_metadata;

#[uniffi::export]
pub fn sanitize_filename(filename: String) -> String {
    toadplayer_core::filename::sanitize_filename(&filename)
}
