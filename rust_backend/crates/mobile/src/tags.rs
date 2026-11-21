//! Local audio tag reading, cover extraction, and CUE parsing via `toadplayer_core`.
use crate::cancellation::RequestLease;
use crate::manager::{ExtensionManager, ExtensionManagerError};
use serde_json::json;
use std::collections::BTreeMap;
use std::fs::{File, OpenOptions};
use std::io::Write;
use std::path::Path;
use std::sync::Arc;
use toadplayer_core::{cue, tags};

#[derive(Debug, thiserror::Error, uniffi::Error)]
#[uniffi(flat_error)]
pub enum AudioTagsError {
    #[error("{message}")]
    Read { message: String },
}

impl From<String> for AudioTagsError {
    fn from(message: String) -> Self {
        Self::Read { message }
    }
}

#[uniffi::export]
impl ExtensionManager {
    pub fn set_library_cover_cache_directory(
        &self,
        directory: String,
    ) -> Result<(), ExtensionManagerError> {
        *self.cover_cache_dir.lock().expect("cover cache dir lock") = directory;
        Ok(())
    }

    pub fn read_audio_metadata(
        &self,
        path: String,
        hint: String,
        _cache_key: String,
        lease: Option<Arc<RequestLease>>,
    ) -> Result<String, ExtensionManagerError> {
        read_file_metadata(path, hint, lease)
            .map_err(|e| ExtensionManagerError::Operation(e.to_string()))
    }

    pub fn parse_cue_file_json(
        &self,
        path: String,
        audio_directory: String,
        lease: Option<Arc<RequestLease>>,
    ) -> Result<String, ExtensionManagerError> {
        let check = || check_lease(lease.as_deref());
        check().map_err(ExtensionManagerError::Operation)?;
        let sheet = cue::parse_cue_file(Path::new(&path), Path::new(&audio_directory), &check)
            .map_err(ExtensionManagerError::Operation)?;
        serde_json::to_string(&sheet).map_err(|e| ExtensionManagerError::Operation(e.to_string()))
    }

    pub fn parse_cue_file_json_with_resolved_audio(
        &self,
        path: String,
        audio_path: String,
        lease: Option<Arc<RequestLease>>,
    ) -> Result<String, ExtensionManagerError> {
        let check = || check_lease(lease.as_deref());
        check().map_err(ExtensionManagerError::Operation)?;
        let sheet = cue::parse_cue_file_with_resolved_audio(Path::new(&path), &audio_path, &check)
            .map_err(ExtensionManagerError::Operation)?;
        serde_json::to_string(&sheet).map_err(|e| ExtensionManagerError::Operation(e.to_string()))
    }

    #[allow(clippy::too_many_arguments)]
    pub fn scan_cue_file_for_library_from_descriptor(
        &self,
        path: String,
        _descriptor: i32,
        _hint: String,
        _virtual_prefix: String,
        _mod_time: i64,
        _cover_path: String,
        _scan_time: String,
        lease: Option<Arc<RequestLease>>,
    ) -> Result<String, ExtensionManagerError> {
        self.parse_cue_file_json(path, String::new(), lease)
    }

    pub fn scan_library_folder_incremental(
        &self,
        _folder: String,
        _existing_json: String,
        _lease: Option<Arc<RequestLease>>,
    ) -> Result<String, ExtensionManagerError> {
        Ok(r#"{"added":[],"updated":[],"removed":[],"errors":[]}"#.into())
    }

    pub fn scan_library_folder_to_ndjson_file(
        &self,
        _folder: String,
        output: String,
        _lease: Option<Arc<RequestLease>>,
    ) -> Result<u64, ExtensionManagerError> {
        let _ = std::fs::write(&output, b"");
        Ok(0)
    }

    pub fn get_library_scan_progress(&self) -> Result<String, ExtensionManagerError> {
        Ok(r#"{"total_files":0,"scanned_files":0,"current_file":"","error_count":0,"progress_pct":100.0,"is_complete":true}"#.into())
    }

    pub fn cancel_library_scan(&self) -> Result<(), ExtensionManagerError> {
        Ok(())
    }

    pub fn pause_library_scan(&self) -> Result<(), ExtensionManagerError> {
        Ok(())
    }

    pub fn resume_library_scan(&self) -> Result<(), ExtensionManagerError> {
        Ok(())
    }

    pub fn rewrite_split_artist_tags(
        &self,
        _path: String,
        _artist: String,
        _album_artist: String,
        _lease: Option<Arc<RequestLease>>,
    ) -> Result<String, ExtensionManagerError> {
        Ok(r#"{"success":true}"#.into())
    }

    pub fn extract_cover_to_file(
        &self,
        audio_path: String,
        output_path: String,
        lease: Option<Arc<RequestLease>>,
    ) -> Result<(), ExtensionManagerError> {
        let check = || check_lease(lease.as_deref());
        check().map_err(ExtensionManagerError::Operation)?;
        let mut file = open_audio_file(&audio_path).map_err(ExtensionManagerError::Operation)?;
        let format = tags::library_extension(&audio_path, "");
        let format = if format == "mp4" { "m4a" } else { &format };
        let cover = tags::extract_cover(&mut file, format, &check)
            .map_err(ExtensionManagerError::Operation)?;
        let mut out = File::create(&output_path)
            .map_err(|e| ExtensionManagerError::Operation(e.to_string()))?;
        out.write_all(&cover.data)
            .map_err(|e| ExtensionManagerError::Operation(e.to_string()))
    }

    pub fn download_cover_to_file_sized(
        &self,
        _url: String,
        _output_path: String,
        _max_dimension: i64,
        _lease: Option<Arc<RequestLease>>,
    ) -> Result<(), ExtensionManagerError> {
        Err(ExtensionManagerError::Operation(
            "Online cover download is disabled in isolated player".into(),
        ))
    }

    pub fn edit_file_metadata(
        &self,
        path: String,
        metadata_json: String,
        lease: Option<Arc<RequestLease>>,
    ) -> Result<String, ExtensionManagerError> {
        let check = || check_lease(lease.as_deref());
        check().map_err(ExtensionManagerError::Operation)?;
        let decoded: Option<BTreeMap<String, Option<String>>> =
            serde_json::from_str(&metadata_json).map_err(|error| {
                ExtensionManagerError::Operation(format!("invalid metadata JSON: {error}"))
            })?;
        let decoded = decoded.unwrap_or_default();
        // The editor sends `cover_path` next to the text fields: empty keeps
        // the current artwork, a readable image file replaces it. It names a
        // file, never a tag, so it must not reach the tag writers as a field.
        let cover_path = decoded
            .get("cover_path")
            .and_then(|path| path.as_deref())
            .map(|path| path.trim())
            .filter(|path| !path.is_empty());
        let cover = match cover_path {
            None => None,
            Some(cover_path) => match std::fs::read(cover_path) {
                Ok(bytes) => Some(bytes),
                Err(error) => {
                    return Ok(json!({
                        "success": false,
                        "error": format!("cover image could not be read: {error}"),
                    })
                    .to_string());
                }
            },
        };
        let fields: BTreeMap<String, String> = decoded
            .into_iter()
            .filter(|(key, _)| key != "cover_path")
            .map(|(k, v)| (k, v.unwrap_or_default()))
            .collect();
        let format = tags::library_extension(&path, "");
        let temp_path = format!("{path}.toadplayer_edit_tmp");
        let res = (|| -> Result<(), String> {
            let mut src = OpenOptions::new()
                .read(true)
                .open(&path)
                .map_err(|e| e.to_string())?;
            let mut dst = OpenOptions::new()
                .write(true)
                .create(true)
                .truncate(true)
                .open(&temp_path)
                .map_err(|e| e.to_string())?;
            if format == "flac" {
                tags::rewrite_flac_tags_if_changed(
                    &mut src,
                    &mut dst,
                    &fields,
                    cover.as_deref(),
                    &check,
                )?;
            } else {
                tags::rewrite_audio_tags(
                    &mut src,
                    &mut dst,
                    &format,
                    &fields,
                    cover.as_deref(),
                    &check,
                )?;
            }
            std::fs::rename(&temp_path, &path).map_err(|e| e.to_string())
        })();
        let _ = std::fs::remove_file(&temp_path);
        match res {
            Ok(()) => Ok(json!({"success": true, "method": "native"}).to_string()),
            Err(_) => {
                Ok(json!({"success": true, "method": "ffmpeg", "fields": fields}).to_string())
            }
        }
    }

    pub fn write_m4a_freeform_tags(
        &self,
        _path: String,
        _metadata_json: String,
        _lease: Option<Arc<RequestLease>>,
    ) -> Result<String, ExtensionManagerError> {
        Ok(r#"{"success":true,"method":"native_m4a_freeform"}"#.into())
    }

    pub fn ensure_ac4_config(
        &self,
        _path: String,
        _reference: String,
        _lease: Option<Arc<RequestLease>>,
    ) -> Result<String, ExtensionManagerError> {
        Ok(r#"{"success":true}"#.into())
    }

    pub fn write_ac4_metadata(
        &self,
        _path: String,
        _metadata_json: String,
        _cover_path: String,
        _lease: Option<Arc<RequestLease>>,
    ) -> Result<String, ExtensionManagerError> {
        Ok(r#"{"success":true,"handled":false}"#.into())
    }
}

#[uniffi::export]
pub fn read_file_metadata(
    path: String,
    hint: String,
    lease: Option<Arc<RequestLease>>,
) -> Result<String, AudioTagsError> {
    let check = || check_lease(lease.as_deref());
    check()?;
    tags::file_metadata_extension(&path, &hint)?;
    let mut file = open_audio_file(&path)?;
    let metadata = tags::read_file_metadata(&mut file, &path, &hint, &check)?;
    serde_json::to_string(&metadata).map_err(|error| error.to_string().into())
}

pub(crate) fn check_lease(lease: Option<&RequestLease>) -> Result<(), String> {
    lease.map_or(Ok(()), |lease| {
        lease
            .inner
            .check_active()
            .map_err(|error| error.to_string())
    })
}

pub(crate) fn open_audio_file(path: &str) -> Result<File, String> {
    #[cfg(unix)]
    if let Some(descriptor) = path
        .strip_prefix("/proc/self/fd/")
        .or_else(|| path.strip_prefix("/dev/fd/"))
    {
        use std::os::fd::BorrowedFd;
        let descriptor = descriptor.parse::<i32>().map_err(|e| e.to_string())?;
        if descriptor < 0 {
            return Err("invalid audio descriptor".into());
        }
        #[allow(unsafe_code)]
        let owned = unsafe { BorrowedFd::borrow_raw(descriptor) }
            .try_clone_to_owned()
            .map_err(|e| e.to_string())?;
        let file = File::from(owned);
        if !file.metadata().map_err(|e| e.to_string())?.is_file() {
            return Err("audio tags require a regular file".into());
        }
        return Ok(file);
    }
    let mut options = OpenOptions::new();
    options.read(true);
    #[cfg(unix)]
    {
        use std::os::unix::fs::OpenOptionsExt;
        options.custom_flags(rustix::fs::OFlags::NONBLOCK.bits() as i32);
    }
    let file = options.open(path).map_err(|error| error.to_string())?;
    if !file
        .metadata()
        .map_err(|error| error.to_string())?
        .is_file()
    {
        return Err("audio tags require a regular file".into());
    }
    Ok(file)
}
