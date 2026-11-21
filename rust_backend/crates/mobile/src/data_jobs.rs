//! Native player data jobs: AutoMix beat/tempo/phrase DSP analysis, audio feature extraction,
//! spectrogram cutoff estimation, cover palette quantization, lyrics parsing/alignment,
//! ID3v2.3 lyrics/picture writing, and SQLite playlist/queue helpers.
use crate::cancellation::RequestLease;
use crate::manager::ExtensionManager;
use serde_json::{Value, json};
use sha2::{Digest, Sha256};
use std::{fs::File, io::Read, sync::Arc};

#[derive(Debug, thiserror::Error, uniffi::Error)]
#[uniffi(flat_error)]
pub enum NativeDataJobError {
    #[error("{0}")]
    Operation(String),
}

#[uniffi::export]
pub fn run_native_data_job(
    request_json: String,
    bytes: Vec<u8>,
    lease: Option<Arc<RequestLease>>,
) -> Result<String, NativeDataJobError> {
    run(&request_json, &bytes, lease.as_deref(), None)
}

#[uniffi::export]
impl ExtensionManager {
    pub fn run_native_data_job(
        &self,
        request_json: String,
        bytes: Vec<u8>,
        lease: Option<Arc<RequestLease>>,
    ) -> Result<String, NativeDataJobError> {
        run(&request_json, &bytes, lease.as_deref(), Some(self))
    }
}

fn run(
    request_json: &str,
    bytes: &[u8],
    lease: Option<&RequestLease>,
    _manager: Option<&ExtensionManager>,
) -> Result<String, NativeDataJobError> {
    let check = || crate::tags::check_lease(lease);
    check().map_err(NativeDataJobError::Operation)?;
    let request: Value = serde_json::from_str(request_json)
        .map_err(|error| NativeDataJobError::Operation(error.to_string()))?;
    let value = execute(&request, bytes, &check).map_err(NativeDataJobError::Operation)?;
    if value.get("committed") != Some(&Value::Bool(true)) {
        check().map_err(NativeDataJobError::Operation)?;
    }
    serde_json::to_string(&value).map_err(|error| NativeDataJobError::Operation(error.to_string()))
}

fn execute(
    request: &Value,
    bytes: &[u8],
    check: &(dyn Fn() -> Result<(), String> + Sync),
) -> Result<Value, String> {
    let operation = string(request, "operation")?;
    match operation {
        "hash_file" => Ok(json!({"sha256": hash_file(string(request, "path")?, check)?})),
        "directory_stats" => crate::native_directory_stats::execute(request, check),
        "train_autoplay_taste" => crate::native_autoplay_taste::execute(request, check),
        "parse_network_listing" => crate::native_listing::execute(request, Some(bytes)),
        "parse_playlist" | "build_m3u" => {
            crate::native_playlists::execute(request, Some(bytes), check)
        }
        "write_id3v23_lyrics" | "build_metadata_picture" => {
            crate::native_id3::execute(request, Some(bytes), check)
        }
        "parse_lyrics" => crate::native_lyrics::execute(request, Some(bytes), check),
        "parse_lyrics_translation_reply" => {
            crate::native_lyrics_translation::execute(request, Some(bytes), check)
        }
        "palette" => {
            let colors = toadplayer_core::native_palette::quantize_rgba(bytes, check)?;
            Ok(json!({"colors": colors}))
        }
        "automix" => {
            let grid = toadplayer_core::native_audio_analysis::analyze_automix_pcm_file(
                string(request, "path")?,
                check,
            )?;
            serde_json::to_value(grid).map_err(|error| error.to_string())
        }
        "audio_features" => {
            use toadplayer_core::native_audio_features as features;
            let paths = request
                .get("paths")
                .and_then(Value::as_array)
                .ok_or("Missing native data field: paths")?
                .iter()
                .map(|path| path.as_str().ok_or("Invalid audio feature window path"))
                .collect::<Result<Vec<_>, _>>()?;
            let described = features::analyze_audio_features_files(&paths, check)?;
            Ok(json!({
                "version": features::AUDIO_FEATURES_VERSION,
                "features": described.map(|value| value.to_vector()),
            }))
        }
        "spectral_cutoff" => {
            let width = request.get("width").and_then(Value::as_u64).ok_or("Missing width")?;
            let height = request.get("height").and_then(Value::as_u64).ok_or("Missing height")?;
            let maximum = request
                .get("max_frequency")
                .and_then(Value::as_f64)
                .ok_or("Missing maximum frequency")?;
            let cutoff = toadplayer_core::native_audio_analysis::estimate_spectral_cutoff_file(
                string(request, "path")?,
                usize::try_from(width).map_err(|e| e.to_string())?,
                usize::try_from(height).map_err(|e| e.to_string())?,
                maximum,
                check,
            )?;
            Ok(json!({"cutoff": cutoff}))
        }
        "collections_snapshot" => crate::native_collections::execute(request, check),
        "collections_stage_playlist_additions" => {
            crate::native_playlist_write::execute(request, check)
        }
        operation if operation.starts_with("library_") => {
            crate::native_library::execute(request, check)
        }
        operation if operation.starts_with("cache_") => {
            crate::native_cache::execute(request, check)
        }
        _ => Err(format!("Unsupported operation in isolated player: {operation}")),
    }
}

pub(crate) fn string<'a>(request: &'a Value, name: &str) -> Result<&'a str, String> {
    request
        .get(name)
        .and_then(Value::as_str)
        .ok_or_else(|| format!("Missing native data field: {name}"))
}

pub(crate) fn hash_file(
    path: &str,
    check: &dyn Fn() -> Result<(), String>,
) -> Result<String, String> {
    check()?;
    let mut file = File::open(path).map_err(|error| error.to_string())?;
    if !file.metadata().map_err(|error| error.to_string())?.is_file() {
        return Err("Hash input must be a regular file".into());
    }
    let mut hash = Sha256::new();
    let mut buffer = [0; 64 * 1024];
    loop {
        check()?;
        let count = file.read(&mut buffer).map_err(|error| error.to_string())?;
        if count == 0 {
            break;
        }
        hash.update(&buffer[..count]);
    }
    check()?;
    Ok(toadplayer_core::lower_hex(&hash.finalize()))
}
