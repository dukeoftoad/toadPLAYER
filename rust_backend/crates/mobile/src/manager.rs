//! Standalone Music Player `ExtensionManager` facade: preserves UniFFI method signatures
//! while delegating local file/tag/cover/CUE/lyrics operations to `toadplayer_core`.
use crate::cancellation::RequestLease;
use crate::extensions::ExtensionEnvironment;
use std::sync::{Arc, Mutex};

#[derive(Debug, thiserror::Error, uniffi::Error)]
#[uniffi(flat_error)]
pub enum ExtensionManagerError {
    #[error("{0}")]
    Operation(String),
}

#[derive(uniffi::Object, Default)]
pub struct ExtensionManager {
    pub(crate) env: Arc<ExtensionEnvironment>,
    pub(crate) cover_cache_dir: Mutex<String>,
    /// Provider priority list delivered by the app (lyrics settings).
    pub(crate) lyrics_providers_json: Mutex<String>,
    /// Fetch options (Musixmatch language, Netease includes, ...) delivered by
    /// the app. Providers read these when shaping requests.
    pub(crate) lyrics_fetch_options_json: Mutex<String>,
}

#[uniffi::export]
impl ExtensionManager {
    #[uniffi::constructor]
    pub fn new(
        source_directory: String,
        data_directory: String,
        master_key: String,
        app_version: String,
        timeout_ms: u64,
    ) -> Result<Self, ExtensionManagerError> {
        Self::with_lyrics_settings(
            source_directory,
            data_directory,
            master_key,
            app_version,
            timeout_ms,
            "[]".into(),
            "{}".into(),
        )
    }

    #[uniffi::constructor]
    pub fn with_lyrics_settings(
        _source_directory: String,
        _data_directory: String,
        _master_key: String,
        _app_version: String,
        _timeout_ms: u64,
        providers_json: String,
        options_json: String,
    ) -> Result<Self, ExtensionManagerError> {
        Ok(Self {
            lyrics_providers_json: Mutex::new(providers_json),
            lyrics_fetch_options_json: Mutex::new(options_json),
            ..Self::default()
        })
    }

    pub fn environment(&self) -> Arc<ExtensionEnvironment> {
        Arc::clone(&self.env)
    }

    pub fn install(&self, _package_path: String) -> Result<String, ExtensionManagerError> {
        Err(ExtensionManagerError::Operation("Extensions are disabled in isolated player".into()))
    }

    pub fn upgrade(&self, _package_path: String) -> Result<String, ExtensionManagerError> {
        Err(ExtensionManagerError::Operation("Extensions are disabled in isolated player".into()))
    }

    pub fn check_upgrade(&self, _package_path: String) -> Result<String, ExtensionManagerError> {
        Err(ExtensionManagerError::Operation("Extensions are disabled in isolated player".into()))
    }

    pub fn installed(&self) -> Result<String, ExtensionManagerError> {
        Ok("[]".into())
    }

    pub fn load_all(&self) -> Result<String, ExtensionManagerError> {
        Ok("[]".into())
    }

    pub fn set_enabled(&self, _extension_id: String, _enabled: bool) -> Result<(), ExtensionManagerError> {
        Ok(())
    }

    pub fn initialize(&self, _extension_id: String, _settings_json: String) -> Result<(), ExtensionManagerError> {
        Ok(())
    }

    pub fn cleanup(&self, _extension_id: String) -> Result<(), ExtensionManagerError> {
        Ok(())
    }

    pub fn update_settings(&self, _extension_id: String, _settings_json: String) -> Result<(), ExtensionManagerError> {
        Ok(())
    }

    pub fn download_by_strategy(&self, _request_json: String) -> Result<String, ExtensionManagerError> {
        Err(ExtensionManagerError::Operation("Downloads are disabled in isolated player".into()))
    }

    pub fn check_extension_health_json(&self, _extension_id: String) -> Result<String, ExtensionManagerError> {
        Ok("{}".into())
    }

    pub fn download(
        &self,
        _extension_id: String,
        _request_json: String,
        _resolution_timeout_ms: u64,
    ) -> Result<String, ExtensionManagerError> {
        Err(ExtensionManagerError::Operation("Downloads are disabled in isolated player".into()))
    }

    pub fn release_memory(&self, _under_pressure: bool) -> Result<(), ExtensionManagerError> {
        Ok(())
    }

    pub fn post_process(
        &self,
        _extension_id: String,
        _input_json: String,
        _metadata_json: String,
        _hook_id: String,
        _timeout_ms: u64,
    ) -> Result<String, ExtensionManagerError> {
        Ok(r#"{"success":false,"error":"Extensions disabled"}"#.into())
    }

    pub fn run_post_processing(
        &self,
        _input_json: String,
        _metadata_json: String,
        _timeout_ms: u64,
    ) -> Result<String, ExtensionManagerError> {
        Ok(r#"{"success":false,"error":"Extensions disabled"}"#.into())
    }

    pub fn search_metadata_provider(
        &self,
        _extension_id: String,
        _query: String,
        _limit: i64,
        _timeout_ms: u64,
    ) -> Result<String, ExtensionManagerError> {
        Ok("[]".into())
    }

    pub fn search_metadata_providers(
        &self,
        _query: String,
        _limit: i64,
        _include_extensions: bool,
        _item_id: String,
        _timeout_ms: u64,
    ) -> Result<String, ExtensionManagerError> {
        Ok("[]".into())
    }

    pub fn invoke_action(&self, _extension_id: String, _action: String) -> Result<String, ExtensionManagerError> {
        Ok(r#"{"success":false}"#.into())
    }

    pub fn call(
        &self,
        _extension_id: String,
        _method: String,
        _arguments_json: String,
        _lease: Option<Arc<RequestLease>>,
        _timeout_ms: u64,
    ) -> Result<String, ExtensionManagerError> {
        Ok(r#"{"success":false}"#.into())
    }

    pub fn provider_call(
        &self,
        _extension_id: String,
        _method: String,
        _arguments_json: String,
        _lease: Option<Arc<RequestLease>>,
        _timeout_ms: u64,
    ) -> Result<String, ExtensionManagerError> {
        Ok(r#"{"success":false}"#.into())
    }

    pub fn set_provider_priority(&self, _kind: String, _ids: Vec<String>) -> Result<(), ExtensionManagerError> {
        Ok(())
    }

    pub fn set_fallback_providers(&self, _ids: Option<Vec<String>>) -> Result<(), ExtensionManagerError> {
        Ok(())
    }

    pub fn provider_priorities(&self) -> Result<String, ExtensionManagerError> {
        Ok(r#"{"download":[],"metadata":[]}"#.into())
    }

    pub fn find_url_handler(&self, _url: String) -> Result<Option<String>, ExtensionManagerError> {
        Ok(None)
    }

    pub fn get_extension_pending_auth_json(&self, _extension_id: String) -> Result<String, ExtensionManagerError> {
        Ok(String::new())
    }

    pub fn remove(&self, _extension_id: String) -> Result<(), ExtensionManagerError> {
        Ok(())
    }

    pub fn shutdown(&self) {}
}
