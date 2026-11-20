//! Metadata reads for network sources. The isolated player keeps transport
//! owned by the platform; remote tag reads surface a clear error instead of
//! routing through the extension runtime this build does not ship.

/// Read metadata for an `http://` source. The platform player supplies its
/// own metadata for network streams; this preserves the uniffi call surface
/// the app already targets.
pub(crate) fn read(
    _path: &str,
    _hint: &str,
    _check: &dyn Fn() -> Result<(), String>,
) -> Result<serde_json::Value, String> {
    Err("Metadata reads for network sources are unavailable in this build".into())
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn network_sources_report_a_clear_error() {
        let error = read("http://nas.test/a.flac", "a.flac", &|| Ok(())).unwrap_err();
        assert!(error.contains("network sources"));
    }
}
