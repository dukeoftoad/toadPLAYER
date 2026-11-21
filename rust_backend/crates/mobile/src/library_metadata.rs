//! Metadata and embedded cover extraction from a native descriptor using `toadplayer_core`.
use crate::cancellation::RequestLease;
use crate::tags::{AudioTagsError, check_lease, open_audio_file};
use toadplayer_core::{cover, tags};
use sha2::{Digest, Sha256};
use std::path::Path;
use std::sync::Arc;
use std::time::{SystemTime, UNIX_EPOCH};

pub const LIBRARY_COVER_REGENERATE_MARKER: &str = ".regenerate";

pub fn library_cover_stem(key: &str) -> String {
    let digest = Sha256::digest(key.as_bytes());
    let hex: String = digest[..16].iter().map(|byte| format!("{byte:02x}")).collect();
    format!("cover_{hex}")
}

pub fn library_cover_is_current(modified: SystemTime, regenerate: Option<SystemTime>) -> bool {
    regenerate.is_none_or(|marker| modified >= marker)
}

#[derive(uniffi::Record)]
pub struct DescriptorLibraryMetadata {
    pub metadata_json: String,
    pub cover_bytes: Vec<u8>,
    pub cover_mime: String,
}

#[derive(uniffi::Record)]
pub struct LibraryCoverSlot {
    pub stem: String,
    pub cached: Option<String>,
}

#[uniffi::export]
pub fn library_cover_slot(directory: String, key: String) -> LibraryCoverSlot {
    let stem = library_cover_stem(key.trim());
    let directory = Path::new(&directory);
    let regenerate = std::fs::metadata(directory.join(LIBRARY_COVER_REGENERATE_MARKER))
        .and_then(|metadata| metadata.modified())
        .ok();
    let cached = ["jpg", "png"]
        .into_iter()
        .filter_map(|extension| {
            let path = directory.join(format!("{stem}.{extension}"));
            let metadata = std::fs::metadata(&path).ok().filter(|metadata| metadata.is_file())?;
            let modified = metadata.modified().unwrap_or(UNIX_EPOCH);
            library_cover_is_current(modified, regenerate).then_some((modified, path))
        })
        .max_by_key(|(modified, _)| *modified)
        .map(|(_, path)| path.to_string_lossy().into_owned());
    LibraryCoverSlot { stem, cached }
}

fn descriptor_path(descriptor: i32) -> Result<String, AudioTagsError> {
    if descriptor < 0 {
        return Err("invalid audio descriptor".to_owned().into());
    }
    let directory = if cfg!(any(target_os = "android", target_os = "linux")) {
        "/proc/self/fd"
    } else {
        "/dev/fd"
    };
    Ok(format!("{directory}/{descriptor}"))
}

#[uniffi::export]
pub fn extract_cover_from_descriptor(
    descriptor: i32,
    hint: String,
    lease: Option<Arc<RequestLease>>,
) -> Result<Vec<u8>, AudioTagsError> {
    let check = || check_lease(lease.as_deref());
    check()?;
    let path = descriptor_path(descriptor)?;
    let mut file = open_audio_file(&path)?;
    let format = tags::library_extension(&path, &hint);
    let format = if format == "mp4" { "m4a" } else { &format };
    Ok(tags::extract_cover(&mut file, format, &check)?.data)
}

#[uniffi::export]
pub fn read_library_metadata_from_descriptor(
    descriptor: i32,
    hint: String,
    scan_time: String,
    include_cover: bool,
    lease: Option<Arc<RequestLease>>,
) -> Result<DescriptorLibraryMetadata, AudioTagsError> {
    let path = descriptor_path(descriptor)?;
    let check = || check_lease(lease.as_deref());
    check()?;
    let mut file = open_audio_file(&path)?;
    let format = tags::library_extension(&path, &hint);
    let (metadata, mut artwork) = if include_cover && format == "flac" {
        tags::read_library_metadata_with_cover(&mut file, &path, &hint, &scan_time, 0, &check)?
    } else {
        let metadata = tags::read_library_metadata(&mut file, &path, &hint, &scan_time, 0, &check)?;
        let artwork = if include_cover {
            let format = if format == "mp4" { "m4a" } else { &format };
            tags::extract_cover(&mut file, format, &check).ok()
        } else {
            None
        };
        (metadata, artwork)
    };
    if let Some(artwork) = artwork.as_mut()
        && let Ok(resized) = cover::library_thumbnail(&artwork.data, &check)
    {
        artwork.mime = if resized.starts_with(b"\x89PNG") {
            "image/png"
        } else if resized.starts_with(b"\xff\xd8") {
            "image/jpeg"
        } else {
            &artwork.mime
        }
        .into();
        artwork.data = resized.to_vec();
    }
    check()?;
    let (cover_bytes, cover_mime) = artwork.map_or_else(
        || (Vec::new(), String::new()),
        |artwork| (artwork.data, artwork.mime),
    );
    Ok(DescriptorLibraryMetadata {
        metadata_json: metadata.to_string(),
        cover_bytes,
        cover_mime,
    })
}
