// STUB (Isolated Music Player): Standalone in-memory log buffer without extension crates.
use std::sync::{Arc, Mutex};

#[derive(Debug, thiserror::Error, uniffi::Error)]
#[uniffi(flat_error)]
pub enum LogError {
    #[error("log buffer closed")]
    Closed,
}

#[derive(Default)]
struct InnerLog {
    enabled: bool,
}

#[derive(uniffi::Object, Default)]
pub struct LogBuffer {
    inner: Arc<Mutex<InnerLog>>,
}

#[uniffi::export]
impl LogBuffer {
    #[uniffi::constructor]
    pub fn new() -> Self {
        Self::default()
    }

    pub fn set_enabled(&self, enabled: bool) -> Result<(), LogError> {
        self.inner.lock().expect("log lock").enabled = enabled;
        Ok(())
    }
    pub fn is_enabled(&self) -> Result<bool, LogError> {
        Ok(self.inner.lock().expect("log lock").enabled)
    }
    pub fn add(&self, _level: String, _tag: String, _message: String) -> Result<(), LogError> {
        Ok(())
    }
    pub fn backend(&self, _message: String) -> Result<(), LogError> {
        Ok(())
    }
    pub fn all(&self) -> Result<String, LogError> {
        Ok("[]".into())
    }
    pub fn since(&self, _index: i64) -> Result<String, LogError> {
        Ok(r#"{"logs":[],"next_index":0}"#.into())
    }
    pub fn clear(&self) -> Result<(), LogError> {
        Ok(())
    }
    pub fn count(&self) -> Result<u64, LogError> {
        Ok(0)
    }
    pub fn shutdown(&self) {}
}
