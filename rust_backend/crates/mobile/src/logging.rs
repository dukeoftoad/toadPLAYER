//! Standalone in-memory log buffer for the isolated player: the uniffi object
//! wraps a bounded core buffer so native and backend logs stay observable
//! without the extension runtime. No extension crates are involved.
use serde_json::{Value, json};
use std::sync::{Arc, Mutex};

/// Bounded number of retained entries; the oldest entries drop first.
const MAX_ENTRIES: usize = 1000;

#[derive(Debug, thiserror::Error, uniffi::Error)]
#[uniffi(flat_error)]
pub enum LogError {
    #[error("log buffer closed")]
    Closed,
}

#[derive(Default)]
struct Store {
    enabled: bool,
    closed: bool,
    next_index: i64,
    logs: Vec<Value>,
}

impl Store {
    fn guard(&self) -> Result<(), LogError> {
        if self.closed {
            Err(LogError::Closed)
        } else {
            Ok(())
        }
    }

    fn push(&mut self, level: &str, tag: &str, message: &str) {
        if !self.enabled {
            return;
        }
        self.next_index += 1;
        let timestamp = chrono::Utc::now().format("%H:%M:%S%.3f").to_string();
        self.logs.push(json!({
            "index": self.next_index,
            "timestamp": timestamp,
            "level": level,
            "tag": tag,
            "message": message,
        }));
        if self.logs.len() > MAX_ENTRIES {
            let overflow = self.logs.len() - MAX_ENTRIES;
            self.logs.drain(..overflow);
        }
    }
}

/// Core-facing log buffer the uniffi object wraps; kept as a distinct type so
/// the facade mirrors the full product's engine shape.
pub(crate) struct CoreLogBuffer {
    store: Mutex<Store>,
}

impl Default for CoreLogBuffer {
    fn default() -> Self {
        Self {
            store: Mutex::new(Store::default()),
        }
    }
}

impl CoreLogBuffer {
    fn lock(&self) -> Result<std::sync::MutexGuard<'_, Store>, LogError> {
        self.store.lock().map_err(|_| LogError::Closed)
    }

    pub fn set_enabled(&self, enabled: bool) -> Result<(), LogError> {
        let mut store = self.lock()?;
        store.guard()?;
        store.enabled = enabled;
        Ok(())
    }

    pub fn is_enabled(&self) -> Result<bool, LogError> {
        let store = self.lock()?;
        store.guard()?;
        Ok(store.enabled)
    }

    pub fn add(&self, level: &str, tag: &str, message: &str) -> Result<(), LogError> {
        let mut store = self.lock()?;
        store.guard()?;
        store.push(level, tag, message);
        Ok(())
    }

    pub fn backend(&self, message: &str) -> Result<(), LogError> {
        self.add("BACKEND", "rust", message)
    }

    pub fn all(&self) -> Result<String, LogError> {
        let store = self.lock()?;
        store.guard()?;
        serde_json::to_string(&store.logs).map_err(|_| LogError::Closed)
    }

    pub fn since(&self, index: i64) -> Result<String, LogError> {
        let store = self.lock()?;
        store.guard()?;
        let logs: Vec<&Value> = store
            .logs
            .iter()
            .filter(|entry| entry["index"].as_i64().unwrap_or(0) > index)
            .collect();
        Ok(json!({
            "logs": logs,
            "next_index": store.next_index,
        })
        .to_string())
    }

    pub fn clear(&self) -> Result<(), LogError> {
        let mut store = self.lock()?;
        store.guard()?;
        store.logs.clear();
        Ok(())
    }

    pub fn count(&self) -> Result<u64, LogError> {
        let store = self.lock()?;
        store.guard()?;
        Ok(store.logs.len() as u64)
    }

    pub fn shutdown(&self) {
        if let Ok(mut store) = self.lock() {
            store.closed = true;
            store.logs.clear();
        }
    }
}

#[derive(uniffi::Object)]
pub struct LogBuffer {
    pub(crate) inner: Arc<CoreLogBuffer>,
}

#[uniffi::export]
impl LogBuffer {
    #[uniffi::constructor]
    pub fn new() -> Self {
        Self {
            inner: Arc::new(CoreLogBuffer::default()),
        }
    }

    pub fn set_enabled(&self, enabled: bool) -> Result<(), LogError> {
        self.inner.set_enabled(enabled).map_err(Into::into)
    }
    pub fn is_enabled(&self) -> Result<bool, LogError> {
        self.inner.is_enabled().map_err(Into::into)
    }
    pub fn add(&self, level: String, tag: String, message: String) -> Result<(), LogError> {
        self.inner.add(&level, &tag, &message).map_err(Into::into)
    }
    pub fn backend(&self, message: String) -> Result<(), LogError> {
        self.inner.backend(&message).map_err(Into::into)
    }
    pub fn all(&self) -> Result<String, LogError> {
        self.inner.all().map_err(Into::into)
    }
    pub fn since(&self, index: i64) -> Result<String, LogError> {
        self.inner.since(index).map_err(Into::into)
    }
    pub fn clear(&self) -> Result<(), LogError> {
        self.inner.clear().map_err(Into::into)
    }
    pub fn count(&self) -> Result<u64, LogError> {
        self.inner.count().map_err(Into::into)
    }
    pub fn shutdown(&self) {
        self.inner.shutdown();
    }
}

impl Default for LogBuffer {
    fn default() -> Self {
        Self::new()
    }
}
