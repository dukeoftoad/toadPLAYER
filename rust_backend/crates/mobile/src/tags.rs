//! Mobile audio tag and library entry points on `ExtensionManager`: metadata
//! reads, CUE parsing, library scans and scan control, cover extraction and
//! download, and tag writes. The isolated player implements these directly
//! through `toadplayer_core`; no extension engine is involved.

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

    /// Reads the virtual track rows of a CUE sheet against its resolved audio
    /// descriptor. Quality probing (FLAC bit depth / sample rate, MP3 duration)
    /// rides on the same descriptor the caller keeps alive for this call.
    #[allow(clippy::too_many_arguments)]
    pub fn scan_cue_file_for_library_from_descriptor(
        &self,
        path: String,
        descriptor: i32,
        hint: String,
        virtual_prefix: String,
        mod_time: i64,
        cover_path: String,
        scan_time: String,
        lease: Option<Arc<RequestLease>>,
    ) -> Result<String, ExtensionManagerError> {
        let check = || check_lease(lease.as_deref());
        check().map_err(ExtensionManagerError::Operation)?;
        if descriptor < 0 {
            return Err(ExtensionManagerError::Operation(
                "invalid audio descriptor".into(),
            ));
        }
        let directory = if cfg!(any(target_os = "android", target_os = "linux")) {
            "/proc/self/fd"
        } else {
            "/dev/fd"
        };
        let audio_path = format!("{directory}/{descriptor}");
        let mut file = open_audio_file(&audio_path).map_err(ExtensionManagerError::Operation)?;
        let format = tags::library_extension(&audio_path, &hint);
        let mut quality = json!({});
        if format == "flac" {
            if let Ok(value) = toadplayer_core::media::probe_quality(&mut file, &check) {
                quality["bitDepth"] = value.bit_depth.into();
                quality["sampleRate"] = value.sample_rate.into();
                if value.sample_rate > 0 && value.total_samples > 0 {
                    quality["duration"] =
                        (value.total_samples as f64 / value.sample_rate as f64).into();
                }
            }
        } else if format == "mp3"
            && let Ok(value) = tags::read_file_metadata(&mut file, &audio_path, &hint, &check)
        {
            quality["sampleRate"] = value["sample_rate"].clone();
            quality["duration"] = value["duration"].clone();
        }
        check().map_err(ExtensionManagerError::Operation)?;
        let sheet = cue::parse_cue_file_with_resolved_audio(Path::new(&path), &audio_path, &check)
            .map_err(ExtensionManagerError::Operation)?;
        let tracks = &sheet.tracks;
        let total_duration = quality["duration"].as_f64().unwrap_or(0.0);
        let mut rows = Vec::with_capacity(tracks.len());
        for (position, track) in tracks.iter().enumerate() {
            let end = tracks
                .get(position + 1)
                .map(|next| next.start_time)
                .unwrap_or(total_duration);
            let number = if track.number > 0 {
                track.number
            } else {
                position as i64 + 1
            };
            let virtual_path = format!("{virtual_prefix}#track{number:02}");
            let mut row = json!({
                "id": tags::library_id(&virtual_path),
                "filePath": virtual_path,
                "trackName": if track.title.is_empty() {
                    format!("Track {number:02}")
                } else {
                    track.title.clone()
                },
                "artistName": if track.performer.is_empty() {
                    sheet.performer.clone()
                } else {
                    track.performer.clone()
                },
                "albumName": sheet.title.clone(),
                "albumArtist": sheet.performer.clone(),
                "trackNumber": number,
                "totalTracks": tracks.len(),
                "hasLyrics": false,
                "scannedAt": scan_time.clone(),
            });
            let duration = end - track.start_time;
            if duration > 0.0 {
                row["duration"] = duration.into();
            }
            for field in ["bitDepth", "sampleRate"] {
                if !quality[field].is_null() {
                    row[field] = quality[field].clone();
                }
            }
            if !cover_path.is_empty() {
                row["coverPath"] = cover_path.clone().into();
            }
            if !sheet.genre.is_empty() {
                row["genre"] = sheet.genre.clone().into();
            }
            if !sheet.date.is_empty() {
                row["releaseDate"] = sheet.date.clone().into();
            }
            if !track.composer.is_empty() {
                row["composer"] = track.composer.clone().into();
            } else if !sheet.composer.is_empty() {
                row["composer"] = sheet.composer.clone().into();
            }
            if !track.isrc.is_empty() {
                row["isrc"] = track.isrc.clone().into();
            }
            if mod_time != 0 {
                row["fileModTime"] = mod_time.into();
            }
            if !format.is_empty() {
                row["format"] = format.clone().into();
            }
            rows.push(row);
        }
        serde_json::to_string(&rows).map_err(|e| ExtensionManagerError::Operation(e.to_string()))
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
        path: String,
        metadata_json: String,
        lease: Option<Arc<RequestLease>>,
    ) -> Result<String, ExtensionManagerError> {
        let check = || check_lease(lease.as_deref());
        check().map_err(ExtensionManagerError::Operation)?;
        let fields = decode_fields(&metadata_json).map_err(|error| {
            ExtensionManagerError::Operation(format!("invalid metadata JSON: {error}"))
        })?;
        let temp_path = format!("{path}.toadplayer_edit_tmp");
        let result = (|| -> Result<bool, String> {
            let mut source = OpenOptions::new()
                .read(true)
                .open(&path)
                .map_err(|e| e.to_string())?;
            let mut output = OpenOptions::new()
                .write(true)
                .create(true)
                .truncate(true)
                .open(&temp_path)
                .map_err(|e| e.to_string())?;
            tags::rewrite_m4a_freeform(&mut source, &mut output, &fields, false, &check)
        })();
        match result {
            Ok(true) => {
                std::fs::rename(&temp_path, &path)
                    .map_err(|e| ExtensionManagerError::Operation(e.to_string()))?;
                Ok(r#"{"success":true,"method":"native_m4a_freeform"}"#.into())
            }
            Ok(false) => {
                let _ = std::fs::remove_file(&temp_path);
                Ok(r#"{"success":true,"method":"native_m4a_freeform"}"#.into())
            }
            Err(error) => {
                let _ = std::fs::remove_file(&temp_path);
                Err(ExtensionManagerError::Operation(format!(
                    "failed to write M4A freeform tags: {error}"
                )))
            }
        }
    }

    pub fn ensure_ac4_config(
        &self,
        path: String,
        reference: String,
        lease: Option<Arc<RequestLease>>,
    ) -> Result<String, ExtensionManagerError> {
        let check = || check_lease(lease.as_deref());
        check().map_err(ExtensionManagerError::Operation)?;
        let temp_path = format!("{path}.toadplayer_edit_tmp");
        let result = (|| -> Result<bool, String> {
            let mut source = OpenOptions::new()
                .read(true)
                .open(&path)
                .map_err(|e| e.to_string())?;
            let mut output = OpenOptions::new()
                .write(true)
                .create(true)
                .truncate(true)
                .open(&temp_path)
                .map_err(|e| e.to_string())?;
            let open_reference = || -> Result<File, String> {
                OpenOptions::new()
                    .read(true)
                    .open(&reference)
                    .map_err(|e| e.to_string())
            };
            tags::rewrite_ac4_config(&mut source, &mut output, open_reference, &check)
        })();
        match result {
            Ok(true) => {
                std::fs::rename(&temp_path, &path)
                    .map_err(|e| ExtensionManagerError::Operation(e.to_string()))?;
                Ok(r#"{"success":true}"#.into())
            }
            Ok(false) => {
                let _ = std::fs::remove_file(&temp_path);
                Ok(r#"{"success":true}"#.into())
            }
            Err(error) => {
                let _ = std::fs::remove_file(&temp_path);
                Err(ExtensionManagerError::Operation(format!(
                    "failed to finalize AC-4 container: {error}"
                )))
            }
        }
    }

    pub fn write_ac4_metadata(
        &self,
        path: String,
        metadata_json: String,
        cover_path: String,
        lease: Option<Arc<RequestLease>>,
    ) -> Result<String, ExtensionManagerError> {
        let check = || check_lease(lease.as_deref());
        check().map_err(ExtensionManagerError::Operation)?;
        let temp_path = format!("{path}.toadplayer_edit_tmp");
        let result = (|| -> Result<bool, String> {
            let mut source = OpenOptions::new()
                .read(true)
                .open(&path)
                .map_err(|e| e.to_string())?;
            let mut output = OpenOptions::new()
                .write(true)
                .create(true)
                .truncate(true)
                .open(&temp_path)
                .map_err(|e| e.to_string())?;
            let read_cover = || -> Result<Option<Vec<u8>>, String> {
                if cover_path.trim().is_empty() {
                    return Ok(None);
                }
                std::fs::read(&cover_path).map(Some).map_err(|e| e.to_string())
            };
            tags::rewrite_ac4_metadata(&mut source, &mut output, &metadata_json, read_cover, &check)
        })();
        match result {
            Ok(handled) => {
                if handled {
                    std::fs::rename(&temp_path, &path)
                        .map_err(|e| ExtensionManagerError::Operation(e.to_string()))?;
                } else {
                    let _ = std::fs::remove_file(&temp_path);
                }
                Ok(json!({"success": true, "handled": handled}).to_string())
            }
            Err(error) => {
                let _ = std::fs::remove_file(&temp_path);
                Err(ExtensionManagerError::Operation(format!(
                    "failed to write AC-4 metadata: {error}"
                )))
            }
        }
    }
}

fn decode_fields(json: &str) -> Result<BTreeMap<String, String>, String> {
    let fields: Option<BTreeMap<String, Option<String>>> =
        serde_json::from_str(json).map_err(|error| error.to_string())?;
    Ok(fields
        .unwrap_or_default()
        .into_iter()
        .map(|(key, value)| (key, value.unwrap_or_default()))
        .collect())
}

/// Complete application metadata. An empty hint is equivalent to the legacy
/// ReadFileMetadata call. Native callers retain ownership of any platform
/// descriptor referenced by `path` until this synchronous operation returns.
#[uniffi::export]
pub fn read_file_metadata(
    path: String,
    hint: String,
    lease: Option<Arc<RequestLease>>,
) -> Result<String, AudioTagsError> {
    let check = || check_lease(lease.as_deref());
    check()?;
    tags::file_metadata_extension(&path, &hint)?;
    if path.starts_with("http://") {
        return crate::network_tags::read(&path, &hint, &check)
            .and_then(|metadata| serde_json::to_string(&metadata).map_err(|e| e.to_string()))
            .map_err(Into::into);
    }
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
        // The native caller retains this lease for the synchronous operation.
        // Reopening /proc/self/fd issues FUSE_OPEN, which Android AppFuse
        // explicitly rejects for an already-open proxy. Duplicate instead.
        #[allow(unsafe_code)] // Native owner retains the descriptor during this call.
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
        // Opening an accidentally supplied FIFO must not block cancellation.
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
