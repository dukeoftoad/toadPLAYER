//! Local file lyrics reading/embedding and the LRCLIB online provider.
//!
//! The provider layer in `toadplayer_core` ships the LRCLIB response model,
//! matchers and selection logic; this module adds the HTTP transport and the
//! UniFFI surface so the player's "Search lyrics online" flow actually works:
//! an embedded-lyrics miss falls back to LRCLIB, honoring the provider
//! settings the app delivers at startup.
use crate::cancellation::RequestLease;
use crate::manager::{ExtensionManager, ExtensionManagerError};
use crate::tags::{check_lease, open_audio_file};
use toadplayer_core::tags;
use toadplayer_core::lyrics::{decode_response, lrclib::{select, LrcLibResponse}};
use serde_json::json;
use std::collections::BTreeMap;
use std::fs::OpenOptions;
use std::sync::{Arc, OnceLock};
use std::time::Duration;
use toadplayer_network::{HttpRequest, NetworkService};

/// Wall-clock budget for one LRCLIB request (search endpoint only; the API is
/// a single HTTPS GET returning a JSON array).
const LRCLIB_TIMEOUT: Duration = Duration::from_secs(10);

#[derive(uniffi::Record)]
pub struct LyricsRequest {
    pub spotify_id: String,
    pub track: String,
    pub artist: String,
    pub file_path: String,
    pub duration_ms: i64,
}

/// App-owned HTTP service, created once and reused for every provider fetch.
/// `NetworkService::new()` builds its own tokio runtime plus DNS/TLS state, so
/// it must not be constructed per request.
fn network_service() -> Option<&'static Arc<NetworkService>> {
    static SERVICE: OnceLock<Option<Arc<NetworkService>>> = OnceLock::new();
    SERVICE
        .get_or_init(|| NetworkService::new().ok())
        .as_ref()
}

/// One provider hit: the raw lyric text, its sync type and instrumental flag.
type ProviderHit = Option<(String, &'static str, bool)>;

/// Search LRCLIB for the track. A network or parsing failure degrades to
/// `None` (a miss), never an error: an offline device must behave exactly
/// like a "no lyrics found" search.
fn lrclib_search(track: &str, artist: &str, duration_ms: i64, query: &str) -> ProviderHit {
    let track = track.trim();
    let artist = artist.trim();
    if track.is_empty() && artist.is_empty() {
        return None;
    }
    let mut url = String::from("https://lrclib.net/api/search?");
    let mut params = url::form_urlencoded::Serializer::new(String::new());
    if !track.is_empty() {
        params.append_pair("track_name", track);
    }
    if !artist.is_empty() {
        params.append_pair("artist_name", artist);
    }
    url.push_str(&params.finish());
    let Some(service) = network_service() else {
        return None;
    };
    let session = service.native_session(LRCLIB_TIMEOUT);
    let request = HttpRequest {
        url,
        method: "GET".into(),
        body: String::new(),
        headers: BTreeMap::new(),
        default_json: false,
        user_agent: "Toadplayer/1.0 (https://github.com/dukeoftoad/toadPLAYER)".into(),
    };
    let response = match session.request(request, || Ok(())) {
        Ok(response) => response,
        Err(_) => return None,
    };
    if response.status != 200 {
        return None;
    }
    let results: Vec<LrcLibResponse> = match decode_response(&response.body) {
        Ok(results) => results,
        Err(_) => return None,
    };
    let chosen = select(&results, query, track, artist, duration_ms as f64 / 1000.0)?;
    if chosen.instrumental {
        return Some((String::new(), "LINE_SYNCED", true));
    }
    if !chosen.synced_lyrics.trim().is_empty() {
        return Some((chosen.synced_lyrics.clone(), "LINE_SYNCED", false));
    }
    if !chosen.plain_lyrics.trim().is_empty() {
        return Some((chosen.plain_lyrics.clone(), "UNSYNCED", false));
    }
    None
}

impl ExtensionManager {
    /// Whether the stored provider settings enable LRCLIB. An empty or
    /// unparseable list keeps every built-in enabled, so a fresh install can
    /// search before the settings UI is ever touched. Entries are accepted as
    /// plain provider ids (`"lrclib"`) or objects with `id`/`name` and an
    /// optional `enabled` flag, mirroring the app's provider-priority model.
    fn lrclib_enabled(&self) -> bool {
        let stored = self.lyrics_providers_json.lock().expect("lyrics providers lock");
        let parsed: Option<serde_json::Value> = serde_json::from_str(&stored).ok();
        let Some(entries) = parsed.and_then(|value| value.as_array().cloned()) else {
            return true;
        };
        if entries.is_empty() {
            return true;
        }
        entries.iter().any(|entry| {
            let id = entry
                .as_str()
                .map(str::to_owned)
                .or_else(|| {
                    entry
                        .get("id")
                        .or_else(|| entry.get("name"))
                        .and_then(|value| value.as_str())
                        .map(str::to_owned)
                })
                .unwrap_or_default();
            let enabled = entry
                .get("enabled")
                .and_then(|value| value.as_bool())
                .unwrap_or(true);
            enabled && id.eq_ignore_ascii_case("lrclib")
        })
    }

    /// Search LRCLIB unless the request is missing both track and artist.
    fn provider_hit(&self, request: &LyricsRequest) -> ProviderHit {
        if !self.lrclib_enabled() {
            return None;
        }
        lrclib_search(
            &request.track,
            &request.artist,
            request.duration_ms,
            &request.spotify_id,
        )
    }
}

#[uniffi::export]
impl ExtensionManager {
    pub fn embed_lyrics_to_file(
        &self,
        path: String,
        lyrics: String,
        lease: Option<Arc<RequestLease>>,
    ) -> Result<String, ExtensionManagerError> {
        let check = || check_lease(lease.as_deref());
        check().map_err(ExtensionManagerError::Operation)?;
        let fields = BTreeMap::from([
            ("LYRICS".to_owned(), lyrics.clone()),
            ("UNSYNCEDLYRICS".to_owned(), lyrics),
        ]);
        let temp_path = format!("{path}.toadplayer_lyrics_tmp");
        let result = (|| -> Result<(), String> {
            let mut source = OpenOptions::new().read(true).open(&path).map_err(|e| e.to_string())?;
            let mut output = OpenOptions::new()
                .write(true)
                .create(true)
                .truncate(true)
                .open(&temp_path)
                .map_err(|e| e.to_string())?;
            tags::embed_flac_metadata(&mut source, &mut output, &fields, "", None, &check)?;
            std::fs::rename(&temp_path, &path).map_err(|e| e.to_string())
        })();
        let _ = std::fs::remove_file(&temp_path);
        match result {
            Ok(()) => Ok(json!({"success": true, "message": "Lyrics embedded successfully"}).to_string()),
            Err(error) => Ok(json!({"success": false, "error": error}).to_string()),
        }
    }

    pub fn get_lyrics_lrc(
        &self,
        request: LyricsRequest,
        lease: Option<Arc<RequestLease>>,
    ) -> Result<String, ExtensionManagerError> {
        let check = || check_lease(lease.as_deref());
        check().map_err(ExtensionManagerError::Operation)?;
        if request.file_path.trim().is_empty() {
            return Ok(String::new());
        }
        let mut file = open_audio_file(&request.file_path).map_err(ExtensionManagerError::Operation)?;
        let meta = tags::read_file_metadata(&mut file, &request.file_path, "", &check)
            .map_err(ExtensionManagerError::Operation)?;
        Ok(meta["lyrics"].as_str().unwrap_or("").to_owned())
    }

    pub fn get_lyrics_lrc_with_source(
        &self,
        request: LyricsRequest,
        lease: Option<Arc<RequestLease>>,
    ) -> Result<String, ExtensionManagerError> {
        let check = || check_lease(lease.as_deref());
        check().map_err(ExtensionManagerError::Operation)?;
        let embedded = if request.file_path.trim().is_empty() {
            String::new()
        } else {
            open_audio_file(&request.file_path)
                .map_err(ExtensionManagerError::Operation)
                .and_then(|mut file| {
                    tags::read_file_metadata(&mut file, &request.file_path, "", &check)
                        .map_err(ExtensionManagerError::Operation)
                })
                .map(|meta| meta["lyrics"].as_str().unwrap_or("").to_owned())
                .unwrap_or_default()
        };
        if !embedded.trim().is_empty() {
            return Ok(json!({
                "lyrics": embedded,
                "source": "embedded",
                "sync_type": "",
                "instrumental": false,
            }).to_string());
        }
        // Embedded miss: fall through to the provider search so the player's
        // "Search lyrics online" flow works without a file path (SAF streams,
        // downloads) and fills the gap for files without embedded lyrics.
        let hit = self.provider_hit(&request);
        match hit {
            Some((lyrics, sync_type, instrumental)) => Ok(json!({
                "lyrics": lyrics,
                "source": "LRCLIB",
                "sync_type": sync_type,
                "instrumental": instrumental,
            }).to_string()),
            None => Ok(json!({
                "lyrics": "",
                "source": "",
                "sync_type": "",
                "instrumental": false,
            }).to_string()),
        }
    }

    pub fn get_lyrics_from_provider(
        &self,
        provider: String,
        request: LyricsRequest,
        lease: Option<Arc<RequestLease>>,
    ) -> Result<String, ExtensionManagerError> {
        let check = || check_lease(lease.as_deref());
        check().map_err(ExtensionManagerError::Operation)?;
        let miss = json!({
            "lyrics": "",
            "source": "",
            "sync_type": "",
            "instrumental": false,
        })
        .to_string();
        if !provider.eq_ignore_ascii_case("lrclib") {
            // Only the built-in keyless provider ships; extension hosts stay
            // disabled in the isolated player.
            return Ok(miss);
        }
        let hit = self.provider_hit(&request);
        Ok(match hit {
            Some((lyrics, sync_type, instrumental)) => json!({
                "lyrics": lyrics,
                "source": "LRCLIB",
                "sync_type": sync_type,
                "instrumental": instrumental,
            })
            .to_string(),
            None => miss,
        })
    }

    pub fn get_enabled_lyrics_providers_json(&self) -> Result<String, ExtensionManagerError> {
        let stored = self.lyrics_providers_json.lock().expect("lyrics providers lock");
        // Echo the stored priority list verbatim; the app owns the schema and
        // the UI labels. An empty stored list means "all built-ins", which the
        // app models as its default ordering.
        if stored.trim().is_empty() {
            return Ok(r#"["lrclib"]"#.into());
        }
        Ok(stored.clone())
    }

    pub fn fetch_and_save_lyrics(
        &self,
        request: LyricsRequest,
        output_path: String,
        lease: Option<Arc<RequestLease>>,
    ) -> Result<(), ExtensionManagerError> {
        let check = || check_lease(lease.as_deref());
        check().map_err(ExtensionManagerError::Operation)?;
        let hit = self.provider_hit(&request);
        let Some((lyrics, _, _)) = hit else {
            return Err(ExtensionManagerError::Operation("No lyrics found for this track".into()));
        };
        if lyrics.trim().is_empty() {
            return Err(ExtensionManagerError::Operation("No lyrics found for this track".into()));
        }
        std::fs::write(&output_path, lyrics)
            .map_err(|e| ExtensionManagerError::Operation(format!("Failed to save lyrics: {e}")))
    }

    pub fn set_lyrics_providers_json(&self, providers_json: String) -> Result<(), ExtensionManagerError> {
        *self
            .lyrics_providers_json
            .lock()
            .expect("lyrics providers lock") = providers_json;
        Ok(())
    }

    pub fn set_lyrics_fetch_options_json(&self, options_json: String) -> Result<(), ExtensionManagerError> {
        *self
            .lyrics_fetch_options_json
            .lock()
            .expect("lyrics options lock") = options_json;
        Ok(())
    }
}
