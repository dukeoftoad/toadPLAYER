//! Metadata and embedded cover extraction from a native descriptor using `toadplayer_core`.
use crate::cancellation::RequestLease;
use crate::tags::{AudioTagsError, check_lease, open_audio_file};
use toadplayer_core::{cover, tags};
use sha2::{Digest, Sha256};
use std::io::Read;
use std::path::Path;
use std::sync::Arc;
use std::time::{SystemTime, UNIX_EPOCH};

pub const LIBRARY_COVER_REGENERATE_MARKER: &str = ".regenerate";

/// A folder image larger than this is not a photograph; refuse it rather
/// than feed a mislabelled archive to the decoder.
const FOLDER_IMAGE_LIMIT: u64 = 24 * 1024 * 1024;

/// Base names a folder image may carry, in priority order.
const FOLDER_IMAGE_BASES: [&str; 6] = ["cover", "folder", "albumart", "front", "album", "art"];
/// Extensions a folder image may carry, in priority order.
const FOLDER_IMAGE_EXTENSIONS: [&str; 4] = ["jpg", "jpeg", "png", "webp"];

pub fn library_cover_stem(key: &str) -> String {
    let digest = Sha256::digest(key.as_bytes());
    let hex: String = digest[..16].iter().map(|byte| format!("{byte:02x}")).collect();
    format!("cover_{hex}")
}

pub fn library_cover_is_current(modified: SystemTime, regenerate: Option<SystemTime>) -> bool {
    regenerate.is_none_or(|marker| modified >= marker)
}

/// Pick the folder image (cover.jpg and friends) from a directory's file
/// names. The original spelling is returned so callers can match it back
/// against their own entries; `None` when no name looks like folder artwork.
#[uniffi::export]
pub fn library_folder_image(names: Vec<String>) -> Option<String> {
    let mut candidates = std::collections::HashMap::<(String, String), String>::new();
    for name in names {
        let trimmed = name.trim();
        if trimmed.is_empty() {
            continue;
        }
        let lower = trimmed.to_ascii_lowercase();
        let Some((base, extension)) = lower.rsplit_once('.') else {
            continue;
        };
        if base.is_empty() || !FOLDER_IMAGE_EXTENSIONS.contains(&extension) {
            continue;
        }
        candidates
            .entry((base.to_owned(), extension.to_owned()))
            .or_insert_with(|| trimmed.to_owned());
    }
    for base in FOLDER_IMAGE_BASES {
        for extension in FOLDER_IMAGE_EXTENSIONS {
            if let Some(name) = candidates.get(&(base.to_owned(), extension.to_owned())) {
                return Some(name.clone());
            }
        }
    }
    None
}

/// True when a directory name marks one disc of a multi-disc album
/// ("disc 1", "disk 02", "cd3"); such folders usually leave the artwork
/// to their parent directory.
#[uniffi::export]
pub fn is_library_disc_folder(name: String) -> bool {
    let name = name.trim().to_ascii_lowercase();
    let rest = name
        .strip_prefix("disc")
        .or_else(|| name.strip_prefix("disk"))
        .or_else(|| name.strip_prefix("cd"));
    match rest {
        Some(rest) => {
            let rest = rest.trim();
            !rest.is_empty() && rest.bytes().all(|byte| byte.is_ascii_digit())
        }
        None => false,
    }
}

/// Store the Library thumbnail of the folder image open at `path` (a
/// `/proc/self/fd` reference) inside `directory`, content-addressed so a
/// replaced image gets a fresh file. Returns the stored path, or `None`
/// when the image cannot be read, decoded or written.
#[uniffi::export]
pub fn cache_library_folder_cover(directory: String, path: String) -> Option<String> {
    let check = || Ok(());
    let mut file = open_audio_file(&path).ok()?;
    let mut data = Vec::new();
    let mut limited = (&mut file).take(FOLDER_IMAGE_LIMIT + 1);
    limited.read_to_end(&mut data).ok()?;
    if data.is_empty() || data.len() as u64 > FOLDER_IMAGE_LIMIT {
        return None;
    }
    let thumbnail = cover::library_thumbnail(&data, &check).ok()?;
    let extension = if thumbnail.starts_with(b"\x89PNG") {
        "png"
    } else {
        "jpg"
    };
    let digest = Sha256::digest(&thumbnail);
    let hex: String = digest.iter().map(|byte| format!("{byte:02x}")).collect();
    let output = Path::new(&directory).join(format!("cover_content_{hex}.{extension}"));
    if output.is_file() {
        return Some(output.to_string_lossy().into_owned());
    }
    let nanos = SystemTime::now()
        .duration_since(UNIX_EPOCH)
        .map(|elapsed| elapsed.as_nanos())
        .unwrap_or_default();
    let staged = Path::new(&directory).join(format!("cover_folder_{}.{}.tmp", std::process::id(), nanos));
    let write = (|| -> std::io::Result<()> {
        std::fs::write(&staged, &thumbnail)?;
        std::fs::rename(&staged, &output)
    })();
    let _ = std::fs::remove_file(&staged);
    write.ok()?;
    Some(output.to_string_lossy().into_owned())
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
