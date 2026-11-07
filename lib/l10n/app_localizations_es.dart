// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get libraryLyricsSearchDescription =>
      'Search lyrics saved in your songs. The first search may take a while; you can switch filters to stop it.';

  @override
  String libraryLyricsIndexing(int count) {
    return 'Preparing lyrics search: $count songs checked';
  }

  @override
  String get libraryLyricsSearchIncomplete =>
      'Some songs could not be read. Results may be incomplete.';

  @override
  String get libraryLyricsRefresh => 'Refresh lyrics search';

  @override
  String get networkErrorListing =>
      'The server responded, but its folder listing could not be read. For WebDAV, use the WebDAV endpoint. For HTTP, use a directory listing or direct audio URL.';

  @override
  String get networkErrorStorage =>
      'The server was reached, but this device could not save the connection. Check the app log and retry.';

  @override
  String get extensionsUnsecuredStorage => 'Use unsecured extension storage';

  @override
  String get extensionsUnsecuredStorageDescription =>
      'Run extensions without a Linux keyring. The key is saved locally, so anyone with access to your app files can read extension credentials. Off uses the system keyring.';

  @override
  String get extensionsStorageKeyringRequired =>
      'Existing extension data needs its original key. Unlock the system keyring once, then enable unsecured storage again. Your data has been preserved.';

  @override
  String get extensionsStorageKeyConflict =>
      'The local and system keyring keys differ. Storage was not changed and both keys were preserved.';

  @override
  String get extensionsStorageKeyringUnavailable =>
      'The system keyring is unavailable or locked. Start or unlock it before switching to secure storage. Your local key has been preserved.';

  @override
  String linkFileActionOn(String action, String name) {
    return '$action on $name';
  }

  @override
  String linkFileActionsDescription(String name) {
    return 'Changes apply to music files on $name. Accepted work continues if this phone disconnects.';
  }

  @override
  String linkFileDeleteConfirm(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'music files',
      one: 'music file',
    );
    return 'Delete $count $_temp0 from $name? This removes the files from that computer\'s storage.';
  }

  @override
  String get linkFileJobs => 'File changes';

  @override
  String linkFileJobsSubtitle(String name) {
    return 'Edits, conversions and deletions on $name';
  }

  @override
  String get linkFileJobsEmpty => 'No file changes yet';

  @override
  String get linkFileJobsEmptyMessage =>
      'Edits, conversions and deletions you start on the computer\'s songs from this phone appear here.';

  @override
  String get linkDesktopFileJobsSubtitle =>
      'Changes requested from your phones';

  @override
  String get linkDesktopFileJobsEmptyMessage =>
      'Edits, conversions and deletions requested from your phones appear here.';

  @override
  String linkFileJobRequestedBy(String name) {
    return 'From $name';
  }

  @override
  String get linkFileJobsView => 'View';

  @override
  String get linkFileJobsUnsupported =>
      'Update Toadplayer on your computer to manage its music files from this phone.';

  @override
  String get linkFileSelectionOneDevice =>
      'Select songs from one linked computer at a time (up to 100 songs).';

  @override
  String linkFileJobProgress(int finished, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: 'songs',
      one: 'song',
    );
    return '$finished of $total $_temp0';
  }

  @override
  String linkFileJobFailedCount(int count) {
    return '$count failed';
  }

  @override
  String linkFileJobFinished(String action, String name) {
    return '$action finished on $name';
  }

  @override
  String get linkFileDeleting => 'Deleting...';

  @override
  String get linkFileReading => 'Reading tags...';

  @override
  String get linkFileSavingCover => 'Saving cover art...';

  @override
  String get linkFileCancelHint => 'Stop after the current song';

  @override
  String get linkFileJobCancelled => 'Stopped';

  @override
  String get linkFileJobQueued => 'Queued';

  @override
  String get linkFileJobCompleted => 'Finished';

  @override
  String get linkFileChanged =>
      'The file changed since the preview. Preview it again before saving.';

  @override
  String get linkFileOperationFailed =>
      'The operation could not be completed. Check the computer\'s logs for details.';

  @override
  String get trackBpm => 'BPM';

  @override
  String get trackMood => 'Mood';

  @override
  String get subsonicAddToLibrary => 'Add server to Library';

  @override
  String get subsonicLibraryAdded => 'Server added to Library';

  @override
  String get subsonicLibraryDescription =>
      'Sync the server catalogue and artwork to Library. Music stays on your server. Rescan it in Local Library settings to update the catalogue.';

  @override
  String get subsonicAuthentication => 'Authentication';

  @override
  String get subsonicToken => 'Salted token';

  @override
  String get subsonicPasswordAuth => 'Password';

  @override
  String get subsonicApiKey => 'API key';

  @override
  String get subsonicUsername => 'Username';

  @override
  String get subsonicPassword => 'Password';

  @override
  String get subsonicSearch => 'Search server music...';

  @override
  String get subsonicMoreAlbums => 'More albums';

  @override
  String get subsonicErrorApi =>
      'The server does not support this API version or authentication method. Check the server settings and the selected sign-in method.';

  @override
  String get networkDownloadDestination => 'Network download destination';

  @override
  String get networkUseForDownloads => 'Download to this folder';

  @override
  String get networkDownloadSelected => 'Selected download destination';

  @override
  String get networkUseLocalDownloads => 'Use local download folder';

  @override
  String get networkDownloadAccessFailed => 'Could not write to this folder.';

  @override
  String get networkUploading => 'Uploading to network storage';

  @override
  String get networkUpload => 'Upload to network storage';

  @override
  String get networkUploadChooseFolder => 'Choose a folder';

  @override
  String get networkUploadHere => 'Upload to this folder';

  @override
  String get networkUploadDescription =>
      'Songs go into Artist/Album folders here. Files already on the server are never replaced.';

  @override
  String networkUploadResult(int saved, int skipped, int failed) {
    return 'Uploaded $saved, already there $skipped, failed $failed';
  }

  @override
  String get networkUploadCancelled => 'Upload stopped';

  @override
  String get networkUploadFailed =>
      'Couldn\'t upload the songs. Check the server connection and that this account can write to the folder.';

  @override
  String get networkUploadReadOnly =>
      'This connection doesn\'t accept uploads. Choose an SMB or WebDAV folder.';

  @override
  String get networkUploadNoSongs =>
      'No songs stored on this device in this selection.';

  @override
  String get networkDownloadDescription =>
      'Prepare songs on this device, then upload them to your NAS. Keep the app open until the upload finishes. Retry reuses prepared audio. Existing files are kept; new downloads with the same name get a numbered suffix.';

  @override
  String get networkAddToLibrary => 'Add folder to Library';

  @override
  String get networkLibraryAdded => 'Folder added to Library';

  @override
  String get networkLibraryDescription =>
      'Scan this folder and its subfolders. Music stays on your server; metadata and artwork are saved on this device. Manage or rescan it in Local Library settings.';

  @override
  String get networkStorage => 'Network storage';

  @override
  String get networkErrorUnreachable =>
      'The server could not be reached. Check that this phone can access its network and that the file-sharing service is running. For SMB, port 445 must be reachable.';

  @override
  String get networkErrorTimeout =>
      'The server did not respond in time. Check the connection and try again.';

  @override
  String get networkErrorAuthentication =>
      'The server rejected the sign-in. Check the username, password and domain. Leave the domain blank unless your server requires one.';

  @override
  String get networkErrorPermission =>
      'This account is not allowed to open this share or folder. Check its read permissions on the server.';

  @override
  String get networkErrorLocalPermission =>
      'Local network access is not allowed. Allow Nearby devices for Toadplayer in Android app settings, then try again.';

  @override
  String get networkErrorShare =>
      'The share or folder was not found. For SMB, use the server\'s shared folder name after its address, such as smb://server/Music/.';

  @override
  String get networkErrorProtocol =>
      'The server and this SMB client could not agree on a supported protocol. Enable SMB2 or SMB3 on the server. SMB1 is not supported.';

  @override
  String get networkErrorAddress =>
      'Check the server address. Use smb://server/share/ for SMB, or an http:// or https:// address for WebDAV and HTTP.';

  @override
  String get networkConnections => 'Saved connections';

  @override
  String get networkServer => 'Server';

  @override
  String get networkCredentials => 'Sign in (optional)';

  @override
  String get networkRefresh => 'Refresh';

  @override
  String get networkStorageDescription =>
      'Connect to your NAS or music server and browse its folders. Your sign-in details are stored securely on this device.';

  @override
  String get networkAddConnection => 'Add connection';

  @override
  String get networkEditConnection => 'Edit connection';

  @override
  String get networkConnectionName => 'Name';

  @override
  String get networkAddress => 'Server or audio URL';

  @override
  String get networkProtocol => 'Protocol';

  @override
  String get networkUsername => 'Username (optional)';

  @override
  String get networkPassword => 'Password (optional)';

  @override
  String get networkDomain => 'Domain (optional)';

  @override
  String get networkConnectSave => 'Connect and save';

  @override
  String get networkErrorCertificate =>
      'The server\'s HTTPS certificate could not be verified. Edit this connection to review and trust its certificate, or check the server\'s HTTPS configuration.';

  @override
  String get networkCertificatePrompt =>
      'This server uses an untrusted HTTPS certificate. Routers and NAS devices often use self-signed certificates. Verify the server address and SHA-256 fingerprint before trusting it. Trust applies only to this certificate on this server; a changed certificate requires approval again.';

  @override
  String get networkTrustCertificate => 'Trust certificate and retry';

  @override
  String get networkRemoveConnection => 'Remove connection';

  @override
  String get networkNoFiles => 'No supported music files or folders found.';

  @override
  String get networkConnectionError =>
      'Could not access the network source. Check the server address, credentials, and connection, then retry.';

  @override
  String get extensionAccountTitle => 'Extension account';

  @override
  String get extensionAccountInvalidForm =>
      'The extension returned an invalid account form.';

  @override
  String get extensionAccountRestartLogin =>
      'Restart account login to continue.';

  @override
  String get extensionAccountRequiredValue => 'Enter a value.';

  @override
  String get extensionAccountInvalidNumber => 'Enter a valid number.';

  @override
  String get settingsPlaybackSubtitle =>
      'Player, volume, AutoMix, and audio output';

  @override
  String get sectionPlayer => 'Player';

  @override
  String get sectionVolumeAndTransitions => 'Volume and transitions';

  @override
  String get sectionAudioOutput => 'Audio output';

  @override
  String get usbBitPerfect => 'Hi-res and bit-perfect audio';

  @override
  String get usbBitPerfectDescription =>
      'Preserve source precision on compatible outputs. Choose direct USB or AAudio exclusive below; otherwise Android USB output requires Android 14 or later. Applies from the next track, without AutoMix or normalization. System volume may not control direct USB.';

  @override
  String get usbHardwareVolume => 'DAC hardware volume';

  @override
  String get usbVolumeWarningTitle => 'Check your listening volume';

  @override
  String get usbVolumeWarning =>
      'Direct USB audio can be much louder than normal playback, and phone volume buttons may not control it. Lower your DAC or amplifier volume before starting. When supported, Toadplayer sets the DAC to at most −40 dB on connection; this does not guarantee a safe listening level on every amplifier or headphone.';

  @override
  String get usbVolumeAccept => 'I understand';

  @override
  String get usbVolumeUnavailable =>
      'Playback is paused because this DAC has no verified hardware volume control. Lower the DAC or amplifier volume, then enable fixed-volume output if needed and select the track again.';

  @override
  String get usbFixedVolume => 'Allow fixed-volume USB output';

  @override
  String get usbFixedVolumeDescription =>
      'For DACs without a volume control accessible to the app. Keep off for USB headsets without their own volume control. Applies from the next track.';

  @override
  String get usbFixedVolumeWarning =>
      'The app cannot lower the volume on this output. Audio may start at full level, and the phone volume slider will not help. Only continue after lowering the volume on your DAC or external amplifier. Do not enable this for a headset without its own volume control.';

  @override
  String get dapExclusive => 'DAP hi-res (AAudio exclusive)';

  @override
  String get dapExclusiveDescription =>
      'Use Oboe/AAudio at the track\'s original rate and precision for FLAC/WAV PCM. Requires Android 8.1 or later and compatible hardware. Exclusive access is checked; unavailable formats use normal playback. DSD requires the direct USB driver. Applies from the next track.';

  @override
  String get dapExclusiveUnavailable =>
      'AAudio exclusive access is unavailable for this track and current output. Using normal playback. For a USB DAC, try the direct USB driver.';

  @override
  String get exclusiveOutputWindows => 'WASAPI exclusive mode';

  @override
  String get exclusiveOutputMacos => 'Exclusive access (hog mode)';

  @override
  String get exclusiveOutputLinux => 'Direct ALSA output';

  @override
  String get exclusiveOutputDescriptionWindows =>
      'Bypass the Windows mixer so the output follows each track\'s sample rate and bit depth. Other apps cannot play sound while Toadplayer holds the device. AutoMix and previews are off in this mode. For bit-perfect output, keep the volume at 100% with the equalizer and normalization off.';

  @override
  String get exclusiveOutputDescriptionMacos =>
      'Hold the output device for Toadplayer alone and switch it to each track\'s sample rate and bit depth, so Core Audio does not resample. Other apps cannot play sound while Toadplayer holds the device. AutoMix and previews are off in this mode. For bit-perfect output, keep the volume at 100% with the equalizer and normalization off.';

  @override
  String get exclusiveOutputDescriptionLinux =>
      'Play straight to an ALSA hardware device, bypassing PipeWire or PulseAudio, so the output follows each track\'s sample rate and bit depth. The device must be free: the sound server releases an idle card after a few seconds, or set its profile to Off. AutoMix and previews are off in this mode.';

  @override
  String get exclusiveOutputPending => 'Takes the device when a track plays.';

  @override
  String get exclusiveOutputActive => 'Playing in exclusive mode.';

  @override
  String get exclusiveOutputUnavailableWindows =>
      'The device refused exclusive access, so this track plays through the Windows mixer. Close other apps using the device, or allow exclusive control in the device\'s Windows sound properties.';

  @override
  String get exclusiveOutputUnavailableMacos =>
      'Another app holds the output device, so this track plays through the system mixer.';

  @override
  String get exclusiveOutputUnavailableLinux =>
      'The ALSA device is busy, usually held by the sound server, so this track plays through it. Set the card\'s profile to Off in the sound settings, or choose another device.';

  @override
  String get exclusiveOutputDevice => 'Output device';

  @override
  String get exclusiveOutputDeviceFirst => 'First sound card';

  @override
  String get exclusiveOutputNoDevices => 'No ALSA playback devices found';

  @override
  String get usbDirect => 'Direct USB driver';

  @override
  String get usbDirectDescription =>
      'Use exclusive USB audio for FLAC/WAV, DSF/DFF and WavPack DSD, with Android USB permission. Native DSD requires a recognized compatible DAC. Other PCM formats use normal playback. Applies from the next track.';

  @override
  String get usbDsdOverPcm => 'DSD over PCM (DoP)';

  @override
  String get usbDsdOverPcmDescription =>
      'Enable only if your DAC explicitly supports DoP. Sends DSF/DFF and WavPack DSD inside a PCM carrier when native DSD is unavailable. An incompatible device may play noise; leave off for ordinary USB headsets.';

  @override
  String get usbDsdUnsupported =>
      'This DSD format or connected DAC is not supported. Playback stopped.';

  @override
  String get usbPermissionDenied =>
      'USB permission was not granted. Using normal playback.';

  @override
  String get usbBitPerfectPending =>
      'Waiting for the next track and a compatible USB output.';

  @override
  String get usbOutputReady =>
      'USB output is ready. Start playback to activate it.';

  @override
  String get usbOutputPreparing => 'Preparing USB audio output...';

  @override
  String get usbOutputCancelled =>
      'USB preparation was cancelled. Select a track to try again.';

  @override
  String get usbBitPerfectNoDevice =>
      'No USB DAC connected. Using normal audio output.';

  @override
  String get usbBitPerfectFallback =>
      'This device or audio format does not support bit-perfect output. Using normal playback.';

  @override
  String get usbBitPerfectRouteChanged =>
      'The USB audio route changed. Playback paused; select a track to reconnect.';

  @override
  String get upgradeIntroContinue => 'Continue';

  @override
  String get cacheMotionArtwork => 'Offline motion covers';

  @override
  String get cacheMotionArtworkDesc =>
      'Album videos saved with downloads. Removing them keeps your music files and static covers.';

  @override
  String get nowPlayingVolume => 'Volume';

  @override
  String get appearanceStyle => 'App Style';

  @override
  String get appearanceAccentRed => 'Red (default)';

  @override
  String get appearanceAccentOrange => 'Orange';

  @override
  String get appearanceAccentGreen => 'Green';

  @override
  String get appearanceAccentTeal => 'Teal';

  @override
  String get appearanceAccentBlue => 'Blue';

  @override
  String get appearanceAccentPurple => 'Purple';

  @override
  String get appearanceAccentPink => 'Pink';

  @override
  String get appearanceGlassClarity => 'Glass clarity';

  @override
  String get appearanceGlassOutlines => 'Glass outlines';

  @override
  String get appearanceGlassOutlinesSubtitle =>
      'Show decorative edges around Toadplayer glass. Turning this off keeps blur and refraction.';

  @override
  String get appearanceGlassClaritySubtitle =>
      'Adjust transparency in Toadplayer menus and navigation. Text contrast is preserved.';

  @override
  String get appearanceGlassTinted => 'Tinted';

  @override
  String get appearanceGlassClear => 'Clear';

  @override
  String get appearanceGlassClearPerformance =>
      'Very clear glass may use more power and feel less smooth on older devices. Lower clarity if needed.';

  @override
  String appearanceGlassClarityBlurOff(String setting) {
    return 'Glass is opaque on this device. Turn on “$setting” to adjust clarity.';
  }

  @override
  String appearanceGlassClarityHighContrast(String setting) {
    return 'Your system requests increased contrast, so glass stays opaque. Turn on “$setting” to use glass anyway; text contrast is preserved.';
  }

  @override
  String get appearanceUseSystemFont => 'Use system font';

  @override
  String get appearanceUseSystemFontSubtitle =>
      'Use your device’s default typeface for app text.';

  @override
  String get appName => 'Toadplayer';

  @override
  String get navHome => 'Home';

  @override
  String get navLibrary => 'Library';

  @override
  String get navSettings => 'Settings';

  @override
  String get navStore => 'Repo';

  @override
  String get homeTitle => 'Home';

  @override
  String get homeEmptyTitle => 'No search providers yet';

  @override
  String get homeEmptySubtitle => 'Install an extension to continue.';

  @override
  String get homeRecent => 'Recent';

  @override
  String get searchRecentlySearched => 'Recently Searched';

  @override
  String get searchLibraryPrompt => 'Search Your Library';

  @override
  String get searchBrowse => 'Browse';

  @override
  String get historyFilterAll => 'All';

  @override
  String get historyFilterAlbums => 'Albums';

  @override
  String get historyFilterSingles => 'Singles';

  @override
  String get libraryRecentlyAdded => 'Recently Added';

  @override
  String get libraryDownloads => 'Downloads';

  @override
  String get libraryNoActiveDownloads => 'No active downloads';

  @override
  String get librarySearchHint => 'Search your library';

  @override
  String get libraryEmptyCollection => 'Your music will appear here';

  @override
  String get libraryFolders => 'Folders';

  @override
  String libraryFolderCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count folders',
      one: '1 folder',
    );
    return '$_temp0';
  }

  @override
  String get libraryFoldersEmptyTitle => 'No folders yet';

  @override
  String get libraryFoldersEmptyMessage =>
      'Download songs or add a music folder in Local Library settings to browse them by folder.';

  @override
  String get libraryFolderMissing => 'This folder is no longer in your Library';

  @override
  String get libraryFoldersLoadFailed => 'Couldn\'t read your folders';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get settingsDownload => 'Download';

  @override
  String get settingsAppearance => 'Appearance';

  @override
  String get settingsExtensions => 'Extensions';

  @override
  String get settingsAbout => 'About';

  @override
  String get downloadTitle => 'Download';

  @override
  String get downloadAskQualitySubtitle =>
      'Show quality picker for each download';

  @override
  String get downloadFilenameFormat => 'Filename Format';

  @override
  String get downloadSingleFilenameFormat => 'Single Filename Format';

  @override
  String get downloadSingleFilenameFormatDescription =>
      'Filename pattern for singles and EPs. Uses the same tags as the album format.';

  @override
  String get downloadFolderOrganization => 'Folder Organization';

  @override
  String get downloadFolderTemplate => 'Custom Folder Structure';

  @override
  String get downloadFolderTemplateDescription =>
      'Use naming tags and / for subfolders. Saving replaces the preset album and singles layout. Empty folder names use Unknown.';

  @override
  String get folderOrganizationCustom => 'Custom template';

  @override
  String get folderTemplateInvalid =>
      'Enter a relative folder path with supported tags. Empty folders, . and .. are not allowed.';

  @override
  String get folderTemplatePreview => 'Example folder path';

  @override
  String get folderTemplatePreviewFailed => 'Preview unavailable';

  @override
  String get appearanceTitle => 'Appearance';

  @override
  String get appearanceThemeSystem => 'System';

  @override
  String get appearanceThemeLight => 'Light';

  @override
  String get appearanceThemeDark => 'Dark';

  @override
  String get appearanceDynamicColor => 'Dynamic Color';

  @override
  String get appearanceDynamicColorSubtitle => 'Use colors from your wallpaper';

  @override
  String get appearanceHistoryView => 'History View';

  @override
  String get appearanceHistoryViewList => 'List';

  @override
  String get appearanceHistoryViewGrid => 'Grid';

  @override
  String get optionsPrimaryProvider => 'Primary Provider';

  @override
  String get optionsPrimaryProviderSubtitle =>
      'Service used when searching by track name.';

  @override
  String optionsUsingExtension(String extensionName) {
    return 'Using extension: $extensionName';
  }

  @override
  String get optionsDefaultSearchTab => 'Default Search Tab';

  @override
  String get optionsDefaultSearchTabSubtitle =>
      'Choose which tab opens first for new search results.';

  @override
  String get optionsAutoFallback => 'Auto Fallback';

  @override
  String get optionsAutoFallbackSubtitle =>
      'Try other services if download fails';

  @override
  String get optionsEmbedLyrics => 'Embed Lyrics';

  @override
  String get optionsEmbedLyricsSubtitle =>
      'Embed synced lyrics into FLAC files';

  @override
  String get optionsReplayGain => 'ReplayGain';

  @override
  String get optionsReplayGainSubtitleOn =>
      'Scan loudness and embed ReplayGain tags (EBU R128)';

  @override
  String get optionsReplayGainSubtitleOff =>
      'Disabled: no loudness normalization tags';

  @override
  String get trackReplayGain => 'Rescan ReplayGain';

  @override
  String get trackReplayGainScanning => 'Analyzing loudness...';

  @override
  String get trackReplayGainSuccess => 'ReplayGain tags added';

  @override
  String get trackReplayGainFailed => 'Failed to add ReplayGain tags';

  @override
  String get trackRemoveReplayGain => 'Remove ReplayGain';

  @override
  String get trackRemoveReplayGainSuccess => 'ReplayGain tags removed';

  @override
  String get trackRemoveReplayGainFailed => 'Failed to remove ReplayGain tags';

  @override
  String get replayGainRemoving => 'Removing ReplayGain...';

  @override
  String replayGainRemoveConfirmMessage(int count) {
    return 'Remove track and album ReplayGain tags from $count track(s)? Audio, artwork, and other metadata will be preserved.';
  }

  @override
  String selectionRemoveReplayGainCount(int count) {
    return 'Remove RG ($count)';
  }

  @override
  String replayGainRemoveBatchSuccess(int success, int total) {
    return 'ReplayGain removed from $success of $total tracks';
  }

  @override
  String selectionReplayGainCount(int count) {
    return 'ReplayGain ($count)';
  }

  @override
  String get replayGainBatchConfirmTitle => 'Add ReplayGain';

  @override
  String replayGainBatchConfirmMessage(int count) {
    return 'Analyze loudness and write ReplayGain tags to $count track(s)?';
  }

  @override
  String get replayGainBatchAnalyzing => 'Analyzing ReplayGain...';

  @override
  String replayGainBatchSuccess(int success, int total) {
    return 'ReplayGain added to $success of $total tracks';
  }

  @override
  String get replayGainUnsupportedDecoder =>
      'Some tracks could not be analyzed because their audio codec is not supported by the ReplayGain decoder. Their files were not changed.';

  @override
  String get optionsArtistTagMode => 'Artist Tag Mode';

  @override
  String get metadataSeparators => 'Metadata separators';

  @override
  String get metadataSeparatorsDescription =>
      'Choose how comma- or semicolon-separated values are joined in future downloads. Custom artist separators use a joined tag; Primary artist only still applies. Names containing & or / are preserved.';

  @override
  String get metadataSeparatorSource => 'Keep source formatting';

  @override
  String get metadataSeparatorComma => 'Comma (,)';

  @override
  String get metadataSeparatorSemicolon => 'Semicolon (;)';

  @override
  String get metadataSeparatorSlash => 'Slash (/)';

  @override
  String get metadataSeparatorCustom => 'Custom separator';

  @override
  String get metadataSeparatorPreview => 'Preview';

  @override
  String get metadataSeparatorInvalid =>
      'Use 1–16 characters without line breaks or control characters.';

  @override
  String get optionsArtistTagModeDescription =>
      'Choose how multiple artists are written into embedded tags.';

  @override
  String get optionsArtistTagModeJoined => 'Single joined value';

  @override
  String get optionsArtistTagModeJoinedSubtitle =>
      'Write one ARTIST value like \"Artist A, Artist B\" for maximum player compatibility.';

  @override
  String get optionsArtistTagModeSplitVorbis => 'Split tags for FLAC/Opus';

  @override
  String get optionsArtistTagModeSplitVorbisSubtitle =>
      'Write one artist tag per artist for FLAC and Opus; MP3 and M4A stay joined.';

  @override
  String get optionsArtistTagModePrimary => 'Primary artist only';

  @override
  String get optionsArtistTagModePrimarySubtitle =>
      'Write only the first artist, like \"Artist A\", to Artist and Album Artist in every format, so players list one artist.';

  @override
  String get optionsExtensionStore => 'Extension Repo';

  @override
  String get optionsExtensionStoreSubtitle => 'Show Repo tab in navigation';

  @override
  String get optionsCheckUpdates => 'Check for Updates';

  @override
  String get optionsCheckUpdatesSubtitle =>
      'Notify when new version is available';

  @override
  String get optionsUpdateChannel => 'Update Channel';

  @override
  String get optionsUpdateChannelStable => 'Stable releases only';

  @override
  String get optionsUpdateChannelPreview => 'Get preview releases';

  @override
  String get optionsUpdateChannelWarning =>
      'Preview may contain bugs or incomplete features';

  @override
  String get optionsClearHistory => 'Clear Download History';

  @override
  String get optionsClearHistorySubtitle =>
      'Remove all downloaded tracks from history';

  @override
  String get optionsDetailedLogging => 'Detailed Logging';

  @override
  String get optionsDetailedLoggingOn => 'Detailed logs are being recorded';

  @override
  String get optionsDetailedLoggingOff => 'Enable for bug reports';

  @override
  String get extensionsTitle => 'Extensions';

  @override
  String get extensionsDisabled => 'Disabled';

  @override
  String extensionsVersion(String version) {
    return 'Version $version';
  }

  @override
  String get extensionsUninstall => 'Uninstall';

  @override
  String get storeTitle => 'Extension Repo';

  @override
  String get storeSearch => 'Search extensions...';

  @override
  String get storeInstall => 'Install';

  @override
  String get storeInstalled => 'Installed';

  @override
  String get storeUpdate => 'Update';

  @override
  String get aboutTitle => 'About';

  @override
  String get aboutContributors => 'Contributors';

  @override
  String get aboutMobileDeveloper => 'Mobile version developer';

  @override
  String get aboutLogoArtist =>
      'The talented artist who created our beautiful app logo!';

  @override
  String get aboutTranslators => 'Translators';

  @override
  String get aboutSpecialThanks => 'Special Thanks';

  @override
  String get aboutLinks => 'Links';

  @override
  String get aboutMobileSource => 'Mobile source code';

  @override
  String get aboutLyricsWebsite => 'Lyrics website';

  @override
  String get aboutServiceStatus => 'Service status';

  @override
  String get aboutReportIssue => 'Report an issue';

  @override
  String get aboutReportIssueSubtitle => 'Report any problems you encounter';

  @override
  String get aboutFeatureRequest => 'Feature request';

  @override
  String get aboutFeatureRequestSubtitle => 'Suggest new features for the app';

  @override
  String get aboutTelegramChannel => 'Telegram Channel';

  @override
  String get aboutTelegramChannelSubtitle => 'Announcements and updates';

  @override
  String get aboutTelegramChat => 'Telegram Community';

  @override
  String get aboutTelegramChatSubtitle => 'Chat with other users';

  @override
  String get aboutSocial => 'Social';

  @override
  String get aboutApp => 'App';

  @override
  String get aboutVersion => 'Version';

  @override
  String get aboutBinimumDesc =>
      'The creator of QQDL & HiFi API. This project helped shape lossless download support.';

  @override
  String get aboutSachinsenalDesc =>
      'The original HiFi project creator. A foundation for lossless-source integration.';

  @override
  String get aboutUnituneDesc =>
      'Open-source music link resolver by Flaze, used for cross-platform fallback matching.';

  @override
  String get aboutMusicBrainzDesc =>
      'Open music database maintained by MetaBrainz and its community, used for recording cross-references.';

  @override
  String get aboutSquiglyDesc =>
      'Universal music link service by Liam Macmillan, used as a final cross-platform resolver fallback.';

  @override
  String get aboutAppDescription =>
      'Search music metadata, manage extensions, and organize your library.';

  @override
  String get artistAlbums => 'Albums';

  @override
  String get artistSingles => 'Singles & EPs';

  @override
  String get artistCompilations => 'Compilations';

  @override
  String get artistPopular => 'Popular';

  @override
  String get artistLatestRelease => 'Latest Release';

  @override
  String get artistTopSongs => 'Top Songs';

  @override
  String artistMonthlyListeners(String count) {
    return '$count monthly listeners';
  }

  @override
  String get trackMetadataService => 'Service';

  @override
  String get trackMetadataPlay => 'Play';

  @override
  String get trackMetadataShare => 'Share';

  @override
  String get trackMetadataDelete => 'Delete';

  @override
  String get setupGrantPermission => 'Grant Permission';

  @override
  String get setupSkip => 'Skip for now';

  @override
  String get setupStorageAccessRequired => 'Storage Access Required';

  @override
  String get setupStorageAccessMessageAndroid11 =>
      'Android 11+ requires \"All files access\" permission to save files to your chosen download folder.';

  @override
  String get setupOpenSettings => 'Open Settings';

  @override
  String get setupPermissionDeniedMessage =>
      'Permission denied. Please grant all permissions to continue.';

  @override
  String setupPermissionRequired(String permissionType) {
    return '$permissionType Permission Required';
  }

  @override
  String setupPermissionRequiredMessage(String permissionType) {
    return '$permissionType permission is required for the best experience. You can change this later in Settings.';
  }

  @override
  String get setupUseDefaultFolder => 'Use Default Folder?';

  @override
  String get setupNoFolderSelected =>
      'No folder selected. Would you like to use the default Music folder?';

  @override
  String get setupUseDefault => 'Use Default';

  @override
  String get setupDownloadLocationTitle => 'Download Location';

  @override
  String get setupDownloadLocationIosMessage =>
      'On iOS, downloads are saved to the app\'s Documents folder. You can access them via the Files app.';

  @override
  String get setupAppDocumentsFolder => 'App Documents Folder';

  @override
  String get setupAppDocumentsFolderSubtitle =>
      'Recommended - accessible via Files app';

  @override
  String get setupChooseFromFiles => 'Choose from Files';

  @override
  String get setupChooseFromFilesSubtitle => 'Select iCloud or other location';

  @override
  String get setupIosEmptyFolderWarning =>
      'iOS limitation: Empty folders cannot be selected. Choose a folder with at least one file.';

  @override
  String get setupIcloudNotSupported =>
      'iCloud Drive is not supported. Please use the app Documents folder.';

  @override
  String get setupDownloadInFlac =>
      'Descarga música con calidad sin pérdida y Hi-Res';

  @override
  String get setupStorageGranted => 'Storage Permission Granted!';

  @override
  String get setupStorageRequired => 'Storage Permission Required';

  @override
  String get setupStorageDescription =>
      'Toadplayer needs storage permission to save your downloaded music files.';

  @override
  String get setupNotificationGranted => 'Notification Permission Granted!';

  @override
  String get setupNotificationEnable => 'Enable Notifications';

  @override
  String get setupFolderChoose => 'Choose Download Folder';

  @override
  String get setupFolderDescription =>
      'Select a folder where your downloaded music will be saved.';

  @override
  String get setupSelectFolder => 'Select Folder';

  @override
  String get setupEnableNotifications => 'Enable Notifications';

  @override
  String get setupNotificationBackgroundDescription =>
      'Get notified about download progress and completion. This helps you track downloads when the app is in background.';

  @override
  String get setupSkipForNow => 'Skip for now';

  @override
  String get setupNearbyEnable => 'Allow Nearby Devices';

  @override
  String get setupNearbyDescription =>
      'Toadplayer Link uses it to find your computer on the same network, and network storage needs it to reach a server at home.';

  @override
  String get setupNearbyGranted => 'Nearby Devices Allowed!';

  @override
  String get permissionNearbyDevices => 'Nearby devices';

  @override
  String get whatsNewLinkNearbyAllow => 'Allow nearby devices';

  @override
  String get whatsNewLinkNearbyGranted => 'Nearby devices allowed';

  @override
  String get whatsNewNearbyTitle => 'Nearby devices';

  @override
  String get whatsNewNearbyDesc =>
      'Android now asks before an app can reach other devices on your network. Toadplayer needs this for:';

  @override
  String get whatsNewNearbyLinkTitle => 'Finding your computer';

  @override
  String get whatsNewNearbyLinkBody =>
      'Toadplayer Link looks for your computer on the same Wi-Fi and stays connected to it.';

  @override
  String get whatsNewNearbyStorageTitle => 'Network storage';

  @override
  String get whatsNewNearbyStorageBody =>
      'Play music from a NAS or a server at home over SMB or WebDAV.';

  @override
  String get whatsNewNearbyPrivateTitle => 'Only your own devices';

  @override
  String get whatsNewNearbyPrivateBody =>
      'Toadplayer uses it only to reach devices on your network, never to find where you are.';

  @override
  String get whatsNewNearbyRefused =>
      'Not allowed. Toadplayer Link and network storage stay off until you allow Nearby devices for Toadplayer in Android settings.';

  @override
  String get setupNext => 'Next';

  @override
  String get setupGetStarted => 'Get Started';

  @override
  String get setupAllowAccessToManageFiles =>
      'Please enable \"Allow access to manage all files\" in the next screen.';

  @override
  String get setupLanguageTitle => 'Choose Language';

  @override
  String get setupLanguageDescription =>
      'Select your preferred language for the app. You can change this later in Settings.';

  @override
  String get setupLanguageSystemDefault => 'System Default';

  @override
  String get dialogCancel => 'Cancel';

  @override
  String get dialogSave => 'Save';

  @override
  String get dialogDelete => 'Delete';

  @override
  String get dialogRetry => 'Retry';

  @override
  String get dialogClear => 'Clear';

  @override
  String get dialogDone => 'Done';

  @override
  String get dialogImport => 'Import';

  @override
  String get dialogDownload => 'Download';

  @override
  String get previewPlay => 'Play preview';

  @override
  String get previewStop => 'Stop preview';

  @override
  String get previewUnavailable => 'Preview unavailable';

  @override
  String get dialogDiscard => 'Discard';

  @override
  String get dialogRemove => 'Remove';

  @override
  String get dialogUninstall => 'Uninstall';

  @override
  String get dialogDiscardChanges => 'Discard Changes?';

  @override
  String get dialogUnsavedChanges =>
      'You have unsaved changes. Do you want to discard them?';

  @override
  String get dialogClearAll => 'Clear All';

  @override
  String get dialogRemoveExtension => 'Remove Extension';

  @override
  String get dialogRemoveExtensionMessage =>
      'Are you sure you want to remove this extension? This cannot be undone.';

  @override
  String get dialogUninstallExtension => 'Uninstall Extension?';

  @override
  String dialogUninstallExtensionMessage(String extensionName) {
    return 'Are you sure you want to remove $extensionName?';
  }

  @override
  String get dialogClearHistoryTitle => 'Clear History';

  @override
  String get dialogClearHistoryMessage =>
      'Are you sure you want to clear all download history? This cannot be undone.';

  @override
  String get dialogDeleteSelectedTitle => 'Delete Selected';

  @override
  String dialogDeleteSelectedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    return 'Delete $count $_temp0 from history?\n\nThis will also delete the files from storage.';
  }

  @override
  String get dialogImportPlaylistTitle => 'Import Playlist';

  @override
  String dialogImportPlaylistMessage(int count) {
    return 'Found $count tracks in CSV. Add them to download queue?';
  }

  @override
  String csvImportTracks(int count) {
    return '$count tracks from CSV';
  }

  @override
  String get collectionExportM3u => 'Export as M3U8';

  @override
  String collectionExportM3uDone(int exported, int total) {
    return 'Exported $exported of $total tracks';
  }

  @override
  String get collectionExportM3uNone => 'No downloaded files to export';

  @override
  String get collectionExportM3uFailed => 'Export failed';

  @override
  String get trackOpenOn => 'Open on...';

  @override
  String get trackOpenOnNoLinks => 'No platform links found for this track.';

  @override
  String get libraryReviewDuplicates => 'Review duplicates';

  @override
  String get libraryReviewDuplicatesSubtitle =>
      'Find tracks stored more than once';

  @override
  String get duplicatesTitle => 'Duplicates';

  @override
  String get duplicatesEmpty => 'No duplicate tracks found.';

  @override
  String get duplicatesKeepBest => 'Keep best';

  @override
  String get duplicatesKeepBestAll => 'Keep best for all';

  @override
  String duplicatesKeepBestAllMessage(int count, int groupCount) {
    String _temp0 = intl.Intl.pluralLogic(
      groupCount,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'copies',
      one: 'copy',
    );
    return 'Keep the best copy of $groupCount $_temp0 and delete $count lower-quality $_temp1?\n\nThe deleted files will be removed from storage.';
  }

  @override
  String duplicatesKeepBestMessage(int count, String trackName) {
    return 'Delete $count lower-quality copies of \"$trackName\"?';
  }

  @override
  String duplicatesDeleteCopyMessage(String trackName) {
    return 'Delete this copy of \"$trackName\"?';
  }

  @override
  String snackbarAddedToQueue(String trackName) {
    return 'Added \"$trackName\" to queue';
  }

  @override
  String snackbarAddedTracksToQueue(int count) {
    return 'Added $count tracks to queue';
  }

  @override
  String snackbarAlreadyDownloaded(String trackName) {
    return '\"$trackName\" already downloaded';
  }

  @override
  String snackbarAlreadyInLibrary(String trackName) {
    return '\"$trackName\" already exists in your library';
  }

  @override
  String get snackbarHistoryCleared => 'History cleared';

  @override
  String snackbarDeletedTracks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    return 'Deleted $count $_temp0';
  }

  @override
  String snackbarCannotOpenFile(String error) {
    return 'Cannot open file: $error';
  }

  @override
  String get snackbarViewQueue => 'View Queue';

  @override
  String snackbarUrlCopied(String platform) {
    return '$platform URL copied to clipboard';
  }

  @override
  String get snackbarFileNotFound => 'File not found';

  @override
  String get snackbarSelectExtFile => 'Please select a .toadplayer-ext file';

  @override
  String get snackbarProviderPrioritySaved => 'Provider priority saved';

  @override
  String get snackbarMetadataProviderSaved =>
      'Metadata provider priority saved';

  @override
  String snackbarExtensionInstalled(String extensionName) {
    return '$extensionName installed.';
  }

  @override
  String snackbarExtensionUpdated(String extensionName) {
    return '$extensionName updated.';
  }

  @override
  String get snackbarFailedToInstall => 'Failed to install extension';

  @override
  String get snackbarFailedToUpdate => 'Failed to update extension';

  @override
  String get errorRateLimited => 'Rate Limited';

  @override
  String get errorRateLimitedMessage =>
      'Too many requests. Please wait a moment before searching again.';

  @override
  String get errorNoTracksFound => 'No tracks found';

  @override
  String get searchEmptyResultSubtitle => 'Try another keyword';

  @override
  String get errorUrlNotRecognized => 'Link not recognized';

  @override
  String get errorUrlNotRecognizedMessage =>
      'This link is not supported. Make sure the URL is correct and a compatible extension is installed.';

  @override
  String get errorUrlFetchFailed =>
      'Failed to load content from this link. Please try again.';

  @override
  String errorMissingExtensionSource(String item) {
    return 'Cannot load $item: missing extension source';
  }

  @override
  String get actionPause => 'Pause';

  @override
  String get actionResume => 'Resume';

  @override
  String get actionCancel => 'Cancel';

  @override
  String get actionSelectAll => 'Select All';

  @override
  String get actionDeselect => 'Deselect';

  @override
  String selectionSelected(int count) {
    return '$count selected';
  }

  @override
  String get selectionAllSelected => 'All tracks selected';

  @override
  String get selectionSelectToDelete => 'Select tracks to delete';

  @override
  String progressFetchingMetadata(int current, int total) {
    return 'Fetching metadata... $current/$total';
  }

  @override
  String get progressReadingCsv => 'Reading CSV...';

  @override
  String get searchSongs => 'Songs';

  @override
  String get searchArtists => 'Artists';

  @override
  String get searchAlbums => 'Albums';

  @override
  String get searchPlaylists => 'Playlists';

  @override
  String get searchShowAll => 'Show all';

  @override
  String searchShowAllCategory(String category) {
    return 'Show all $category';
  }

  @override
  String get searchSortTitle => 'Sort Results';

  @override
  String get searchSortDefault => 'Default';

  @override
  String get searchSortTitleAZ => 'Title (A-Z)';

  @override
  String get searchSortTitleZA => 'Title (Z-A)';

  @override
  String get searchSortArtistAZ => 'Artist (A-Z)';

  @override
  String get searchSortArtistZA => 'Artist (Z-A)';

  @override
  String get searchSortDurationShort => 'Duration (Shortest)';

  @override
  String get searchSortDurationLong => 'Duration (Longest)';

  @override
  String get searchSortDateOldest => 'Release Date (Oldest)';

  @override
  String get searchSortDateNewest => 'Release Date (Newest)';

  @override
  String get tooltipPlay => 'Play';

  @override
  String get filenameFormat => 'Filename Format';

  @override
  String get filenameShowAdvancedTags => 'Show advanced tags';

  @override
  String get filenameShowAdvancedTagsDescription =>
      'Enable formatted tags for track padding and date patterns';

  @override
  String get folderOrganizationNone => 'No organization';

  @override
  String get folderOrganizationByPlaylist => 'By Playlist';

  @override
  String get folderOrganizationByPlaylistSubtitle =>
      'Separate folder for each playlist';

  @override
  String get folderOrganizationByArtist => 'By Artist';

  @override
  String get folderOrganizationByAlbum => 'By Album';

  @override
  String get folderOrganizationByArtistAlbum => 'Artist/Album';

  @override
  String get folderOrganizationDescription =>
      'Organize downloaded files into folders';

  @override
  String get folderOrganizationNoneSubtitle => 'All files in download folder';

  @override
  String get folderOrganizationByArtistSubtitle =>
      'Separate folder for each artist';

  @override
  String get folderOrganizationByAlbumSubtitle =>
      'Separate folder for each album';

  @override
  String get folderOrganizationByArtistAlbumSubtitle =>
      'Nested folders for artist and album';

  @override
  String get updateAvailable => 'Update Available';

  @override
  String get updateLater => 'Later';

  @override
  String get updateStartingDownload => 'Starting download...';

  @override
  String get updateDownloadFailed => 'Download failed';

  @override
  String get updateFailedMessage => 'Failed to download update';

  @override
  String get updateNewVersionReady => 'A new version is ready';

  @override
  String get updateRequiredTitle => 'Update required';

  @override
  String updateRequiredNotice(int count) {
    return 'This version is $count releases behind and is no longer supported. Update to keep using the app.';
  }

  @override
  String get updateCurrent => 'Current';

  @override
  String get updateNew => 'New';

  @override
  String get updateDownloading => 'Downloading...';

  @override
  String get updateWhatsNew => 'What\'s New';

  @override
  String get updateDownloadInstall => 'Download & Install';

  @override
  String get updateDontRemind => 'Don\'t remind';

  @override
  String get updateViewRelease => 'View Release';

  @override
  String get updateStartingInstaller => 'Starting the installer...';

  @override
  String get updateMacInstallHint =>
      'The disk image is open in Finder. Quit Toadplayer, then drag Toadplayer from the disk image to Applications and replace the old copy.';

  @override
  String get updateQuitApp => 'Quit Toadplayer';

  @override
  String get updateReadyToRestart =>
      'The update is installed. Restart Toadplayer to use it.';

  @override
  String get updateRestartNow => 'Restart Now';

  @override
  String get providerPriorityTitle => 'Provider Priority';

  @override
  String get providerPriorityDescription =>
      'Drag to reorder download providers. The app will try providers from top to bottom when downloading tracks.';

  @override
  String get providerPriorityInfo =>
      'If a track is not available on the first provider, the app will automatically try the next one.';

  @override
  String get providerPriorityFallbackExtensionsDescription =>
      'Choose which installed download extensions can be used during automatic fallback.';

  @override
  String get providerPriorityFallbackExtensionsHint =>
      'Only enabled extensions with download-provider capability are listed here.';

  @override
  String get providerExtension => 'Extension';

  @override
  String get metadataProviderPriorityTitle => 'Metadata Priority';

  @override
  String get metadataProviderPriorityDescription =>
      'Drag to reorder metadata providers. The app will try providers from top to bottom when searching for tracks and fetching metadata.';

  @override
  String get metadataProviderPriorityInfo =>
      'Deezer has no rate limits and is recommended as primary. Spotify may rate limit after many requests.';

  @override
  String get logTitle => 'Logs';

  @override
  String get logCopied => 'Logs copied to clipboard';

  @override
  String get logSearchHint => 'Search logs...';

  @override
  String get logFilterLevel => 'Level';

  @override
  String get logFilterSection => 'Filter';

  @override
  String get logShareLogs => 'Share logs';

  @override
  String get logClearLogs => 'Clear logs';

  @override
  String get logClearLogsTitle => 'Clear Logs';

  @override
  String get logClearLogsMessage => 'Are you sure you want to clear all logs?';

  @override
  String get logFilterBySeverity => 'Filter logs by severity';

  @override
  String get logNoLogsYet => 'No logs yet';

  @override
  String get logNoLogsYetSubtitle => 'Logs will appear here as you use the app';

  @override
  String logEntriesFiltered(int count) {
    return 'Entries ($count filtered)';
  }

  @override
  String logEntries(int count) {
    return 'Entries ($count)';
  }

  @override
  String get channelStable => 'Stable';

  @override
  String get channelPreview => 'Preview';

  @override
  String get sectionSearchSource => 'Search Source';

  @override
  String get sectionDownload => 'Download';

  @override
  String get sectionPerformance => 'Performance';

  @override
  String get sectionApp => 'App';

  @override
  String get sectionData => 'Data';

  @override
  String get sectionDebug => 'Debug';

  @override
  String get sectionService => 'Service';

  @override
  String get sectionAudioQuality => 'Audio Quality';

  @override
  String get sectionFileSettings => 'File Settings';

  @override
  String get sectionLyrics => 'Lyrics';

  @override
  String get lyricsKeepScreenOn => 'Keep screen on while viewing lyrics';

  @override
  String get lyricsKeepScreenOnSubtitle =>
      'Prevent screen timeout while lyrics are open, including when playback is paused.';

  @override
  String get lyricsMode => 'Lyrics Mode';

  @override
  String get lyricsModeDescription =>
      'Choose how lyrics are saved with your downloads';

  @override
  String get lyricsModeEmbed => 'Embed in file';

  @override
  String get lyricsModeEmbedSubtitle => 'Lyrics stored inside FLAC metadata';

  @override
  String get lyricsModeExternal => 'External .lrc file';

  @override
  String get lyricsModeExternalSubtitle =>
      'Separate .lrc file for players like Samsung Music';

  @override
  String get lyricsModeBoth => 'Both';

  @override
  String get lyricsModeBothSubtitle => 'Embed and save .lrc file';

  @override
  String get sectionColor => 'Color';

  @override
  String get sectionTheme => 'Theme';

  @override
  String get sectionLayout => 'Layout';

  @override
  String get sectionLanguage => 'Language';

  @override
  String get appearanceLanguage => 'App Language';

  @override
  String get settingsAppearanceSubtitle => 'Theme, colors, display';

  @override
  String get settingsDownloadSubtitle => 'Service, quality, filename format';

  @override
  String get settingsExtensionsSubtitle => 'Manage download providers';

  @override
  String get settingsLogsSubtitle => 'View app logs for debugging';

  @override
  String get loadingSharedLink => 'Loading shared link...';

  @override
  String get pressBackAgainToExit => 'Press back again to exit';

  @override
  String downloadAllCount(int count) {
    return 'Download All ($count)';
  }

  @override
  String tracksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tracks',
      one: '1 track',
    );
    return '$_temp0';
  }

  @override
  String get trackCopyFilePath => 'Copy file path';

  @override
  String get trackRemoveFromDevice => 'Remove from device';

  @override
  String get trackLoadLyrics => 'Load Lyrics';

  @override
  String get trackMetadata => 'Metadata';

  @override
  String get trackFileInfo => 'File Info';

  @override
  String get trackLyrics => 'Lyrics';

  @override
  String get trackFileNotFound => 'File not found';

  @override
  String get trackFileUnavailable =>
      'File is currently unavailable. Check storage access and try again.';

  @override
  String get trackOpenInDeezer => 'Open in Deezer';

  @override
  String get trackOpenInSpotify => 'Open in Spotify';

  @override
  String get trackTrackName => 'Track name';

  @override
  String get trackArtist => 'Artist';

  @override
  String get trackAlbumArtist => 'Album artist';

  @override
  String get trackAlbum => 'Album';

  @override
  String get trackTrackNumber => 'Track number';

  @override
  String get trackDiscNumber => 'Disc number';

  @override
  String get trackDuration => 'Duration';

  @override
  String get trackAudioQuality => 'Audio quality';

  @override
  String get trackReplayGainTrackGain => 'ReplayGain Track Gain';

  @override
  String get trackReplayGainTrackPeak => 'ReplayGain Track Peak';

  @override
  String get trackReplayGainAlbumGain => 'ReplayGain Album Gain';

  @override
  String get trackReplayGainAlbumPeak => 'ReplayGain Album Peak';

  @override
  String get libraryQualityLabelFileFormat => 'File format';

  @override
  String get trackReleaseDate => 'Release date';

  @override
  String get trackGenre => 'Genre';

  @override
  String get trackLabel => 'Label';

  @override
  String get trackCopyright => 'Copyright';

  @override
  String get trackDownloaded => 'Downloaded';

  @override
  String get trackCopyLyrics => 'Copy lyrics';

  @override
  String trackLyricsSource(String source) {
    return 'Source: $source';
  }

  @override
  String get trackLyricsNotAvailable => 'Lyrics not available for this track';

  @override
  String get trackLyricsNotInFile => 'No lyrics found in this file';

  @override
  String get trackFetchOnlineLyrics => 'Fetch from Online';

  @override
  String get trackLyricsTimeout => 'Request timed out. Try again later.';

  @override
  String get trackLyricsLoadFailed => 'Failed to load lyrics';

  @override
  String get trackEmbedLyrics => 'Embed Lyrics';

  @override
  String get trackLyricsEmbedded => 'Lyrics embedded successfully';

  @override
  String get trackInstrumental => 'Instrumental track';

  @override
  String get trackCopiedToClipboard => 'Copied to clipboard';

  @override
  String get trackDeleteConfirmTitle => 'Remove from device?';

  @override
  String get trackDeleteNetworkConfirmMessage =>
      'This will permanently delete the file from your network storage and remove it from your library and history.';

  @override
  String snackbarDeleteTracksFailed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    return 'Could not delete $count $_temp0. Check storage access and try again.';
  }

  @override
  String get trackDeleteConfirmMessage =>
      'This will permanently delete the downloaded file and remove it from your history.';

  @override
  String get dateToday => 'Today';

  @override
  String get dateYesterday => 'Yesterday';

  @override
  String dateDaysAgo(int count) {
    return '$count days ago';
  }

  @override
  String dateWeeksAgo(int count) {
    return '$count weeks ago';
  }

  @override
  String dateMonthsAgo(int count) {
    return '$count months ago';
  }

  @override
  String get storeFilterAll => 'All';

  @override
  String get storeFilterMetadata => 'Metadata';

  @override
  String get storeFilterDownload => 'Download';

  @override
  String get storeFilterUtility => 'Utility';

  @override
  String get storeFilterLyrics => 'Lyrics';

  @override
  String get storeFilterIntegration => 'Integration';

  @override
  String get storeClearFilters => 'Clear filters';

  @override
  String get storeAddRepoTitle => 'Add Extension Repository';

  @override
  String get storeAddRepoDescription =>
      'Enter a GitHub repository URL that contains a registry.json file to browse and install extensions.';

  @override
  String get storeRepoUrlLabel => 'Repository URL';

  @override
  String get storeRepoUrlHint => 'https://github.com/user/repo';

  @override
  String get storeAddRepoButton => 'Add Repository';

  @override
  String get storeChangeRepoTooltip => 'Change repository';

  @override
  String get storeRepoDialogTitle => 'Extension Repository';

  @override
  String get storeRepoDialogCurrent => 'Current repository:';

  @override
  String get storeNewRepoUrlLabel => 'New Repository URL';

  @override
  String get storeLoadError => 'Failed to load repository';

  @override
  String get storeEmptyNoExtensions => 'No extensions available';

  @override
  String get storeEmptyNoResults => 'No extensions found';

  @override
  String get extensionId => 'ID';

  @override
  String get extensionError => 'Error';

  @override
  String get extensionCapabilities => 'Capabilities';

  @override
  String get extensionMetadataProvider => 'Metadata Provider';

  @override
  String get extensionDownloadProvider => 'Download Provider';

  @override
  String get extensionLyricsProvider => 'Lyrics Provider';

  @override
  String get extensionUrlHandler => 'URL Handler';

  @override
  String get extensionQualityOptions => 'Quality Options';

  @override
  String get extensionPostProcessingHooks => 'Post-Processing Hooks';

  @override
  String get extensionPermissions => 'Permissions';

  @override
  String get extensionSettings => 'Settings';

  @override
  String get extensionRemoveButton => 'Remove Extension';

  @override
  String get extensionUpdated => 'Updated';

  @override
  String get extensionMinAppVersion => 'Min App Version';

  @override
  String get extensionCustomTrackMatching => 'Custom Track Matching';

  @override
  String get extensionPostProcessing => 'Post-Processing';

  @override
  String extensionHooksAvailable(int count) {
    return '$count hook(s) available';
  }

  @override
  String extensionPatternsCount(int count) {
    return '$count pattern(s)';
  }

  @override
  String extensionStrategy(String strategy) {
    return 'Strategy: $strategy';
  }

  @override
  String get extensionsProviderPrioritySection => 'Provider Priority';

  @override
  String get extensionsInstalledSection => 'Installed Extensions';

  @override
  String get extensionsNoExtensions => 'No extensions installed';

  @override
  String get extensionsNoExtensionsSubtitle =>
      'Install .toadplayer-ext files to add new providers';

  @override
  String get extensionsInstallButton => 'Install Extension';

  @override
  String get extensionsInfoTip =>
      'Extensions can add new metadata and download providers. Only install extensions from trusted sources.';

  @override
  String get extensionsInstalledSuccess => 'Extension installed successfully';

  @override
  String extensionsInstalledCount(int count) {
    return '$count extensions installed successfully';
  }

  @override
  String extensionsInstallPartialSuccess(int installed, int attempted) {
    return 'Installed $installed of $attempted extensions';
  }

  @override
  String get extensionsDownloadPriority => 'Download Priority';

  @override
  String get extensionsDownloadPrioritySubtitle => 'Set download service order';

  @override
  String get extensionsFallbackTitle => 'Fallback Extensions';

  @override
  String get extensionsFallbackSubtitle =>
      'Choose which installed download extensions can be used as fallback';

  @override
  String get extensionsNoDownloadProvider =>
      'No extensions with download provider';

  @override
  String get extensionsMetadataPriority => 'Metadata Priority';

  @override
  String get extensionsMetadataPrioritySubtitle =>
      'Set search & metadata source order';

  @override
  String get extensionsNoMetadataProvider =>
      'No extensions with metadata provider';

  @override
  String get extensionsSearchProvider => 'Search Provider';

  @override
  String get extensionsNoCustomSearch => 'No extensions with custom search';

  @override
  String get extensionsSearchProviderDescription =>
      'Choose which service to use for searching tracks';

  @override
  String get extensionsCustomSearch => 'Custom search';

  @override
  String get extensionsErrorLoading => 'Error loading extension';

  @override
  String get qualityFlacLossless => 'FLAC Lossless';

  @override
  String get qualityFlacLosslessSubtitle => '16-bit / 44.1kHz';

  @override
  String get qualityHiResFlac => 'Hi-Res FLAC';

  @override
  String get qualityHiResFlacSubtitle => '24-bit / up to 96kHz';

  @override
  String get qualityHiResFlacMax => 'Hi-Res FLAC Max';

  @override
  String get qualityHiResFlacMaxSubtitle => '24-bit / up to 192kHz';

  @override
  String get downloadLossyFormat => 'Lossy Format';

  @override
  String get downloadAutoConvert => 'Auto-convert after download';

  @override
  String get downloadAutoConvertAllFormatsSubtitle =>
      'Convert completed downloads or limit FLAC bit depth and sample rate. The original is replaced only after conversion succeeds.';

  @override
  String get downloadAutoConvertOutputSubtitle =>
      'Choose the output format for newly completed downloads.';

  @override
  String get downloadAutoConvertFlacSubtitle =>
      'Lossless FLAC with quality limits. Lower bit depths and sample rates are preserved.';

  @override
  String get downloadAutoConvertMaxBitDepth => 'Maximum bit depth';

  @override
  String get downloadAutoConvertMaxSampleRate => 'Maximum sample rate';

  @override
  String get downloadAutoConvertFlacLimitsSubtitle =>
      'These are upper limits. For example, a 44.1 kHz source stays at 44.1 kHz when 48 kHz is selected. Lossy sources are kept in their original format.';

  @override
  String get downloadAutoConvertSubtitle =>
      'Convert completed downloads to a smaller lossy format. The original is replaced only after conversion succeeds.';

  @override
  String get downloadAutoConvertFormat => 'Output format';

  @override
  String get downloadAutoConvertFormatSubtitle =>
      'Choose the lossy format used for newly completed downloads.';

  @override
  String get downloadAutoConvertBitrate => 'Output quality';

  @override
  String get downloadAutoConvertBitrateSubtitle =>
      'Higher bitrates preserve more detail but create larger files.';

  @override
  String get downloadAutoConvertMp3Subtitle =>
      'Best compatibility across players and devices';

  @override
  String get downloadAutoConvertM4aSubtitle =>
      'Efficient AAC audio in an M4A container';

  @override
  String get downloadAutoConvertOpusSubtitle =>
      'Best efficiency for modern players';

  @override
  String get downloadAskBeforeDownload => 'Ask Before Download';

  @override
  String get downloadDirectory => 'Download Directory';

  @override
  String get downloadSeparateSinglesFolder => 'Separate Singles Folder';

  @override
  String get downloadAlbumFolderStructure => 'Album Folder Structure';

  @override
  String get albumFolderStructureDescription =>
      'Choose how album folders are structured';

  @override
  String get downloadUseAlbumArtistForFolders => 'Use Album Artist for folders';

  @override
  String get downloadUsePrimaryArtistOnly => 'Primary artist only for folders';

  @override
  String get downloadUsePrimaryArtistOnlyEnabled =>
      'Featured artists removed from folder name (e.g. Justin Bieber, Quavo → Justin Bieber)';

  @override
  String get downloadUsePrimaryArtistOnlyDisabled =>
      'Full artist string used for folder name';

  @override
  String get downloadSelectQuality => 'Select Quality';

  @override
  String get downloadFrom => 'Download From';

  @override
  String get appearanceAmoledDark => 'AMOLED Dark';

  @override
  String get appearanceAmoledDarkSubtitle => 'Pure black background';

  @override
  String get appearanceHeroAnimations => 'Hero animations';

  @override
  String get appearanceHeroAnimationsSubtitle =>
      'Fly covers between screens, e.g. when opening the player';

  @override
  String get appearanceForceBlur => 'Always use blur effects';

  @override
  String get appearanceForceBlurSubtitle =>
      'Enable the navigation bar blur even on devices where it is off by default. May cost performance.';

  @override
  String get queueClearAll => 'Clear All';

  @override
  String get queueClearAllMessage =>
      'Are you sure you want to clear all downloads?';

  @override
  String get settingsAutoExportFailed => 'Auto-export failed downloads';

  @override
  String get settingsAutoExportFailedSubtitle =>
      'Save failed downloads to TXT file automatically';

  @override
  String get settingsDownloadNetwork => 'Download Network';

  @override
  String get settingsDownloadNetworkAny => 'WiFi + Mobile Data';

  @override
  String get settingsDownloadNetworkWifiOnly => 'WiFi Only';

  @override
  String get settingsDownloadNetworkSubtitle =>
      'Choose which network to use for downloads. When set to WiFi Only, downloads will pause on mobile data.';

  @override
  String get settingsConcurrentDownloads => 'Concurrent downloads';

  @override
  String get settingsConcurrentDownloadsSubtitle =>
      'Downloading several tracks at once is faster, but some providers may rate-limit parallel requests.';

  @override
  String get concurrentDownloadsOne => '1 track at a time';

  @override
  String concurrentDownloadsCount(int count) {
    return 'Up to $count tracks at once';
  }

  @override
  String get albumFolderArtistAlbum => 'Artist / Album';

  @override
  String get albumFolderArtistAlbumSubtitle => 'Albums/Artist Name/Album Name/';

  @override
  String get albumFolderArtistYearAlbum => 'Artist / [Year] Album';

  @override
  String get albumFolderArtistYearAlbumSubtitle =>
      'Albums/Artist Name/[2005] Album Name/';

  @override
  String get albumFolderAlbumOnly => 'Album Only';

  @override
  String get albumFolderAlbumOnlySubtitle => 'Albums/Album Name/';

  @override
  String get albumFolderYearAlbum => '[Year] Album';

  @override
  String get albumFolderYearAlbumSubtitle => 'Albums/[2005] Album Name/';

  @override
  String get albumFolderArtistAlbumSingles => 'Artist / Album + Singles';

  @override
  String get albumFolderArtistAlbumSinglesSubtitle =>
      'Artist/Album/ and Artist/Singles/';

  @override
  String get albumFolderArtistAlbumFlat => 'Artist / Album (Singles flat)';

  @override
  String get albumFolderArtistAlbumFlatSubtitle =>
      'Artist/Album/ and Artist/song.flac';

  @override
  String get downloadedAlbumDeleteSelected => 'Delete Selected';

  @override
  String downloadedAlbumDeleteMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    return 'Delete $count $_temp0 from this album?\n\nThis will also delete the files from storage.';
  }

  @override
  String downloadedAlbumSelectedCount(int count) {
    return '$count selected';
  }

  @override
  String get downloadedAlbumTapToSelect => 'Tap tracks to select';

  @override
  String downloadedAlbumDeleteCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    return 'Delete $count $_temp0';
  }

  @override
  String get downloadedAlbumSelectToDelete => 'Select tracks to delete';

  @override
  String downloadedAlbumDiscHeader(int discNumber) {
    return 'Disc $discNumber';
  }

  @override
  String get recentTypeArtist => 'Artist';

  @override
  String get recentTypeAlbum => 'Album';

  @override
  String get recentTypeSong => 'Song';

  @override
  String get recentTypePlaylist => 'Playlist';

  @override
  String get recentEmpty => 'No recent items yet';

  @override
  String get recentClearAllMessage =>
      'Clear all recent activity? Download history and music files will not be deleted.';

  @override
  String get recentShowAllDownloads => 'Show All Downloads';

  @override
  String recentPlaylistInfo(String name) {
    return 'Playlist: $name';
  }

  @override
  String get discographyDownload => 'Download Discography';

  @override
  String get discographyDownloadAll => 'Download All';

  @override
  String discographyDownloadAllSubtitle(int count, int albumCount) {
    return '$count tracks from $albumCount releases';
  }

  @override
  String get discographyAlbumsOnly => 'Albums Only';

  @override
  String discographyAlbumsOnlySubtitle(int count, int albumCount) {
    return '$count tracks from $albumCount albums';
  }

  @override
  String get discographySinglesOnly => 'Singles & EPs Only';

  @override
  String discographySinglesOnlySubtitle(int count, int albumCount) {
    return '$count tracks from $albumCount singles';
  }

  @override
  String get discographySelectAlbums => 'Select Albums...';

  @override
  String get discographySelectAlbumsSubtitle =>
      'Choose specific albums or singles';

  @override
  String get discographyFetchingTracks => 'Fetching tracks...';

  @override
  String discographyFetchingAlbum(int current, int total) {
    return 'Fetching $current of $total...';
  }

  @override
  String get discographyDownloadSelected => 'Download Selected';

  @override
  String discographyAddedToQueue(int count) {
    return 'Added $count tracks to queue';
  }

  @override
  String discographySkippedDownloaded(int added, int skipped) {
    return '$added added, $skipped already downloaded';
  }

  @override
  String get discographyNoAlbums => 'No albums available';

  @override
  String get discographyFailedToFetch => 'Failed to fetch some albums';

  @override
  String get sectionStorageAccess => 'Storage Access';

  @override
  String get allFilesAccess => 'All Files Access';

  @override
  String get allFilesAccessEnabledSubtitle => 'Can write to any folder';

  @override
  String get allFilesAccessDisabledSubtitle => 'Limited to media folders only';

  @override
  String get allFilesAccessDescription =>
      'Enable this if you encounter write errors when saving to custom folders. Android 13+ restricts access to certain directories by default.';

  @override
  String get allFilesAccessDeniedMessage =>
      'Permission was denied. Please enable \'All files access\' manually in system settings.';

  @override
  String get allFilesAccessDisabledMessage =>
      'All Files Access disabled. The app will use limited storage access.';

  @override
  String get settingsLocalLibrary => 'Local Library';

  @override
  String get settingsLocalLibrarySubtitle => 'Scan music & detect duplicates';

  @override
  String get settingsCache => 'Storage & Cache';

  @override
  String get settingsCacheSubtitle => 'View size and clear cached data';

  @override
  String get libraryTitle => 'Local Library';

  @override
  String get libraryScanSettings => 'Scan Settings';

  @override
  String get libraryEnableLocalLibrary => 'Enable Local Library';

  @override
  String get libraryEnableLocalLibrarySubtitle =>
      'Scan and track your existing music';

  @override
  String get libraryFolder => 'Library Folder';

  @override
  String get libraryFolderHint => 'Tap to select folder';

  @override
  String get libraryAddFolder => 'Add library folder';

  @override
  String get libraryAddFolderSubtitle =>
      'Internal storage, SD card, SSD, or another external drive';

  @override
  String get librarySourceOnline => 'Online';

  @override
  String get librarySourceOffline =>
      'Offline. Reconnect the storage to restore these tracks';

  @override
  String get librarySourceDisabled => 'Disabled';

  @override
  String librarySourceScanCount(int scanned, int total, String progress) {
    return '$scanned of $total files scanned ($progress%)';
  }

  @override
  String get libraryExternalStorage => 'External storage';

  @override
  String get libraryRemoveFolder => 'Remove library folder';

  @override
  String get libraryRemoveFolderMessage =>
      'Remove this folder and its indexed tracks from Toadplayer? Audio files on the storage will not be deleted.';

  @override
  String libraryUnreadableFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count files couldn\'t be read',
      one: '1 file couldn\'t be read',
    );
    return '$_temp0';
  }

  @override
  String get libraryUnreadableFilesTitle => 'Unreadable files';

  @override
  String get libraryUnreadableFilesSubtitle =>
      'These files were left out of your library. They may be damaged, still downloading, or blocked by the storage app.';

  @override
  String get libraryUnreadableFilesAction => 'See which files and why';

  @override
  String libraryUnreadableFilesMore(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count more files aren\'t listed',
      one: '1 more file isn\'t listed',
    );
    return '$_temp0';
  }

  @override
  String get libraryShowDuplicateIndicator => 'Show Duplicate Indicator';

  @override
  String get libraryShowDuplicateIndicatorSubtitle =>
      'Show when searching for existing tracks';

  @override
  String get libraryAutoScan => 'Auto Scan';

  @override
  String get libraryAutoScanSubtitle =>
      'Automatically scan your library for new files';

  @override
  String get libraryAutoScanOff => 'Off';

  @override
  String get libraryAutoScanOnOpen => 'Every app open';

  @override
  String get libraryAutoScanDaily => 'Daily';

  @override
  String get libraryAutoScanWeekly => 'Weekly';

  @override
  String get libraryActions => 'Actions';

  @override
  String get libraryScan => 'Scan Library';

  @override
  String get libraryScanSubtitle => 'Scan for audio files';

  @override
  String get libraryScanSelectFolderFirst => 'Select a folder first';

  @override
  String get libraryCleanupMissingFiles => 'Cleanup Missing Files';

  @override
  String get libraryCleanupMissingFilesSubtitle =>
      'Remove entries for files that no longer exist';

  @override
  String get libraryFindMovedDownloads => 'Find Moved Downloads';

  @override
  String get libraryFindMovedDownloadsSubtitle =>
      'Relink downloads you moved into the current download folder, without removing anything';

  @override
  String libraryFindMovedDownloadsResult(int relinked, int missing) {
    String _temp0 = intl.Intl.pluralLogic(
      relinked,
      locale: localeName,
      other: 'Relinked $relinked downloads',
      one: 'Relinked 1 download',
      zero: 'No moved downloads found',
    );
    String _temp1 = intl.Intl.pluralLogic(
      missing,
      locale: localeName,
      other: ' · $missing files still missing',
      one: ' · 1 file still missing',
      zero: '',
    );
    return '$_temp0$_temp1';
  }

  @override
  String get libraryClear => 'Clear Library';

  @override
  String get libraryClearSubtitle => 'Remove all scanned tracks';

  @override
  String get libraryClearConfirmTitle => 'Clear Library';

  @override
  String get libraryClearConfirmMessage =>
      'This will remove all scanned tracks from your library. Your actual music files will not be deleted.';

  @override
  String get libraryAbout => 'About Local Library';

  @override
  String get libraryAboutDescription =>
      'Scans your existing music collection to detect duplicates when downloading. Supports FLAC, M4A, MP3, Opus, and OGG formats. Metadata is read from file tags when available.';

  @override
  String libraryTracksUnit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    return '$_temp0';
  }

  @override
  String libraryFilesUnit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'files',
      one: 'file',
    );
    return '$_temp0';
  }

  @override
  String libraryLastScanned(String time) {
    return 'Last scanned: $time';
  }

  @override
  String get libraryLastScannedNever => 'Never';

  @override
  String get libraryScanning => 'Scanning...';

  @override
  String get libraryScanFinalizing => 'Finalizing library...';

  @override
  String get libraryScanPaused => 'Scan paused';

  @override
  String libraryScanProgress(String progress, int total) {
    return '$progress% of $total files';
  }

  @override
  String get libraryInLibrary => 'In Library';

  @override
  String libraryRemovedMissingFiles(int count) {
    return 'Removed $count missing files from library';
  }

  @override
  String get libraryCleared => 'Library cleared';

  @override
  String get libraryStorageAccessRequired => 'Storage Access Required';

  @override
  String get libraryStorageAccessMessage =>
      'Toadplayer needs storage access to scan your music library. Please grant permission in settings.';

  @override
  String get librarySourceDownloaded => 'Downloaded';

  @override
  String get librarySourceLocal => 'Local';

  @override
  String get libraryFilterAll => 'All';

  @override
  String get libraryReEnrichAll => 'Re-enrich All Tracks';

  @override
  String get libraryReEnrichAllSubtitle =>
      'Look up and fill in metadata for every track in your Library, then review the changes';

  @override
  String get libraryReEnrichAllEmpty =>
      'No tracks to re-enrich. Tracks from network connections are not included.';

  @override
  String get libraryReEnrichAllBusy =>
      'Wait for the Library scan to finish, then try again.';

  @override
  String get libraryFilterDownloaded => 'Downloaded';

  @override
  String get libraryFilterLocal => 'Local';

  @override
  String get libraryFilterTitle => 'Filters';

  @override
  String get libraryFilterReset => 'Reset';

  @override
  String get libraryFilterApply => 'Apply';

  @override
  String get libraryFilterSource => 'Source';

  @override
  String get libraryFilterQuality => 'Quality';

  @override
  String get libraryFilterQualityHiRes => 'Hi-Res (24bit)';

  @override
  String get libraryFilterQualityCD => 'CD (16bit)';

  @override
  String get libraryFilterQualityLossy => 'Lossy';

  @override
  String get libraryFilterFormat => 'Format';

  @override
  String get libraryFilterMetadata => 'Metadata';

  @override
  String get libraryFilterMetadataComplete => 'Complete metadata';

  @override
  String get libraryFilterMetadataMissingAny => 'Missing any metadata';

  @override
  String get libraryFilterMetadataMissingYear => 'Missing year';

  @override
  String get libraryFilterMetadataMissingGenre => 'Missing genre';

  @override
  String get libraryFilterMetadataMissingAlbumArtist => 'Missing album artist';

  @override
  String get libraryFilterSort => 'Sort';

  @override
  String get libraryFilterSortLatest => 'Latest';

  @override
  String get libraryFilterSortOldest => 'Oldest';

  @override
  String get libraryFilterSortSizeLargest => 'Size (Largest first)';

  @override
  String get libraryFilterSortSizeSmallest => 'Size (Smallest first)';

  @override
  String get libraryFilterSortAlbumAsc => 'Album (A-Z)';

  @override
  String get libraryFilterSortAlbumDesc => 'Album (Z-A)';

  @override
  String get libraryFilterSortGenreAsc => 'Genre (A-Z)';

  @override
  String get libraryFilterSortGenreDesc => 'Genre (Z-A)';

  @override
  String get timeJustNow => 'Just now';

  @override
  String timeMinutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutes ago',
      one: '1 minute ago',
    );
    return '$_temp0';
  }

  @override
  String timeHoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hours ago',
      one: '1 hour ago',
    );
    return '$_temp0';
  }

  @override
  String get tutorialWelcomeTitle => '¡Te damos la bienvenida a Toadplayer!';

  @override
  String get tutorialWelcomeDesc =>
      'Let\'s learn how to download your favorite music in lossless quality. This quick tutorial will show you the basics.';

  @override
  String get tutorialWelcomeTip1 =>
      'Busca con una extensión instalada o pega un enlace compatible';

  @override
  String get tutorialWelcomeTip2 =>
      'Get FLAC quality audio from installed download extensions';

  @override
  String get tutorialWelcomeTip3 =>
      'Automatic metadata, cover art, and lyrics embedding';

  @override
  String get tutorialSearchTitle => 'Finding Music';

  @override
  String get tutorialSearchDesc =>
      'There are two easy ways to find music you want to download.';

  @override
  String get tutorialDownloadTitle => 'Downloading Music';

  @override
  String get tutorialDownloadDesc =>
      'Downloading music is simple and fast. Here\'s how it works.';

  @override
  String get tutorialLibraryTitle => 'Your Library';

  @override
  String get tutorialLibraryDesc =>
      'All your downloaded music is organized in the Library tab.';

  @override
  String get tutorialLibraryTip1 =>
      'View download progress and queue in the Library tab';

  @override
  String get tutorialLibraryTip2 =>
      'Tap any track to play it with your music player';

  @override
  String get tutorialLibraryTip3 =>
      'Switch between list and grid view for better browsing';

  @override
  String get tutorialExtensionsTitle => 'Extensions';

  @override
  String get tutorialExtensionsDesc =>
      'Extend the app\'s capabilities with community extensions.';

  @override
  String get tutorialExtensionsTip1 =>
      'Browse the Repo tab to discover useful extensions';

  @override
  String get tutorialExtensionsTip2 =>
      'Add new download providers or search sources';

  @override
  String get tutorialExtensionsTip3 =>
      'Get lyrics, enhanced metadata, and more features';

  @override
  String get tutorialSettingsTitle => 'Customize Your Experience';

  @override
  String get tutorialSettingsDesc =>
      'Personalize the app in Settings to match your preferences.';

  @override
  String get tutorialSettingsTip1 =>
      'Change download location and folder organization';

  @override
  String get tutorialSettingsTip2 =>
      'Set default audio quality and format preferences';

  @override
  String get tutorialSettingsTip3 => 'Customize app theme and appearance';

  @override
  String get tutorialReadyMessage =>
      'You\'re all set! Start downloading your favorite music now.';

  @override
  String whatsNewIntroTitle(String version) {
    return 'Toadplayer $version is here';
  }

  @override
  String get whatsNewIntroDesc =>
      'Our biggest update yet. Here\'s a quick look at what\'s new.';

  @override
  String get whatsNewLinkTitle => 'Toadplayer Link';

  @override
  String get whatsNewLinkDesc =>
      'Pair your phone and computer on the same network. Toadplayer Link is in beta.';

  @override
  String get whatsNewLinkPlayTitle => 'Play across devices';

  @override
  String get whatsNewLinkPlayBody =>
      'Browse your computer\'s library on your phone, control what it plays, and hand playback over without losing your place.';

  @override
  String get whatsNewLinkTransferTitle => 'Move songs both ways';

  @override
  String get whatsNewLinkTransferBody =>
      'Send songs to your computer or save them to your phone, right from the song menu.';

  @override
  String get whatsNewLinkSyncTitle => 'Stay in sync';

  @override
  String get whatsNewLinkSyncBody =>
      'Collections and listening history stay the same on paired devices.';

  @override
  String get whatsNewHomeTitle => 'A Home that learns';

  @override
  String get whatsNewHomeDesc =>
      'Mixes and autoplay now follow how you actually listen.';

  @override
  String get whatsNewHomeMixesTitle => 'Mixes from your Library';

  @override
  String get whatsNewHomeMixesBody =>
      'New mixes built from your own songs, including a mix for each genre.';

  @override
  String get whatsNewHomeAutoplayTitle => 'Smarter autoplay';

  @override
  String get whatsNewHomeAutoplayBody =>
      'Autoplay follows your listening session and learns from your favorites, playlists and replays.';

  @override
  String get whatsNewHomeAnalysisTitle => 'Song analysis';

  @override
  String get whatsNewHomeAnalysisBody =>
      'Toadplayer can analyze how your songs sound for closer picks. It stays off until you turn it on in Settings.';

  @override
  String get whatsNewPlayerTitle => 'Player and lyrics';

  @override
  String get whatsNewPlayerDesc =>
      'Smoother playback, and lyrics in any language.';

  @override
  String get whatsNewPlayerGaplessTitle => 'Gapless playback';

  @override
  String get whatsNewPlayerGaplessBody =>
      'Albums flow from one song into the next without a pause.';

  @override
  String get whatsNewPlayerTranslateTitle => 'Translate lyrics';

  @override
  String get whatsNewPlayerTranslateBody =>
      'Translate or romanize lyrics with an AI provider you set up.';

  @override
  String get whatsNewPlayerTimingTitle => 'Lyrics timing';

  @override
  String get whatsNewPlayerTimingBody =>
      'Move synced lyrics earlier or later when they drift from the song.';

  @override
  String get whatsNewPlayerAutoTitle => 'Android Auto';

  @override
  String get whatsNewPlayerAutoBody =>
      'Browse and play your Library from your car\'s screen.';

  @override
  String get whatsNewPlayerExclusiveTitle => 'Exclusive output';

  @override
  String get whatsNewPlayerExclusiveBody =>
      'Send audio straight to your output device without the system mixer.';

  @override
  String get whatsNewLibraryTitle => 'Library and search';

  @override
  String get whatsNewLibraryDesc => 'New ways to find and organize your music.';

  @override
  String get whatsNewLibraryFoldersTitle => 'Browse by folder';

  @override
  String get whatsNewLibraryFoldersBody =>
      'Explore your Library the way it\'s stored on disk.';

  @override
  String get whatsNewLibrarySuggestionsTitle => 'Suggested songs';

  @override
  String get whatsNewLibrarySuggestionsBody =>
      'Albums, singles and playlists now suggest songs that fit.';

  @override
  String get whatsNewLibraryRecognizeTitle => 'Recognize music';

  @override
  String get whatsNewLibraryRecognizeBody =>
      'Tap the microphone in Search to find out what\'s playing nearby.';

  @override
  String get whatsNewLibraryPlaylistsTitle => 'Better playlists';

  @override
  String get whatsNewLibraryPlaylistsBody =>
      'Reorder songs, create a playlist from a folder, or import playlist files.';

  @override
  String get whatsNewFasterTitle => 'Faster everywhere';

  @override
  String get whatsNewFasterDesc =>
      'Quicker and lighter, especially with large libraries.';

  @override
  String get whatsNewFasterLibraryTitle => 'A quicker Library';

  @override
  String get whatsNewFasterLibraryBody =>
      'Tabs and albums open faster, and scrolling stays smooth.';

  @override
  String get whatsNewFasterNetworkTitle => 'Faster network music';

  @override
  String get whatsNewFasterNetworkBody =>
      'Network shares scan many times faster, and Subsonic servers sync with far fewer requests.';

  @override
  String get whatsNewFasterQueueTitle => 'Long queues that last';

  @override
  String get whatsNewFasterQueueBody =>
      'Large queues save quickly and come back after a restart.';

  @override
  String get whatsNewFasterBackgroundTitle => 'Lighter in the background';

  @override
  String get whatsNewFasterBackgroundBody =>
      'The app starts faster and does less work while music plays.';

  @override
  String get whatsNewDone => 'Start listening';

  @override
  String whatsNewAboutTitle(String version) {
    return 'What\'s new in $version';
  }

  @override
  String get libraryForceFullScan => 'Force Full Scan';

  @override
  String get libraryForceFullScanSubtitle => 'Rescan all files, ignoring cache';

  @override
  String get cleanupOrphanedDownloads => 'Cleanup Orphaned Downloads';

  @override
  String get cleanupOrphanedDownloadsSubtitle =>
      'Remove history entries for files that no longer exist';

  @override
  String cleanupOrphanedDownloadsResult(int count) {
    return 'Removed $count orphaned entries from history';
  }

  @override
  String get cleanupOrphanedDownloadsNone => 'No orphaned entries found';

  @override
  String get cacheTitle => 'Storage & Cache';

  @override
  String get cacheSummaryTitle => 'Cache overview';

  @override
  String get cacheSummarySubtitle =>
      'Clearing cache will not remove downloaded music files.';

  @override
  String cacheEstimatedTotal(String size) {
    return 'Estimated cache usage: $size';
  }

  @override
  String get cacheSectionStorage => 'Cached Data';

  @override
  String get cacheSectionMaintenance => 'Maintenance';

  @override
  String get cacheAppDirectory => 'App cache directory';

  @override
  String get cacheAppDirectoryDesc =>
      'HTTP responses, WebView data, and other temporary app data.';

  @override
  String get cacheTempDirectory => 'Temporary directory';

  @override
  String get cacheTempDirectoryDesc =>
      'Temporary files from downloads and audio conversion.';

  @override
  String get cacheCoverImage => 'Cover image cache';

  @override
  String get cacheCoverImageDesc =>
      'Downloaded album and track cover art. Will re-download when viewed.';

  @override
  String get cacheLibraryCover => 'Library cover cache';

  @override
  String get cacheLibraryCoverDesc =>
      'Cover art extracted from local music files. Will re-extract on next scan.';

  @override
  String get libraryPlaybackNormalization => 'Volume normalization';

  @override
  String get libraryPlaybackNormalizationSubtitle =>
      'Even out loudness between tracks using their ReplayGain or R128 tags, when present';

  @override
  String get playbackNormalizationMode => 'Gain mode';

  @override
  String get playbackNormalizationModeTrack => 'Track';

  @override
  String get playbackNormalizationModeAlbum => 'Album';

  @override
  String get playbackNormalizationPreamp => 'Pre-amp';

  @override
  String playbackNormalizationPreampValue(String gain, String target) {
    return '$gain dB (target $target LUFS)';
  }

  @override
  String get playbackNormalizationPreampHint =>
      'Lower values play quieter. Normalization only turns tracks down, so it never clips.';

  @override
  String get cacheAudioAnalysis => 'Audio analysis cache';

  @override
  String get cacheAudioAnalysisDesc =>
      'Saved spectrograms and analysis results. Will re-analyze on next open.';

  @override
  String get cacheExploreFeed => 'Explore feed cache';

  @override
  String get cacheExploreFeedDesc =>
      'Explore tab content (new releases, trending). Will refresh on next visit.';

  @override
  String get cacheTrackLookup => 'Track lookup cache';

  @override
  String get cacheTrackLookupDesc =>
      'Spotify/Deezer track ID lookups. Clearing may slow next few searches.';

  @override
  String get cacheCleanupUnusedDesc =>
      'Remove orphaned download history and library entries for missing files.';

  @override
  String get cacheNoData => 'No cached data';

  @override
  String cacheSizeWithFiles(String size, int count) {
    return '$size in $count files';
  }

  @override
  String cacheSizeOnly(String size) {
    return '$size';
  }

  @override
  String cacheEntries(int count) {
    return '$count entries';
  }

  @override
  String cacheClearSuccess(String target) {
    return 'Cleared: $target';
  }

  @override
  String get cacheClearConfirmTitle => 'Clear cache?';

  @override
  String cacheClearConfirmMessage(String target) {
    return 'This will clear cached data for $target. Downloaded music files will not be deleted.';
  }

  @override
  String get cacheClearAllConfirmTitle => 'Clear all cache?';

  @override
  String get cacheClearAllConfirmMessage =>
      'This will clear all cache categories on this page. Downloaded music files will not be deleted.';

  @override
  String get cacheClearAll => 'Clear all cache';

  @override
  String get cacheCleanupUnused => 'Cleanup unused data';

  @override
  String get cacheCleanupUnusedSubtitle =>
      'Remove orphaned download history and missing library entries';

  @override
  String cacheCleanupResult(int downloadCount, int libraryCount) {
    return 'Cleanup completed: $downloadCount orphaned downloads, $libraryCount missing library entries';
  }

  @override
  String get cacheRefreshStats => 'Refresh stats';

  @override
  String get trackSaveCoverArt => 'Save Cover Art';

  @override
  String get trackSaveLyrics => 'Save Lyrics (.lrc)';

  @override
  String get trackSaveLyricsProgress => 'Saving lyrics...';

  @override
  String get trackReEnrich => 'Re-enrich';

  @override
  String get trackReEnrichBatchSubtitle =>
      'Choose an online or manual update, then review every change before writing';

  @override
  String get trackReEnrichFieldCover => 'Cover Art';

  @override
  String get trackReEnrichFieldLyrics => 'Lyrics';

  @override
  String get trackReEnrichFieldBasicTags => 'Album, Album Artist';

  @override
  String get trackReEnrichFieldTrackInfo => 'Track & Disc Number';

  @override
  String get trackReEnrichFieldReleaseInfo => 'Date & ISRC';

  @override
  String get trackReEnrichFieldExtra => 'Genre, Label, Copyright';

  @override
  String get trackReEnrichSelectAll => 'Select All';

  @override
  String get trackReEnrichModeIsrc => 'ISRC only';

  @override
  String get trackReEnrichModeIsrcSubtitle =>
      'Find and add the recording identifier without changing other tags';

  @override
  String get trackReEnrichModeMissing => 'Fill missing tags';

  @override
  String get trackReEnrichModeMissingSubtitle =>
      'Keep existing values and fill only fields that are empty';

  @override
  String get trackReEnrichModeReplace => 'Update selected tags';

  @override
  String get trackReEnrichModeReplaceSubtitle =>
      'Choose which existing values may be replaced by online metadata';

  @override
  String get trackReEnrichModeManual => 'Set common values';

  @override
  String get trackReEnrichModeManualSubtitle =>
      'Apply the same values to every selected track';

  @override
  String get trackReEnrichManualFieldsTitle => 'Values to apply';

  @override
  String get trackReEnrichManualHint =>
      'Leave a field empty to keep its current value. Track titles, numbers, and ISRCs stay unchanged.';

  @override
  String get trackReEnrichFieldsTitle => 'Tags to update';

  @override
  String get trackReEnrichReview => 'Review changes';

  @override
  String get trackReEnrichReviewTitle => 'Review metadata changes';

  @override
  String trackReEnrichReviewSubtitle(int changeCount, int trackCount) {
    return '$changeCount proposed changes across $trackCount tracks';
  }

  @override
  String get trackReEnrichNoChanges =>
      'No metadata changes were found for the selected tracks.';

  @override
  String get trackReEnrichApplyChanges => 'Apply changes';

  @override
  String get trackReEnrichRefreshOnline => 'Refresh from online';

  @override
  String get trackEditMetadata => 'Edit Metadata';

  @override
  String trackCoverSaved(String fileName) {
    return 'Cover art saved to $fileName';
  }

  @override
  String get trackCoverNoSource => 'No cover art source available';

  @override
  String trackLyricsSaved(String fileName) {
    return 'Lyrics saved to $fileName';
  }

  @override
  String get trackReEnrichProgress => 'Re-enriching metadata...';

  @override
  String get trackReEnrichSearching => 'Searching metadata online...';

  @override
  String get trackReEnrichPreparing => 'Preparing metadata changes...';

  @override
  String get trackReEnrichSuccess => 'Metadata re-enriched successfully';

  @override
  String get trackReEnrichMetadataSaved => 'Metadata saved';

  @override
  String get trackReEnrichLyricsUpdated => 'Lyrics updated';

  @override
  String get trackReEnrichLyricsPreserved =>
      'No new lyrics found; existing lyrics kept';

  @override
  String get trackReEnrichLyricsDisabled =>
      'Lyrics not updated: lyric downloading is disabled in Settings';

  @override
  String get trackReEnrichFfmpegFailed => 'FFmpeg metadata embed failed';

  @override
  String get queueFlacAction => 'Queue FLAC';

  @override
  String queueFlacConfirmMessage(int count) {
    return 'Search online matches for the selected tracks and queue FLAC downloads.\n\nExisting files will not be modified or deleted.\n\nOnly high-confidence matches are queued automatically.\n\n$count selected';
  }

  @override
  String get queueFlacNoReliableMatches =>
      'No reliable online matches found for the selection';

  @override
  String queueFlacQueuedWithSkipped(int addedCount, int skippedCount) {
    return 'Added $addedCount tracks to queue, skipped $skippedCount';
  }

  @override
  String trackSaveFailed(String error) {
    return 'Failed: $error';
  }

  @override
  String get trackConvertFormat => 'Convert Format';

  @override
  String get trackConvertTitle => 'Convert Audio';

  @override
  String get trackConvertTargetFormat => 'Target Format';

  @override
  String get trackConvertBitrate => 'Bitrate';

  @override
  String get trackConvertKeepOriginal => 'Keep original file';

  @override
  String get trackConvertKeepOriginalDescription =>
      'Add the converted file as a separate library entry';

  @override
  String get trackConvertConfirmTitle => 'Confirm Conversion';

  @override
  String trackConvertConfirmMessage(
    String sourceFormat,
    String targetFormat,
    String bitrate,
  ) {
    return 'Convert from $sourceFormat to $targetFormat at $bitrate?\n\nThe original file will be deleted after conversion.';
  }

  @override
  String trackConvertConfirmMessageLossless(
    String sourceFormat,
    String targetFormat,
  ) {
    return 'Convert from $sourceFormat to $targetFormat? (Lossless — no quality loss)\n\nThe original file will be deleted after conversion.';
  }

  @override
  String trackConvertConfirmKeepOriginal(
    String sourceFormat,
    String targetFormat,
  ) {
    return 'Convert from $sourceFormat to $targetFormat?\n\nThe original file will be kept and the converted file will be added as a separate library entry.';
  }

  @override
  String get trackConvertLosslessHint =>
      'Lossless conversion — no quality loss';

  @override
  String get trackConvertConverting => 'Converting audio...';

  @override
  String trackConvertSuccess(String format) {
    return 'Converted to $format successfully';
  }

  @override
  String get trackConvertFailed => 'Conversion failed';

  @override
  String get cueSplitTitle => 'Split CUE Sheet';

  @override
  String cueSplitAlbum(String album) {
    return 'Album: $album';
  }

  @override
  String cueSplitArtist(String artist) {
    return 'Artist: $artist';
  }

  @override
  String cueSplitTrackCount(int count) {
    return '$count tracks';
  }

  @override
  String get cueSplitConfirmTitle => 'Split CUE Album';

  @override
  String cueSplitConfirmMessage(String album, int count) {
    return 'Split \"$album\" into $count individual FLAC files?\n\nFiles will be saved to the same directory.';
  }

  @override
  String cueSplitSplitting(int current, int total) {
    return 'Splitting CUE sheet... ($current/$total)';
  }

  @override
  String cueSplitSuccess(int count) {
    return 'Split into $count tracks successfully';
  }

  @override
  String get cueSplitFailed => 'CUE split failed';

  @override
  String get cueSplitNoAudioFile => 'Audio file not found for this CUE sheet';

  @override
  String get cueSplitButton => 'Split into Tracks';

  @override
  String get actionCreate => 'Create';

  @override
  String get collectionFoldersTitle => 'My folders';

  @override
  String get collectionWishlist => 'Wishlist';

  @override
  String get collectionLoved => 'Loved';

  @override
  String get collectionFavoriteArtists => 'Favorite Artists';

  @override
  String get collectionPlaylist => 'Playlist';

  @override
  String get collectionAddToPlaylist => 'Add to playlist';

  @override
  String get collectionCreatePlaylist => 'Create playlist';

  @override
  String get collectionNoPlaylistsYet => 'No playlists yet';

  @override
  String collectionPlaylistTracks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tracks',
      one: '1 track',
    );
    return '$_temp0';
  }

  @override
  String collectionArtistCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count artists',
      one: '1 artist',
    );
    return '$_temp0';
  }

  @override
  String collectionAddedToPlaylist(String playlistName) {
    return 'Added to \"$playlistName\"';
  }

  @override
  String collectionAlreadyInPlaylist(String playlistName) {
    return 'Already in \"$playlistName\"';
  }

  @override
  String get collectionPlaylistNameHint => 'Playlist name';

  @override
  String get collectionPlaylistNameRequired => 'Playlist name is required';

  @override
  String get collectionRenamePlaylist => 'Rename playlist';

  @override
  String get collectionDeletePlaylist => 'Delete playlist';

  @override
  String get collectionPlaylistRenamed => 'Playlist renamed';

  @override
  String get collectionWishlistEmptyTitle => 'Wishlist is empty';

  @override
  String get collectionWishlistEmptySubtitle =>
      'Tap + on tracks to save what you want to download later';

  @override
  String get collectionLovedEmptyTitle => 'Loved folder is empty';

  @override
  String get collectionLovedEmptySubtitle =>
      'Tap love on tracks to keep your favorites';

  @override
  String get collectionFavoriteArtistsEmptyTitle => 'No favorite artists yet';

  @override
  String get collectionFavoriteArtistsEmptySubtitle =>
      'Tap the heart on an artist page to keep them here';

  @override
  String get collectionPlaylistEmptyTitle => 'Playlist is empty';

  @override
  String get collectionPlaylistEmptySubtitle =>
      'Long-press + on any track to add it here';

  @override
  String get collectionRemoveFromPlaylist => 'Remove from playlist';

  @override
  String collectionDeleteFilesMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'audio files',
      one: 'audio file',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'these files',
      one: 'this file',
    );
    return 'Permanently delete $count $_temp0 from storage? This affects every playlist that uses $_temp1.';
  }

  @override
  String get collectionRemoveFromFolder => 'Remove from folder';

  @override
  String collectionAddedToLoved(String trackName) {
    return '\"$trackName\" added to Loved';
  }

  @override
  String collectionRemovedFromLoved(String trackName) {
    return '\"$trackName\" removed from Loved';
  }

  @override
  String collectionAddedToWishlist(String trackName) {
    return '\"$trackName\" added to Wishlist';
  }

  @override
  String collectionRemovedFromWishlist(String trackName) {
    return '\"$trackName\" removed from Wishlist';
  }

  @override
  String collectionAddedToFavoriteArtists(String artistName) {
    return '\"$artistName\" added to Favorite Artists';
  }

  @override
  String collectionRemovedFromFavoriteArtists(String artistName) {
    return '\"$artistName\" removed from Favorite Artists';
  }

  @override
  String get trackOptionAddToLoved => 'Add to Loved';

  @override
  String get trackOptionRemoveFromLoved => 'Remove from Loved';

  @override
  String get trackOptionAddToWishlist => 'Add to Wishlist';

  @override
  String get trackOptionRemoveFromWishlist => 'Remove from Wishlist';

  @override
  String get artistOptionAddToFavorites => 'Add to Favorite Artists';

  @override
  String get artistOptionRemoveFromFavorites => 'Remove from Favorite Artists';

  @override
  String get collectionPlaylistChangeCover => 'Change cover image';

  @override
  String get collectionPlaylistRemoveCover => 'Remove cover image';

  @override
  String selectionConvertCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    return 'Convert $count $_temp0';
  }

  @override
  String get selectionConvertNoConvertible => 'No convertible tracks selected';

  @override
  String get selectionBatchConvertConfirmTitle => 'Batch Convert';

  @override
  String selectionBatchConvertConfirmMessage(
    int count,
    String format,
    String bitrate,
  ) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    return 'Convert $count $_temp0 to $format at $bitrate?\n\nOriginal files will be deleted after conversion.';
  }

  @override
  String selectionBatchConvertConfirmMessageLossless(int count, String format) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    return 'Convert $count $_temp0 to $format? (Lossless — no quality loss)\n\nOriginal files will be deleted after conversion.';
  }

  @override
  String selectionBatchConvertConfirmKeepOriginal(int count, String format) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    return 'Convert $count $_temp0 to $format?\n\nOriginal files will be kept and converted files will be added as separate library entries.';
  }

  @override
  String selectionBatchConvertSuccess(int success, int total, String format) {
    return 'Converted $success of $total tracks to $format';
  }

  @override
  String downloadedAlbumDownloadedCount(int count) {
    return '$count downloaded';
  }

  @override
  String get downloadUseAlbumArtistForFoldersAlbumSubtitle =>
      'Folder named after Album Artist tag';

  @override
  String get downloadUseAlbumArtistForFoldersTrackSubtitle =>
      'Folder named after Track Artist tag';

  @override
  String get lyricsProvidersTitle => 'Lyrics Provider Priority';

  @override
  String get lyricsProvidersDescription =>
      'Enable, disable and reorder lyrics sources. Providers are tried top-to-bottom until lyrics are found.';

  @override
  String get lyricsProvidersInfoText =>
      'Extension lyrics providers run before built-in lyrics providers. At least one provider must remain enabled.';

  @override
  String lyricsProvidersEnabledSection(int count) {
    return 'Enabled ($count)';
  }

  @override
  String lyricsProvidersDisabledSection(int count) {
    return 'Disabled ($count)';
  }

  @override
  String get lyricsProvidersAtLeastOne =>
      'At least one provider must remain enabled';

  @override
  String get lyricsProvidersSaved => 'Lyrics provider priority saved';

  @override
  String get lyricsProvidersDiscardContent =>
      'You have unsaved changes that will be lost.';

  @override
  String get lyricsProviderLrclibDesc => 'Open-source synced lyrics database';

  @override
  String get lyricsProviderNeteaseDesc =>
      'NetEase Cloud Music (good for Asian songs)';

  @override
  String get lyricsProviderMusixmatchDesc =>
      'Largest lyrics database (multi-language)';

  @override
  String get lyricsProviderAppleMusicDesc =>
      'Word-by-word synced lyrics (via proxy)';

  @override
  String get lyricsProviderQqMusicDesc =>
      'QQ Music (good for Chinese songs, via proxy)';

  @override
  String get lyricsProviderLyricsPlusDesc =>
      'Word-by-word karaoke lyrics (Apple/Musixmatch/Spotify/QQ, via proxy)';

  @override
  String get lyricsProviderToadLrcDesc =>
      'Word-by-word Apple Music lyrics from Toad-LRC';

  @override
  String get lyricsProviderLrcRedDesc =>
      'Word-by-word Apple Music lyrics, matched by recording';

  @override
  String get lyricsProviderBetterLyricsDesc =>
      'Word-by-word Apple Music lyrics for popular songs';

  @override
  String get lyricsProviderExtensionDesc => 'Extension provider';

  @override
  String get safMigrationTitle => 'Storage Update Required';

  @override
  String get safMigrationMessage1 =>
      'Toadplayer now uses Android Storage Access Framework (SAF) for downloads. This fixes \"permission denied\" errors on Android 10+.';

  @override
  String get safMigrationMessage2 =>
      'Please select your download folder again to switch to the new storage system.';

  @override
  String get safMigrationSuccess => 'Download folder updated to SAF mode';

  @override
  String get settingsDonate => 'Support Development';

  @override
  String get settingsDonateSubtitle => 'Buy the developer a coffee';

  @override
  String get settingsBackup => 'Backup & Restore';

  @override
  String get settingsBackupSubtitle =>
      'Move your library, history and settings to a new device';

  @override
  String get backupTitle => 'Backup & Restore';

  @override
  String get backupExportSectionTitle => 'Create backup';

  @override
  String get backupExportSectionDescription =>
      'Save your settings, download history, liked tracks, wishlist, favorite artists and playlists into a single file you can keep or move to another phone.';

  @override
  String get backupExportButton => 'Create backup file';

  @override
  String get backupImportSectionTitle => 'Restore backup';

  @override
  String get backupImportSectionDescription =>
      'Pick a backup file to restore your data. This replaces the current settings, history and library on this device.';

  @override
  String get backupImportButton => 'Choose backup file';

  @override
  String get backupCreated => 'Backup created';

  @override
  String get backupCreateFailed => 'Failed to create backup';

  @override
  String get backupRestoreConfirmTitle => 'Restore this backup?';

  @override
  String get backupRestoreConfirmButton => 'Restore';

  @override
  String get backupRestored => 'Backup restored successfully';

  @override
  String get backupRestoreFailed => 'Failed to restore backup';

  @override
  String get backupInvalidFile => 'This file is not a valid Toadplayer backup';

  @override
  String get backupRestoreRestartHint =>
      'Restart the app to make sure every change is applied.';

  @override
  String get backupContentsTitle => 'Backup contents';

  @override
  String get backupSettingsOnly => 'Settings only';

  @override
  String get backupSelectHistory => 'Download history';

  @override
  String get backupSelectCollections => 'Library collections';

  @override
  String get backupSelectCollectionsDescription =>
      'Liked tracks, wishlist, favorite artists, playlists and playlist covers.';

  @override
  String get backupSelectExtensions => 'Extensions and their settings';

  @override
  String get backupSelectedExportDescription =>
      'Save the selected categories to a backup file. Audio files are not included.';

  @override
  String get backupSelectAtLeastOne =>
      'Select at least one category to create a backup.';

  @override
  String get backupSelectedRestoreMessage =>
      'Only the categories listed below will be restored. Categories not included in this backup will stay unchanged. Restoring can replace existing data and cannot be undone.';

  @override
  String get backupContentsSettings => 'App settings';

  @override
  String backupContentsHistory(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count history $_temp0';
  }

  @override
  String backupContentsLiked(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    return '$count liked $_temp0';
  }

  @override
  String backupContentsWishlist(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    return '$count wishlist $_temp0';
  }

  @override
  String backupContentsPlaylists(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count playlists',
      one: '1 playlist',
    );
    return '$_temp0';
  }

  @override
  String backupContentsArtists(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count favorite artists',
      one: '1 favorite artist',
    );
    return '$_temp0';
  }

  @override
  String backupContentsExtensions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count extensions',
      one: '1 extension',
    );
    return '$_temp0';
  }

  @override
  String get backupIncludeSecrets => 'Include extension credentials';

  @override
  String get backupIncludeSecretsDescription =>
      'Tokens and API keys from extensions will be saved into the backup file. Keep the file private. When off, you re-enter them after restoring.';

  @override
  String backupExtensionsRestoreFailed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'extensions',
      one: 'extension',
    );
    return '$count $_temp0 could not be reinstalled. Install them manually from the repo.';
  }

  @override
  String get tooltipLoveAll => 'Love All';

  @override
  String get tooltipAddToPlaylist => 'Add to Playlist';

  @override
  String snackbarRemovedTracksFromLoved(int count) {
    return 'Removed $count tracks from Loved';
  }

  @override
  String snackbarAddedTracksToLoved(int count) {
    return 'Added $count tracks to Loved';
  }

  @override
  String get dialogDownloadAllTitle => 'Download All';

  @override
  String dialogDownloadAllMessage(int count) {
    return 'Download $count tracks?';
  }

  @override
  String get homeSkipAlreadyDownloaded => 'Skip already downloaded songs';

  @override
  String get homeGoToAlbum => 'Go to Album';

  @override
  String get homeAlbumInfoUnavailable => 'Album info not available';

  @override
  String get snackbarLoadingCueSheet => 'Loading CUE sheet...';

  @override
  String get snackbarMetadataSaved => 'Metadata saved successfully';

  @override
  String get snackbarFailedToEmbedLyrics => 'Failed to embed lyrics';

  @override
  String get snackbarFailedToWriteStorage => 'Failed to write back to storage';

  @override
  String snackbarError(String error) {
    return 'Error: $error';
  }

  @override
  String get snackbarNoActionDefined => 'No action defined for this button';

  @override
  String get noTracksFoundForAlbum => 'No tracks found for this album';

  @override
  String get downloadLocationSubtitle =>
      'Choose where to save your downloaded tracks';

  @override
  String get storageAutomaticFolder => 'Automatic folder';

  @override
  String get storageAutomaticDownloadFolder =>
      'Uses Download/Toadplayer when writable, otherwise app storage';

  @override
  String get storageSafRecommended => 'Choose folder (Recommended)';

  @override
  String get storageDownloadFolderHint =>
      'In the Android folder picker, open Download and select Toadplayer. If it does not exist, create it using New folder, then tap Use this folder to grant access.';

  @override
  String get downloadFolderAccessLostTitle => 'Download folder access lost';

  @override
  String get downloadFolderAccessLostSubtitle =>
      'Downloads will fail until you re-select the folder';

  @override
  String get downloadFolderReselect => 'Re-select folder';

  @override
  String get downloadErrorSafPermissionLost =>
      'SAF permission invalid or revoked. Please reconfigure download location in Settings.';

  @override
  String get downloadErrorFolderAccessLost =>
      'Download folder access lost. Please re-select your download folder in Settings.';

  @override
  String downloadFilenameDescription(
    Object album,
    Object artist,
    Object date,
    Object disc,
    Object title,
    Object track,
    Object year,
  ) {
    return 'Use $artist, $title, $album, $track, $year, $date, $disc as placeholders.';
  }

  @override
  String get downloadFilenameInsertTag => 'Tap to insert tag:';

  @override
  String get downloadSeparateSinglesEnabled =>
      'Singles and EPs saved in a separate folder';

  @override
  String get downloadSeparateSinglesDisabled =>
      'Singles and albums saved in the same folder';

  @override
  String get downloadArtistNameFilters => 'Artist Name Filters';

  @override
  String get downloadCreatePlaylistSourceFolder => 'Playlist Source Folder';

  @override
  String get downloadCreatePlaylistSourceFolderEnabled =>
      'A subfolder is created for each playlist';

  @override
  String get downloadCreatePlaylistSourceFolderDisabled =>
      'All tracks saved directly to download folder';

  @override
  String get downloadCreatePlaylistSourceFolderRedundant =>
      'Handled by folder organization setting';

  @override
  String get downloadSongLinkRegion => 'SongLink Region';

  @override
  String get downloadNetworkCompatibilityMode => 'Network Compatibility Mode';

  @override
  String get downloadNetworkCompatibilityModeEnabled =>
      'Allowing legacy HTTP endpoints; TLS verification remains enabled';

  @override
  String get downloadNetworkCompatibilityModeDisabled =>
      'Using standard network settings';

  @override
  String get downloadAllowLocalNetwork => 'Allow Local Network Access';

  @override
  String get downloadAllowLocalNetworkEnabled =>
      'Requests to local/private addresses are allowed (for local proxy or custom DNS)';

  @override
  String get downloadAllowLocalNetworkDisabled =>
      'Local/private addresses are blocked for security';

  @override
  String get downloadSelectServiceToEnable =>
      'Select a provider with quality options to enable this option';

  @override
  String get downloadEmbedLyricsDisabled => 'Enable metadata embedding first';

  @override
  String get downloadNeteaseIncludeTranslation =>
      'Netease: Include Translation';

  @override
  String get downloadNeteaseIncludeTranslationEnabled =>
      'Chinese translation lines included';

  @override
  String get downloadNeteaseIncludeTranslationDisabled =>
      'Original lyrics only';

  @override
  String get downloadNeteaseIncludeRomanization =>
      'Netease: Include Romanization';

  @override
  String get downloadNeteaseIncludeRomanizationEnabled =>
      'Romanization lines included';

  @override
  String get downloadNeteaseIncludeRomanizationDisabled => 'No romanization';

  @override
  String get downloadAppleQqMultiPerson => 'Apple / QQ: Multi-Person Lyrics';

  @override
  String get downloadAppleQqMultiPersonEnabled =>
      'Speaker labels included for duets and group tracks';

  @override
  String get downloadAppleQqMultiPersonDisabled =>
      'Standard lyrics without speaker labels';

  @override
  String get downloadAppleElrcWordSync => 'Apple Music eLRC Word Sync';

  @override
  String get downloadAppleElrcWordSyncEnabled =>
      'Raw word-by-word timestamps preserved';

  @override
  String get downloadAppleElrcWordSyncDisabled =>
      'Safer line-by-line Apple Music lyrics';

  @override
  String get downloadMusixmatchLanguage => 'Musixmatch Language';

  @override
  String get downloadMusixmatchLanguageAuto => 'Auto (original language)';

  @override
  String get downloadFilterContributing => 'Filter Contributing Artists';

  @override
  String get downloadFilterContributingEnabled =>
      'Contributing artists removed from Album Artist folder name';

  @override
  String get downloadFilterContributingDisabled =>
      'Full Album Artist string used';

  @override
  String get downloadProvidersNoneEnabled => 'No providers enabled';

  @override
  String get downloadMusixmatchLanguageCode => 'Language code';

  @override
  String get downloadMusixmatchLanguageHint => 'e.g. en, de, ja';

  @override
  String get downloadMusixmatchLanguageDesc =>
      'Enter a BCP-47 language code (e.g. en, de, ja) to request translated lyrics from Musixmatch.';

  @override
  String get downloadMusixmatchAuto => 'Auto';

  @override
  String get downloadNetworkAnySubtitle => 'Use WiFi or mobile data';

  @override
  String get downloadNetworkWifiOnlySubtitle =>
      'Downloads pause when on mobile data';

  @override
  String get downloadSongLinkRegionDesc =>
      'Region used when resolving track links via SongLink. Choose the country where your streaming services are available.';

  @override
  String get snackbarUnsupportedAudioFormat => 'Unsupported audio format';

  @override
  String get cacheRefresh => 'Refresh';

  @override
  String dialogDownloadPlaylistsMessage(int trackCount, int playlistCount) {
    String _temp0 = intl.Intl.pluralLogic(
      trackCount,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    String _temp1 = intl.Intl.pluralLogic(
      playlistCount,
      locale: localeName,
      other: 'playlists',
      one: 'playlist',
    );
    return 'Download $trackCount $_temp0 from $playlistCount $_temp1?';
  }

  @override
  String bulkDownloadPlaylistsButton(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'playlists',
      one: 'playlist',
    );
    return 'Download $count $_temp0';
  }

  @override
  String get bulkDownloadSelectPlaylists => 'Select playlists to download';

  @override
  String get snackbarSelectedPlaylistsEmpty =>
      'Selected playlists have no tracks';

  @override
  String playlistsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count playlists',
      one: '1 playlist',
    );
    return '$_temp0';
  }

  @override
  String get editMetadataAutoFill => 'Auto-fill from online';

  @override
  String get editMetadataAutoFillDesc =>
      'Select fields to fill automatically from online metadata';

  @override
  String get editMetadataAutoFillSource => 'Metadata source';

  @override
  String get editMetadataAutoFillSourceAutomatic =>
      'Automatic (provider priority)';

  @override
  String get editMetadataAutoFillFind => 'Find metadata';

  @override
  String editMetadataAutoFillPreview(String source) {
    return 'Data from $source';
  }

  @override
  String get editMetadataAutoFillCoverAvailable => 'Cover artwork available';

  @override
  String get editMetadataAutoFillApply => 'Apply selected data';

  @override
  String editMetadataAutoFillDoneFromSource(int count, String source) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'fields',
      one: 'field',
    );
    return 'Filled $count $_temp0 from $source';
  }

  @override
  String get editMetadataAutoFillSearching => 'Searching online...';

  @override
  String get editMetadataAutoFillNoResults =>
      'No matching metadata found online';

  @override
  String get editMetadataAutoFillNoneSelected =>
      'Select at least one field to auto-fill';

  @override
  String get editMetadataLyricsSearch => 'Find lyrics online';

  @override
  String get lyricsPickerTitle => 'Choose lyrics';

  @override
  String get lyricsPickerNeedsTitle => 'Enter a title and artist first';

  @override
  String get lyricsPickerNoProviders =>
      'No lyrics providers are enabled. Turn some on in Settings > Lyrics.';

  @override
  String get lyricsPickerWordSynced => 'Word-synced';

  @override
  String get lyricsPickerSynced => 'Synced';

  @override
  String get lyricsPickerPlain => 'Plain text';

  @override
  String get lyricsPickerInstrumental => 'Instrumental';

  @override
  String get lyricsPickerNotFound => 'No lyrics found';

  @override
  String lyricsPickerLineCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lines',
      one: '1 line',
    );
    return '$_temp0';
  }

  @override
  String get editMetadataFieldTitle => 'Title';

  @override
  String get editMetadataFieldArtist => 'Artist';

  @override
  String get editMetadataFieldAlbum => 'Album';

  @override
  String get editMetadataFieldAlbumArtist => 'Album Artist';

  @override
  String get editMetadataFieldDate => 'Date';

  @override
  String get editMetadataFieldTrackNum => 'Track #';

  @override
  String get editMetadataFieldDiscNum => 'Disc #';

  @override
  String get editMetadataFieldGenre => 'Genre';

  @override
  String get editMetadataFieldIsrc => 'ISRC';

  @override
  String get editMetadataFieldLabel => 'Label';

  @override
  String get editMetadataFieldCopyright => 'Copyright';

  @override
  String get editMetadataFieldCover => 'Cover Art';

  @override
  String get editMetadataSelectAll => 'All';

  @override
  String get editMetadataSelectEmpty => 'Empty only';

  @override
  String queueDownloadingCount(int count) {
    return 'Downloading ($count)';
  }

  @override
  String get queueFilteringIndicator => 'Filtering...';

  @override
  String queueTrackCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tracks',
      one: '1 track',
    );
    return '$_temp0';
  }

  @override
  String queueAlbumCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count albums',
      one: '1 album',
    );
    return '$_temp0';
  }

  @override
  String get queueEmptyAlbums => 'No album downloads';

  @override
  String get queueEmptyAlbumsSubtitle =>
      'Download multiple tracks from an album to see them here';

  @override
  String get queueEmptySingles => 'No single downloads';

  @override
  String get queueEmptySinglesSubtitle =>
      'Single track downloads will appear here';

  @override
  String queuePlaylistCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count playlists',
      one: '1 playlist',
    );
    return '$_temp0';
  }

  @override
  String get queueEmptyPlaylistsSubtitle =>
      'Create a playlist to organize your tracks';

  @override
  String get libraryDefaultView => 'Default view';

  @override
  String get libraryDefaultViewLastUsed => 'Last used';

  @override
  String get queueEmptyHistory => 'No download history';

  @override
  String get queueEmptyHistorySubtitle => 'Downloaded tracks will appear here';

  @override
  String get selectionAllPlaylistsSelected => 'All playlists selected';

  @override
  String get selectionTapPlaylistsToSelect => 'Tap playlists to select';

  @override
  String get selectionSelectPlaylistsToDelete => 'Select playlists to delete';

  @override
  String get audioAnalysisTitle => 'Audio Quality Analysis';

  @override
  String get audioAnalysisDescription =>
      'Verify lossless quality with spectrum analysis';

  @override
  String get audioAnalysisAnalyzing => 'Analyzing audio...';

  @override
  String get audioAnalysisSampleRate => 'Sample Rate';

  @override
  String get audioAnalysisCodec => 'Codec';

  @override
  String get audioAnalysisContainer => 'Container';

  @override
  String get audioAnalysisDecodedFormat => 'Decoded Format';

  @override
  String get audioAnalysisBitDepth => 'Bit Depth';

  @override
  String get audioAnalysisChannels => 'Channels';

  @override
  String get audioAnalysisDuration => 'Duration';

  @override
  String get audioAnalysisNyquist => 'Nyquist';

  @override
  String get audioAnalysisFileSize => 'Size';

  @override
  String get audioAnalysisDynamicRange => 'Dynamic Range';

  @override
  String get audioAnalysisPeak => 'Peak';

  @override
  String get audioAnalysisRms => 'RMS';

  @override
  String get audioAnalysisLufs => 'LUFS';

  @override
  String get audioAnalysisTruePeak => 'True Peak';

  @override
  String get audioAnalysisClipping => 'Clipping';

  @override
  String get audioAnalysisNoClipping => 'No clipping';

  @override
  String get audioAnalysisSpectralCutoff => 'Spectral Cutoff';

  @override
  String get audioAnalysisCutoffNotDetected => 'Not detected';

  @override
  String get audioAnalysisChannelStats => 'Per-channel Stats';

  @override
  String get audioAnalysisSamples => 'Samples';

  @override
  String get audioAnalysisRescan => 'Re-analyze';

  @override
  String get audioAnalysisSaveSpectrogram => 'Save Spectrogram';

  @override
  String audioAnalysisSpectrogramSaved(String fileName) {
    return 'Spectrogram saved to $fileName';
  }

  @override
  String get downloadRedownloadFakeHiRes => 'Re-download fake Hi-Res';

  @override
  String get downloadRedownloadFakeHiResSubtitle =>
      'Off by default. Check Hi-Res downloads and replace only when every audio sample is preserved. Keep the original if verification or processing fails';

  @override
  String get hiResCheckVerdictFakeCertain => 'Fake Hi-Res';

  @override
  String get hiResCheckReasonSampleHold =>
      'Every sample is repeated: upsampled by duplication';

  @override
  String get hiResCheckReasonInterpolation =>
      'In-between samples are linearly interpolated';

  @override
  String get hiResCheckTitle => 'Hi-Res Authenticity';

  @override
  String get hiResCheckSummary =>
      'Inspect the spectrum and active bit depth for signs of upsampling or padding.';

  @override
  String get hiResCheckLimitedBandwidth => 'Limited bandwidth';

  @override
  String get hiResCheckNoEvidence => 'No upsampling or padding detected';

  @override
  String get hiResCheckEstimatedCutoff => 'Estimated cutoff';

  @override
  String get hiResCheckActiveBits => 'Active / stored bits';

  @override
  String get hiResCheckBandwidthExplanation =>
      'A lower cutoff can come from mastering. It does not, by itself, prove upsampling.';

  @override
  String hiResCheckSampledExplanation(String seconds) {
    return 'Based on $seconds seconds of audio. This analysis cannot certify the original master.';
  }

  @override
  String get hiResCheckImagingEvidence =>
      'The spectrum contains mirrored bands consistent with upsampling.';

  @override
  String hiResCheckRateEvidence(String cutoff) {
    return 'A sharp roll-off near $cutoff and the measured noise floor suggest a lower-rate source.';
  }

  @override
  String hiResCheckSteadyEnergy(String cutoff) {
    return 'Energy above $cutoff is mostly steady in the analyzed segment and may be noise.';
  }

  @override
  String get hiResCheckRun => 'Check';

  @override
  String get hiResCheckChecking => 'Checking Hi-Res authenticity...';

  @override
  String get hiResCheckVerdictFake => 'Likely fake Hi-Res';

  @override
  String get hiResCheckVerdictStandard =>
      'Standard definition, nothing to flag';

  @override
  String get hiResCheckVerdictInconclusive =>
      'Inconclusive: the analyzed segment is too quiet or short';

  @override
  String get hiResCheckUnsupported => 'Only FLAC and WAV files can be checked';

  @override
  String hiResCheckFailed(String error) {
    return 'Hi-Res check failed: $error';
  }

  @override
  String hiResCheckReasonDepth(int declared, int effective) {
    return 'Declares $declared-bit but only $effective bits carry data';
  }

  @override
  String get audioAnalysisRescanning => 'Re-analyzing audio...';

  @override
  String get extensionsHomeFeedProvider => 'Home Feed Provider';

  @override
  String get extensionsHomeFeedCountry => 'Home feed country';

  @override
  String get extensionsHomeFeedCountryDescription =>
      'Choose a country\'s Home recommendations without a VPN.';

  @override
  String get extensionsHomeFeedDescription =>
      'Choose which extension provides the home feed on the main screen';

  @override
  String get extensionsHomeFeedAuto => 'Auto';

  @override
  String get extensionsHomeFeedAutoSubtitle =>
      'Automatically select the best available';

  @override
  String get extensionsHomeFeedOff => 'Off';

  @override
  String get extensionsHomeFeedOffSubtitle =>
      'Do not show the home feed on the main screen';

  @override
  String extensionsHomeFeedUse(String extensionName) {
    return 'Use $extensionName home feed';
  }

  @override
  String get extensionsNoHomeFeedExtensions => 'No extensions with home feed';

  @override
  String get cancelDownloadTitle => 'Cancel download?';

  @override
  String cancelDownloadContent(String trackName) {
    return 'This will cancel the active download for \"$trackName\".';
  }

  @override
  String get cancelDownloadKeep => 'Keep';

  @override
  String get queueCancelledTitle => 'Download cancelled';

  @override
  String get queueCancelledMessage =>
      'This download was cancelled. Retry it or remove it from the queue.';

  @override
  String get metadataSaveFailedFfmpeg => 'Failed to save metadata via FFmpeg';

  @override
  String get metadataSaveFailedStorage =>
      'Failed to write metadata back to storage';

  @override
  String snackbarFolderPickerFailed(String error) {
    return 'Failed to open folder picker: $error';
  }

  @override
  String notifDownloadingTrack(String trackName) {
    return 'Downloading $trackName';
  }

  @override
  String notifFinalizingTrack(String trackName) {
    return 'Finalizing $trackName';
  }

  @override
  String get notifEmbeddingMetadata => 'Embedding metadata...';

  @override
  String notifAlreadyInLibraryCount(int completed, int total) {
    return 'Already in Library ($completed/$total)';
  }

  @override
  String get notifAlreadyInLibrary => 'Already in Library';

  @override
  String notifDownloadCompleteCount(int completed, int total) {
    return 'Download Complete ($completed/$total)';
  }

  @override
  String get notifDownloadComplete => 'Download Complete';

  @override
  String notifDownloadsFinished(int completed, int failed) {
    return 'Downloads Finished ($completed done, $failed failed)';
  }

  @override
  String get notifVerificationRequiredTitle => 'Verification required';

  @override
  String get notifVerificationRequiredBody =>
      'Open the app to complete verification and resume downloads';

  @override
  String get notifAllDownloadsComplete => 'All Downloads Complete';

  @override
  String notifTracksDownloadedSuccess(int count) {
    return '$count tracks downloaded successfully';
  }

  @override
  String notifDownloadsFinishedBody(int completed, int failed) {
    String _temp0 = intl.Intl.pluralLogic(
      completed,
      locale: localeName,
      other: '$completed tracks downloaded',
      one: '1 track downloaded',
    );
    String _temp1 = intl.Intl.pluralLogic(
      failed,
      locale: localeName,
      other: '$failed failed',
      one: '1 failed',
    );
    return '$_temp0, $_temp1';
  }

  @override
  String get notifDownloadsCanceledTitle => 'Downloads canceled';

  @override
  String notifDownloadsCanceledBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count downloads canceled by user',
      one: '1 download canceled by user',
    );
    return '$_temp0';
  }

  @override
  String get notifScanningLibrary => 'Scanning local library';

  @override
  String notifLibraryScanProgressWithTotal(
    int scanned,
    int total,
    int percentage,
  ) {
    return '$scanned/$total files • $percentage%';
  }

  @override
  String notifLibraryScanProgressNoTotal(int scanned) {
    return '$scanned files scanned';
  }

  @override
  String get notifLibraryScanComplete => 'Library scan complete';

  @override
  String notifLibraryScanCompleteBody(int count) {
    return '$count tracks indexed';
  }

  @override
  String notifLibraryScanExcluded(int count) {
    return '$count excluded';
  }

  @override
  String notifLibraryScanErrors(int count) {
    return '$count errors';
  }

  @override
  String get notifLibraryScanFailed => 'Library scan failed';

  @override
  String get notifLibraryScanInterruptedBody =>
      'The previous library scan was interrupted. Scan the folder again to continue. Your indexed tracks are still available.';

  @override
  String get notifLibraryScanCancelled => 'Library scan cancelled';

  @override
  String get notifLibraryScanStopped => 'Scan stopped before completion.';

  @override
  String get notifLibraryScanPaused => 'Library scan paused';

  @override
  String notifLibraryScanPausedBody(int count) {
    return '$count files scanned. Resume in Local Library settings to continue from here.';
  }

  @override
  String notifDownloadingUpdate(String version) {
    return 'Downloading Toadplayer v$version';
  }

  @override
  String notifUpdateProgress(String received, String total, int percentage) {
    return '$received / $total MB • $percentage%';
  }

  @override
  String get notifUpdateReady => 'Update Ready';

  @override
  String notifUpdateReadyBody(String version) {
    return 'Toadplayer v$version downloaded. Tap to install.';
  }

  @override
  String get notifUpdateFailed => 'Update Failed';

  @override
  String get notifUpdateFailedBody =>
      'Could not download update. Try again later.';

  @override
  String get searchTracks => 'Tracks';

  @override
  String get homeSearchHintDefault => 'Search or paste a supported URL...';

  @override
  String homeSearchHintProvider(String providerName) {
    return 'Search with $providerName...';
  }

  @override
  String get homeImportCsvTooltip => 'Import playlist (CSV, M3U)';

  @override
  String get homeChangeSearchProviderTooltip => 'Change search provider';

  @override
  String get actionPaste => 'Paste';

  @override
  String get tutorialSearchHint => 'Paste or search...';

  @override
  String get tutorialDownloadCompletedSemantics => 'Download completed';

  @override
  String get tutorialDownloadInProgressSemantics => 'Download in progress';

  @override
  String get tutorialStartDownloadSemantics => 'Start download';

  @override
  String get optionsEmbedMetadata => 'Embed Metadata';

  @override
  String get optionsEmbedMetadataSubtitleOn =>
      'Write metadata, cover art, and embedded lyrics to files';

  @override
  String get optionsEmbedMetadataSubtitleOff =>
      'Disabled (advanced): skip all metadata embedding';

  @override
  String get trackCoverNoEmbeddedArt => 'No embedded album art found';

  @override
  String get trackCoverReplace => 'Replace Cover';

  @override
  String get trackCoverPick => 'Pick Cover';

  @override
  String get trackCoverClearSelected => 'Clear selected cover';

  @override
  String get trackCoverCurrent => 'Current cover';

  @override
  String get trackCoverSelected => 'Selected cover';

  @override
  String get trackCoverReplaceNotice =>
      'The selected cover will replace the current embedded cover when you tap Save.';

  @override
  String get trackCoverResolution => 'Cover resolution';

  @override
  String get trackCoverResolutionHint =>
      'Sets the longest edge when saved. Enlarging does not add image detail.';

  @override
  String get trackCoverResizeFailed =>
      'The cover image could not be resized. Please try another size or image.';

  @override
  String get actionStop => 'Stop';

  @override
  String get queueFinalizingDownload => 'Finalizing download';

  @override
  String get queueDownloadNext => 'Download next';

  @override
  String get queueMoveUp => 'Move up';

  @override
  String get queueMoveDown => 'Move down';

  @override
  String get editMetadataMusicBrainzButton => 'Fetch from MusicBrainz';

  @override
  String get editMetadataMusicBrainzFilled => 'Updated from MusicBrainz';

  @override
  String get editMetadataMusicBrainzNothing => 'Nothing found on MusicBrainz';

  @override
  String get editMetadataMusicBrainzNeedsIsrc => 'Requires an ISRC tag';

  @override
  String get nowPlayingRepeatOff => 'Repeat off';

  @override
  String get nowPlayingRepeatAll => 'Repeat all';

  @override
  String get nowPlayingRepeatOne => 'Repeat one';

  @override
  String queueNetworkFailedOffline(int count) {
    return '$count downloads failed while offline';
  }

  @override
  String get queueDownloadedFileMissing => 'Downloaded file missing';

  @override
  String get queueCheckingDownloadedFile => 'Checking downloaded file...';

  @override
  String get queueDownloadCompleted => 'Download completed';

  @override
  String get queueRateLimitTitle => 'Service rate limited';

  @override
  String get queueRateLimitMessage =>
      'This track may still be available. Wait a few minutes, reduce parallel downloads, then retry.';

  @override
  String appearanceSelectAccentColor(String hex) {
    return 'Select accent color $hex';
  }

  @override
  String get logAutoScrollOn => 'Auto-scroll ON';

  @override
  String get logAutoScrollOff => 'Auto-scroll OFF';

  @override
  String get logCopyLogs => 'Copy logs';

  @override
  String get logClearSearch => 'Clear search';

  @override
  String get logIssueIspBlockingLabel => 'ISP BLOCKING DETECTED';

  @override
  String get logIssueIspBlockingDescription =>
      'Your ISP may be blocking access to download services';

  @override
  String get logIssueIspBlockingSuggestion =>
      'Try using a VPN or change DNS to 1.1.1.1 or 8.8.8.8';

  @override
  String get logIssueRateLimitedLabel => 'RATE LIMITED';

  @override
  String get logIssueRateLimitedDescription =>
      'Too many requests to the service';

  @override
  String get logIssueRateLimitedSuggestion =>
      'Wait a few minutes before trying again';

  @override
  String get logIssueNetworkErrorLabel => 'NETWORK ERROR';

  @override
  String get logIssueNetworkErrorDescription => 'Connection issues detected';

  @override
  String get logIssueNetworkErrorSuggestion => 'Check your internet connection';

  @override
  String get logIssueTrackNotFoundLabel => 'TRACK NOT FOUND';

  @override
  String get logIssueTrackNotFoundDescription =>
      'Some tracks could not be found on download services';

  @override
  String get logIssueTrackNotFoundSuggestion =>
      'The track may not be available in lossless quality';

  @override
  String get clickableLookingUpArtist => 'Looking up artist...';

  @override
  String clickableInformationUnavailable(String type) {
    return '$type information not available';
  }

  @override
  String get extensionDetailsTags => 'Tags';

  @override
  String get extensionDetailsInformation => 'Information';

  @override
  String get extensionUtilityFunctions => 'Utility Functions';

  @override
  String get actionDismiss => 'Dismiss';

  @override
  String get setupChangeFolderTooltip => 'Change folder';

  @override
  String a11yOpenTrackByArtist(String trackName, String artistName) {
    return 'Open track $trackName by $artistName';
  }

  @override
  String a11yOpenItem(String itemType, String name) {
    return 'Open $itemType $name';
  }

  @override
  String a11yOpenItemCount(String title, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Open $title, $count $_temp0';
  }

  @override
  String a11yOpenAlbumByArtistTrackCount(
    String albumName,
    String artistName,
    int trackCount,
  ) {
    return 'Open album $albumName by $artistName, $trackCount tracks';
  }

  @override
  String a11yTrackByArtist(String trackName, String artistName) {
    return '$trackName by $artistName';
  }

  @override
  String a11ySelectAlbum(String albumName) {
    return 'Select album $albumName';
  }

  @override
  String a11yOpenAlbum(String albumName) {
    return 'Open album $albumName';
  }

  @override
  String get settingsFiles => 'Files & Folders';

  @override
  String get settingsFilesSubtitle =>
      'Download location, filename, folder structure';

  @override
  String get settingsMetadata => 'Metadata';

  @override
  String get settingsMetadataSubtitle =>
      'Cover art, tags, ReplayGain, providers';

  @override
  String get settingsLyrics => 'Lyrics';

  @override
  String get settingsLyricsSubtitle =>
      'Embed, mode, providers, language options';

  @override
  String get settingsApp => 'App';

  @override
  String get settingsAppSubtitle => 'Updates, data, extension repo, debug';

  @override
  String get sectionMetadataProviders => 'Providers';

  @override
  String get sectionDuplicates => 'Duplicates';

  @override
  String get sectionLyricsProviderOptions => 'Provider Options';

  @override
  String get metadataProvidersTitle => 'Metadata Provider Priority';

  @override
  String get metadataProvidersSubtitle =>
      'Drag to set search and metadata source order';

  @override
  String get downloadDeduplication => 'Skip Duplicate Downloads';

  @override
  String get downloadDeduplicationEnabled =>
      'Already-downloaded tracks will be skipped';

  @override
  String get downloadDeduplicationWithQualityVariants =>
      'Existing files at the selected quality will be skipped';

  @override
  String get downloadDeduplicationDisabled =>
      'All tracks will be downloaded regardless of history';

  @override
  String get downloadQualityVariants => 'Allow different quality versions';

  @override
  String get downloadQualityVariantsDescription =>
      'Keep every quality version; add its measured quality to the filename only when the name is already used';

  @override
  String get trackOptionDownloadQualityVariant => 'Download another quality';

  @override
  String get downloadFallbackExtensions => 'Fallback Extensions';

  @override
  String get downloadFallbackExtensionsSubtitle =>
      'Choose which extensions can be used as fallback';

  @override
  String get editMetadataFieldDateHint => 'YYYY-MM-DD or YYYY';

  @override
  String get editMetadataFieldTrackTotal => 'Track Total';

  @override
  String get editMetadataFieldDiscTotal => 'Disc Total';

  @override
  String get editMetadataFieldComposer => 'Composer';

  @override
  String get editMetadataFieldComment => 'Comment';

  @override
  String get trackAlbumType => 'Release Type';

  @override
  String get editMetadataFieldAlbumTypeHint =>
      'Album, single, EP, compilation...';

  @override
  String get editMetadataFieldExplicit => 'Explicit';

  @override
  String get editMetadataFieldExplicitHint =>
      'Mark this track as containing explicit content';

  @override
  String get metadataExplicitValue => 'Explicit';

  @override
  String get editMetadataFieldUpc => 'UPC / Barcode';

  @override
  String get editMetadataFieldUpcHint => 'Numeric UPC, EAN, or GTIN';

  @override
  String get editMetadataAdvanced => 'Advanced';

  @override
  String get libraryFilterMetadataMissingTrackNumber => 'Missing track number';

  @override
  String get libraryFilterMetadataMissingDiscNumber => 'Missing disc number';

  @override
  String get libraryFilterMetadataMissingArtist => 'Missing artist';

  @override
  String get libraryFilterMetadataIncorrectIsrcFormat =>
      'Incorrect ISRC format';

  @override
  String get libraryFilterMetadataMissingIsrc => 'Missing ISRC';

  @override
  String get libraryFilterMetadataMissingLabel => 'Missing label';

  @override
  String collectionDeletePlaylistsMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'playlists',
      one: 'playlist',
    );
    return 'Delete $count $_temp0?';
  }

  @override
  String collectionPlaylistsDeleted(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'playlists',
      one: 'playlist',
    );
    return '$count $_temp0 deleted';
  }

  @override
  String collectionAddedTracksToPlaylist(int count, String playlistName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    return 'Added $count $_temp0 to $playlistName';
  }

  @override
  String collectionAddedTracksToPlaylistWithExisting(
    int count,
    String playlistName,
    int alreadyCount,
  ) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    return 'Added $count $_temp0 to $playlistName ($alreadyCount already in playlist)';
  }

  @override
  String itemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count $_temp0';
  }

  @override
  String trackReEnrichSuccessWithFailures(
    int successCount,
    int total,
    int failedCount,
  ) {
    return 'Metadata re-enriched successfully ($successCount/$total) - Failed: $failedCount';
  }

  @override
  String selectionDeleteTracksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    return 'Delete $count $_temp0';
  }

  @override
  String queueDownloadSpeedStatus(String speed) {
    return 'Downloading - $speed MB/s';
  }

  @override
  String get queueDownloadStarting => 'Starting...';

  @override
  String get queueCheckingDownloadSession => 'Checking download session...';

  @override
  String get queueResolvingDownloadMetadata => 'Resolving track metadata...';

  @override
  String get queueResolvingDownloadStream => 'Preparing audio stream...';

  @override
  String get queueWaitingForVerification => 'Waiting for verification...';

  @override
  String get queueResumingAfterVerification => 'Resuming after verification...';

  @override
  String get a11ySelectTrack => 'Select track';

  @override
  String get a11yDeselectTrack => 'Deselect track';

  @override
  String a11yPlayTrackByArtist(String trackName, String artistName) {
    return 'Play $trackName by $artistName';
  }

  @override
  String storeExtensionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'extensions',
      one: 'extension',
    );
    return '$count $_temp0';
  }

  @override
  String storeRequiresVersion(String version) {
    return 'Requires v$version+';
  }

  @override
  String get logIssueSummary => 'Issue Summary';

  @override
  String logTotalErrors(int count) {
    return 'Total errors: $count';
  }

  @override
  String logAffectedDomains(String domains) {
    return 'Affected: $domains';
  }

  @override
  String get libraryScanCancelled => 'Scan cancelled';

  @override
  String get libraryScanCancelledSubtitle =>
      'You can retry the scan when ready.';

  @override
  String libraryDownloadsHistoryExcluded(int count) {
    return '$count from Downloads history (excluded from list)';
  }

  @override
  String get downloadNativeWorker => 'Native download worker';

  @override
  String get downloadNativeWorkerSubtitle =>
      'Android background service for extension downloads';

  @override
  String get extensionServiceStatus => 'Service Status';

  @override
  String get extensionServiceHealth => 'Service health';

  @override
  String extensionHealthChecksConfigured(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'checks',
      one: 'check',
    );
    return '$count $_temp0 configured';
  }

  @override
  String get extensionOauthConnectHint =>
      'Tap Connect to Spotify to fill this field.';

  @override
  String extensionLastChecked(String time) {
    return 'Last checked $time';
  }

  @override
  String get extensionRefreshStatus => 'Refresh status';

  @override
  String get extensionCustomUrlHandling => 'Custom URL Handling';

  @override
  String get extensionCustomUrlHandlingSubtitle =>
      'This extension can handle links from these sites';

  @override
  String get extensionCustomUrlHandlingShareHint =>
      'Share links from these sites to Toadplayer and this extension will handle them.';

  @override
  String extensionSettingsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'settings',
      one: 'setting',
    );
    return '$count $_temp0';
  }

  @override
  String get extensionHealthOnline => 'Online';

  @override
  String get extensionHealthDegraded => 'Degraded';

  @override
  String get extensionHealthOffline => 'Offline';

  @override
  String get extensionHealthNotConfigured => 'Not configured';

  @override
  String get extensionHealthUnknown => 'Unknown';

  @override
  String get extensionHealthRequired => 'required';

  @override
  String get extensionSettingNotSet => 'Not set';

  @override
  String get extensionActionFailed => 'Action failed';

  @override
  String get extensionEnterValue => 'Enter value';

  @override
  String get extensionHealthServiceOnline => 'Service online';

  @override
  String get extensionHealthServiceDegraded => 'Service degraded';

  @override
  String get extensionHealthServiceOffline => 'Service offline';

  @override
  String get extensionHealthServiceUnknown => 'Service status unknown';

  @override
  String get audioAnalysisStereo => 'Stereo';

  @override
  String get audioAnalysisMono => 'Mono';

  @override
  String trackOpenInService(String serviceName) {
    return 'Open in $serviceName';
  }

  @override
  String get trackLyricsEmbeddedSource => 'Embedded';

  @override
  String get unknownAlbum => 'Unknown Album';

  @override
  String get unknownArtist => 'Unknown Artist';

  @override
  String get permissionAudio => 'Audio';

  @override
  String get permissionStorage => 'Storage';

  @override
  String get permissionNotification => 'Notification';

  @override
  String get errorInvalidFolderSelected => 'Invalid folder selected';

  @override
  String get storeAnyVersion => 'Any';

  @override
  String get storeCategoryMetadata => 'Metadata';

  @override
  String get storeCategoryDownload => 'Download';

  @override
  String get storeCategoryUtility => 'Utility';

  @override
  String get storeCategoryLyrics => 'Lyrics';

  @override
  String get storeCategoryIntegration => 'Integration';

  @override
  String get artistReleases => 'Releases';

  @override
  String get editMetadataSelectNone => 'None';

  @override
  String queueRetryAllFailed(int count) {
    return 'Retry $count failed';
  }

  @override
  String get settingsSaveDownloadHistory => 'Save download history';

  @override
  String get settingsSaveDownloadHistorySubtitle =>
      'Keep completed downloads in history and library views';

  @override
  String get dialogDisableHistoryTitle => 'Turn off download history?';

  @override
  String get dialogDisableHistoryMessage =>
      'Existing history will be cleared. Downloaded files will not be deleted.';

  @override
  String get dialogDisableAndClear => 'Turn off and clear';

  @override
  String get openInOtherServices => 'Open in Other Services';

  @override
  String get shareSheetNoExtensions => 'No other compatible services';

  @override
  String get shareSheetNotFound => 'Not found';

  @override
  String get shareSheetCopyLink => 'Copy Link';

  @override
  String shareSheetLinkCopied(Object service) {
    return '$service link copied';
  }

  @override
  String get libraryPlayback => 'Playback';

  @override
  String get libraryExternalPlayer => 'External player';

  @override
  String get libraryExternalPlayerSubtitle =>
      'Open tracks in another music app on your device';

  @override
  String get libraryBuiltInPreviewPlayer => 'Built-in player';

  @override
  String get libraryBuiltInPreviewPlayerSubtitle =>
      'Play your music right inside Toadplayer';

  @override
  String get nowPlayingTitle => 'Now Playing';

  @override
  String get nowPlayingNothingPlaying => 'Nothing is playing';

  @override
  String get nowPlayingMinimize => 'Minimize';

  @override
  String get nowPlayingUpNext => 'Up next';

  @override
  String get nowPlayingAudioOutput => 'Audio Output';

  @override
  String nowPlayingWrittenBy(String writers) {
    return 'Written by: $writers';
  }

  @override
  String nowPlayingLyricsProvider(String provider) {
    return 'Lyrics: $provider';
  }

  @override
  String get concertGetTickets => 'Get Tickets';

  @override
  String get concertSetList => 'Concert Set List';

  @override
  String get concertSetListButton => 'Set List';

  @override
  String get concertAddToCalendar => 'Add to Calendar';

  @override
  String get concertOpenMaps => 'Open Maps';

  @override
  String get concertDetailsUnavailable =>
      'Concert details are currently unavailable.';

  @override
  String get concertCalendarUnavailable => 'Unable to open the calendar.';

  @override
  String get nowPlayingAudioOutputUnavailable =>
      'Unable to open audio output settings.';

  @override
  String get nowPlayingPreviousTrack => 'Pista anterior';

  @override
  String get nowPlayingNextTrack => 'Pista siguiente';

  @override
  String get nowPlayingDetails => 'Details';

  @override
  String get nowPlayingSleepTimer => 'Sleep timer';

  @override
  String nowPlayingSleepTimerActive(String time) {
    return 'Ends at $time';
  }

  @override
  String nowPlayingSleepTimerMinutes(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minutes',
      one: '1 minute',
    );
    return '$_temp0';
  }

  @override
  String get nowPlayingSleepTimerOff => 'Turn off sleep timer';

  @override
  String nowPlayingSleepTimerSet(String duration) {
    return 'Sleep timer set for $duration';
  }

  @override
  String get nowPlayingSleepTimerCancelled => 'Sleep timer turned off';

  @override
  String get nowPlayingOpenInExternalPlayer => 'Open in external player';

  @override
  String get nowPlayingHideVolume => 'Hide volume';

  @override
  String get nowPlayingShowVolume => 'Show volume';

  @override
  String get nowPlayingTabPlayer => 'Player';

  @override
  String get nowPlayingTabLyrics => 'Lyrics';

  @override
  String get nowPlayingNoLyrics => 'No lyrics in this file';

  @override
  String get nowPlayingInstrumental => 'Instrumental';

  @override
  String get nowPlayingLyricsLanguageOptions => 'Lyrics language options';

  @override
  String get nowPlayingHidePronunciation => 'Hide Pronunciation';

  @override
  String get nowPlayingShowPronunciation => 'Show Pronunciation';

  @override
  String get nowPlayingHideTranslation => 'Hide Translation';

  @override
  String get nowPlayingShowTranslation => 'Show Translation';

  @override
  String get nowPlayingSearchLyricsOnline => 'Search online';

  @override
  String get nowPlayingNoLyricsOnline => 'No lyrics found online';

  @override
  String nowPlayingTranslateLyricsTo(String language) {
    return 'Translate to $language';
  }

  @override
  String get nowPlayingTranslateOtherLanguage => 'Other Language…';

  @override
  String get nowPlayingCancelTranslation => 'Cancel Translation';

  @override
  String nowPlayingTranslatingLyrics(int percent) {
    return 'Translating lyrics, $percent%';
  }

  @override
  String get lyricsTranslateSheetTitle => 'Translate Into';

  @override
  String lyricsTranslateSheetSubtitle(String provider) {
    return 'The lyrics are sent to $provider.';
  }

  @override
  String lyricsTranslatePartial(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lines',
      one: '1 line',
    );
    return '$_temp0 could not be translated';
  }

  @override
  String lyricsTranslateAlreadyIn(String language) {
    return 'These lyrics are already in $language';
  }

  @override
  String get lyricsAiTranslation => 'AI Translation';

  @override
  String get lyricsAiTranslationOff => 'Not set up';

  @override
  String get lyricsAiTranslationNotice =>
      'Lyrics you translate are sent to the provider you choose, using your own API key. The provider\'s terms and pricing apply. Translations are saved on this device and never change your lyric files.';

  @override
  String get lyricsAiSectionProvider => 'Provider';

  @override
  String get lyricsAiSectionTranslation => 'Translation';

  @override
  String get lyricsAiProvider => 'Provider';

  @override
  String get lyricsAiProviderCustom => 'Custom Server';

  @override
  String get lyricsAiProviderCustomSubtitle =>
      'Any OpenAI-compatible server, such as Ollama or LM Studio';

  @override
  String get lyricsAiBaseUrl => 'Server URL';

  @override
  String get lyricsAiBaseUrlInvalid =>
      'Enter a URL that starts with http:// or https://';

  @override
  String get lyricsAiNotSet => 'Not set';

  @override
  String get lyricsAiApiKey => 'API Key';

  @override
  String get lyricsAiApiKeyOptional => 'Optional for local servers';

  @override
  String lyricsAiApiKeySaved(String suffix) {
    return 'Saved, ends in $suffix';
  }

  @override
  String lyricsAiApiKeyDescription(String provider) {
    return 'Kept in this device\'s secure storage and only sent to $provider.';
  }

  @override
  String get lyricsAiModel => 'Model';

  @override
  String lyricsAiModelDefault(String model) {
    return 'Default ($model)';
  }

  @override
  String get lyricsAiModelHint => 'Model ID';

  @override
  String get lyricsAiModelUseDefault => 'Use Default';

  @override
  String get lyricsAiModelLoad => 'Load Models';

  @override
  String get lyricsAiModelsEmpty => 'The provider listed no models';

  @override
  String get lyricsAiTestConnection => 'Test Connection';

  @override
  String get lyricsAiTestConnectionSubtitle =>
      'Translates one line to check the key and model';

  @override
  String get lyricsAiTestSuccess => 'The connection works';

  @override
  String get lyricsAiTargetLanguage => 'Translate Into';

  @override
  String lyricsAiTargetLanguageApp(String language) {
    return 'App language ($language)';
  }

  @override
  String get lyricsAiInstruction => 'Extra Instruction';

  @override
  String get lyricsAiInstructionNone => 'None';

  @override
  String get lyricsAiInstructionHint =>
      'For example: keep the rhymes where you can';

  @override
  String get lyricsAiAutoTranslate => 'Translate Automatically';

  @override
  String get lyricsAiAutoTranslateSubtitle =>
      'Translates synced lyrics that have no translation when you open them, using your provider\'s quota';

  @override
  String get lyricsAiMode => 'Translation Mode';

  @override
  String get lyricsAiModeFast => 'Fast';

  @override
  String get lyricsAiModeFastDescription =>
      'Translates per line without word timing. Uses less time and output.';

  @override
  String get lyricsAiModeSynced => 'Synced';

  @override
  String get lyricsAiModeSyncedDescription =>
      'Aligns translations and romanization to sung words and phrases. Takes longer and needs word-timed lyrics.';

  @override
  String get lyricsAiRomanize => 'Add Romanization';

  @override
  String get lyricsAiRomanizeSubtitle =>
      'Shows how lyrics in other alphabets are sung, such as romaji for Japanese or pinyin for Chinese';

  @override
  String get lyricsAiClearCache => 'Clear Saved Translations';

  @override
  String lyricsAiClearCacheSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count songs',
      one: '1 song',
      zero: 'No saved translations',
    );
    return '$_temp0';
  }

  @override
  String get lyricsAiClearCacheConfirm => 'Clear saved translations?';

  @override
  String get lyricsAiClearCacheMessage =>
      'Songs will need to be translated again, which uses your provider\'s quota.';

  @override
  String get lyricsAiClearCacheDone => 'Saved translations cleared';

  @override
  String get lyricsAiErrorNotConfigured =>
      'Set up AI translation in Lyrics settings first';

  @override
  String get lyricsAiErrorInvalidKey =>
      'The provider did not accept the API key';

  @override
  String get lyricsAiErrorRateLimited =>
      'The provider is limiting requests. Try again in a moment';

  @override
  String get lyricsAiErrorQuota =>
      'Your provider account is out of credit or quota';

  @override
  String get lyricsAiErrorNetwork =>
      'Could not reach the provider. Check your connection';

  @override
  String get lyricsAiErrorTimeout => 'The provider took too long to answer';

  @override
  String get lyricsAiErrorModelNotFound =>
      'The provider does not offer this model';

  @override
  String get lyricsAiErrorRefused =>
      'The model declined to translate these lyrics';

  @override
  String get lyricsAiErrorTruncated =>
      'The model\'s answer was cut off. Try another model';

  @override
  String get lyricsAiErrorBadResponse =>
      'The model\'s answer could not be read. Try another model';

  @override
  String get lyricsAiErrorService =>
      'The provider had a problem. Try again later';

  @override
  String get lyricsAiErrorNoLyrics => 'These lyrics have nothing to translate';

  @override
  String get nowPlayingLibraryEmpty => 'Your library is empty';

  @override
  String nowPlayingShuffleLibraryFailed(String error) {
    return 'Could not shuffle library: $error';
  }

  @override
  String get nowPlayingShuffleOn => 'Shuffle on';

  @override
  String get nowPlayingPlayInOrder => 'Play in order';

  @override
  String get nowPlayingShuffleLibrary => 'Shuffle library';

  @override
  String get nowPlayingQueueEmpty => 'Queue is empty';

  @override
  String get nowPlayingNoMetadata => 'No metadata available';

  @override
  String get linkDevicesTitle => 'Devices';

  @override
  String get linkConnectionConnected => 'Connected';

  @override
  String get linkConnectionConnecting => 'Connecting';

  @override
  String get linkConnectionDisconnected => 'Not connected';

  @override
  String get linkThisPhone => 'This phone';

  @override
  String linkPlayingOn(String name) {
    return 'Playing on $name';
  }

  @override
  String linkDesktopDownloads(String name) {
    return 'Downloads on $name';
  }

  @override
  String linkHandoffStarted(String name) {
    return 'Playing on $name';
  }

  @override
  String linkHandoffSending(String name) {
    return 'Sending this song to $name...';
  }

  @override
  String linkHandoffMissing(String name, String titles) {
    return 'Playing on $name. Not found there: $titles';
  }

  @override
  String linkHandoffNotFound(String name) {
    return '$name has none of these tracks';
  }

  @override
  String get linkHandoffNothingPlaying => 'Nothing is playing on this phone';

  @override
  String linkContinueSkipped(String titles) {
    return 'Not on this phone: $titles';
  }

  @override
  String get linkContinueNotFound => 'None of these tracks are on this phone';

  @override
  String linkRequestFailed(String name) {
    return 'Could not reach $name';
  }

  @override
  String linkDownloadOnDesktop(String name) {
    return 'Download on $name';
  }

  @override
  String linkDownloadQueuedOnDesktop(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Queued $count tracks on $name',
      one: 'Queued 1 track on $name',
    );
    return '$_temp0';
  }

  @override
  String linkOpenOnDesktop(String name) {
    return 'Open on $name';
  }

  @override
  String linkOpenedOnDesktop(String name) {
    return 'Opened on $name';
  }

  @override
  String linkSendToDesktop(String name) {
    return 'Send to $name';
  }

  @override
  String get linkSaveToPhone => 'Save to this phone';

  @override
  String get linkSavingToPhone => 'Saving to this phone';

  @override
  String linkSavedToPhone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Saved $count songs to this phone',
      one: 'Saved 1 song to this phone',
    );
    return '$_temp0';
  }

  @override
  String linkSaveToPhoneFailed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count songs could not be saved',
      one: '1 song could not be saved',
    );
    return '$_temp0';
  }

  @override
  String get linkSaveToPhoneCancelled => 'Saving stopped';

  @override
  String linkTransferPhoneReceiving(int count, String title, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Saving $count songs from $name',
      one: 'Saving $title from $name',
    );
    return '$_temp0';
  }

  @override
  String linkTransferPhoneOffered(int count, String title, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$name is sending $count songs to this phone',
      one: '$name is sending $title to this phone',
    );
    return '$_temp0';
  }

  @override
  String get linkTransferPhoneView => 'View';

  @override
  String linkTransferPhoneWith(String name) {
    return 'Transfer with $name';
  }

  @override
  String linkTransferPhoneNothing(String name) {
    return 'None of these songs are on $name';
  }

  @override
  String linkSendSending(int count, String title, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sending $count songs to $name',
      one: 'Sending $title to $name',
    );
    return '$_temp0';
  }

  @override
  String linkSendNothing(String name) {
    return 'None of these songs can be sent to $name';
  }

  @override
  String get linkDownloadStatusQueued => 'Waiting';

  @override
  String get linkDownloadStatusDownloading => 'Downloading';

  @override
  String get linkDownloadStatusDone => 'Done';

  @override
  String get linkDownloadStatusFailed => 'Failed';

  @override
  String get announcementUnableToOpenLink =>
      'Unable to open link. Please try again.';

  @override
  String trackConvertLosslessOutputWithCap(String quality) {
    return 'Lossless output with $quality cap';
  }

  @override
  String trackConvertConfirmMessageLosslessCapped(
    String sourceFormat,
    String targetFormat,
    String quality,
  ) {
    return 'Convert from $sourceFormat to $targetFormat ($quality)?\n\nThe output stays in a lossless codec, but bit depth/sample rate will be capped. Original file will be deleted after conversion.';
  }

  @override
  String selectionBatchConvertConfirmMessageLosslessCapped(
    int count,
    String format,
    String quality,
  ) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    return 'Convert $count $_temp0 to $format ($quality)?\n\nThe output stays in a lossless codec, but bit depth/sample rate will be capped. Original files will be deleted after conversion.';
  }

  @override
  String trackConvertActionLabelLossless(
    String sourceFormat,
    String targetFormat,
    String quality,
  ) {
    return '$sourceFormat → $targetFormat ($quality)';
  }

  @override
  String trackConvertActionLabelLossy(
    String sourceFormat,
    String targetFormat,
    String bitrate,
  ) {
    return '$sourceFormat → $targetFormat @ $bitrate';
  }

  @override
  String get aboutPaxsenixSubtitle =>
      'Lyrics proxy for Musixmatch, Netease, Apple Music, QQ Music, Spotify, Deezer, YouTube, Kugou, and Genius';

  @override
  String get snackbarPlayingNext => 'Playing next';

  @override
  String get snackbarAddedToQueueGeneric => 'Added to queue';

  @override
  String selectionDeletePlaylistsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'playlists',
      one: 'playlist',
    );
    return 'Delete $count $_temp0';
  }

  @override
  String get actionShuffle => 'Shuffle';

  @override
  String get artistShuffleEmpty =>
      'No songs by this artist in your Library yet';

  @override
  String get downloadPrimaryArtistOnlyOn => 'Primary only: On';

  @override
  String get downloadPrimaryArtistOnlyOff => 'Primary only: Off';

  @override
  String get downloadAlbumArtistMetadataPrimaryOnly =>
      'Album Artist metadata: Primary only';

  @override
  String get downloadAlbumArtistMetadataFull => 'Album Artist metadata: Full';

  @override
  String get trackConvertOriginal => 'Original';

  @override
  String get trackConvertOriginalQuality => 'Original quality';

  @override
  String get trackConvertLosslessSuffix => 'Lossless';

  @override
  String get trackConvertDithering => 'Dithering';

  @override
  String get trackConvertResampler => 'Resampler';

  @override
  String get trackConvertDitherNone => 'None';

  @override
  String get trackConvertDitherTriangular => 'TPDF';

  @override
  String get trackConvertDitherTriangularHp => 'Triangular HP';

  @override
  String get trackConvertResamplerSwr => 'SWR';

  @override
  String get trackConvertResamplerSoxr => 'SoXr';

  @override
  String get updateSeeReleaseNotes => 'See release notes for details.';

  @override
  String get unknownTitle => 'Unknown title';

  @override
  String get trackPlayNext => 'Play next';

  @override
  String get trackAddToQueue => 'Add to queue';

  @override
  String snackbarExtensionInstalledEnable(String extensionName) {
    return '$extensionName installed. Enable it in Settings > Extensions';
  }

  @override
  String snackbarExtensionUpdatedVersion(String extensionName, String version) {
    return '$extensionName updated to v$version';
  }

  @override
  String snackbarFailedToInstallNamed(String extensionName) {
    return 'Failed to install $extensionName';
  }

  @override
  String snackbarFailedToUpdateNamed(String extensionName) {
    return 'Failed to update $extensionName';
  }

  @override
  String get releaseTypeEp => 'EP';

  @override
  String get releaseTypeSingle => 'Single';

  @override
  String get trackCoverOnline => 'Online cover';

  @override
  String get regionCountryUS => 'United States';

  @override
  String get regionCountryIT => 'Italy';

  @override
  String get regionCountryES => 'Spain';

  @override
  String get regionCountryGB => 'United Kingdom';

  @override
  String get regionCountryFR => 'France';

  @override
  String get regionCountryDE => 'Germany';

  @override
  String get regionCountryJP => 'Japan';

  @override
  String get regionCountryKR => 'South Korea';

  @override
  String get regionCountryIN => 'India';

  @override
  String get regionCountryID => 'Indonesia';

  @override
  String get regionCountryBR => 'Brazil';

  @override
  String get regionCountryMX => 'Mexico';

  @override
  String get regionCountryAU => 'Australia';

  @override
  String get regionCountryCA => 'Canada';

  @override
  String get regionCountryXK => 'Kosovo';

  @override
  String get extensionVerificationBrowserTitle => 'Verification browser';

  @override
  String get extensionVerificationBrowserSubtitleExternal =>
      'Open challenges in the default browser first';

  @override
  String get extensionVerificationBrowserSubtitleInApp =>
      'Open challenges in the in-app browser first';

  @override
  String get extensionVerificationBrowserExternal => 'External';

  @override
  String get extensionVerificationBrowserInApp => 'In-app';

  @override
  String extensionVerificationUnavailable(String extension) {
    return 'No verification page is available for $extension. Retry the download to request a new challenge.';
  }

  @override
  String get extensionVerificationHelpTitleManual =>
      'Open verification manually';

  @override
  String get extensionVerificationHelpTitleWaiting =>
      'Verification still waiting';

  @override
  String get extensionVerificationHelpMessageManual =>
      'Toadplayer could not open the browser automatically. Open this link in your browser, or copy it manually.';

  @override
  String get extensionVerificationHelpMessageWaiting =>
      'If the browser did not open, or verification finished but did not return to Toadplayer, open this link again or copy it manually.';

  @override
  String get extensionVerificationClose => 'Close';

  @override
  String get extensionVerificationCopyLink => 'Copy link';

  @override
  String get extensionVerificationPasteCallback => 'Paste callback';

  @override
  String get extensionVerificationLinkCopied => 'Verification link copied';

  @override
  String get extensionVerificationOpenBrowser => 'Open browser';

  @override
  String get settingsSearchHint => 'Buscar en los ajustes';

  @override
  String settingsSearchNoResults(String query) {
    return 'Ningún ajuste coincide con \"$query\"';
  }

  @override
  String get libraryFilterMetadataMissingLyrics => 'Missing lyrics';

  @override
  String get libraryFilterMetadataMissingReplayGain => 'Missing ReplayGain';

  @override
  String get libraryFilterMetadataHasReplayGain => 'Has ReplayGain';

  @override
  String get libraryFilterIncompleteAlbums => 'Incomplete albums';

  @override
  String get libraryAlbumCompletenessUnknown => 'Album completeness unknown';

  @override
  String libraryAlbumMissingTracks(int present, int expected, int missing) {
    return '$present/$expected tracks · $missing missing';
  }

  @override
  String get trackOptionCopyTrackName => 'Copy track name';

  @override
  String get trackOptionCopyArtist => 'Copy artist';

  @override
  String get trackOptionCopyTrackAndArtist => 'Copy track and artist';

  @override
  String trackOptionCopyLink(String service) {
    return 'Copy $service link';
  }

  @override
  String get metadataCopyValue => 'Copy value';

  @override
  String get metadataCopyField => 'Copy field and value';

  @override
  String get toadplayerSearch => 'Search';

  @override
  String get toadplayerContinuePlaying => 'Continue Playing';

  @override
  String get metadataCopyAll => 'Copy all metadata';

  @override
  String get optionsEmbeddedCoverSize => 'Embedded Cover Size';

  @override
  String get optionsEmbeddedCoverSizeDescription =>
      'Downscale remotely downloaded cover art before embedding it. Images already within the limit are kept unchanged.';

  @override
  String get toadplayerFavorite => 'Favorite';

  @override
  String get toadplayerGoToArtist => 'Go to Artist';

  @override
  String get toadplayerGetInfo => 'Get Info';

  @override
  String get toadplayerFavorited => 'Favorited';

  @override
  String get autoMixDescription =>
      'Blend songs with beat matching and pitch-preserving tempo adjustment. Uses crossfade when beats cannot be matched.';

  @override
  String get gaplessPlayback => 'Gapless playback';

  @override
  String get gaplessPlaybackDescription =>
      'Start the next song the moment one ends, without silence between them. AutoMix replaces it while on.';

  @override
  String get playerCoverStyle => 'Cover art';

  @override
  String get landscapeLyricsArtwork => 'Album art beside lyrics';

  @override
  String get landscapeLyricsArtworkDescription =>
      'Show album art instead of track details in the Material landscape player';

  @override
  String get autoHideLyricsControls => 'Automatic fullscreen lyrics';

  @override
  String get autoHideLyricsControlsDescription =>
      'Hide player controls after 5 seconds while lyrics are open. Turn off to keep the current view';

  @override
  String get compactPlayer => 'Compact player';

  @override
  String get compactPlayerDescription =>
      'When lyrics are left alone, shrink the player to a slim bar so the lyrics get more room. A tap brings the full player back';

  @override
  String get playerCoverStyleDefault => 'Default';

  @override
  String get playerCoverStyleCard => 'Card';

  @override
  String get playerCoverStyleDefaultDescription =>
      'Artwork as a card above the controls';

  @override
  String get playerCoverStyleFullScreen => 'Full screen';

  @override
  String get playerCoverStyleFullScreenDescription =>
      'Artwork fills the top of the player and fades into a blur. Motion artwork is always full screen in Toadplayer';

  @override
  String get musicHaptics => 'Music haptics';

  @override
  String get musicHapticsDescription =>
      'Vibrate along with the beat of downloaded and local songs';

  @override
  String get musicHapticsSensitivity => 'Sensitivity';

  @override
  String get musicHapticsStrength => 'Strength';

  @override
  String get autoMixOn => 'AutoMix on';

  @override
  String get autoMixOff => 'AutoMix off';

  @override
  String get autoplayOn => 'Autoplay on';

  @override
  String get autoplayOff => 'Autoplay off';

  @override
  String get queueAutoplay => 'Autoplay';

  @override
  String get queueAutoMix => 'AutoMix';

  @override
  String get autoplayFromLibrary => 'Autoplay from your Library';

  @override
  String get autoplayDescription =>
      'Continue with related songs from your Library when the queue ends.';

  @override
  String get autoplayPersonalization => 'Personalized autoplay';

  @override
  String get autoplayPersonalizationDescription =>
      'Learn from songs you listen to and skip, privately on this device. Turning this off stops learning and restores ordinary autoplay.';

  @override
  String get autoplayResetLearning => 'Reset recommendation learning';

  @override
  String get autoplayResetLearningConfirmTitle =>
      'Reset recommendation learning?';

  @override
  String get autoplayResetLearningConfirmMessage =>
      'Autoplay forgets what it learned from your listening and skips. This can\'t be undone.';

  @override
  String get autoplayResetLearningConfirm => 'Reset';

  @override
  String autoplayLearningProgress(int count, int minimum) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);
    final intl.NumberFormat minimumNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String minimumString = minimumNumberFormat.format(minimum);

    return 'Ranking tunes to you after $minimumString Autoplay songs ($countString so far)';
  }

  @override
  String get autoplayLearningWaiting =>
      'Standard ranking until you both keep and skip recent Autoplay songs';

  @override
  String autoplayLearningTuned(int learned, int starting) {
    return 'Tuned to you: $learned% accurate on your latest songs (standard $starting%)';
  }

  @override
  String autoplayLearningStandard(int learned, int starting) {
    return 'Standard ranking: tuning was not more accurate on your latest songs ($learned% vs $starting%)';
  }

  @override
  String get songAnalysis => 'Song analysis';

  @override
  String get songAnalysisDescription =>
      'Learn how each Library song sounds, privately on this device, so Autoplay picks songs that sound like what you play and flow into each other.';

  @override
  String get songAnalysisOnlyWhileCharging => 'Only while charging';

  @override
  String get songAnalysisOnlyWhileChargingDescription =>
      'Analyze the Library only while this phone charges. The song playing is analyzed either way.';

  @override
  String songAnalysisProgress(int analyzed, int total) {
    final intl.NumberFormat analyzedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String analyzedString = analyzedNumberFormat.format(analyzed);
    final intl.NumberFormat totalNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String totalString = totalNumberFormat.format(total);

    return '$analyzedString of $totalString songs analyzed';
  }

  @override
  String get songAnalysisClear => 'Clear song analysis';

  @override
  String get songAnalysisClearConfirmTitle => 'Clear song analysis?';

  @override
  String get songAnalysisClearConfirmMessage =>
      'Autoplay forgets how your songs sound. While song analysis is on, your Library is analyzed again.';

  @override
  String get songAnalysisClearConfirm => 'Clear';

  @override
  String get profileTitle => 'Profile';

  @override
  String get profileSetUp => 'Set up your profile';

  @override
  String get profileEdit => 'Edit name and photo';

  @override
  String get backupIncludesProfile => 'Includes your profile name and photo';

  @override
  String get profileName => 'Name';

  @override
  String get profileNameHint => 'Your name';

  @override
  String get profileChangePhoto => 'Choose photo';

  @override
  String get profileRemovePhoto => 'Remove photo';

  @override
  String get profilePhotoError => 'Choose a valid image smaller than 20 MB.';

  @override
  String get profileSaveError =>
      'Could not save your profile. Please try again.';

  @override
  String get homeGreetingMorning1 => 'Good morning';

  @override
  String get homeGreetingMorning2 => 'Rise and shine';

  @override
  String get homeGreetingMorning3 => 'Fresh start';

  @override
  String get homeGreetingAfternoon1 => 'Good afternoon';

  @override
  String get homeGreetingAfternoon2 => 'Afternoon groove';

  @override
  String get homeGreetingAfternoon3 => 'Keep the vibe going';

  @override
  String get homeGreetingEvening1 => 'Good evening';

  @override
  String get homeGreetingEvening2 => 'Time to unwind';

  @override
  String get homeGreetingEvening3 => 'Golden hour';

  @override
  String get homeGreetingNight1 => 'Good night';

  @override
  String get homeGreetingNight2 => 'Late-night session';

  @override
  String get homeGreetingNight3 => 'Quiet hours';

  @override
  String homeGreetingNamed(String greeting, String name) {
    return '$greeting, $name';
  }

  @override
  String get homeTaglineListening => 'What are we listening to?';

  @override
  String get homeTaglineLink => 'Got a link? Drop it in the search';

  @override
  String get homeTaglineDiscover => 'Find your next favorite album';

  @override
  String get homeContinueListening => 'Continue listening';

  @override
  String get homeRecentlyPlayed => 'Recently Played';

  @override
  String get homeRecentlyAdded => 'Recently added';

  @override
  String get homeOnRepeat => 'On repeat';

  @override
  String get homeShortcuts => 'Shortcuts';

  @override
  String get searchResults => 'Search Results';

  @override
  String get homeTopPicks => 'Top Picks for You';

  @override
  String get homeMadeForYou => 'Made for You';

  @override
  String get homeMixesForYou => 'Mixes for you';

  @override
  String get homeMixFavoritesTitle => 'Favorites Mix';

  @override
  String homeMixGenreTitle(String genre) {
    return '$genre Mix';
  }

  @override
  String homeMixArtistTitle(String artist) {
    return '$artist Mix';
  }

  @override
  String homeMixDecadeTitle(String decade) {
    return '${decade}s Mix';
  }

  @override
  String get homeMixFreshTitle => 'New Additions Mix';

  @override
  String get homeMixRediscoverTitle => 'Rediscover Mix';

  @override
  String get homeMixDiscoverTitle => 'Discover Mix';

  @override
  String homeMixArtistsOne(String first) {
    return '$first';
  }

  @override
  String homeMixArtistsTwo(String first, String second) {
    return '$first and $second';
  }

  @override
  String homeMixArtistsMore(String first, String second) {
    return '$first, $second and more';
  }

  @override
  String get homeMixGenreHipHop => 'Hip-Hop';

  @override
  String get homeMixGenreRnb => 'R&B';

  @override
  String get homeMixGenrePop => 'Pop';

  @override
  String get homeMixGenreKpop => 'K-Pop';

  @override
  String get homeMixGenreJpop => 'J-Pop';

  @override
  String get homeMixGenreRock => 'Rock';

  @override
  String get homeMixGenreMetal => 'Metal';

  @override
  String get homeMixGenrePunk => 'Punk';

  @override
  String get homeMixGenreIndie => 'Indie & Alternative';

  @override
  String get homeMixGenreElectronic => 'Electronic';

  @override
  String get homeMixGenreChill => 'Chill & Lo-Fi';

  @override
  String get homeMixGenreJazz => 'Jazz';

  @override
  String get homeMixGenreBlues => 'Blues';

  @override
  String get homeMixGenreClassical => 'Classical';

  @override
  String get homeMixGenreSoundtrack => 'Soundtrack';

  @override
  String get homeMixGenreCountry => 'Country';

  @override
  String get homeMixGenreFolk => 'Folk & Acoustic';

  @override
  String get homeMixGenreLatin => 'Latin';

  @override
  String get homeMixGenreReggae => 'Reggae';

  @override
  String get homeMixGenreAfro => 'Afrobeats';

  @override
  String get homeMixGenreGospel => 'Gospel & Worship';

  @override
  String get homeMixGenreDangdut => 'Dangdut';

  @override
  String get homeMixUpdatedDaily => 'Made from your Library, updated daily';

  @override
  String get homeMixSaveAsPlaylist => 'Save as playlist';

  @override
  String get artistUpcomingConcerts => 'Upcoming Concerts';

  @override
  String get artistAllUpcomingConcerts => 'All Upcoming Concerts';

  @override
  String get artistNoUpcomingConcerts => 'No upcoming concerts.';

  @override
  String get motionArtwork => 'Animated artwork';

  @override
  String get listeningStats => 'Listening statistics';

  @override
  String get listeningStatsRecord => 'Record listening';

  @override
  String get listeningStatsDescription =>
      'Stored only on this device, starting now. Records the built-in player only; pauses, buffering and seeking add no listening time. A play counts after 30 seconds.';

  @override
  String get listeningStatsEmpty =>
      'Play music with the built-in player to start your listening recap. Earlier listening cannot be recovered.';

  @override
  String listeningStatsDays(int days) {
    return '$days days';
  }

  @override
  String listeningStatsMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String listeningStatsTotals(int plays, int tracks, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      plays,
      locale: localeName,
      other: '$plays plays',
      one: '1 play',
    );
    String _temp1 = intl.Intl.pluralLogic(
      tracks,
      locale: localeName,
      other: '$tracks tracks',
      one: '1 track',
    );
    String _temp2 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days active days',
      one: '1 active day',
    );
    return '$_temp0 · $_temp1 · $_temp2';
  }

  @override
  String get listeningStatsPreviousYear => 'Previous year';

  @override
  String get listeningStatsNextYear => 'Next year';

  @override
  String get listeningStatsActivity => 'Recent listening days · minutes';

  @override
  String get listeningStatsTopArtists => 'Top artists';

  @override
  String get listeningStatsTopTracks => 'Top tracks';

  @override
  String get listeningStatsLoadError => 'Could not load listening statistics';

  @override
  String get listeningStatsClear => 'Clear listening statistics';

  @override
  String get listeningStatsClearError =>
      'Could not clear listening statistics. Please try again.';

  @override
  String get listeningStatsClearDescription =>
      'Delete all listening statistics on this device? Your music and playlists will be kept.';

  @override
  String get libraryArtistsEmpty =>
      'Artists appear here once you download music or scan a local library.';

  @override
  String get listeningRewind => 'Rewind';

  @override
  String get listeningRewindDescription =>
      'Relive the highlights of your recent weeks and months';

  @override
  String get listeningRewindChoosePeriod => 'Choose a period';

  @override
  String listeningRewindLastWeeks(int weeks) {
    return 'Last $weeks weeks';
  }

  @override
  String listeningRewindLastMonths(int months) {
    return 'Last $months months';
  }

  @override
  String listeningRewindThisYear(int year) {
    return '$year so far';
  }

  @override
  String get listeningRewindIntroTitle => 'Your Rewind';

  @override
  String listeningRewindIntroBody(String start, String end) {
    return 'A look back at what you played from $start to $end.';
  }

  @override
  String get listeningRewindMinutesTitle => 'You listened for';

  @override
  String listeningRewindMinutesUnit(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: 'minutes',
      one: 'minute',
    );
    return '$_temp0';
  }

  @override
  String listeningRewindHours(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: 'That\'s about $hours hours of music',
      one: 'That\'s about 1 hour of music',
    );
    return '$_temp0';
  }

  @override
  String listeningRewindMore(int percent) {
    return '$percent% more than the period before';
  }

  @override
  String listeningRewindLess(int percent) {
    return '$percent% less than the period before';
  }

  @override
  String get listeningRewindSame => 'About the same as the period before';

  @override
  String get listeningRewindTopArtistTitle => 'Your top artist';

  @override
  String listeningRewindArtistShare(int percent) {
    return '$percent% of your listening time';
  }

  @override
  String get listeningRewindArtistsTitle => 'Artists on rotation';

  @override
  String get listeningRewindTopTrackTitle => 'Your top song';

  @override
  String listeningRewindPlays(int plays) {
    String _temp0 = intl.Intl.pluralLogic(
      plays,
      locale: localeName,
      other: '$plays plays',
      one: '1 play',
    );
    return '$_temp0';
  }

  @override
  String get listeningRewindTracksTitle => 'Songs on repeat';

  @override
  String get listeningRewindTopAlbumTitle =>
      'The album you kept coming back to';

  @override
  String get listeningRewindNewArtistsTitle => 'New discoveries';

  @override
  String listeningRewindNewArtistsBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'You found $count new artists',
      one: 'You found 1 new artist',
    );
    return '$_temp0';
  }

  @override
  String get listeningRewindRhythmTitle => 'Your listening rhythm';

  @override
  String get listeningRewindPeakDay => 'Biggest day';

  @override
  String get listeningRewindFavoriteDay => 'Favorite day';

  @override
  String get listeningRewindStreak => 'Longest streak';

  @override
  String listeningRewindStreakDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days days in a row',
      one: '1 day',
    );
    return '$_temp0';
  }

  @override
  String get listeningRewindReplayTitle => 'Couldn\'t stop playing';

  @override
  String listeningRewindReplayBody(int plays, String date) {
    return 'You played it $plays times on $date';
  }

  @override
  String get listeningRewindOutroTitle => 'That\'s your Rewind';

  @override
  String get listeningRewindOutroBody =>
      'Keep listening. Your next Rewind is already taking shape.';

  @override
  String get listeningRewindEmpty =>
      'Not enough listening in this period yet. Play some music with the built-in player and come back later.';

  @override
  String get listeningRewindLoadError => 'Could not load your Rewind';

  @override
  String listeningRewindSlide(int index, int count) {
    return 'Slide $index of $count';
  }

  @override
  String get listeningRewindShare => 'Share';

  @override
  String get listeningRewindShareError => 'Could not share your Rewind';

  @override
  String get listeningRewindNext => 'Next';

  @override
  String get listeningRewindPrevious => 'Previous';

  @override
  String get listeningRewindMonthlyReady =>
      'Your last 4 weeks are ready to replay';

  @override
  String listeningRewindYearTitle(String year) {
    return 'Your $year in Music';
  }

  @override
  String get listeningRewindYearEyebrow => 'Year-end Rewind';

  @override
  String get listeningRewindYearBanner =>
      'Your top artists, songs and moments of the year';

  @override
  String get listeningRewindYearIntroBody =>
      'Everything you played this year, from your first song to your biggest month.';

  @override
  String get listeningRewindNumbersTitle => 'Your year in numbers';

  @override
  String get listeningRewindSongsLabel => 'Songs';

  @override
  String get listeningRewindArtistsLabel => 'Artists';

  @override
  String get listeningRewindAlbumsLabel => 'Albums';

  @override
  String get listeningRewindDaysLabel => 'Days with music';

  @override
  String listeningRewindDaysShare(int percent) {
    return 'Music on $percent% of your days';
  }

  @override
  String get listeningRewindMonthsTitle => 'Month by month';

  @override
  String get listeningRewindBiggestMonthLabel => 'Biggest month';

  @override
  String listeningRewindBiggestMonth(String month) {
    return 'Your biggest month was $month';
  }

  @override
  String get listeningRewindMonthlyArtistsTitle => 'Artist of the month';

  @override
  String get listeningRewindLoyalTitle => 'Always by your side';

  @override
  String listeningRewindLoyalBody(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'With you on $days different days',
      one: 'With you on 1 day',
    );
    return '$_temp0';
  }

  @override
  String get listeningRewindFirstSongTitle => 'Where your year began';

  @override
  String listeningRewindFirstSongBody(String date) {
    return 'Your most-played song on your first listening day, $date';
  }

  @override
  String listeningRewindYearOutroTitle(String year) {
    return 'That was your $year';
  }

  @override
  String get listeningRewindYearOutroBody =>
      'Here\'s to another year of great music.';

  @override
  String get weeklyReleases => 'New releases';

  @override
  String get weeklyReleasesDescription =>
      'Recent albums and singles from your favorite artists, supplied by installed metadata extensions.';

  @override
  String get weeklyReleasesEmpty =>
      'No dated releases found in this period. Add favorite artists or try a longer period.';

  @override
  String get weeklyReleasesUnavailable =>
      'Some artists could not be checked. Their saved results are kept. Providers may not supply artist catalogs or exact release dates.';

  @override
  String get weeklyReleasesLoadError =>
      'Could not check new releases. Pull to refresh.';

  @override
  String get motionArtworkDescription =>
      'Loop video covers supplied by metadata providers. Turn off to use still artwork and reduce battery use.';

  @override
  String get libraryLoading => 'Loading Library…';

  @override
  String get libraryLoadFailed =>
      'Library could not be loaded. Retry to load the saved folders and track index.';

  @override
  String get discordPresenceDescription =>
      'Share the title, artist, album and progress of music played in the built-in player on your Discord profile. Local audio and artwork files are never uploaded. Clears when playback pauses or stops.';

  @override
  String get discordPresenceDisabled => 'Disabled';

  @override
  String get discordPresenceLink => 'Link Discord account';

  @override
  String get discordPresenceConnecting => 'Connecting to Discord…';

  @override
  String get discordPresenceReady => 'Ready when music plays';

  @override
  String get discordPresenceActive => 'Sharing current track';

  @override
  String get discordPresenceUnavailable =>
      'Discord is unavailable. Retrying during playback.';

  @override
  String get discordPresenceBuildUnavailable =>
      'Discord SDK is not available in this build.';

  @override
  String get discordPresenceAndroidHelp =>
      'Install Discord and sign in on this phone. Allow activity sharing in Discord. External players are not supported.';

  @override
  String get discordPresenceIosHelp =>
      'Link your account through Discord and allow activity sharing. Tap to link again if authorization fails.';

  @override
  String get discordPresenceDesktopHelp =>
      'Keep the Discord desktop app running and signed in on this computer, and allow activity sharing in Discord.';

  @override
  String get discordPresenceDisconnect => 'Disconnect and forget account';

  @override
  String get autoMixSettingsTitle => 'Mix transitions';

  @override
  String get autoMixAutomaticDuration => 'Automatic duration';

  @override
  String get autoMixDuration => 'Mix duration';

  @override
  String get autoMixEffect => 'Transition effect';

  @override
  String get autoMixEffectAuto => 'Auto';

  @override
  String get autoMixEffectCrossfade => 'Crossfade';

  @override
  String get autoMixEffectMuffled => 'Muffled';

  @override
  String get autoMixEffectEcho => 'Echo';

  @override
  String get autoMixEffectPitch => 'Pitch';

  @override
  String get autoMixEffectCustom => 'Custom';

  @override
  String get autoMixEffectsHelp =>
      'Effects apply to the end of the outgoing song during the mix. Short songs use a shorter overlap.';

  @override
  String get autoMixSpeed => 'Speed';

  @override
  String get autoMixPitch => 'Pitch (semitones)';

  @override
  String get autoMixEcho => 'Echo';

  @override
  String get autoMixLowPass => 'Muffled filter';

  @override
  String get autoMixMixing => 'Mixing';

  @override
  String get autoMixCrossfading => 'Crossfade';

  @override
  String get playbackAutomation => 'Automatic playback';

  @override
  String get playbackPauseOnMute => 'Pause when muted';

  @override
  String get snackbarPlaybackMuted =>
      'Media volume is zero. Playback paused. Press play again to continue.';

  @override
  String snackbarPlaybackFormatUnsupported(String format) {
    return 'This format can\'t be played on this device: $format';
  }

  @override
  String snackbarPlaybackFormatUnsupportedSkipped(String format) {
    return 'This format can\'t be played on this device: $format. Playing the next song.';
  }

  @override
  String get playbackPauseOnMuteDescription =>
      'Pause at zero media volume and resume when raised. Manual pauses stay paused. Standard audio output only.';

  @override
  String get playbackOnHeadphonesConnected => 'Play when headphones connect';

  @override
  String get playbackOnHeadphonesConnectedDescription =>
      'Resume the current song when wired or Bluetooth headphones connect. Disconnecting pauses playback. Built-in player only.';

  @override
  String get appearanceCustomFont => 'Custom font';

  @override
  String get appearanceCustomFontSubtitle =>
      'Import a TTF or OTF file (up to 10 MB). Overrides the theme and system font.';

  @override
  String get appearanceCustomFontInvalid =>
      'Could not load this font. Choose a valid TTF or OTF file up to 10 MB.';

  @override
  String get appearanceCustomFontReset => 'Use theme font';

  @override
  String get equalizerTitle => 'Equalizer';

  @override
  String get equalizerDescription =>
      '5–31 bands, tone controls, preamp and dynamics';

  @override
  String get equalizerEnable => 'Enable equalizer';

  @override
  String get equalizerBands => 'Bands';

  @override
  String get equalizerTone => 'Tone & stereo';

  @override
  String get equalizerPreamp => 'Preamp';

  @override
  String get equalizerBass => 'Bass';

  @override
  String get equalizerTreble => 'Treble';

  @override
  String get equalizerBalance => 'Balance';

  @override
  String get equalizerDynamics => 'Dynamics';

  @override
  String get equalizerHeadroom => 'Automatic headroom';

  @override
  String get equalizerHeadroomDescription =>
      'Reduce input gain to make room for boosted frequencies.';

  @override
  String get equalizerLimiter => 'Peak limiter';

  @override
  String get equalizerLimiterDescription =>
      'Keep peaks below −0.5 dBFS to reduce clipping.';

  @override
  String get equalizerCompressor => 'Compressor';

  @override
  String get equalizerCompressorDescription =>
      'Reduce the difference between quiet and loud passages.';

  @override
  String get equalizerThreshold => 'Threshold';

  @override
  String get equalizerRatio => 'Ratio';

  @override
  String get equalizerAttack => 'Attack';

  @override
  String get equalizerRelease => 'Release';

  @override
  String get equalizerPresets => 'Presets';

  @override
  String get equalizerSavePreset => 'Save preset';

  @override
  String get equalizerPresetName => 'Preset name';

  @override
  String get equalizerImport => 'Import preset';

  @override
  String get equalizerExport => 'Share preset';

  @override
  String get equalizerImportInvalid =>
      'Choose a valid Toadplayer equalizer preset (JSON, up to 64 KB).';

  @override
  String get equalizerSaved => 'Preset saved';

  @override
  String get equalizerResetTitle => 'Reset equalizer?';

  @override
  String get equalizerResetDescription =>
      'Restore a flat curve, default tone and dynamics settings. Saved presets are kept.';

  @override
  String get equalizerBypass =>
      'Bit-perfect, Direct USB and exclusive Hi-Res outputs bypass EQ. Disable bit-perfect output to use EQ. External players manage their own effects.';

  @override
  String get equalizerCurve => 'EQ curve (estimated)';

  @override
  String get equalizerCurveDescription =>
      'The curve shows band gains; the exact response depends on the output engine.';

  @override
  String get equalizerEffectivePreamp => 'Input gain after headroom';

  @override
  String get equalizerDeletePreset => 'Delete preset';

  @override
  String get equalizerCustom => 'Custom';

  @override
  String get equalizerManagePresets => 'Manage presets';

  @override
  String get lyricsShareTitle => 'Share lyrics';

  @override
  String lyricsShareSelectHint(int count) {
    return 'Select up to $count lines';
  }

  @override
  String lyricsShareLimit(int count) {
    return 'You can share up to $count lines';
  }

  @override
  String get lyricsShareAction => 'Share';

  @override
  String get lyricsShareError => 'Couldn\'t create the lyrics image';

  @override
  String get lyricsShareBackgroundArtwork => 'Artwork';

  @override
  String get lyricsShareBackgroundColor => 'Cover color';

  @override
  String get lyricsShareBackgroundDark => 'Dark';

  @override
  String get lyricsShareBackgroundLight => 'Light';

  @override
  String get audioInfoTitle => 'Audio info';

  @override
  String get audioInfoSource => 'Source file';

  @override
  String get audioInfoSignal => 'Signal';

  @override
  String get audioInfoLoudness => 'Loudness';

  @override
  String get audioInfoProcessing => 'Processing';

  @override
  String get audioInfoOutput => 'Output';

  @override
  String get audioInfoAnalysis => 'Spectrum and level analysis';

  @override
  String get audioInfoQuality => 'Quality';

  @override
  String get audioInfoHiResLossless => 'Hi-Res Lossless';

  @override
  String get audioInfoLossless => 'Lossless';

  @override
  String get audioInfoLossy => 'Lossy';

  @override
  String get audioInfoFormat => 'Format';

  @override
  String get audioInfoCodec => 'Codec';

  @override
  String get audioInfoSampleRate => 'Sample rate';

  @override
  String get audioInfoBitDepth => 'Bit depth';

  @override
  String get audioInfoChannels => 'Channels';

  @override
  String audioInfoChannelCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count channels',
      two: 'Stereo',
      one: 'Mono',
    );
    return '$_temp0';
  }

  @override
  String get audioInfoBitrate => 'Bitrate';

  @override
  String get audioInfoDuration => 'Duration';

  @override
  String get audioInfoFileSize => 'File size';

  @override
  String get audioInfoCompression => 'Compression';

  @override
  String audioInfoCompressionValue(String percent) {
    return '$percent% of uncompressed size';
  }

  @override
  String get audioInfoLocation => 'Location';

  @override
  String get audioInfoLocationLocal => 'Device storage';

  @override
  String get audioInfoLocationShared => 'Shared folder';

  @override
  String get audioInfoLocationNetwork => 'Network storage';

  @override
  String audioInfoLocationLink(String device) {
    return '$device via Toadplayer Link';
  }

  @override
  String get audioInfoPcmRate => 'Uncompressed data rate';

  @override
  String get audioInfoFrequencyRange => 'Frequency range';

  @override
  String audioInfoFrequencyRangeValue(String frequency) {
    return 'Up to $frequency (Nyquist)';
  }

  @override
  String get audioInfoDynamicRange => 'Theoretical dynamic range';

  @override
  String get audioInfoTrackGain => 'Track gain';

  @override
  String get audioInfoTrackPeak => 'Track peak';

  @override
  String get audioInfoAlbumGain => 'Album gain';

  @override
  String get audioInfoAlbumPeak => 'Album peak';

  @override
  String get audioInfoNoGainTags => 'No ReplayGain tags';

  @override
  String audioInfoApplied(String gain) {
    return 'Applied $gain';
  }

  @override
  String get audioInfoOn => 'On';

  @override
  String get audioInfoOff => 'Off';

  @override
  String get audioInfoBypassed => 'Bypassed by direct output';

  @override
  String get audioInfoPlayer => 'Player';

  @override
  String get audioInfoPlayerValue => 'Toadplayer built-in player';

  @override
  String get audioInfoSignalPath => 'Signal path';

  @override
  String get audioInfoPathSystem => 'System mixer';

  @override
  String get audioInfoPathDirect => 'Direct USB, bypasses the system mixer';

  @override
  String get audioInfoPathExclusive =>
      'Exclusive output, bypasses the system mixer';

  @override
  String get audioInfoDecoder => 'Decoder';

  @override
  String get audioInfoHardware => 'Hardware';

  @override
  String get audioInfoSoftware => 'Software';

  @override
  String audioInfoBands(int count) {
    return '$count bands';
  }

  @override
  String get audioInfoTempo => 'Tempo';

  @override
  String get audioInfoResampling => 'Resampling';

  @override
  String get audioInfoResamplingNone => 'None, rates match';

  @override
  String get audioInfoBitPerfect => 'Bit-perfect';

  @override
  String get audioInfoBitPerfectActive => 'Yes, unaltered samples';

  @override
  String get audioInfoBitPerfectNo => 'No, mixed by the system';

  @override
  String get audioInfoBitPerfectUnverified => 'Not verified';

  @override
  String get audioInfoBitPerfectProcessed => 'No, audio processing is active';

  @override
  String get audioInfoDevice => 'Device';

  @override
  String audioInfoDeviceType(String type) {
    String _temp0 = intl.Intl.selectLogic(type, {
      'speaker': 'Phone speaker',
      'earpiece': 'Earpiece',
      'wired_headphones': 'Wired headphones',
      'wired_headset': 'Wired headset',
      'line': 'Line out',
      'bluetooth': 'Bluetooth',
      'bluetooth_le': 'Bluetooth LE Audio',
      'usb': 'USB audio',
      'usb_headset': 'USB headset',
      'hdmi': 'HDMI',
      'dock': 'Dock',
      'cast': 'Cast',
      'hearing_aid': 'Hearing aid',
      'airplay': 'AirPlay',
      'car': 'Car audio',
      'other': 'Other',
    });
    return '$_temp0';
  }

  @override
  String get audioInfoOutputRate => 'Output sample rate';

  @override
  String get audioInfoOutputFormat => 'Output format';

  @override
  String get audioInfoBluetoothFormat => 'Bluetooth codec format';

  @override
  String get audioInfoAndroidNotReported => 'Not reported by Android';

  @override
  String get audioInfoBluetoothUnavailable => 'Unavailable to this app';

  @override
  String get audioInfoBluetoothUnavailableHint =>
      'Android may show the active codec in Bluetooth settings without making it available to Toadplayer. This is separate from the song\'s file format.';

  @override
  String get audioAnalysisFileBitrate => 'Average file bitrate';

  @override
  String get audioAnalysisFileBitrateHint =>
      'Includes tags and container overhead. It can differ from the audio stream bitrate and is not the Bluetooth bitrate.';

  @override
  String get audioInfoSystemDefaultRate => 'System default sample rate';

  @override
  String get audioInfoAndroidPcmRates => 'Android PCM sample rates';

  @override
  String get audioInfoAndroidPcmFormats => 'Android PCM formats';

  @override
  String get audioInfoSystemDefaultBuffer => 'System default buffer';

  @override
  String get audioInfoDeviceRates => 'Device sample rates';

  @override
  String get audioInfoDeviceFormats => 'Device formats';

  @override
  String get audioInfoAnyRate => 'Any';

  @override
  String get audioInfoBuffer => 'Mixer buffer';

  @override
  String get audioInfoLatency => 'Output latency';

  @override
  String get audioInfoLowLatency => 'Low-latency audio';

  @override
  String get audioInfoProAudio => 'Pro audio';

  @override
  String get audioInfoSupported => 'Supported';

  @override
  String get audioInfoNotSupported => 'Not supported';

  @override
  String get audioInfoSpatial => 'Spatial audio';

  @override
  String get audioInfoHeadTracking => 'Head tracking';

  @override
  String get audioInfoUnavailable => 'Unavailable';

  @override
  String get audioInfoFixedVolume => 'Controlled by the device';

  @override
  String get audioInfoCopy => 'Copy report';

  @override
  String get audioInfoCopied => 'Audio info copied';

  @override
  String get lyricsTextSize => 'Lyrics text size';

  @override
  String get lyricsTextPreview => 'Follow every line of your favorite song';

  @override
  String get lyricsBlur => 'Lyrics blur';

  @override
  String get lyricsBlurSubtitle =>
      'How much the lines around the current one soften';

  @override
  String get lyricsBlurOff => 'Off';

  @override
  String get lyricsOffset => 'Lyrics timing';

  @override
  String get lyricsOffsetSubtitle =>
      'Show synced lyrics later or earlier, for example when Bluetooth audio arrives late';

  @override
  String get lyricsOffsetNone => 'In sync';

  @override
  String lyricsOffsetLater(String seconds) {
    return '$seconds s later';
  }

  @override
  String lyricsOffsetEarlier(String seconds) {
    return '$seconds s earlier';
  }

  @override
  String get appCrashTitle => 'The app previously crashed';

  @override
  String get appAnrTitle => 'The app previously stopped responding';

  @override
  String get appAnrMessage =>
      'A diagnostic report was saved. You can copy it and send it to the developer to help investigate.';

  @override
  String get appCrashMessage =>
      'A crash report was saved. Copy it and send it to the developer to help investigate.';

  @override
  String get appCrashDetails => 'View error and log';

  @override
  String get appCrashCopy => 'Copy report for developer';

  @override
  String get appCrashDismiss => 'Dismiss';

  @override
  String get appCrashCopyFailed =>
      'Could not copy the crash report. Please try again.';

  @override
  String get appCrashDismissFailed =>
      'Could not dismiss the crash report. Please try again.';

  @override
  String get optionsEmbeddedCoverSizeOriginal => 'Original resolution';

  @override
  String desktopShortcutTooltip(String action, String shortcut) {
    return '$action ($shortcut)';
  }

  @override
  String get desktopPlayerIdle => 'Not playing';

  @override
  String get desktopVolumeUp => 'Increase volume';

  @override
  String get desktopVolumeDown => 'Decrease volume';

  @override
  String desktopTableSortedAscending(String column) {
    return '$column, sorted ascending';
  }

  @override
  String desktopTableSortedDescending(String column) {
    return '$column, sorted descending';
  }

  @override
  String get desktopMenuOpen => 'Open';

  @override
  String get desktopMenuShowDetails => 'Show details';

  @override
  String get desktopDropToImport => 'Drop to add to your library';

  @override
  String desktopDropImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'folders',
      one: 'folder',
    );
    return 'Adding $count $_temp0 to your library';
  }

  @override
  String get desktopDropNothingToImport =>
      'Drop music files or folders to add them to your library';

  @override
  String get desktopAllPlaylists => 'All Playlists';

  @override
  String get desktopMenuSettings => 'Settings…';

  @override
  String get desktopMenuFile => 'File';

  @override
  String get desktopMenuEdit => 'Edit';

  @override
  String get desktopMenuView => 'View';

  @override
  String get desktopWindowMode => 'Window mode';

  @override
  String get desktopWindowed => 'Windowed';

  @override
  String get desktopWindowFullscreen => 'Full screen';

  @override
  String get desktopWindowBorderless => 'Borderless';

  @override
  String get desktopExitFullscreen => 'Exit full screen';

  @override
  String get desktopMinimizeWindow => 'Minimize window';

  @override
  String get desktopZoomWindow => 'Maximize or restore window';

  @override
  String get desktopWindowModeUnavailable =>
      'The window mode could not be changed. Try again after the current window transition finishes.';

  @override
  String get desktopMenuControls => 'Controls';

  @override
  String get desktopMenuWindow => 'Window';

  @override
  String get desktopMenuHelp => 'Help';

  @override
  String get desktopMenuPlayPause => 'Play/Pause';

  @override
  String get desktopMenuMiniPlayer => 'Mini Player';

  @override
  String get desktopMiniPlayerExpand => 'Show Full Window';

  @override
  String get desktopMenuRefresh => 'Refresh';

  @override
  String get desktopMenuProjectPage => 'Project page';

  @override
  String get desktopDownloadsShowAll => 'Show all';

  @override
  String get desktopDownloadsQueued => 'Waiting';

  @override
  String get desktopDownloadsCancel => 'Cancel download';

  @override
  String get linkDesktopSettingsTitle => 'Toadplayer on your phone';

  @override
  String get linkDesktopSettingsSubtitle =>
      'Stream your library and control playback from your phone';

  @override
  String get linkDesktopEnableTitle => 'Share with Toadplayer on your phone';

  @override
  String get linkDesktopEnableSubtitle =>
      'Your phone can browse, play and download through this computer on your local network';

  @override
  String get linkDesktopStatusStarting => 'Starting';

  @override
  String linkDesktopStatusRunning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count phones connected',
      one: '1 phone connected',
      zero: 'no phone connected',
    );
    return 'On, $_temp0';
  }

  @override
  String linkDesktopStatusFailed(String error) {
    return 'Could not start: $error';
  }

  @override
  String get linkDesktopFirewallHint =>
      'Your computer may ask whether Toadplayer can accept incoming network connections. Allow it so your phone can connect.';

  @override
  String get linkDesktopSectionComputer => 'This computer';

  @override
  String get linkDesktopDeviceName => 'Name';

  @override
  String get linkDesktopDeviceNameHint =>
      'Phones show this name when they find this computer';

  @override
  String get linkDesktopAddress => 'Address';

  @override
  String get linkDesktopSecurityCode => 'Security code';

  @override
  String get linkDesktopSecurityCodeHint =>
      'Your phone shows the same code when it pairs';

  @override
  String linkDesktopCatalogSongs(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count songs shared',
      one: '1 song shared',
    );
    return '$_temp0';
  }

  @override
  String get linkDesktopSectionPhones => 'Phones';

  @override
  String get linkDesktopPairPhone => 'Pair a phone';

  @override
  String get linkDesktopPairPhoneSubtitle =>
      'Show a code to enter on your phone';

  @override
  String get linkDesktopNoDevices => 'No phones paired yet';

  @override
  String get linkDesktopDeviceConnected => 'Connected';

  @override
  String linkDesktopDeviceLastSeen(String date) {
    return 'Last seen $date';
  }

  @override
  String get linkDesktopDeviceNeverSeen => 'Not connected yet';

  @override
  String get linkDesktopSubsonicApp => 'Subsonic app';

  @override
  String get linkDesktopRevoke => 'Remove';

  @override
  String linkDesktopRevokeTitle(String name) {
    return 'Remove $name?';
  }

  @override
  String get linkDesktopRevokeMessage =>
      'It has to pair again before it can connect to this computer.';

  @override
  String linkDesktopRevoked(String name) {
    return '$name removed';
  }

  @override
  String get linkDesktopSectionOtherApps => 'Other apps';

  @override
  String get linkDesktopAddSubsonicApp => 'Add another Subsonic app';

  @override
  String get linkDesktopAddSubsonicAppSubtitle =>
      'Create a key for a Subsonic player on another device';

  @override
  String get linkDesktopAppName => 'App name';

  @override
  String get linkDesktopCreateKey => 'Create key';

  @override
  String linkDesktopAppKeyTitle(String name) {
    return 'Connect $name';
  }

  @override
  String get linkDesktopAppKeyMessage =>
      'Enter these details in the app. The key is shown only now.';

  @override
  String get linkDesktopServerAddress => 'Server address';

  @override
  String get linkDesktopUsername => 'Username';

  @override
  String get linkDesktopApiKey => 'Password or API key';

  @override
  String linkDesktopCopy(String label) {
    return 'Copy $label';
  }

  @override
  String get linkDesktopPairInstructions =>
      'Open Toadplayer on your phone, choose this computer and enter this code.';

  @override
  String linkDesktopPairCheckCode(String code) {
    return 'Check that your phone shows security code $code.';
  }

  @override
  String linkDesktopPairExpires(String time) {
    return 'The code expires in $time';
  }

  @override
  String linkDesktopPaired(String name) {
    return 'Paired with $name';
  }

  @override
  String get linkDesktopPairExpired =>
      'The code expired. Pair again to get a new one.';

  @override
  String get linkDesktopPairAttempts =>
      'Too many wrong codes. Pair again to get a new one.';

  @override
  String get linkDesktopPairFailed => 'Could not start pairing';

  @override
  String get linkDesktopDevicesTitle => 'Phones';

  @override
  String get linkDesktopPhoneNothingPlaying => 'Nothing playing';

  @override
  String get linkDesktopContinueOnPhone => 'Continue on phone';

  @override
  String get linkDesktopOpenOnPhone => 'Open a link on phone';

  @override
  String linkDesktopOpenLinkTitle(String name) {
    return 'Open a link on $name';
  }

  @override
  String get linkDesktopOpenLinkLabel => 'Link';

  @override
  String get linkDesktopOpen => 'Open';

  @override
  String linkDesktopSentToPhone(String name) {
    return 'Sent to $name';
  }

  @override
  String get linkDesktopNotDelivered => 'The phone did not receive it';

  @override
  String get linkDesktopNothingToContinue =>
      'Nothing is playing on this computer';

  @override
  String linkTransferDesktopSendTo(String name) {
    return 'Send to $name';
  }

  @override
  String get linkTransferDesktopSaveHere => 'Save to this computer';

  @override
  String linkTransferDesktopSendingSong(String title, String name) {
    return 'Sending \"$title\" to $name';
  }

  @override
  String linkTransferDesktopSendingSongs(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sending $count songs to $name',
      one: 'Sending 1 song to $name',
    );
    return '$_temp0';
  }

  @override
  String linkTransferDesktopReceivingSong(String title, String name) {
    return 'Receiving \"$title\" from $name';
  }

  @override
  String linkTransferDesktopReceivingSongs(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Receiving $count songs from $name',
      one: 'Receiving 1 song from $name',
    );
    return '$_temp0';
  }

  @override
  String get linkTransferDesktopView => 'View';

  @override
  String get linkTransferDesktopNothingToSend =>
      'None of these songs can be sent right now';

  @override
  String get linkTransferDesktopNothingToSave =>
      'None of these songs can be saved right now';

  @override
  String get desktopScrollBack => 'Scroll back';

  @override
  String get desktopScrollForward => 'Scroll forward';

  @override
  String get settingsKeyboardShortcuts => 'Keyboard Shortcuts';

  @override
  String get settingsKeyboardShortcutsSubtitle =>
      'Keys for playback, navigation and panels';

  @override
  String get desktopShortcutsNavigation => 'Navigation';

  @override
  String get desktopShortcutDismiss => 'Close dialog or page';

  @override
  String get desktopShortcutForward => 'Forward';

  @override
  String get desktopShortcutToggleSidebar => 'Show or hide sidebar';

  @override
  String get linkSettingsTitle => 'Toadplayer on your computer';

  @override
  String get linkSettingsSubtitle =>
      'Play and control your computer\'s library';

  @override
  String get linkPageTitle => 'Computers';

  @override
  String get linkPageDescription =>
      'Pair with Toadplayer on your computer to play its library on this phone and control what it plays. Both devices need to be on the same network.';

  @override
  String get linkPairedSection => 'Paired computers';

  @override
  String get linkPhoneSection => 'This phone';

  @override
  String get linkShareSongsTitle => 'Show songs on the computer';

  @override
  String get linkShareSongsSubtitle =>
      'Songs on this phone appear in the computer\'s Library and play there while this phone is connected';

  @override
  String get linkFollowDesktopTitle => 'Follow the computer\'s playback';

  @override
  String get linkFollowDesktopSubtitle =>
      'When the computer starts playing, this phone shows and controls it';

  @override
  String get linkNearbySection => 'On this network';

  @override
  String get linkSearching => 'Looking for computers...';

  @override
  String get linkNoneFoundTitle => 'No computers found';

  @override
  String get linkNoneFound =>
      'Open Toadplayer on your computer and turn on Share with Toadplayer on your phone in its settings.';

  @override
  String get linkAddManually => 'Add by address';

  @override
  String get linkManualHost => 'Computer address';

  @override
  String get linkManualPort => 'Port';

  @override
  String get linkManualMessage =>
      'Toadplayer on your computer shows its address and port where you turn on sharing.';

  @override
  String get linkContinue => 'Continue';

  @override
  String get linkStateConnected => 'Connected';

  @override
  String get linkStateConnecting => 'Connecting...';

  @override
  String get linkStateDisconnected => 'Not connected';

  @override
  String get linkStateInactive => 'Tap to use this computer';

  @override
  String get linkActive => 'In use';

  @override
  String get linkForget => 'Forget';

  @override
  String linkForgetTitle(String name) {
    return 'Forget $name?';
  }

  @override
  String get linkForgetMessage =>
      'This phone stops connecting to it. You can pair again later.';

  @override
  String get linkForgetRemoveLibrary => 'Also remove its music from Library';

  @override
  String linkPinTitle(String name) {
    return 'Pair with $name';
  }

  @override
  String get linkPinMessage => 'Enter the 6-digit PIN shown on your computer.';

  @override
  String get linkPinField => 'PIN';

  @override
  String linkPinCode(String code) {
    return 'Your computer shows the code $code next to the PIN. Pair only if it matches.';
  }

  @override
  String get linkPinNotOpen =>
      'Pairing is not open yet. Start pairing in Toadplayer on your computer to show a PIN.';

  @override
  String get linkPair => 'Pair';

  @override
  String linkPaired(String name) {
    return 'Paired with $name. Its music is being added to Library.';
  }

  @override
  String get linkPairAgain => 'Pair again';

  @override
  String get linkTransfersTitle => 'Transfers';

  @override
  String get linkTransfersInProgress => 'In progress';

  @override
  String get linkTransfersFinished => 'Finished';

  @override
  String get linkTransfersClearFinished => 'Clear finished';

  @override
  String get linkTransfersEmptyTitle => 'No transfers yet';

  @override
  String get linkTransfersEmptyMessage =>
      'Send or save songs from a song\'s menu, an album or a selection.';

  @override
  String linkTransfersSending(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count songs',
      one: '1 song',
    );
    return 'Sending $_temp0 to $name';
  }

  @override
  String linkTransfersReceiving(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count songs',
      one: '1 song',
    );
    return 'Receiving $_temp0 from $name';
  }

  @override
  String linkTransfersSendingSong(String title, String name) {
    return 'Sending $title to $name';
  }

  @override
  String linkTransfersReceivingSong(String title, String name) {
    return 'Receiving $title from $name';
  }

  @override
  String linkTransfersSongsTo(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count songs',
      one: '1 song',
    );
    return '$_temp0 to $name';
  }

  @override
  String linkTransfersSongsFrom(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count songs',
      one: '1 song',
    );
    return '$_temp0 from $name';
  }

  @override
  String linkTransfersSongTo(String title, String name) {
    return '$title to $name';
  }

  @override
  String linkTransfersSongFrom(String title, String name) {
    return '$title from $name';
  }

  @override
  String linkTransfersPosition(int position, int total) {
    return '$position of $total';
  }

  @override
  String linkTransfersPercent(int percent) {
    return '$percent%';
  }

  @override
  String get linkTransfersWaiting => 'Waiting';

  @override
  String linkTransfersSavedCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saved',
    );
    return '$_temp0';
  }

  @override
  String linkTransfersAlreadyThereCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count already there',
    );
    return '$_temp0';
  }

  @override
  String linkTransfersFailedCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count failed',
    );
    return '$_temp0';
  }

  @override
  String linkTransfersStopped(int done, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      done,
      locale: localeName,
      other: 'Stopped after $done of $total',
      zero: 'Stopped',
    );
    return '$_temp0';
  }

  @override
  String get linkTransfersReasonDisconnected => 'Connection lost';

  @override
  String get linkTransfersReasonNoFolder => 'Choose a download folder first';

  @override
  String linkTransfersReasonNoFolderPeer(String name) {
    return '$name has no download folder';
  }

  @override
  String get linkTransfersReasonBusy => 'Busy, try again later';

  @override
  String get linkTransfersReasonError => 'Something went wrong';

  @override
  String get linkTransfersSongSaved => 'Saved';

  @override
  String get linkTransfersSongAlreadyThere => 'Already there';

  @override
  String get linkTransfersSongFailed => 'Failed';

  @override
  String get linkTransfersSongCopying => 'Copying';

  @override
  String get linkTransfersSongNotCopied => 'Not copied';

  @override
  String get linkTransfersStop => 'Stop transfer';

  @override
  String linkTransfersActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count transfers',
      one: '1 transfer',
    );
    return '$_temp0';
  }

  @override
  String linkTransfersFinishedCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count transfers finished',
      one: '1 transfer finished',
    );
    return '$_temp0';
  }

  @override
  String get linkErrorBadPin =>
      'That PIN is not right. Check the PIN on your computer and try again.';

  @override
  String get linkErrorPairingClosed =>
      'Pairing is not open on your computer. Start pairing there, then try again.';

  @override
  String get linkErrorTooManyAttempts =>
      'Too many attempts. Wait a moment, then try again.';

  @override
  String get linkErrorCertificateTitle => 'Computer not verified';

  @override
  String get linkErrorCertificate =>
      'The computer\'s security certificate does not match what it reported. Someone on this network may be intercepting the connection, so pairing stopped.';

  @override
  String get linkErrorIncompatible =>
      'This computer runs a Toadplayer version that cannot pair with this phone. Update Toadplayer on both devices.';

  @override
  String get linkErrorUnreachable =>
      'The computer could not be reached. Check that Toadplayer is open on it and that both devices are on the same network.';

  @override
  String get linkErrorTimeout =>
      'The computer did not answer in time. Try again.';

  @override
  String get linkErrorInvalidAddress =>
      'Enter a valid address and port, such as 192.168.1.20 and 47710.';

  @override
  String get linkErrorFailed => 'Pairing failed. Try again.';

  @override
  String get linkLocalNetworkTitle => 'Local network access needed';

  @override
  String get linkLocalNetworkMessage =>
      'Toadplayer needs local network access to find your computer and connect to it.';

  @override
  String get linkLocalNetworkAllow => 'Allow access';

  @override
  String get linkWifiOffTitle => 'Not on Wi-Fi';

  @override
  String get linkWifiOffMessage =>
      'Connect this phone to the same Wi-Fi network as your computer.';

  @override
  String linkIssueUnauthorized(String name) {
    return '$name no longer accepts this phone. Pair again to reconnect.';
  }

  @override
  String linkIssueCertificate(String name) {
    return '$name presented a different security certificate. Pair again only if you reinstalled or reset Toadplayer on that computer.';
  }

  @override
  String linkIssueIncompatible(String name) {
    return 'Update Toadplayer on this phone and on $name to connect.';
  }

  @override
  String get playlistEditOrder => 'Edit order';

  @override
  String get playlistEditOrderDescription =>
      'Drag a track by its handle, or touch and hold it, to move it.';

  @override
  String get playlistEditOrderSaved => 'Playlist order saved';

  @override
  String get collectionOrderSaved => 'Song order saved';

  @override
  String get collectionOrderChanged =>
      'This collection changed while editing. Please reorder it again.';

  @override
  String get collectionOrderSaveFailed =>
      'Could not save the song order. Try again.';

  @override
  String get playlistCreateEmpty => 'Empty playlist';

  @override
  String get playlistCreateEmptySubtitle => 'Add tracks later from any list';

  @override
  String get playlistCreateFromFolder => 'From a folder';

  @override
  String get playlistCreateFromFolderSubtitle =>
      'Every track in one folder of your Library';

  @override
  String get playlistImportFile => 'Import playlist file';

  @override
  String get playlistImportFileSubtitle =>
      'M3U, M3U8 or CSV, matched to files on this device';

  @override
  String get playlistFolderPickerTitle => 'Choose a folder';

  @override
  String get playlistFolderPickerEmptyTitle => 'No folders yet';

  @override
  String get playlistFolderPickerEmpty =>
      'No scanned tracks yet. Add a Library folder and scan it first.';

  @override
  String playlistCreatedWithTracks(String name, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tracks',
      one: '1 track',
    );
    return 'Created $name with $_temp0';
  }

  @override
  String playlistImportResult(int count, String name, int matched) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tracks',
      one: '1 track',
    );
    return 'Imported $_temp0 into $name, $matched matched to files on this device';
  }

  @override
  String get playlistImportNoTracks => 'No tracks found in this file';

  @override
  String get playlistImportFailed => 'Could not read this playlist file';

  @override
  String get recognizeTitle => 'Identify Song';

  @override
  String get recognizeSearchTooltip => 'Identify a song playing nearby';

  @override
  String get recognizeIdleTitle => 'What\'s playing?';

  @override
  String get recognizeIdleMessage =>
      'Hold your device near the music, then tap to listen.';

  @override
  String get recognizeStartListening => 'Start listening';

  @override
  String get recognizeServiceNote =>
      'A sound fingerprint is sent to Shazam to find the song. The recording stays on your device.';

  @override
  String get recognizeListening => 'Listening…';

  @override
  String get recognizeListeningMessage =>
      'Keep the music playing near your device.';

  @override
  String get recognizeSearching => 'Searching…';

  @override
  String get recognizeNoMatchTitle => 'No match found';

  @override
  String get recognizeNoMatchMessage =>
      'Try again closer to the music, or when it\'s louder.';

  @override
  String get recognizeTryAgain => 'Try Again';

  @override
  String get recognizeQuietTitle => 'Couldn\'t hear the music';

  @override
  String get recognizeQuietMessage => 'Move closer to the music and try again.';

  @override
  String get recognizeNetworkTitle => 'No connection';

  @override
  String get recognizeNetworkMessage =>
      'Check your internet connection and try again.';

  @override
  String get recognizeRateLimitedTitle => 'Too many tries';

  @override
  String get recognizeRateLimitedMessage => 'Wait a minute, then try again.';

  @override
  String get recognizeUnavailableTitle => 'Identification unavailable';

  @override
  String get recognizeUnavailableMessage =>
      'The recognition service didn\'t answer. Try again later.';

  @override
  String get recognizeMicrophoneTitle => 'Microphone unavailable';

  @override
  String get recognizeMicrophoneMessage =>
      'No microphone is available, or another app is using it.';

  @override
  String get recognizePermissionTitle => 'Microphone access is off';

  @override
  String get recognizePermissionMessage =>
      'Toadplayer uses the microphone only while you identify a song.';

  @override
  String get recognizePermissionAllow => 'Allow Microphone';

  @override
  String get recognizePlay => 'Play in Toadplayer';

  @override
  String get recognizeSearch => 'Search in Toadplayer';

  @override
  String get recognizeOpenInShazam => 'Open in Shazam';

  @override
  String get recognizeListenAgain => 'Listen Again';

  @override
  String get recognizeHistory => 'Recently Identified';

  @override
  String get recognizeClearHistory => 'Clear identified songs';

  @override
  String get recognizeClearHistoryMessage =>
      'Remove every song from this list?';

  @override
  String get collectionSuggestionsTitle => 'Suggested songs';

  @override
  String get collectionSuggestionsRelated => 'Based on the songs above';

  @override
  String get collectionSuggestionsByArtists => 'More from these artists';

  @override
  String get collectionSuggestionsRefresh => 'Suggest other songs';

  @override
  String get lastfmDescription =>
      'Track your listening and show what is playing on Last.fm.';

  @override
  String get lastfmConnect => 'Connect Last.fm';

  @override
  String get lastfmConnecting => 'Connecting to Last.fm...';

  @override
  String get lastfmFinishConnection => 'Finish connecting';

  @override
  String get lastfmAuthorizeHelp =>
      'Approve access in your browser, then return here and choose Finish connecting.';

  @override
  String get lastfmScrobbling => 'Scrobbling';

  @override
  String get lastfmScrobblingDescription =>
      'Send songs you listen to in the built-in player to Last.fm.';

  @override
  String get lastfmNowPlaying => 'Show Now Playing';

  @override
  String get lastfmNowPlayingDescription =>
      'Show the current song on your Last.fm profile.';

  @override
  String get lastfmDisconnect => 'Disconnect Last.fm';

  @override
  String get lastfmConnectionError =>
      'Last.fm could not be reached. Saved scrobbles will be retried automatically.';

  @override
  String get lastfmStorageError =>
      'Last.fm settings could not be saved. Check access to this device\'s secure storage and try again.';

  @override
  String get lastfmAuthorizationPending =>
      'Access has not been approved yet. Finish authorizing Toadplayer in your browser.';

  @override
  String get lastfmAuthorizationExpired =>
      'This connection request expired. Connect again to continue.';

  @override
  String get lastfmReauthenticate =>
      'Your Last.fm connection expired. Connect again to resume scrobbling.';

  @override
  String get lastfmUnavailable => 'Last.fm is unavailable in this build.';

  @override
  String get lastfmRejected =>
      'Last.fm rejected a scrobble. Check the song\'s title and artist tags.';

  @override
  String lastfmPending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count scrobbles waiting to sync',
      one: '1 scrobble waiting to sync',
    );
    return '$_temp0';
  }

  @override
  String get audioOutputSystem => 'This device and Bluetooth';

  @override
  String get audioOutputCast => 'Cast to TV';

  @override
  String get audioOutputCastDescription =>
      'Google Cast devices on the same Wi-Fi network';

  @override
  String get audioOutputStopCasting => 'Stop casting';

  @override
  String get audioOutputCastUnavailable =>
      'Unable to open Google Cast. Check Google Play services and local network access.';

  @override
  String get audioOutputAirPlay => 'AirPlay and Bluetooth';

  @override
  String get audioOutputCastSearching => 'Looking for Google Cast devices…';

  @override
  String audioOutputCastConnectFailed(String device) {
    return 'Could not connect to $device';
  }

  @override
  String get collectionSuggestionsAddHere => 'Add to this playlist';

  @override
  String get sectionExistingDownloads => 'Existing Files';

  @override
  String get reorganizeLibraryTitle => 'Apply Rules to Existing Files';

  @override
  String get reorganizeLibrarySubtitle =>
      'Move and rename downloads and Local Library files in your download folder so they follow the folder and filename rules above';

  @override
  String get reorganizeLibraryScanning => 'Checking your files…';

  @override
  String get reorganizeLibraryBusy =>
      'Wait for active downloads to finish before reorganizing files';

  @override
  String get reorganizeLibraryNothingTitle => 'Already Organized';

  @override
  String reorganizeLibraryNothingMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'All $count tracks in your download folder already follow the current rules.',
      one:
          'The track in your download folder already follows the current rules.',
      zero:
          'There are no tracks in your download folder to reorganize. Files Toadplayer did not download are included once the folder is added and scanned in Local Library.',
    );
    return '$_temp0';
  }

  @override
  String reorganizeLibraryConfirmTitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'files',
      one: 'file',
    );
    return 'Reorganize $count $_temp0?';
  }

  @override
  String get reorganizeLibraryConfirmMessage =>
      'These tracks will be moved or renamed to match your current Files settings, using their tags. Lyrics (.lrc) files next to them move too, and folders left empty are removed.';

  @override
  String get reorganizeLibraryExamples => 'For example:';

  @override
  String reorganizeLibraryMoreChanges(int count) {
    return '…and $count more';
  }

  @override
  String reorganizeLibraryAlreadyOrganized(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks already match',
      one: 'track already matches',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'they are',
      one: 'it is',
    );
    return '$count $_temp0 and will stay where $_temp1.';
  }

  @override
  String reorganizeLibraryOutsideFolder(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks are',
      one: 'track is',
    );
    return '$count $_temp0 stored outside the current download folder and will be left alone.';
  }

  @override
  String reorganizeLibraryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'files',
      one: 'file',
    );
    return '$count $_temp0 could not be found and will be skipped.';
  }

  @override
  String reorganizeLibraryUntagged(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'files have',
      one: 'file has',
    );
    return '$count $_temp0 no artist tag and will be left alone.';
  }

  @override
  String get reorganizeLibraryScanHint =>
      'Files Toadplayer did not download are only included after their folder is added and scanned in Local Library.';

  @override
  String get reorganizeLibraryKeepsPlaylistFolders =>
      'Your folder rule uses the playlist name, which Toadplayer doesn\'t keep for past downloads, so files stay in their current folder and are only renamed.';

  @override
  String get reorganizeLibraryDropsPlaylistFolders =>
      'Toadplayer doesn\'t keep which playlist a past download came from, so tracks inside playlist folders will be moved out of them.';

  @override
  String get reorganizeLibrarySafNote =>
      'Your download folder was picked through Android\'s folder picker, so each file is copied to its new place and then removed. This can take a while for a large library.';

  @override
  String get reorganizeLibraryConfirmAction => 'Move Files';

  @override
  String get reorganizeLibraryMoving => 'Moving files';

  @override
  String reorganizeLibraryDone(int moved, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: 'files',
      one: 'file',
    );
    return 'Moved $moved of $total $_temp0';
  }

  @override
  String reorganizeLibraryDoneWithFailures(int moved, int total, int failed) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: 'files',
      one: 'file',
    );
    return 'Moved $moved of $total $_temp0 · $failed failed';
  }

  @override
  String get offlineSave => 'Save offline';

  @override
  String get offlineOnDevice => 'On this device';

  @override
  String get offlineOnIPhone => 'On iPhone';

  @override
  String get offlineOnPhone => 'On phone';

  @override
  String get offlineServerOnly => 'Server only';

  @override
  String get offlineServerAndDevice => 'Server + device';

  @override
  String get offlineDeviceOnly => 'Device only';

  @override
  String get offlineRemove => 'Remove offline copy';

  @override
  String get offlineRemoveMessage =>
      'Remove the offline copy from this device? The server file will be kept.';

  @override
  String get offlineDeleteServer => 'Delete server copy';

  @override
  String get offlineServerReadOnly =>
      'This server connection does not support deleting files.';

  @override
  String get offlineDeleteServerMessage =>
      'Delete the original file from the server? The offline copy on this device will be kept.';

  @override
  String get offlineSaving => 'Saving offline';

  @override
  String offlineResult(int saved, int skipped, int failed) {
    return 'Saved $saved, already available $skipped, failed $failed';
  }

  @override
  String get offlineFailed =>
      'Couldn\'t save the offline copy. Check the server connection and download folder access.';

  @override
  String get offlineNoSongs => 'No network Library songs in this selection.';

  @override
  String get offlineCopyUnavailable =>
      'The offline copy is unavailable. Save it again before deleting the server copy.';

  @override
  String get offlinePlayingLocal => 'Playing from this device';

  @override
  String offlineStreaming(String server) {
    return 'Streaming from $server';
  }

  @override
  String get openAudio => 'Open audio';

  @override
  String get openAudioFiles => 'Open audio files';

  @override
  String get openAudioFolder => 'Play folder';

  @override
  String reorganizeLibraryFailed(String error) {
    return 'Couldn\'t reorganize your files: $error';
  }

  @override
  String get lyricsEditTitle => 'Edit lyrics';

  @override
  String get lyricsEditWrite => 'Write lyrics';

  @override
  String get lyricsEditSetTime => 'Set time';

  @override
  String get lyricsEditSetTimeTooltip =>
      'Give the selected line the current position';

  @override
  String get lyricsEditEarlier => '−0.1';

  @override
  String get lyricsEditLater => '+0.1';

  @override
  String get lyricsEditEarlierTooltip => 'Move 0.1 s earlier';

  @override
  String get lyricsEditLaterTooltip => 'Move 0.1 s later';

  @override
  String get lyricsEditNoTime => 'No time';

  @override
  String lyricsEditPlayFrom(String time) {
    return 'Play from $time';
  }

  @override
  String get lyricsEditOutOfOrder => 'Earlier than the line before it';

  @override
  String get lyricsEditLineHint => 'Lyric line';

  @override
  String get lyricsEditAddLine => 'Add line';

  @override
  String get lyricsEditInsertBelow => 'Insert line below';

  @override
  String get lyricsEditRemoveTime => 'Remove time';

  @override
  String get lyricsEditDeleteLine => 'Delete line';

  @override
  String get lyricsEditLineActions => 'Line actions';

  @override
  String get lyricsEditSaved => 'Lyrics saved';

  @override
  String get lyricsEditSaveFailed => 'Couldn\'t save the lyrics to this file';

  @override
  String get lyricsEditReadOnly =>
      'Lyrics can\'t be saved to this song\'s file';
}

/// The translations for Spanish Castilian, as used in Spain (`es_ES`).
class AppLocalizationsEsEs extends AppLocalizationsEs {
  AppLocalizationsEsEs() : super('es_ES');

  @override
  String get extensionsUnsecuredStorage => 'Use unsecured extension storage';

  @override
  String get extensionsUnsecuredStorageDescription =>
      'Run extensions without a Linux keyring. The key is saved locally, so anyone with access to your app files can read extension credentials. Off uses the system keyring.';

  @override
  String get extensionsStorageKeyringRequired =>
      'Existing extension data needs its original key. Unlock the system keyring once, then enable unsecured storage again. Your data has been preserved.';

  @override
  String get extensionsStorageKeyConflict =>
      'The local and system keyring keys differ. Storage was not changed and both keys were preserved.';

  @override
  String get extensionsStorageKeyringUnavailable =>
      'The system keyring is unavailable or locked. Start or unlock it before switching to secure storage. Your local key has been preserved.';

  @override
  String linkFileActionOn(String action, String name) {
    return '$action on $name';
  }

  @override
  String linkFileActionsDescription(String name) {
    return 'Changes apply to music files on $name. Accepted work continues if this phone disconnects.';
  }

  @override
  String linkFileDeleteConfirm(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'music files',
      one: 'music file',
    );
    return 'Delete $count $_temp0 from $name? This removes the files from that computer\'s storage.';
  }

  @override
  String get linkFileJobs => 'File changes';

  @override
  String linkFileJobsSubtitle(String name) {
    return 'Edits, conversions and deletions on $name';
  }

  @override
  String get linkFileJobsEmpty => 'No file changes yet';

  @override
  String get linkFileJobsEmptyMessage =>
      'Edits, conversions and deletions you start on the computer\'s songs from this phone appear here.';

  @override
  String get linkDesktopFileJobsSubtitle =>
      'Changes requested from your phones';

  @override
  String get linkDesktopFileJobsEmptyMessage =>
      'Edits, conversions and deletions requested from your phones appear here.';

  @override
  String linkFileJobRequestedBy(String name) {
    return 'From $name';
  }

  @override
  String get linkFileJobsView => 'View';

  @override
  String get linkFileJobsUnsupported =>
      'Update Toadplayer on your computer to manage its music files from this phone.';

  @override
  String get linkFileSelectionOneDevice =>
      'Select songs from one linked computer at a time (up to 100 songs).';

  @override
  String linkFileJobProgress(int finished, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: 'songs',
      one: 'song',
    );
    return '$finished of $total $_temp0';
  }

  @override
  String linkFileJobFailedCount(int count) {
    return '$count failed';
  }

  @override
  String linkFileJobFinished(String action, String name) {
    return '$action finished on $name';
  }

  @override
  String get linkFileDeleting => 'Deleting...';

  @override
  String get linkFileReading => 'Reading tags...';

  @override
  String get linkFileSavingCover => 'Saving cover art...';

  @override
  String get linkFileCancelHint => 'Stop after the current song';

  @override
  String get linkFileJobCancelled => 'Stopped';

  @override
  String get linkFileJobQueued => 'Queued';

  @override
  String get linkFileJobCompleted => 'Finished';

  @override
  String get linkFileChanged =>
      'The file changed since the preview. Preview it again before saving.';

  @override
  String get linkFileOperationFailed =>
      'The operation could not be completed. Check the computer\'s logs for details.';

  @override
  String get trackBpm => 'BPM';

  @override
  String get trackMood => 'Estado de ánimo';

  @override
  String get subsonicAddToLibrary => 'Añadir servidor a la Biblioteca';

  @override
  String get subsonicLibraryAdded => 'Servidor añadido a la Biblioteca';

  @override
  String get subsonicLibraryDescription =>
      'Sincroniza el catálogo del servidor y las carátulas con la Biblioteca. La música permanece en tu servidor. Vuelve a escanearlo en los ajustes de Biblioteca local para actualizar el catálogo.';

  @override
  String get subsonicAuthentication => 'Autenticación';

  @override
  String get subsonicToken => 'Salted token';

  @override
  String get subsonicPasswordAuth => 'Contraseña';

  @override
  String get subsonicApiKey => 'API key';

  @override
  String get subsonicUsername => 'Nombre de usuario';

  @override
  String get subsonicPassword => 'Contraseña';

  @override
  String get subsonicSearch => 'Buscar música del servidor...';

  @override
  String get subsonicMoreAlbums => 'Más álbumes';

  @override
  String get subsonicErrorApi =>
      'El servidor no admite esta versión de la API ni este método de autenticación. Comprueba los ajustes del servidor y el método de inicio de sesión seleccionado.';

  @override
  String get networkDownloadDestination => 'Destino de descarga en red';

  @override
  String get networkUseForDownloads => 'Descargar en esta carpeta';

  @override
  String get networkDownloadSelected => 'Destino de descarga seleccionado';

  @override
  String get networkUseLocalDownloads => 'Usar la carpeta de descargas local';

  @override
  String get networkDownloadAccessFailed =>
      'No se pudo escribir en esta carpeta.';

  @override
  String get networkUploading => 'Subir archivos al almacenamiento en red';

  @override
  String get networkDownloadDescription =>
      'Prepara las canciones en este dispositivo y luego súbelas a tu NAS. Mantén la aplicación abierta hasta que termine la subida. La opción «Reintentar» reutiliza el audio preparado. Los archivos existentes se conservan; las nuevas descargas con el mismo nombre reciben un sufijo numérico.';

  @override
  String get networkAddToLibrary => 'Agregar carpeta a la biblioteca';

  @override
  String get networkLibraryAdded => 'Carpeta agregada a la biblioteca';

  @override
  String get networkLibraryDescription =>
      'Escanea esta carpeta y sus subcarpetas. La música se queda en tu servidor; los metadatos y las carátulas se guardan en este dispositivo. Puedes administrarla o volver a escanearla en la configuración de la Biblioteca local.';

  @override
  String get networkStorage => 'Almacenamiento en red';

  @override
  String get networkErrorUnreachable =>
      'No se pudo establecer conexión con el servidor. Verifica que este teléfono pueda acceder a su red y que el servicio para compartir archivos esté en funcionamiento. Para SMB, el puerto 445 debe estar accesible.';

  @override
  String get networkErrorTimeout =>
      'El servidor no respondió a tiempo. Revisa la conexión e inténtalo de nuevo.';

  @override
  String get networkErrorAuthentication =>
      'El servidor rechazó el inicio de sesión. Verifica el nombre de usuario, la contraseña y el dominio. Deja el campo del dominio en blanco, a menos que tu servidor lo requiera.';

  @override
  String get networkErrorPermission =>
      'Esta cuenta no tiene permiso para abrir este recurso compartido o esta carpeta. Verifica sus permisos de lectura en el servidor.';

  @override
  String get networkErrorLocalPermission =>
      'No se permite el acceso a la red local. Permite el acceso a Dispositivos cercanos para Toadplayer en los ajustes de la aplicación de Android y vuelve a intentarlo.';

  @override
  String get networkErrorShare =>
      'No se encontró el recurso compartido ni la carpeta. Para SMB, utiliza el nombre de la carpeta compartida del servidor después de su dirección, por ejemplo, smb://server/Music/.';

  @override
  String get networkErrorProtocol =>
      'El servidor y este cliente SMB no pudieron ponerse de acuerdo sobre un protocolo compatible. Habilita SMB2 o SMB3 en el servidor. SMB1 no es compatible.';

  @override
  String get networkErrorAddress =>
      'Verifica la dirección del servidor. Usa smb://server/share/ para SMB, o una dirección del tipo http:// o https:// address for WebDAV and HTTP.';

  @override
  String get networkConnections => 'Conexiones guardadas';

  @override
  String get networkServer => 'Servidor';

  @override
  String get networkCredentials => 'Iniciar sesión (opcional)';

  @override
  String get networkRefresh => 'Actualizar';

  @override
  String get networkStorageDescription =>
      'Conéctate a tu NAS o servidor de música y explora sus carpetas. Tus datos de inicio de sesión se guardan de manera segura en este dispositivo.';

  @override
  String get networkAddConnection => 'Agregar conexión';

  @override
  String get networkEditConnection => 'Editar conexión';

  @override
  String get networkConnectionName => 'Nombre';

  @override
  String get networkAddress => 'Servidor o URL de audio';

  @override
  String get networkProtocol => 'Protocolo';

  @override
  String get networkUsername => 'Nombre de usuario (opcional)';

  @override
  String get networkPassword => 'Contraseña (opcional)';

  @override
  String get networkDomain => 'Dominio (opcional)';

  @override
  String get networkConnectSave => 'Conéctate y guarda';

  @override
  String get networkErrorCertificate =>
      'No se pudo verificar el certificado HTTPS del servidor. Edita esta conexión para revisar el certificado y marcarlo como confiable, o revisa la configuración HTTPS del servidor.';

  @override
  String get networkCertificatePrompt =>
      'Este servidor utiliza un certificado HTTPS no confiable. Los enrutadores y los dispositivos NAS suelen utilizar certificados autofirmados. Verifica la dirección del servidor y la huella digital SHA-256 antes de considerarlo confiable. La confianza se aplica únicamente a este certificado en este servidor; si se cambia el certificado, será necesario volver a aprobarlo.';

  @override
  String get networkTrustCertificate => 'Certificado de confianza y reintento';

  @override
  String get networkRemoveConnection => 'Desconectar';

  @override
  String get networkNoFiles =>
      'No se encontraron archivos ni carpetas de música compatibles.';

  @override
  String get networkConnectionError =>
      'No se pudo acceder al origen de red. Revisa la dirección del servidor, las credenciales y la conexión, y vuelve a intentarlo.';

  @override
  String get extensionAccountTitle => 'Cuenta de extensión';

  @override
  String get extensionAccountInvalidForm =>
      'La extensión devolvió un formulario de cuenta no válido.';

  @override
  String get extensionAccountRestartLogin =>
      'Inicia sesión de nuevo en tu cuenta para continuar.';

  @override
  String get extensionAccountRequiredValue => 'Ingresa un valor.';

  @override
  String get extensionAccountInvalidNumber => 'Ingresa un número válido.';

  @override
  String get settingsPlaybackSubtitle =>
      'Reproductor, volumen, AutoMix y salida de audio';

  @override
  String get sectionPlayer => 'Reproductor';

  @override
  String get sectionVolumeAndTransitions => 'Volumen y transiciones';

  @override
  String get sectionAudioOutput => 'Salida de audio';

  @override
  String get usbBitPerfect => 'Audio de alta resolución y sin pérdida de bits';

  @override
  String get usbBitPerfectDescription =>
      'Mantén la precisión de la fuente en salidas compatibles. Elige a continuación entre USB directo o AAudio exclusivo; de lo contrario, la salida USB de Android requiere Android 14 o una versión posterior. Se aplica a partir de la siguiente pista, sin AutoMix ni normalización. Es posible que el volumen del sistema no controle la salida USB directa.';

  @override
  String get usbHardwareVolume => 'Volumen del hardware del DAC';

  @override
  String get usbVolumeWarningTitle => 'Revisa el volumen de audio';

  @override
  String get usbVolumeWarning =>
      'El audio directo por USB puede ser mucho más alto que la reproducción normal, y es posible que los botones de volumen del teléfono no lo controlen. Baja el volumen de tu DAC o amplificador antes de comenzar. Cuando sea compatible, Toadplayer configura el DAC a un máximo de −40 dB al conectarse; esto no garantiza un nivel de escucha seguro en todos los amplificadores o audífonos.';

  @override
  String get usbVolumeAccept => 'Entiendo';

  @override
  String get usbVolumeUnavailable =>
      'La reproducción está en pausa porque este DAC no cuenta con un control de volumen de hardware verificado. Baja el volumen del DAC o del amplificador; luego, si es necesario, activa la salida de volumen fijo y vuelve a seleccionar la pista.';

  @override
  String get usbFixedVolume => 'Permitir salida USB de volumen fijo';

  @override
  String get usbFixedVolumeDescription =>
      'Para DAC que no tengan un control de volumen accesible desde la app. Mantén esta opción desactivada para audífonos USB que no cuenten con su propio control de volumen. Se aplica a partir de la siguiente pista.';

  @override
  String get usbFixedVolumeWarning =>
      'La aplicación no puede bajar el volumen en esta salida. Es posible que el audio comience al máximo y que el control deslizante de volumen del teléfono no sirva de nada. Solo continúe después de bajar el volumen en su DAC o amplificador externo. No active esta opción para audífonos que no cuenten con su propio control de volumen.';

  @override
  String get dapExclusive => 'DAP de alta resolución (exclusivo de AAudio)';

  @override
  String get dapExclusiveDescription =>
      'Utiliza Oboe/AAudio con la frecuencia y precisión originales de la pista para archivos FLAC/WAV PCM. Requiere Android 8.1 o posterior y hardware compatible. La opción de acceso exclusivo está marcada; los formatos no disponibles se reproducen de manera normal. El formato DSD requiere el controlador USB directo. Se aplica a partir de la siguiente pista.';

  @override
  String get dapExclusiveUnavailable =>
      'El acceso exclusivo de AAudio no está disponible para esta pista y la salida actual. Se está utilizando la reproducción normal. Si usas un DAC USB, prueba con el controlador USB directo.';

  @override
  String get exclusiveOutputWindows => 'WASAPI exclusive mode';

  @override
  String get exclusiveOutputMacos => 'Exclusive access (hog mode)';

  @override
  String get exclusiveOutputLinux => 'Direct ALSA output';

  @override
  String get exclusiveOutputDescriptionWindows =>
      'Bypass the Windows mixer so the output follows each track\'s sample rate and bit depth. Other apps cannot play sound while Toadplayer holds the device. AutoMix and previews are off in this mode. For bit-perfect output, keep the volume at 100% with the equalizer and normalization off.';

  @override
  String get exclusiveOutputDescriptionMacos =>
      'Hold the output device for Toadplayer alone and switch it to each track\'s sample rate and bit depth, so Core Audio does not resample. Other apps cannot play sound while Toadplayer holds the device. AutoMix and previews are off in this mode. For bit-perfect output, keep the volume at 100% with the equalizer and normalization off.';

  @override
  String get exclusiveOutputDescriptionLinux =>
      'Play straight to an ALSA hardware device, bypassing PipeWire or PulseAudio, so the output follows each track\'s sample rate and bit depth. The device must be free: the sound server releases an idle card after a few seconds, or set its profile to Off. AutoMix and previews are off in this mode.';

  @override
  String get exclusiveOutputPending => 'Takes the device when a track plays.';

  @override
  String get exclusiveOutputActive => 'Playing in exclusive mode.';

  @override
  String get exclusiveOutputUnavailableWindows =>
      'The device refused exclusive access, so this track plays through the Windows mixer. Close other apps using the device, or allow exclusive control in the device\'s Windows sound properties.';

  @override
  String get exclusiveOutputUnavailableMacos =>
      'Another app holds the output device, so this track plays through the system mixer.';

  @override
  String get exclusiveOutputUnavailableLinux =>
      'The ALSA device is busy, usually held by the sound server, so this track plays through it. Set the card\'s profile to Off in the sound settings, or choose another device.';

  @override
  String get exclusiveOutputDevice => 'Output device';

  @override
  String get exclusiveOutputDeviceFirst => 'First sound card';

  @override
  String get exclusiveOutputNoDevices => 'No ALSA playback devices found';

  @override
  String get usbDirect => 'Controlador USB directo';

  @override
  String get usbDirectDescription =>
      'Utiliza audio USB exclusivo para FLAC/WAV, DSF/DFF y WavPack DSD, con permiso USB de Android. El DSD nativo requiere un DAC compatible y reconocido. Los demás formatos PCM se reproducen de manera normal. Se aplica a partir de la siguiente pista.';

  @override
  String get usbDsdOverPcm => 'DSD sobre PCM (DoP)';

  @override
  String get usbDsdOverPcmDescription =>
      'Actívalo solo si tu DAC es compatible explícitamente con DoP. Envía DSF/DFF y WavPack DSD dentro de una señal portadora PCM cuando no se dispone de DSD nativo. Un dispositivo incompatible podría reproducir ruido; déjalo desactivado para audífonos USB comunes.';

  @override
  String get usbDsdUnsupported =>
      'No se admite este formato DSD ni este DAC conectado. Se detuvo la reproducción.';

  @override
  String get usbPermissionDenied =>
      'No se concedió el permiso USB. Se está utilizando la reproducción normal.';

  @override
  String get usbBitPerfectPending =>
      'A la espera de la próxima pista y de una salida USB compatible.';

  @override
  String get usbBitPerfectNoDevice =>
      'No hay ningún DAC USB conectado. Se está utilizando la salida de audio normal.';

  @override
  String get usbBitPerfectFallback =>
      'Este dispositivo o formato de audio no admite la salida con fidelidad bit a bit. Se está utilizando la reproducción normal.';

  @override
  String get usbBitPerfectRouteChanged =>
      'La conexión de audio USB ha cambiado. La reproducción se ha detenido; selecciona una pista para volver a conectarte.';

  @override
  String get upgradeIntroContinue => 'Continuar';

  @override
  String get cacheMotionArtwork => 'Cubiertas de movimiento sin conexión';

  @override
  String get cacheMotionArtworkDesc =>
      'Los videos de los álbumes se guardan junto con las descargas. Al eliminarlos, se conservan tus archivos de música y las portadas estáticas.';

  @override
  String get nowPlayingVolume => 'Volúmen';

  @override
  String get appearanceStyle => 'Estilo de la aplicación';

  @override
  String get appearanceAccentRed => 'Rojo (predeterminado)';

  @override
  String get appearanceAccentOrange => 'Naranja';

  @override
  String get appearanceAccentGreen => 'Verde';

  @override
  String get appearanceAccentTeal => 'Verde azulado';

  @override
  String get appearanceAccentBlue => 'Azul';

  @override
  String get appearanceAccentPurple => 'Morado';

  @override
  String get appearanceAccentPink => 'Rosado';

  @override
  String get appearanceGlassClarity => 'Transparencia del vidrio';

  @override
  String get appearanceGlassOutlines => 'Contornos de vidrio';

  @override
  String get appearanceGlassOutlinesSubtitle =>
      'Mostrar bordes decorativos alrededor del cristal de Toadplayer. Si desactivas esta opción, se mantendrán el desenfoque y la refracción.';

  @override
  String get appearanceGlassClaritySubtitle =>
      'Ajusta la transparencia en los menús y la navegación de Toadplayer. Se conserva el contraste del texto.';

  @override
  String get appearanceGlassTinted => 'Tintado';

  @override
  String get appearanceGlassClear => 'Borrar';

  @override
  String get appearanceGlassClearPerformance =>
      'El vidrio muy transparente puede consumir más energía y dar una sensación menos fluida en dispositivos más antiguos. Reduce la claridad si es necesario.';

  @override
  String appearanceGlassClarityBlurOff(String setting) {
    return 'El vidrio se ve opaco en este dispositivo. Activa “$setting” para ajustar la claridad.';
  }

  @override
  String appearanceGlassClarityHighContrast(String setting) {
    return 'El sistema solicita un mayor contraste, por lo que el vidrio permanece opaco. Activa «$setting» para usar el efecto de vidrio de todos modos; se conserva el contraste del texto.';
  }

  @override
  String get appearanceUseSystemFont => 'Usar la fuente del sistema';

  @override
  String get appearanceUseSystemFontSubtitle =>
      'Utiliza la fuente predeterminada de tu dispositivo para el texto de la aplicación.';

  @override
  String get appName => 'Toadplayer';

  @override
  String get navHome => 'Inicio';

  @override
  String get navLibrary => 'Biblioteca';

  @override
  String get navSettings => 'Ajustes';

  @override
  String get navStore => 'Repositorio';

  @override
  String get homeTitle => 'Inicio';

  @override
  String get homeEmptyTitle => 'Aún no hay proveedores de búsqueda';

  @override
  String get homeEmptySubtitle => 'Instalar una extensión para continuar.';

  @override
  String get homeRecent => 'Recientes';

  @override
  String get searchRecentlySearched => 'Búsquedas recientes';

  @override
  String get searchLibraryPrompt => 'Buscar en tu biblioteca';

  @override
  String get searchBrowse => 'Explorar';

  @override
  String get historyFilterAll => 'Todo';

  @override
  String get historyFilterAlbums => 'Álbumes';

  @override
  String get historyFilterSingles => 'Pistas';

  @override
  String get libraryRecentlyAdded => 'Agregados recientemente';

  @override
  String get libraryDownloads => 'Descargas';

  @override
  String get libraryNoActiveDownloads => 'No hay descargas activas';

  @override
  String get librarySearchHint => 'Busca en tu biblioteca';

  @override
  String get libraryEmptyCollection => 'Tu música aparecerá aquí';

  @override
  String get libraryFolders => 'Folders';

  @override
  String libraryFolderCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count folders',
      one: '1 folder',
    );
    return '$_temp0';
  }

  @override
  String get libraryFoldersEmptyTitle => 'No folders yet';

  @override
  String get libraryFoldersEmptyMessage =>
      'Download songs or add a music folder in Local Library settings to browse them by folder.';

  @override
  String get libraryFolderMissing => 'This folder is no longer in your Library';

  @override
  String get libraryFoldersLoadFailed => 'Couldn\'t read your folders';

  @override
  String get settingsTitle => 'Ajustes';

  @override
  String get settingsDownload => 'Descargar';

  @override
  String get settingsAppearance => 'Apariencia';

  @override
  String get settingsExtensions => 'Extensiones';

  @override
  String get settingsAbout => 'Acerca de';

  @override
  String get downloadTitle => 'Descargar';

  @override
  String get downloadAskQualitySubtitle =>
      'Mostrar selector de calidad para cada descarga';

  @override
  String get downloadFilenameFormat => 'Formato del nombre del archivo';

  @override
  String get downloadSingleFilenameFormat =>
      'Formato del nombre de archivo para pistas individuales';

  @override
  String get downloadSingleFilenameFormatDescription =>
      'Patrón de nombre de archivo para sencillos y EP. Utiliza las mismas etiquetas que el formato para álbumes.';

  @override
  String get downloadFolderOrganization => 'Organización de carpetas';

  @override
  String get downloadFolderTemplate => 'Estructura de carpetas personalizada';

  @override
  String get downloadFolderTemplateDescription =>
      'Usa etiquetas de nombre y / para las subcarpetas. Al guardar, se reemplaza el diseño predefinido de álbumes y sencillos. Los nombres de carpeta vacíos usan Desconocido.';

  @override
  String get folderOrganizationCustom => 'Plantilla personalizada';

  @override
  String get folderTemplateInvalid =>
      'Introduce una ruta de carpeta relativa con las etiquetas admitidas. Las carpetas vacías, . y .. no están permitidas.';

  @override
  String get folderTemplatePreview => 'Ejemplo de ruta de carpeta';

  @override
  String get folderTemplatePreviewFailed => 'Vista previa no disponible';

  @override
  String get appearanceTitle => 'Apariencia';

  @override
  String get appearanceThemeSystem => 'Sistema';

  @override
  String get appearanceThemeLight => 'Claro';

  @override
  String get appearanceThemeDark => 'Oscuro';

  @override
  String get appearanceDynamicColor => 'Color Dinámico';

  @override
  String get appearanceDynamicColorSubtitle =>
      'Usar colores de tu fondo de pantalla';

  @override
  String get appearanceHistoryView => 'Vista del Historial';

  @override
  String get appearanceHistoryViewList => 'Lista';

  @override
  String get appearanceHistoryViewGrid => 'Cuadrícula';

  @override
  String get optionsPrimaryProvider => 'Proveedor Principal';

  @override
  String get optionsPrimaryProviderSubtitle =>
      'Servicio utilizado para buscar por nombre de pista o álbum';

  @override
  String optionsUsingExtension(String extensionName) {
    return 'Usando la extensión: $extensionName';
  }

  @override
  String get optionsDefaultSearchTab => 'Pestaña de búsqueda predeterminada';

  @override
  String get optionsDefaultSearchTabSubtitle =>
      'Elige qué pestaña se abre primero al mostrar nuevos resultados de búsqueda.';

  @override
  String get optionsAutoFallback => 'Cambio automático';

  @override
  String get optionsAutoFallbackSubtitle =>
      'Probar otros servicios si la descarga falla';

  @override
  String get optionsEmbedLyrics => 'Incrustar letras';

  @override
  String get optionsEmbedLyricsSubtitle =>
      'Guarda las letras sincronizadas junto a las pistas descargadas';

  @override
  String get optionsReplayGain => 'ReplayGain';

  @override
  String get optionsReplayGainSubtitleOn =>
      'Analizar la sonoridad e incrustar etiquetas ReplayGain (EBU R128)';

  @override
  String get optionsReplayGainSubtitleOff =>
      'Desactivado: no hay etiquetas de normalización de sonoridad';

  @override
  String get trackReplayGain => 'Reescanear ReplayGain';

  @override
  String get trackReplayGainScanning => 'Analizando el nivel de volumen...';

  @override
  String get trackReplayGainSuccess => 'Etiquetas ReplayGain agregadas';

  @override
  String get trackReplayGainFailed =>
      'No se pudieron agregar las etiquetas ReplayGain';

  @override
  String get trackRemoveReplayGain => 'Eliminar ReplayGain';

  @override
  String get trackRemoveReplayGainSuccess =>
      'Se han eliminado las etiquetas de ReplayGain';

  @override
  String get trackRemoveReplayGainFailed =>
      'No se pudieron eliminar las etiquetas de ReplayGain';

  @override
  String get replayGainRemoving => 'Eliminando ReplayGain...';

  @override
  String replayGainRemoveConfirmMessage(int count) {
    return '¿Deseas eliminar las etiquetas ReplayGain de las $count pistas? Se conservarán el audio, las imágenes y otros metadatos.';
  }

  @override
  String selectionRemoveReplayGainCount(int count) {
    return 'Eliminar RG ($count)';
  }

  @override
  String replayGainRemoveBatchSuccess(int success, int total) {
    return 'Se ha eliminado ReplayGain de $success de $total pistas';
  }

  @override
  String selectionReplayGainCount(int count) {
    return 'ReplayGain ($count)';
  }

  @override
  String get replayGainBatchConfirmTitle => 'Agregar ReplayGain';

  @override
  String replayGainBatchConfirmMessage(int count) {
    return '¿Analizar el volumen y escribir las etiquetas ReplayGain en $count pista(s)?';
  }

  @override
  String get replayGainBatchAnalyzing => 'Analizando ReplayGain...';

  @override
  String replayGainBatchSuccess(int success, int total) {
    return 'Se agregaron las etiquetas ReplayGain a $success de $total pistas';
  }

  @override
  String get replayGainUnsupportedDecoder =>
      'Algunas pistas no se pudieron analizar porque el decodificador de ReplayGain no es compatible con su códec de audio. Los archivos no se modificaron.';

  @override
  String get optionsArtistTagMode => 'Modo de etiqueta de artista';

  @override
  String get metadataSeparators => 'Separadores de metadatos';

  @override
  String get metadataSeparatorsDescription =>
      'Elige cómo se unen los valores separados por comas o puntos y comas en las descargas futuras. Los separadores de artista personalizados usan una etiqueta unida; la opción «Solo artista principal» se sigue aplicando. Los nombres que contienen & o / se conservan.';

  @override
  String get metadataSeparatorSource => 'Mantener el formato original';

  @override
  String get metadataSeparatorComma => 'Comma (,)';

  @override
  String get metadataSeparatorSemicolon => 'Semicolon (;)';

  @override
  String get metadataSeparatorSlash => 'Slash (/)';

  @override
  String get metadataSeparatorCustom => 'Separador personalizado';

  @override
  String get metadataSeparatorPreview => 'Vista previa';

  @override
  String get metadataSeparatorInvalid =>
      'Usa de 1 a 16 caracteres, sin saltos de línea ni caracteres de control.';

  @override
  String get optionsArtistTagModeDescription =>
      'Elige cómo se escriben varios artistas en las etiquetas incrustadas.';

  @override
  String get optionsArtistTagModeJoined => 'Valor único combinado';

  @override
  String get optionsArtistTagModeJoinedSubtitle =>
      'Escribir un solo valor de ARTISTA como «Artista A, Artista B» para máxima compatibilidad con reproductores.';

  @override
  String get optionsArtistTagModeSplitVorbis =>
      'Separar etiquetas para FLAC/Opus';

  @override
  String get optionsArtistTagModeSplitVorbisSubtitle =>
      'Escribe una etiqueta de artista por cada artista en FLAC y Opus; MP3 y M4A se mantienen combinados.';

  @override
  String get optionsArtistTagModePrimary => 'Solo el artista principal';

  @override
  String get optionsArtistTagModePrimarySubtitle =>
      'Escribe solo el primer artista, por ejemplo, «Artista A», en los campos «Artista» y «Artista del álbum» en todos los formatos, para que los reproductores muestren un solo artista.';

  @override
  String get optionsExtensionStore => 'Repositorio de extensiones';

  @override
  String get optionsExtensionStoreSubtitle =>
      'Mostrar la pestaña del repositorio en la navegación';

  @override
  String get optionsCheckUpdates => 'Buscar actualizaciones';

  @override
  String get optionsCheckUpdatesSubtitle =>
      'Notificar cuando una nueva versión esté disponible';

  @override
  String get optionsUpdateChannel => 'Tipo de actualizaciones';

  @override
  String get optionsUpdateChannelStable => 'Solo versiones estables';

  @override
  String get optionsUpdateChannelPreview => 'Obtener versiones preliminares';

  @override
  String get optionsUpdateChannelWarning =>
      'La versión preliminar puede contener errores o funciones incompletas';

  @override
  String get optionsClearHistory => 'Borrar historial de descargas';

  @override
  String get optionsClearHistorySubtitle =>
      'Eliminar todas las pistas descargadas del historial';

  @override
  String get optionsDetailedLogging => 'Registro detallado';

  @override
  String get optionsDetailedLoggingOn => 'Se están registrando logs detallados';

  @override
  String get optionsDetailedLoggingOff => 'Activar para informes de errores';

  @override
  String get extensionsTitle => 'Extensiones';

  @override
  String get extensionsDisabled => 'Desactivado';

  @override
  String extensionsVersion(String version) {
    return 'Versión $version';
  }

  @override
  String get extensionsUninstall => 'Desinstalar';

  @override
  String get storeTitle => 'Repositorio de extensiones';

  @override
  String get storeSearch => 'Buscar extensiones...';

  @override
  String get storeInstall => 'Instalar';

  @override
  String get storeInstalled => 'Instalada';

  @override
  String get storeUpdate => 'Actualizar';

  @override
  String get aboutTitle => 'Acerca de';

  @override
  String get aboutContributors => 'Colaboradores';

  @override
  String get aboutMobileDeveloper => 'Desarrollador de versiones móviles';

  @override
  String get aboutLogoArtist =>
      '¡El talentoso artista que creó el hermoso logo de nuestra app!';

  @override
  String get aboutTranslators => 'Traductores';

  @override
  String get aboutSpecialThanks => 'Agradecimientos especiales';

  @override
  String get aboutLinks => 'Enlaces';

  @override
  String get aboutMobileSource => 'Código fuente de la versión móvil';

  @override
  String get aboutLyricsWebsite => 'Sitio web de Letras';

  @override
  String get aboutServiceStatus => 'Estado del servicio';

  @override
  String get aboutReportIssue => 'Reportar un problema';

  @override
  String get aboutReportIssueSubtitle =>
      'Reporta cualquier problema que encuentres';

  @override
  String get aboutFeatureRequest => 'Sugerir una función';

  @override
  String get aboutFeatureRequestSubtitle =>
      'Sugerir nuevas funciones para la aplicación';

  @override
  String get aboutTelegramChannel => 'Canal de Telegram';

  @override
  String get aboutTelegramChannelSubtitle => 'Anuncios y actualizaciones';

  @override
  String get aboutTelegramChat => 'Comunidad de Telegram';

  @override
  String get aboutTelegramChatSubtitle => 'Chatear con otros usuarios';

  @override
  String get aboutSocial => 'Redes sociales';

  @override
  String get aboutApp => 'Aplicación';

  @override
  String get aboutVersion => 'Versión';

  @override
  String get aboutBinimumDesc =>
      'El creador de QQDL & HiFi API. Este proyecto ayudó a impulsar el soporte para descargas sin pérdida de calidad.';

  @override
  String get aboutSachinsenalDesc =>
      'El creador del proyecto HiFi original. Sentó las bases para la integración de fuentes de audio sin pérdida de calidad.';

  @override
  String get aboutUnituneDesc =>
      'Resolvedor de links de música por Flaze, usado para coincidencias multiplataforma de respaldo.';

  @override
  String get aboutMusicBrainzDesc =>
      'Base de datos abierta mantenida por MetaBrainz y su comunidad, usado para grabar multi-referencias.';

  @override
  String get aboutSquiglyDesc =>
      'Servicio de enlaces de música universal por Liam Macmillan, usado como resolvedor multiplataforma final de respaldo.';

  @override
  String get aboutAppDescription =>
      'Busca información musical, gestiona extensiones y organiza tu biblioteca.';

  @override
  String get artistAlbums => 'Álbumes';

  @override
  String get artistSingles => 'Pistas y mini-álbumes';

  @override
  String get artistCompilations => 'Compilaciones';

  @override
  String get artistPopular => 'Populares';

  @override
  String artistMonthlyListeners(String count) {
    return '$count oyentes mensuales';
  }

  @override
  String get trackMetadataService => 'Servicio';

  @override
  String get trackMetadataPlay => 'Reproducir';

  @override
  String get trackMetadataShare => 'Compartir';

  @override
  String get trackMetadataDelete => 'Eliminar';

  @override
  String get setupGrantPermission => 'Conceder permiso';

  @override
  String get setupSkip => 'Omitir por ahora';

  @override
  String get setupStorageAccessRequired => 'Acceso al almacenamiento requerido';

  @override
  String get setupStorageAccessMessageAndroid11 =>
      'Android 11+ requiere permiso \"Todos los archivos de acceso\" para guardar los archivos en la carpeta de descargas elegida.';

  @override
  String get setupOpenSettings => 'Abrir ajustes';

  @override
  String get setupPermissionDeniedMessage =>
      'Permiso denegado. Por favor, conceda todos los permisos para continuar.';

  @override
  String setupPermissionRequired(String permissionType) {
    return 'Permiso de $permissionType requerido';
  }

  @override
  String setupPermissionRequiredMessage(String permissionType) {
    return 'Se requiere un permiso $permissionType para la mejor experiencia. Puedes cambiar esto más tarde en ajustes.';
  }

  @override
  String get setupUseDefaultFolder => '¿Usar carpeta por defecto?';

  @override
  String get setupNoFolderSelected =>
      'No se ha seleccionado ninguna carpeta. ¿Desea utilizar la carpeta por defecto?';

  @override
  String get setupUseDefault => 'Usar por defecto';

  @override
  String get setupDownloadLocationTitle => 'Ubicación de descarga';

  @override
  String get setupDownloadLocationIosMessage =>
      'En iOS, las descargas se guardan en la carpeta de documentos de la aplicación. Puede acceder a ellas desde la aplicación Archivos.';

  @override
  String get setupAppDocumentsFolder => 'Carpeta de documentos de App';

  @override
  String get setupAppDocumentsFolderSubtitle =>
      'Recomendado - accesible desde la aplicación Archivos';

  @override
  String get setupChooseFromFiles => 'Elegir de archivos';

  @override
  String get setupChooseFromFilesSubtitle =>
      'Seleccione iCloud u otra ubicación';

  @override
  String get setupIosEmptyFolderWarning =>
      'Limitación de iOS: No se pueden seleccionar carpetas vacías. Elige una carpeta con al menos un archivo.';

  @override
  String get setupIcloudNotSupported =>
      'iCloud Drive no es compatible. Utilice la carpeta Documentos de la aplicación.';

  @override
  String get setupDownloadInFlac => 'Descarga música sin pérdida y Hi-Res';

  @override
  String get setupStorageGranted => '¡Permiso de almacenamiento concedido!';

  @override
  String get setupStorageRequired => 'Permiso de almacenamiento requerido';

  @override
  String get setupStorageDescription =>
      'Toadplayer necesita permiso de almacenamiento para guardar sus archivos de música descargados.';

  @override
  String get setupNotificationGranted =>
      '¡Acceso a las notificaciones permitido!';

  @override
  String get setupNotificationEnable => 'Activar notificaciones';

  @override
  String get setupFolderChoose => 'Cambiar carpeta de descargas';

  @override
  String get setupFolderDescription =>
      'Seleccione una carpeta donde se guardará la música descargada.';

  @override
  String get setupSelectFolder => 'Seleccionar Carpeta';

  @override
  String get setupEnableNotifications => 'Activar notificaciones';

  @override
  String get setupNotificationBackgroundDescription =>
      'Recibe notificaciones sobre el progreso de la descarga y la finalización. Esto te ayuda a rastrear las descargas cuando la aplicación está en segundo plano.';

  @override
  String get setupSkipForNow => 'Omitir por ahora';

  @override
  String get setupNearbyEnable => 'Allow Nearby Devices';

  @override
  String get setupNearbyDescription =>
      'Toadplayer Link uses it to find your computer on the same network, and network storage needs it to reach a server at home.';

  @override
  String get setupNearbyGranted => 'Nearby Devices Allowed!';

  @override
  String get permissionNearbyDevices => 'Nearby devices';

  @override
  String get whatsNewLinkNearbyAllow => 'Allow nearby devices';

  @override
  String get whatsNewLinkNearbyGranted => 'Nearby devices allowed';

  @override
  String get whatsNewNearbyTitle => 'Nearby devices';

  @override
  String get whatsNewNearbyDesc =>
      'Android now asks before an app can reach other devices on your network. Toadplayer needs this for:';

  @override
  String get whatsNewNearbyLinkTitle => 'Finding your computer';

  @override
  String get whatsNewNearbyLinkBody =>
      'Toadplayer Link looks for your computer on the same Wi-Fi and stays connected to it.';

  @override
  String get whatsNewNearbyStorageTitle => 'Network storage';

  @override
  String get whatsNewNearbyStorageBody =>
      'Play music from a NAS or a server at home over SMB or WebDAV.';

  @override
  String get whatsNewNearbyPrivateTitle => 'Only your own devices';

  @override
  String get whatsNewNearbyPrivateBody =>
      'Toadplayer uses it only to reach devices on your network, never to find where you are.';

  @override
  String get whatsNewNearbyRefused =>
      'Not allowed. Toadplayer Link and network storage stay off until you allow Nearby devices for Toadplayer in Android settings.';

  @override
  String get setupNext => 'Siguiente';

  @override
  String get setupGetStarted => 'Empezar';

  @override
  String get setupAllowAccessToManageFiles =>
      'Por favor, activa \"Permitir el acceso para gestionar todos los archivos\" en la siguiente pantalla.';

  @override
  String get setupLanguageTitle => 'Elegir idioma';

  @override
  String get setupLanguageDescription =>
      'Selecciona tu idioma preferido para la aplicación. Puedes cambiar esto luego en Configuración.';

  @override
  String get setupLanguageSystemDefault => 'Idioma predeterminado';

  @override
  String get dialogCancel => 'Cancelar';

  @override
  String get dialogSave => 'Guardar';

  @override
  String get dialogDelete => 'Eliminar';

  @override
  String get dialogRetry => 'Volver a intentar';

  @override
  String get dialogClear => 'Borrar';

  @override
  String get dialogDone => 'Hecho';

  @override
  String get dialogImport => 'Importar';

  @override
  String get dialogDownload => 'Descargar';

  @override
  String get previewPlay => 'Reproducir vista previa';

  @override
  String get previewStop => 'Detener vista previa';

  @override
  String get previewUnavailable => 'Vista previa no disponible';

  @override
  String get dialogDiscard => 'Descartar';

  @override
  String get dialogRemove => 'Eliminar';

  @override
  String get dialogUninstall => 'Desinstalar';

  @override
  String get dialogDiscardChanges => '¿Descartar cambios?';

  @override
  String get dialogUnsavedChanges =>
      'Tienes cambios sin guardar. ¿Quieres descartarlos?';

  @override
  String get dialogClearAll => 'Eliminar todo';

  @override
  String get dialogRemoveExtension => 'Eliminar extensión';

  @override
  String get dialogRemoveExtensionMessage =>
      '¿Estás seguro de que quieres eliminar esta extensión? Esto no se puede deshacer.';

  @override
  String get dialogUninstallExtension => '¿Desinstalar extensión?';

  @override
  String dialogUninstallExtensionMessage(String extensionName) {
    return '¿Estás seguro de que quieres eliminar $extensionName?';
  }

  @override
  String get dialogClearHistoryTitle => 'Borrar historial';

  @override
  String get dialogClearHistoryMessage =>
      '¿Estás seguro de que quieres borrar todo el historial de descargas? Esta acción no se puede deshacer.';

  @override
  String get dialogDeleteSelectedTitle => 'Borrar Seleccionados';

  @override
  String dialogDeleteSelectedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'pistas',
      one: 'pista',
    );
    return '¿Eliminar $count $_temp0 del historial?\n\nEsto también eliminará los archivos del almacenamiento.';
  }

  @override
  String get dialogImportPlaylistTitle => 'Importar lista de reproducción';

  @override
  String dialogImportPlaylistMessage(int count) {
    return 'Se han encontrado  $count pistas en CSV. ¿Desea añadirlas en la cola de descarga?';
  }

  @override
  String csvImportTracks(int count) {
    return '$count pistas de CSV';
  }

  @override
  String get collectionExportM3u => 'Exportar como M3U8';

  @override
  String collectionExportM3uDone(int exported, int total) {
    return 'Exportado $exported de $total pistas';
  }

  @override
  String get collectionExportM3uNone =>
      'No hay archivos descargados para exportar';

  @override
  String get collectionExportM3uFailed => 'Exportación fallida';

  @override
  String get trackOpenOn => 'Abrir en...';

  @override
  String get trackOpenOnNoLinks =>
      'No se han encontrado enlaces para esta pista.';

  @override
  String get libraryReviewDuplicates => 'Revisar duplicados';

  @override
  String get libraryReviewDuplicatesSubtitle =>
      'Encontrar pistas almacenadas más de una vez';

  @override
  String get duplicatesTitle => 'Duplicados';

  @override
  String get duplicatesEmpty => 'No se han encontrado pistas duplicadas.';

  @override
  String get duplicatesKeepBest => 'Mantener mejor';

  @override
  String get duplicatesKeepBestAll => 'Lo mejor para todos';

  @override
  String duplicatesKeepBestAllMessage(int count, int groupCount) {
    String _temp0 = intl.Intl.pluralLogic(
      groupCount,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'copies',
      one: 'copy',
    );
    return '¿Quieres conservar la mejor copia de $groupCount $_temp0 y eliminar $count copias de menor calidad $_temp1?\n\nLos archivos eliminados se borrarán del almacenamiento.';
  }

  @override
  String duplicatesKeepBestMessage(int count, String trackName) {
    return '¿Eliminar $count copias de menor calidad del \"$trackName\"?';
  }

  @override
  String duplicatesDeleteCopyMessage(String trackName) {
    return '¿Eliminar esta copia de \"$trackName\"?';
  }

  @override
  String snackbarAddedToQueue(String trackName) {
    return 'Añadido \"$trackName\" a la cola';
  }

  @override
  String snackbarAddedTracksToQueue(int count) {
    return 'Añadidas pistas $count a la cola';
  }

  @override
  String snackbarAlreadyDownloaded(String trackName) {
    return '\"$trackName\" ya descargado';
  }

  @override
  String snackbarAlreadyInLibrary(String trackName) {
    return '\"$trackName\" ya existe en tu biblioteca';
  }

  @override
  String get snackbarHistoryCleared => 'Historial borrado';

  @override
  String snackbarDeletedTracks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'pistas',
      one: 'pista',
    );
    return 'Eliminado $count $_temp0';
  }

  @override
  String snackbarCannotOpenFile(String error) {
    return 'No se puede abrir el archivo: $error';
  }

  @override
  String get snackbarViewQueue => 'Ver cola';

  @override
  String snackbarUrlCopied(String platform) {
    return 'URL $platform copiada al portapapeles';
  }

  @override
  String get snackbarFileNotFound => 'Archivo no encontrado';

  @override
  String get snackbarSelectExtFile =>
      'Por favor, seleccione un archivo .toadplayer-ext';

  @override
  String get snackbarProviderPrioritySaved => 'Prioridad de proveedor guardada';

  @override
  String get snackbarMetadataProviderSaved =>
      'Prioridad de proveedor de información guardada';

  @override
  String snackbarExtensionInstalled(String extensionName) {
    return '$extensionName instalado.';
  }

  @override
  String snackbarExtensionUpdated(String extensionName) {
    return '$extensionName actualizada.';
  }

  @override
  String get snackbarFailedToInstall => 'Fallo al instalar la extensión';

  @override
  String get snackbarFailedToUpdate => 'Error al actualizar la extensión';

  @override
  String get errorRateLimited => 'Límite excedido';

  @override
  String get errorRateLimitedMessage =>
      'Demasiadas solicitudes. Por favor, espere un momento antes de buscar de nuevo.';

  @override
  String get errorNoTracksFound => 'No se encontraron pistas';

  @override
  String get searchEmptyResultSubtitle => 'Prueba con otra palabra clave';

  @override
  String get errorUrlNotRecognized => 'Enlace no reconocido';

  @override
  String get errorUrlNotRecognizedMessage =>
      'Este enlace no es compatible. Asegúrate de que la URL sea correcta y de tener instalada una extensión compatible.';

  @override
  String get errorUrlFetchFailed =>
      'No se ha podido cargar el contenido de este enlace. Inténtalo de nuevo.';

  @override
  String errorMissingExtensionSource(String item) {
    return 'No se puede cargar $item: falta una fuente de extensión';
  }

  @override
  String get actionPause => 'Pausar';

  @override
  String get actionResume => 'Reanudar';

  @override
  String get actionCancel => 'Cancelar';

  @override
  String get actionSelectAll => 'Seleccionar Todo';

  @override
  String get actionDeselect => 'Deseleccionar';

  @override
  String selectionSelected(int count) {
    return '$count seleccionado';
  }

  @override
  String get selectionAllSelected => 'Todas las pistas seleccionadas';

  @override
  String get selectionSelectToDelete => 'Seleccionar pistas a eliminar';

  @override
  String progressFetchingMetadata(int current, int total) {
    return 'Obteniendo información... $current/$total';
  }

  @override
  String get progressReadingCsv => 'Leyendo CSV...';

  @override
  String get searchSongs => 'Canciones';

  @override
  String get searchArtists => 'Artistas';

  @override
  String get searchAlbums => 'Álbumes';

  @override
  String get searchPlaylists => 'Listas de reproducción';

  @override
  String get searchShowAll => 'Show all';

  @override
  String searchShowAllCategory(String category) {
    return 'Show all $category';
  }

  @override
  String get searchSortTitle => 'Ordenar resultados';

  @override
  String get searchSortDefault => 'Por defecto';

  @override
  String get searchSortTitleAZ => 'Nombre (A-Z)';

  @override
  String get searchSortTitleZA => 'Nombre (Z-A)';

  @override
  String get searchSortArtistAZ => 'Artista (A-Z)';

  @override
  String get searchSortArtistZA => 'Artista (Z-A)';

  @override
  String get searchSortDurationShort => 'Duración (más corto)';

  @override
  String get searchSortDurationLong => 'Duración (más largo)';

  @override
  String get searchSortDateOldest => 'Fecha de lanzamiento (antiguo)';

  @override
  String get searchSortDateNewest => 'Fecha de lanzamiento (reciente)';

  @override
  String get tooltipPlay => 'Reproducir';

  @override
  String get filenameFormat => 'Formato del nombre del archivo';

  @override
  String get filenameShowAdvancedTags => 'Mostrar etiquetas avanzadas';

  @override
  String get filenameShowAdvancedTagsDescription =>
      'Habilitar etiquetas con formato para el relleno de pistas y los formatos de fecha';

  @override
  String get folderOrganizationNone => 'Ninguna organización';

  @override
  String get folderOrganizationByPlaylist => 'Por lista de reproducción';

  @override
  String get folderOrganizationByPlaylistSubtitle =>
      'Una carpeta independiente para cada lista de reproducción';

  @override
  String get folderOrganizationByArtist => 'Por Artista';

  @override
  String get folderOrganizationByAlbum => 'Por Álbum';

  @override
  String get folderOrganizationByArtistAlbum => 'Artista/Álbum';

  @override
  String get folderOrganizationDescription =>
      'Organizar los archivos descargados en carpetas';

  @override
  String get folderOrganizationNoneSubtitle =>
      'Todos los archivos de la carpeta de descargas';

  @override
  String get folderOrganizationByArtistSubtitle =>
      'Carpeta separada para cada artista';

  @override
  String get folderOrganizationByAlbumSubtitle =>
      'Carpeta separada para cada artista';

  @override
  String get folderOrganizationByArtistAlbumSubtitle =>
      'Carpetas organizadas por artista y álbum';

  @override
  String get updateAvailable => 'Actualización Disponible';

  @override
  String get updateLater => 'Más tarde';

  @override
  String get updateStartingDownload => 'Iniciando descarga...';

  @override
  String get updateDownloadFailed => 'Descarga fallida';

  @override
  String get updateFailedMessage => 'Error al descargar la actualización';

  @override
  String get updateNewVersionReady => 'Una nueva versión está lista';

  @override
  String get updateRequiredTitle => 'Actualización Necesaria';

  @override
  String updateRequiredNotice(int count) {
    return 'Esta versión está $count lanzamientos detrás de la actual y ya no es soportada. Actualice para seguir usando la app.';
  }

  @override
  String get updateCurrent => 'Actual';

  @override
  String get updateNew => 'Nuevo';

  @override
  String get updateDownloading => 'Descargando...';

  @override
  String get updateWhatsNew => 'Novedades';

  @override
  String get updateDownloadInstall => 'Descargar & Instalar';

  @override
  String get updateDontRemind => 'No recordar';

  @override
  String get updateViewRelease => 'Ver versión';

  @override
  String get updateStartingInstaller => 'Iniciando el instalador...';

  @override
  String get updateMacInstallHint =>
      'La imagen de disco está abierta en Finder. Cierra Toadplayer y, después, arrastra Toadplayer desde la imagen de disco hasta Aplicaciones y reemplaza la copia anterior.';

  @override
  String get updateQuitApp => 'Salir de Toadplayer';

  @override
  String get updateReadyToRestart =>
      'La actualización está instalada. Reinicia Toadplayer para usarla.';

  @override
  String get updateRestartNow => 'Reiniciar ahora';

  @override
  String get providerPriorityTitle => 'Prioridad del proveedor';

  @override
  String get providerPriorityDescription =>
      'Arrastra para reordenar los proveedores de descarga. La aplicación intentará usar los proveedores de arriba hacia abajo al descargar las pistas.';

  @override
  String get providerPriorityInfo =>
      'Si una pista no está disponible en el primer proveedor, la aplicación intentará automáticamente el siguiente.';

  @override
  String get providerPriorityFallbackExtensionsDescription =>
      'Elija las extensiones de descarga que se usarán como respaldo automático.';

  @override
  String get providerPriorityFallbackExtensionsHint =>
      'Solo las extensiones activas con proveedor de descarga se listan aquí.';

  @override
  String get providerExtension => 'Extensión';

  @override
  String get metadataProviderPriorityTitle => 'Prioridad de la información';

  @override
  String get metadataProviderPriorityDescription =>
      'Arrastra para reordenar los proveedores de información. La aplicación probará los proveedores de arriba hacia abajo al buscar pistas y obtener la información.';

  @override
  String get metadataProviderPriorityInfo =>
      'Deezer no tiene límites de tasa y se recomienda como principal. Spotify puede valorar el límite después de muchas solicitudes.';

  @override
  String get logTitle => 'Registros';

  @override
  String get logCopied => 'Registros copiados al portapapeles';

  @override
  String get logSearchHint => 'Buscar registros...';

  @override
  String get logFilterLevel => 'Nivel';

  @override
  String get logFilterSection => 'Filtrar';

  @override
  String get logShareLogs => 'Compartir registros';

  @override
  String get logClearLogs => 'Borrar registros';

  @override
  String get logClearLogsTitle => 'Limpiar registros';

  @override
  String get logClearLogsMessage =>
      '¿Estás seguro qué deseas limpiar todos los registros?';

  @override
  String get logFilterBySeverity => 'Filtrar los registros por gravedad';

  @override
  String get logNoLogsYet => 'No hay registros aún';

  @override
  String get logNoLogsYetSubtitle =>
      'Los registros aparecerán aquí mientras usas la aplicación';

  @override
  String logEntriesFiltered(int count) {
    return 'Entradas ($count filtradas)';
  }

  @override
  String logEntries(int count) {
    return 'Entradas ($count)';
  }

  @override
  String get channelStable => 'Estable';

  @override
  String get channelPreview => 'Vista previa';

  @override
  String get sectionSearchSource => 'Buscar Fuente';

  @override
  String get sectionDownload => 'Descargar';

  @override
  String get sectionPerformance => 'Alto rendimiento';

  @override
  String get sectionApp => 'Aplicación';

  @override
  String get sectionData => 'Datos';

  @override
  String get sectionDebug => 'Depuración';

  @override
  String get sectionService => 'Servicio';

  @override
  String get sectionAudioQuality => 'Calidad de Sonido';

  @override
  String get sectionFileSettings => 'Ajustes del archivo';

  @override
  String get sectionLyrics => 'Letras';

  @override
  String get lyricsKeepScreenOn =>
      'Mantener la pantalla encendida mientras se ven las letras de las canciones';

  @override
  String get lyricsKeepScreenOnSubtitle =>
      'Evitar que la pantalla se apague mientras están abiertas las letras de las canciones, incluso cuando la reproducción está en pausa.';

  @override
  String get lyricsMode => 'Modo Letras';

  @override
  String get lyricsModeDescription =>
      'Elige cómo se guardan las letras de tus descargas';

  @override
  String get lyricsModeEmbed => 'Insertar en archivo';

  @override
  String get lyricsModeEmbedSubtitle =>
      'Letras almacenadas en la información FLAC';

  @override
  String get lyricsModeExternal => 'Archivo .lrc externo';

  @override
  String get lyricsModeExternalSubtitle =>
      'Archivo .lrc separado para reproductores como Samsung Music';

  @override
  String get lyricsModeBoth => 'Ambos';

  @override
  String get lyricsModeBothSubtitle => 'Insertar y guardar archivo .lrc';

  @override
  String get sectionColor => 'Colores';

  @override
  String get sectionTheme => 'Tema';

  @override
  String get sectionLayout => 'Diseño';

  @override
  String get sectionLanguage => 'Idioma';

  @override
  String get appearanceLanguage => 'Idioma de la aplicación';

  @override
  String get settingsAppearanceSubtitle => 'Tema, colores, pantalla';

  @override
  String get settingsDownloadSubtitle => 'Servicio, calidad, respaldo';

  @override
  String get settingsExtensionsSubtitle =>
      'Administrar proveedores de descarga';

  @override
  String get settingsLogsSubtitle =>
      'Ver registros de aplicaciones para depuración';

  @override
  String get loadingSharedLink => 'Cargando enlace compartido...';

  @override
  String get pressBackAgainToExit => 'Presione de nuevo para salir';

  @override
  String downloadAllCount(int count) {
    return 'Descargar todo ($count)';
  }

  @override
  String tracksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pistas',
      one: '1 pista',
    );
    return '$_temp0';
  }

  @override
  String get trackCopyFilePath => 'Copiar ruta de archivo';

  @override
  String get trackRemoveFromDevice => 'Eliminar del dispositivo';

  @override
  String get trackLoadLyrics => 'Cargar letras';

  @override
  String get trackMetadata => 'Información';

  @override
  String get trackFileInfo => 'Información de archivo';

  @override
  String get trackLyrics => 'Letras';

  @override
  String get trackFileNotFound => 'Archivo no encontrado';

  @override
  String get trackFileUnavailable =>
      'El archivo no está disponible en este momento. Verifica el acceso al almacenamiento e inténtalo de nuevo.';

  @override
  String get trackOpenInDeezer => 'Abrir en Deezer';

  @override
  String get trackOpenInSpotify => 'Abrir en Spotify';

  @override
  String get trackTrackName => 'Nombre de pista';

  @override
  String get trackArtist => 'Artista';

  @override
  String get trackAlbumArtist => 'Artista del álbum';

  @override
  String get trackAlbum => 'Álbum';

  @override
  String get trackTrackNumber => 'Número de pista';

  @override
  String get trackDiscNumber => 'Número de disco';

  @override
  String get trackDuration => 'Duración';

  @override
  String get trackAudioQuality => 'Calidad del sonido';

  @override
  String get trackReplayGainTrackGain => 'ReplayGain - Ganancia de pista';

  @override
  String get trackReplayGainTrackPeak => 'ReplayGain: Pico de pista';

  @override
  String get trackReplayGainAlbumGain => 'ReplayGain: Ganancia del álbum';

  @override
  String get trackReplayGainAlbumPeak => 'ReplayGain: Pico del álbum';

  @override
  String get libraryQualityLabelFileFormat => 'Formato de archivo';

  @override
  String get trackReleaseDate => 'Fecha de lanzamiento';

  @override
  String get trackGenre => 'Género';

  @override
  String get trackLabel => 'Etiqueta';

  @override
  String get trackCopyright => 'Derechos de autor';

  @override
  String get trackDownloaded => 'Descargado';

  @override
  String get trackCopyLyrics => 'Copiar letras';

  @override
  String trackLyricsSource(String source) {
    return 'Fuente: $source';
  }

  @override
  String get trackLyricsNotAvailable => 'Letras no disponibles para este tema';

  @override
  String get trackLyricsNotInFile => 'No se encontraron letras';

  @override
  String get trackFetchOnlineLyrics => 'Obtener en línea';

  @override
  String get trackLyricsTimeout =>
      'Tiempo de espera agotado. Inténtalo de nuevo más tarde.';

  @override
  String get trackLyricsLoadFailed => 'Error al cargar la letra';

  @override
  String get trackEmbedLyrics => 'Incrustar Letras';

  @override
  String get trackLyricsEmbedded => 'Letra incrustada con éxito';

  @override
  String get trackInstrumental => 'Pista instrumental';

  @override
  String get trackCopiedToClipboard => 'Copiado al portapapeles';

  @override
  String get trackDeleteConfirmTitle => '¿Eliminar del dispositivo?';

  @override
  String get trackDeleteNetworkConfirmMessage =>
      'Esto eliminará de forma permanente el archivo de tu almacenamiento en red y lo borrará de tu biblioteca y de tu historial.';

  @override
  String snackbarDeleteTracksFailed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'pistas',
      one: 'pista',
    );
    return 'No se pudieron eliminar $count $_temp0. Revisa el acceso al almacenamiento e inténtalo de nuevo.';
  }

  @override
  String get trackDeleteConfirmMessage =>
      'Esto eliminará permanentemente el archivo descargado y lo eliminará de tu historial.';

  @override
  String get dateToday => 'Hoy';

  @override
  String get dateYesterday => 'Ayer';

  @override
  String dateDaysAgo(int count) {
    return 'Hace $count días';
  }

  @override
  String dateWeeksAgo(int count) {
    return '$count semanas antes';
  }

  @override
  String dateMonthsAgo(int count) {
    return '$count meses atrás';
  }

  @override
  String get storeFilterAll => 'Todo';

  @override
  String get storeFilterMetadata => 'Información';

  @override
  String get storeFilterDownload => 'Descargar';

  @override
  String get storeFilterUtility => 'Utilidad';

  @override
  String get storeFilterLyrics => 'Letras';

  @override
  String get storeFilterIntegration => 'Integración';

  @override
  String get storeClearFilters => 'Limpiar filtros';

  @override
  String get storeAddRepoTitle => 'Añadir repositorio de extensiones';

  @override
  String get storeAddRepoDescription =>
      'Introduzca una URL de repositorio de GitHub que contenga un archivo registry.json para navegar e instalar extensiones.';

  @override
  String get storeRepoUrlLabel => 'URL del repositorio';

  @override
  String get storeRepoUrlHint => 'https://github.com/user/repo';

  @override
  String get storeAddRepoButton => 'Añadir repositorio';

  @override
  String get storeChangeRepoTooltip => 'Cambiar repositorio';

  @override
  String get storeRepoDialogTitle => 'Repositorio de extensiones';

  @override
  String get storeRepoDialogCurrent => 'Repositorio actual:';

  @override
  String get storeNewRepoUrlLabel => 'Nueva URL del repositorio';

  @override
  String get storeLoadError => 'Falló al cargar repositorio';

  @override
  String get storeEmptyNoExtensions => 'No hay extensiones disponibles';

  @override
  String get storeEmptyNoResults => 'No se encontraron extensiones';

  @override
  String get extensionId => 'ID';

  @override
  String get extensionError => 'Error';

  @override
  String get extensionCapabilities => 'Recursos';

  @override
  String get extensionMetadataProvider => 'Proveedor de información';

  @override
  String get extensionDownloadProvider => 'Proveedor de descargas';

  @override
  String get extensionLyricsProvider => 'Proveedor de letras';

  @override
  String get extensionUrlHandler => 'Gestor de URL';

  @override
  String get extensionQualityOptions => 'Opciones de calidad';

  @override
  String get extensionPostProcessingHooks => 'Post-procesamiento de hooks';

  @override
  String get extensionPermissions => 'Permisos';

  @override
  String get extensionSettings => 'Ajustes';

  @override
  String get extensionRemoveButton => 'Eliminar extensión';

  @override
  String get extensionUpdated => 'Actualizado';

  @override
  String get extensionMinAppVersion => 'Versión Mínima de la aplicación';

  @override
  String get extensionCustomTrackMatching =>
      'Coincidencia de pista personalizada';

  @override
  String get extensionPostProcessing => 'Post-Procesamiento';

  @override
  String extensionHooksAvailable(int count) {
    return '$count hook(s) disponibles';
  }

  @override
  String extensionPatternsCount(int count) {
    return 'Patrón(es) $count';
  }

  @override
  String extensionStrategy(String strategy) {
    return 'Estrategia: $strategy';
  }

  @override
  String get extensionsProviderPrioritySection => 'Prioridad del proveedor';

  @override
  String get extensionsInstalledSection => 'Extensiones instaladas';

  @override
  String get extensionsNoExtensions => 'No hay extensiones instaladas';

  @override
  String get extensionsNoExtensionsSubtitle =>
      'Instalar archivos .toadplayer-ext para añadir nuevos proveedores';

  @override
  String get extensionsInstallButton => 'Instalar extensión';

  @override
  String get extensionsInfoTip =>
      'Las extensiones pueden añadir nueva información y proveedores de descargas. Solo instalar extensiones desde fuentes confiables.';

  @override
  String get extensionsInstalledSuccess => 'Extensión instalada correctamente';

  @override
  String extensionsInstalledCount(int count) {
    return '$count Extensiones instaladas correctamente';
  }

  @override
  String extensionsInstallPartialSuccess(int installed, int attempted) {
    return '$installed Instalados de $attempted extensiones';
  }

  @override
  String get extensionsDownloadPriority => 'Prioridad de descarga';

  @override
  String get extensionsDownloadPrioritySubtitle =>
      'Establecer orden de servicio de descarga';

  @override
  String get extensionsFallbackTitle => 'Respaldo de extensiones';

  @override
  String get extensionsFallbackSubtitle =>
      'Elija que extensiones pueden usarse como reserva';

  @override
  String get extensionsNoDownloadProvider =>
      'No hay extensiones con proveedor de descargas';

  @override
  String get extensionsMetadataPriority => 'Prioridad de la información';

  @override
  String get extensionsMetadataPrioritySubtitle =>
      'Establecer orden de búsqueda y información';

  @override
  String get extensionsNoMetadataProvider =>
      'No hay extensiones con el proveedor de información';

  @override
  String get extensionsSearchProvider => 'Proveedor de búsqueda';

  @override
  String get extensionsNoCustomSearch =>
      'No hay extensiones con búsqueda personalizada';

  @override
  String get extensionsSearchProviderDescription =>
      'Elegir qué servicio usar para buscar pistas';

  @override
  String get extensionsCustomSearch => 'Búsqueda personalizada';

  @override
  String get extensionsErrorLoading => 'Error al cargar la extensión';

  @override
  String get qualityFlacLossless => 'FLAC sin pérdida';

  @override
  String get qualityFlacLosslessSubtitle => '16-bit / 44,1 kHz';

  @override
  String get qualityHiResFlac => 'FLAC de alta resolución';

  @override
  String get qualityHiResFlacSubtitle => '24-bit / hasta 96 kHz';

  @override
  String get qualityHiResFlacMax => 'Hi-Res (FLAC Max)';

  @override
  String get qualityHiResFlacMaxSubtitle => '24-bit / hasta 192 kHz';

  @override
  String get downloadLossyFormat => 'Formato con pérdida';

  @override
  String get downloadAutoConvert => 'Autoconvertir después de descargar';

  @override
  String get downloadAutoConvertAllFormatsSubtitle =>
      'Convert completed downloads or limit FLAC bit depth and sample rate. The original is replaced only after conversion succeeds.';

  @override
  String get downloadAutoConvertOutputSubtitle =>
      'Choose the output format for newly completed downloads.';

  @override
  String get downloadAutoConvertFlacSubtitle =>
      'Lossless FLAC with quality limits. Lower bit depths and sample rates are preserved.';

  @override
  String get downloadAutoConvertMaxBitDepth => 'Maximum bit depth';

  @override
  String get downloadAutoConvertMaxSampleRate => 'Maximum sample rate';

  @override
  String get downloadAutoConvertFlacLimitsSubtitle =>
      'These are upper limits. For example, a 44.1 kHz source stays at 44.1 kHz when 48 kHz is selected. Lossy sources are kept in their original format.';

  @override
  String get downloadAutoConvertSubtitle =>
      'Convierte descargas completadas a un formato con pérdidas más pequeño. El original solo es reemplazado después que la conversión sea exitosa.';

  @override
  String get downloadAutoConvertFormat => 'Formato de salida';

  @override
  String get downloadAutoConvertFormatSubtitle =>
      'Elige el formato con pérdidas para descargas completadas nuevas.';

  @override
  String get downloadAutoConvertBitrate => 'Calidad de salida';

  @override
  String get downloadAutoConvertBitrateSubtitle =>
      'Las tasas de bits más altas preservan más detalles pero hacen archivos más grandes.';

  @override
  String get downloadAutoConvertMp3Subtitle =>
      'Mejor compatibilidad en reproductores y dispositivos';

  @override
  String get downloadAutoConvertM4aSubtitle =>
      'Audio AAC eficiente en un contenedor M4A';

  @override
  String get downloadAutoConvertOpusSubtitle =>
      'Mejor eficiencia para reproductores modernos';

  @override
  String get downloadAskBeforeDownload => 'Preguntar antes de descargar';

  @override
  String get downloadDirectory => 'Carpeta de descarga';

  @override
  String get downloadSeparateSinglesFolder => 'Carpeta separada para pistas';

  @override
  String get downloadAlbumFolderStructure => 'Estructura de carpeta del álbum';

  @override
  String get albumFolderStructureDescription =>
      'Elige cómo se estructuran las carpetas de los álbumes';

  @override
  String get downloadUseAlbumArtistForFolders =>
      'Usar álbum de artista cómo carpeta';

  @override
  String get downloadUsePrimaryArtistOnly =>
      'Artista principal solo para carpetas';

  @override
  String get downloadUsePrimaryArtistOnlyEnabled =>
      'Se han eliminado los nombres de los artistas destacados del nombre de la carpeta (p. ej., Justin Bieber, Quavo → Justin Bieber)';

  @override
  String get downloadUsePrimaryArtistOnlyDisabled =>
      'Se utiliza el nombre completo del artista como nombre de la carpeta';

  @override
  String get downloadSelectQuality => 'Seleccionar Calidad';

  @override
  String get downloadFrom => 'Descargar Desde';

  @override
  String get appearanceAmoledDark => 'AMOLED Oscuro';

  @override
  String get appearanceAmoledDarkSubtitle => 'Fondo negro puro';

  @override
  String get appearanceHeroAnimations => 'Animaciones Hero';

  @override
  String get appearanceHeroAnimationsSubtitle =>
      'Covers voladores entre pantallas, ejemplo: cuando abre el reproductor';

  @override
  String get appearanceForceBlur => 'Siempre use efecto desenfoque';

  @override
  String get appearanceForceBlurSubtitle =>
      'Habilite la barra de navegación desenfocada incluso en dispositivos donde está desactivada por defecto. Puede costar rendimiento.';

  @override
  String get queueClearAll => 'Eliminar todo';

  @override
  String get queueClearAllMessage =>
      '¿Estás seguro de que quieres borrar todas las descargas?';

  @override
  String get settingsAutoExportFailed => 'Autoexportar descargas fallidas';

  @override
  String get settingsAutoExportFailedSubtitle =>
      'Guardar descargas fallidas en el archivo TXT automáticamente';

  @override
  String get settingsDownloadNetwork => 'Red de descarga';

  @override
  String get settingsDownloadNetworkAny => 'Wi-Fi + Datos móviles';

  @override
  String get settingsDownloadNetworkWifiOnly => 'Iniciar solo por Wi-Fi';

  @override
  String get settingsDownloadNetworkSubtitle =>
      'Elegir qué red usar para descargas. Cuando se establece en Wi-Fi solamente, las descargas se detendrán en los datos móviles.';

  @override
  String get settingsConcurrentDownloads => 'Descargas concurrentes';

  @override
  String get settingsConcurrentDownloadsSubtitle =>
      'Descargar varios archivos a la vez es rápido, pero con algunos proveedores puede haber un límite en pedidos paralelos.';

  @override
  String get concurrentDownloadsOne => '1 archivo a la vez';

  @override
  String concurrentDownloadsCount(int count) {
    return 'Hasta $count archivos a la vez';
  }

  @override
  String get albumFolderArtistAlbum => 'Artista / Álbum';

  @override
  String get albumFolderArtistAlbumSubtitle =>
      'Álbumes/Nombre del Artista/Nombre del Álbum/';

  @override
  String get albumFolderArtistYearAlbum => 'Artista / [Año] Álbum';

  @override
  String get albumFolderArtistYearAlbumSubtitle =>
      'Álbumes/Nombre del Artista /[2005] Nombre del Álbum/';

  @override
  String get albumFolderAlbumOnly => 'Sólo álbum';

  @override
  String get albumFolderAlbumOnlySubtitle => 'Álbumes/Nombre del Álbum/';

  @override
  String get albumFolderYearAlbum => 'Álbum [Año]';

  @override
  String get albumFolderYearAlbumSubtitle => 'Álbumes/[2005] Nombre del Álbum/';

  @override
  String get albumFolderArtistAlbumSingles => 'Artista / Álbum + Pistas';

  @override
  String get albumFolderArtistAlbumSinglesSubtitle =>
      'Artista/Álbum/ y Artista/pistas/';

  @override
  String get albumFolderArtistAlbumFlat => 'Artista / Álbum (sencillos planos)';

  @override
  String get albumFolderArtistAlbumFlatSubtitle =>
      'Artista/Álbum/ y Artista/canción.flac';

  @override
  String get downloadedAlbumDeleteSelected => 'Borrar seleccionados';

  @override
  String downloadedAlbumDeleteMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'pistas',
      one: 'pista',
    );
    return '¿Eliminar $count $_temp0 del historial?\n\nEsto también eliminará los archivos del almacenamiento.';
  }

  @override
  String downloadedAlbumSelectedCount(int count) {
    return '$count seleccionado';
  }

  @override
  String get downloadedAlbumTapToSelect => 'Toca las pistas para seleccionar';

  @override
  String downloadedAlbumDeleteCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'pistas',
      one: 'pista',
    );
    return '¡Eliminar $count $_temp0';
  }

  @override
  String get downloadedAlbumSelectToDelete => 'Seleccionar pistas a eliminar';

  @override
  String downloadedAlbumDiscHeader(int discNumber) {
    return 'Disco $discNumber';
  }

  @override
  String get recentTypeArtist => 'Artista';

  @override
  String get recentTypeAlbum => 'Álbum';

  @override
  String get recentTypeSong => 'Canción';

  @override
  String get recentTypePlaylist => 'Lista de reproducción';

  @override
  String get recentEmpty => 'Aún no hay entradas recientes';

  @override
  String get recentClearAllMessage =>
      '¿Borrar toda la actividad reciente? No se eliminarán los archivos del historial de descargas y de música.';

  @override
  String get recentShowAllDownloads => 'Mostrar todas las descargas';

  @override
  String recentPlaylistInfo(String name) {
    return 'Lista de reproducción: $name';
  }

  @override
  String get discographyDownload => 'Descargar Discografía';

  @override
  String get discographyDownloadAll => 'Descargar Todo';

  @override
  String discographyDownloadAllSubtitle(int count, int albumCount) {
    return '$count pistas de $albumCount lanzamientos';
  }

  @override
  String get discographyAlbumsOnly => 'Sólo álbumes';

  @override
  String discographyAlbumsOnlySubtitle(int count, int albumCount) {
    return '$count pistas de $albumCount álbumes';
  }

  @override
  String get discographySinglesOnly => 'Solo sencillos & mini-álbum';

  @override
  String discographySinglesOnlySubtitle(int count, int albumCount) {
    return '$count Pistas de $albumCount sencillos';
  }

  @override
  String get discographySelectAlbums => 'Seleccionar álbumes...';

  @override
  String get discographySelectAlbumsSubtitle =>
      'Elige álbumes o sencillos concretos';

  @override
  String get discographyFetchingTracks => 'Cargando canciones...';

  @override
  String discographyFetchingAlbum(int current, int total) {
    return 'Cargando $current de $total...';
  }

  @override
  String get discographyDownloadSelected => 'Descargar seleccionados';

  @override
  String discographyAddedToQueue(int count) {
    return 'Se agregaron $count canciones a la lista de espera';
  }

  @override
  String discographySkippedDownloaded(int added, int skipped) {
    return '$added añadidas, $skipped ya fueron descargadas';
  }

  @override
  String get discographyNoAlbums => 'No hay álbumes disponibles';

  @override
  String get discographyFailedToFetch =>
      'Hubo un error para encontrar algunos álbumes';

  @override
  String get sectionStorageAccess => 'Permiso de almacenamiento';

  @override
  String get allFilesAccess => 'Acceso a todos los archivos';

  @override
  String get allFilesAccessEnabledSubtitle =>
      'Puede escribir en cualquier carpeta';

  @override
  String get allFilesAccessDisabledSubtitle => 'Limitado a carpetas de media';

  @override
  String get allFilesAccessDescription =>
      'Habilite esto si tiene problemas de escritura al guardar en carpetas personalizadas. Android 13+ restringe el acceso a ciertas carpetas por defecto.';

  @override
  String get allFilesAccessDeniedMessage =>
      'Permiso denegado. Por favor habilite \'Acceso a todos los archivos\' de manera manual en la configuración del sistema.';

  @override
  String get allFilesAccessDisabledMessage =>
      'Acceso a todos los archivos desactivado. La aplicación usará acceso limitado al almacenamiento.';

  @override
  String get settingsLocalLibrary => 'Librería local';

  @override
  String get settingsLocalLibrarySubtitle =>
      'Escanear música y detectar duplicados';

  @override
  String get settingsCache => 'Almacenamiento & caché';

  @override
  String get settingsCacheSubtitle => 'Ver tamaño y borrar datos en caché';

  @override
  String get libraryTitle => 'Librería local';

  @override
  String get libraryScanSettings => 'Configuración de escaneo';

  @override
  String get libraryEnableLocalLibrary => 'Habilitar librería local';

  @override
  String get libraryEnableLocalLibrarySubtitle =>
      'Escanea y rastrea tu música existente';

  @override
  String get libraryFolder => 'Carpeta de la librería';

  @override
  String get libraryFolderHint => 'Toque para seleccionar la carpeta';

  @override
  String get libraryAddFolder => 'Añadir carpeta de biblioteca';

  @override
  String get libraryAddFolderSubtitle =>
      'Almacenamiento interno, tarjeta SD, o otro drive externo';

  @override
  String get librarySourceOnline => 'Online';

  @override
  String get librarySourceOffline =>
      'Offline. Reconecta el almacenamiento para restaurar estas pistas';

  @override
  String get librarySourceDisabled => 'Desactivado';

  @override
  String librarySourceScanCount(int scanned, int total, String progress) {
    return '$scanned archivos de $total escaneados ($progress%)';
  }

  @override
  String get libraryExternalStorage => 'Almacenamiento externo';

  @override
  String get libraryRemoveFolder => 'Eliminar carpeta de biblioteca';

  @override
  String get libraryRemoveFolderMessage =>
      '¿Deseas eliminar esta carpeta y sus pistas indexadas de Toadplayer? Los archivos de audio almacenados no se borrarán.';

  @override
  String libraryUnreadableFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count archivos no se pudieron leer',
      one: '1 archivo no se pudo leer',
    );
    return '$_temp0';
  }

  @override
  String get libraryUnreadableFilesTitle => 'Archivos ilegibles';

  @override
  String get libraryUnreadableFilesSubtitle =>
      'Estos archivos se dejaron fuera de tu biblioteca. Pueden estar dañados, seguir descargándose o estar bloqueados por la aplicación de almacenamiento.';

  @override
  String get libraryUnreadableFilesAction => 'Ver qué archivos y por qué';

  @override
  String libraryUnreadableFilesMore(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count archivos más no están en la lista',
      one: '1 archivo más no está en la lista',
    );
    return '$_temp0';
  }

  @override
  String get libraryShowDuplicateIndicator => 'Mostrar indicador de duplicados';

  @override
  String get libraryShowDuplicateIndicatorSubtitle =>
      'Mostrar al buscar canciones existentes';

  @override
  String get libraryAutoScan => 'Escaneo automático';

  @override
  String get libraryAutoScanSubtitle =>
      'Escanear automáticamente tu librería por nuevos archivos';

  @override
  String get libraryAutoScanOff => 'Apagado';

  @override
  String get libraryAutoScanOnOpen => 'Cada vez que la aplicación se abra';

  @override
  String get libraryAutoScanDaily => 'Diariamente';

  @override
  String get libraryAutoScanWeekly => 'Semanalmente';

  @override
  String get libraryActions => 'Acciones';

  @override
  String get libraryScan => 'Escanear librería';

  @override
  String get libraryScanSubtitle => 'Escanear archivos de audio';

  @override
  String get libraryScanSelectFolderFirst => 'Primero seleccione una carpeta';

  @override
  String get libraryCleanupMissingFiles => 'Limpiar archivos faltantes';

  @override
  String get libraryCleanupMissingFilesSubtitle =>
      'Remover entradas para archivos que ya no existen';

  @override
  String get libraryClear => 'Limpiar librería';

  @override
  String get libraryClearSubtitle => 'Remover todas las canciones escaneadas';

  @override
  String get libraryClearConfirmTitle => 'Limpiar librería';

  @override
  String get libraryClearConfirmMessage =>
      'Esto removerá todas las canciones escaneadas de tu librería. Los archivos de música no serán eliminados.';

  @override
  String get libraryAbout => 'Acerca de la librería local';

  @override
  String get libraryAboutDescription =>
      'Escanea tu colección de música para detectar duplicados al descargar. Permite formatos FLAC, M4A, MP3, Opus, y OGG. La meta data será leída de los archivos cuando sea posible.';

  @override
  String libraryTracksUnit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'pistas',
      one: 'pista',
    );
    return '$_temp0';
  }

  @override
  String libraryFilesUnit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'archivos',
      one: 'archivo',
    );
    return '$_temp0';
  }

  @override
  String libraryLastScanned(String time) {
    return 'Último escaneo: $time';
  }

  @override
  String get libraryLastScannedNever => 'Nunca';

  @override
  String get libraryScanning => 'Escaneando...';

  @override
  String get libraryScanFinalizing => 'Finalizando la biblioteca...';

  @override
  String get libraryScanPaused => 'Scan paused';

  @override
  String libraryScanProgress(String progress, int total) {
    return '$progress% de $total archivos';
  }

  @override
  String get libraryInLibrary => 'En la biblioteca';

  @override
  String libraryRemovedMissingFiles(int count) {
    return 'Eliminados $count archivos faltantes de la biblioteca';
  }

  @override
  String get libraryCleared => 'Biblioteca vaciada';

  @override
  String get libraryStorageAccessRequired =>
      'Permiso de acceso al almacenamiento requerido';

  @override
  String get libraryStorageAccessMessage =>
      'Toadplayer necesita acceso al almacenamiento para escanear tu biblioteca musical. Por favor, concede el permiso en los ajustes.';

  @override
  String get librarySourceDownloaded => 'Descargado';

  @override
  String get librarySourceLocal => 'En el dispositivo';

  @override
  String get libraryFilterAll => 'Todos';

  @override
  String get libraryReEnrichAll => 'Re-enrich All Tracks';

  @override
  String get libraryReEnrichAllSubtitle =>
      'Look up and fill in metadata for every track in your Library, then review the changes';

  @override
  String get libraryReEnrichAllEmpty =>
      'No tracks to re-enrich. Tracks from network connections are not included.';

  @override
  String get libraryReEnrichAllBusy =>
      'Wait for the Library scan to finish, then try again.';

  @override
  String get libraryFilterDownloaded => 'Descargado';

  @override
  String get libraryFilterLocal => 'En el dispositivo';

  @override
  String get libraryFilterTitle => 'Filtros';

  @override
  String get libraryFilterReset => 'Restablecer';

  @override
  String get libraryFilterApply => 'Aplicar';

  @override
  String get libraryFilterSource => 'Fuente';

  @override
  String get libraryFilterQuality => 'Calidad';

  @override
  String get libraryFilterQualityHiRes => 'Hi-Res (24-bit)';

  @override
  String get libraryFilterQualityCD => 'CD (16-bit)';

  @override
  String get libraryFilterQualityLossy => 'Con pérdida';

  @override
  String get libraryFilterFormat => 'Formato';

  @override
  String get libraryFilterMetadata => 'Información';

  @override
  String get libraryFilterMetadataComplete => 'Información completa';

  @override
  String get libraryFilterMetadataMissingAny => 'Falta información (meta-data)';

  @override
  String get libraryFilterMetadataMissingYear => 'Falta año';

  @override
  String get libraryFilterMetadataMissingGenre => 'Falta género';

  @override
  String get libraryFilterMetadataMissingAlbumArtist =>
      'Falta artiste de álbum';

  @override
  String get libraryFilterSort => 'Ordenar';

  @override
  String get libraryFilterSortLatest => 'Reciente';

  @override
  String get libraryFilterSortOldest => 'Más antiguo';

  @override
  String get libraryFilterSortSizeLargest => 'Tamaño (de mayor a menor)';

  @override
  String get libraryFilterSortSizeSmallest => 'Tamaño (de menor a mayor)';

  @override
  String get libraryFilterSortAlbumAsc => 'Álbum (A-Z)';

  @override
  String get libraryFilterSortAlbumDesc => 'Álbum (Z-A)';

  @override
  String get libraryFilterSortGenreAsc => 'Género (A-Z)';

  @override
  String get libraryFilterSortGenreDesc => 'Género (Z-A)';

  @override
  String get timeJustNow => 'Hace un momento';

  @override
  String timeMinutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutos atrás',
      one: 'hace 1 minuto',
    );
    return '$_temp0';
  }

  @override
  String timeHoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count horas atrás',
      one: '1 hora atrás',
    );
    return '$_temp0';
  }

  @override
  String get tutorialWelcomeTitle => '¡Bienvenido a Toadplayer!';

  @override
  String get tutorialWelcomeDesc =>
      'Aprende a buscar música con extensiones, a elegir la calidad que desees y a administrar las descargas en Toadplayer.';

  @override
  String get tutorialWelcomeTip1 =>
      'Busca con una extensión instalada o pega un enlace de música compatible';

  @override
  String get tutorialWelcomeTip2 =>
      'Elige entre las calidades de audio que ofrece tu proveedor de descargas';

  @override
  String get tutorialWelcomeTip3 =>
      'Incorpora metadatos, portadas, letras e información sobre el lanzamiento automáticamente';

  @override
  String get tutorialSearchTitle => 'Buscando música';

  @override
  String get tutorialSearchDesc =>
      'Busca con la extensión que hayas seleccionado o pega un enlace de música compatible.';

  @override
  String get tutorialDownloadTitle => 'Descargando música';

  @override
  String get tutorialDownloadDesc =>
      'Elige una calidad disponible, inicia la descarga y sigue su avance en la fila.';

  @override
  String get tutorialLibraryTitle => 'Tu biblioteca';

  @override
  String get tutorialLibraryDesc =>
      'La música descargada y escaneada localmente se organiza en tu biblioteca.';

  @override
  String get tutorialLibraryTip1 =>
      'Administra las descargas activas, pendientes y completadas desde la cola de la Biblioteca';

  @override
  String get tutorialLibraryTip2 =>
      'Toca una canción para reproducirla con el reproductor integrado';

  @override
  String get tutorialLibraryTip3 =>
      'Explora canciones, álbumes y listas de reproducción en vista de lista o de cuadrícula';

  @override
  String get tutorialExtensionsTitle => 'Extensiones';

  @override
  String get tutorialExtensionsDesc =>
      'Las extensiones añaden funciones de búsqueda, descarga, metadatos, letras de canciones y otras integraciones.';

  @override
  String get tutorialExtensionsTip1 =>
      'Navega por la pestaña de repo para descubrir extensiones';

  @override
  String get tutorialExtensionsTip2 =>
      'Selecciona proveedores para búsquedas, descargas, metadatos y opciones alternativas';

  @override
  String get tutorialExtensionsTip3 =>
      'Conecta las cuentas cuando sea necesario y mantén las extensiones actualizadas';

  @override
  String get tutorialSettingsTitle => 'Personaliza tu experiencia';

  @override
  String get tutorialSettingsDesc =>
      'Ajusta las descargas, la reproducción, el comportamiento de la biblioteca, la apariencia y el almacenamiento.';

  @override
  String get tutorialSettingsTip1 =>
      'Cambia la ubicación de las descargas y la organización de las carpetas';

  @override
  String get tutorialSettingsTip2 =>
      'Configurar la calidad, la concurrencia, los nombres de archivo y las preferencias de conversión';

  @override
  String get tutorialSettingsTip3 =>
      'Personaliza el tema y el aspecto de la aplicación';

  @override
  String get tutorialReadyMessage =>
      'Ya estás listo. Selecciona tus extensiones y, a continuación, busca o pega un enlace compatible.';

  @override
  String whatsNewIntroTitle(String version) {
    return 'Toadplayer $version is here';
  }

  @override
  String get whatsNewIntroDesc =>
      'Our biggest update yet. Here\'s a quick look at what\'s new.';

  @override
  String get whatsNewLinkTitle => 'Toadplayer Link';

  @override
  String get whatsNewLinkDesc =>
      'Pair your phone and computer on the same network. Toadplayer Link is in beta.';

  @override
  String get whatsNewLinkPlayTitle => 'Play across devices';

  @override
  String get whatsNewLinkPlayBody =>
      'Browse your computer\'s library on your phone, control what it plays, and hand playback over without losing your place.';

  @override
  String get whatsNewLinkTransferTitle => 'Move songs both ways';

  @override
  String get whatsNewLinkTransferBody =>
      'Send songs to your computer or save them to your phone, right from the song menu.';

  @override
  String get whatsNewLinkSyncTitle => 'Stay in sync';

  @override
  String get whatsNewLinkSyncBody =>
      'Collections and listening history stay the same on paired devices.';

  @override
  String get whatsNewHomeTitle => 'A Home that learns';

  @override
  String get whatsNewHomeDesc =>
      'Mixes and autoplay now follow how you actually listen.';

  @override
  String get whatsNewHomeMixesTitle => 'Mixes from your Library';

  @override
  String get whatsNewHomeMixesBody =>
      'New mixes built from your own songs, including a mix for each genre.';

  @override
  String get whatsNewHomeAutoplayTitle => 'Smarter autoplay';

  @override
  String get whatsNewHomeAutoplayBody =>
      'Autoplay follows your listening session and learns from your favorites, playlists and replays.';

  @override
  String get whatsNewHomeAnalysisTitle => 'Song analysis';

  @override
  String get whatsNewHomeAnalysisBody =>
      'Toadplayer can analyze how your songs sound for closer picks. It stays off until you turn it on in Settings.';

  @override
  String get whatsNewPlayerTitle => 'Player and lyrics';

  @override
  String get whatsNewPlayerDesc =>
      'Smoother playback, and lyrics in any language.';

  @override
  String get whatsNewPlayerGaplessTitle => 'Gapless playback';

  @override
  String get whatsNewPlayerGaplessBody =>
      'Albums flow from one song into the next without a pause.';

  @override
  String get whatsNewPlayerTranslateTitle => 'Translate lyrics';

  @override
  String get whatsNewPlayerTranslateBody =>
      'Translate or romanize lyrics with an AI provider you set up.';

  @override
  String get whatsNewPlayerTimingTitle => 'Lyrics timing';

  @override
  String get whatsNewPlayerTimingBody =>
      'Move synced lyrics earlier or later when they drift from the song.';

  @override
  String get whatsNewPlayerAutoTitle => 'Android Auto';

  @override
  String get whatsNewPlayerAutoBody =>
      'Browse and play your Library from your car\'s screen.';

  @override
  String get whatsNewPlayerExclusiveTitle => 'Exclusive output';

  @override
  String get whatsNewPlayerExclusiveBody =>
      'Send audio straight to your output device without the system mixer.';

  @override
  String get whatsNewLibraryTitle => 'Library and search';

  @override
  String get whatsNewLibraryDesc => 'New ways to find and organize your music.';

  @override
  String get whatsNewLibraryFoldersTitle => 'Browse by folder';

  @override
  String get whatsNewLibraryFoldersBody =>
      'Explore your Library the way it\'s stored on disk.';

  @override
  String get whatsNewLibrarySuggestionsTitle => 'Suggested songs';

  @override
  String get whatsNewLibrarySuggestionsBody =>
      'Albums, singles and playlists now suggest songs that fit.';

  @override
  String get whatsNewLibraryRecognizeTitle => 'Recognize music';

  @override
  String get whatsNewLibraryRecognizeBody =>
      'Tap the microphone in Search to find out what\'s playing nearby.';

  @override
  String get whatsNewLibraryPlaylistsTitle => 'Better playlists';

  @override
  String get whatsNewLibraryPlaylistsBody =>
      'Reorder songs, create a playlist from a folder, or import playlist files.';

  @override
  String get whatsNewFasterTitle => 'Faster everywhere';

  @override
  String get whatsNewFasterDesc =>
      'Quicker and lighter, especially with large libraries.';

  @override
  String get whatsNewFasterLibraryTitle => 'A quicker Library';

  @override
  String get whatsNewFasterLibraryBody =>
      'Tabs and albums open faster, and scrolling stays smooth.';

  @override
  String get whatsNewFasterNetworkTitle => 'Faster network music';

  @override
  String get whatsNewFasterNetworkBody =>
      'Network shares scan many times faster, and Subsonic servers sync with far fewer requests.';

  @override
  String get whatsNewFasterQueueTitle => 'Long queues that last';

  @override
  String get whatsNewFasterQueueBody =>
      'Large queues save quickly and come back after a restart.';

  @override
  String get whatsNewFasterBackgroundTitle => 'Lighter in the background';

  @override
  String get whatsNewFasterBackgroundBody =>
      'The app starts faster and does less work while music plays.';

  @override
  String get whatsNewDone => 'Start listening';

  @override
  String whatsNewAboutTitle(String version) {
    return 'What\'s new in $version';
  }

  @override
  String get libraryForceFullScan => 'Forzar análisis completo';

  @override
  String get libraryForceFullScanSubtitle =>
      'Volver a escanear archivos, ignorando caché';

  @override
  String get cleanupOrphanedDownloads => 'Borrar descargar huérfanas';

  @override
  String get cleanupOrphanedDownloadsSubtitle =>
      'Borrar historial de archivos que no existen';

  @override
  String cleanupOrphanedDownloadsResult(int count) {
    return 'Se removieron $count entradas huérfanas del historial.';
  }

  @override
  String get cleanupOrphanedDownloadsNone =>
      'Sin entradas huérfanas encontradas';

  @override
  String get cacheTitle => 'Almacenamiento y caché';

  @override
  String get cacheSummaryTitle => 'Resumen de la caché';

  @override
  String get cacheSummarySubtitle =>
      'Limpiar la caché no eliminará los archivos de música descargados.';

  @override
  String cacheEstimatedTotal(String size) {
    return 'Uso estimado de caché: $size';
  }

  @override
  String get cacheSectionStorage => 'Datos almacenados en caché';

  @override
  String get cacheSectionMaintenance => 'Mantenimiento';

  @override
  String get cacheAppDirectory => 'Directorio de caché';

  @override
  String get cacheAppDirectoryDesc =>
      'Respuestas HTTP, datos WebView y otros datos temporales.';

  @override
  String get cacheTempDirectory => 'Directorio temporal';

  @override
  String get cacheTempDirectoryDesc =>
      'Archivos temporales de descargas y conversión de audio.';

  @override
  String get cacheCoverImage => 'Caché de imágenes de portada';

  @override
  String get cacheCoverImageDesc =>
      'Álbum descargado y portada de pista. Se volverá a descargar cuando se vea.';

  @override
  String get cacheLibraryCover => 'Caché de portada (biblioteca)';

  @override
  String get cacheLibraryCoverDesc =>
      'Portada extraída de archivos locales. Se extraerá de nuevo en el próximo escaneo.';

  @override
  String get libraryPlaybackNormalization => 'Normalización de volumen';

  @override
  String get libraryPlaybackNormalizationSubtitle =>
      'Equaliza el volumen entre las pistas utilizando sus etiquetas ReplayGain o R128, cuando estén presentes';

  @override
  String get playbackNormalizationMode => 'Modo de ganancia';

  @override
  String get playbackNormalizationModeTrack => 'Pista';

  @override
  String get playbackNormalizationModeAlbum => 'Álbum';

  @override
  String get playbackNormalizationPreamp => 'Pre-amp';

  @override
  String playbackNormalizationPreampValue(String gain, String target) {
    return '$gain dB (objetivo $target LUFS)';
  }

  @override
  String get playbackNormalizationPreampHint =>
      'Los valores más bajos suenan más bajo. La normalización solo reduce el volumen de las pistas, por lo que nunca provoca saturación.';

  @override
  String get cacheAudioAnalysis => 'Caché de análisis de audio';

  @override
  String get cacheAudioAnalysisDesc =>
      'Espectrogramas y resultados de análisis guardados. Se volverán a analizar la próxima vez que se abra el programa.';

  @override
  String get cacheExploreFeed => 'Explorar caché de inicio';

  @override
  String get cacheExploreFeedDesc =>
      'Explorar contenido de pestaña (nuevas versiones, tendencias). Se actualiza en cada visita.';

  @override
  String get cacheTrackLookup => 'Caché de búsqueda';

  @override
  String get cacheTrackLookupDesc =>
      'Búsqueda de ID de Spotify/Deezer. Limpiar podría ralentizar algunas búsquedas.';

  @override
  String get cacheCleanupUnusedDesc =>
      'Borre el historial de archivos huérfanos y las entradas en la biblioteca.';

  @override
  String get cacheNoData => 'No hay datos en caché';

  @override
  String cacheSizeWithFiles(String size, int count) {
    return '$size en $count archivos';
  }

  @override
  String cacheSizeOnly(String size) {
    return '$size';
  }

  @override
  String cacheEntries(int count) {
    return '$count registros';
  }

  @override
  String cacheClearSuccess(String target) {
    return 'Limpiado: $target';
  }

  @override
  String get cacheClearConfirmTitle => '¿Limpiar caché?';

  @override
  String cacheClearConfirmMessage(String target) {
    return 'Esto borrará los datos en caché para $target. Los archivos descargados no se eliminan.';
  }

  @override
  String get cacheClearAllConfirmTitle => '¿Quieres limpiar todas las cachés?';

  @override
  String get cacheClearAllConfirmMessage =>
      'Esto borrará todo el caché de categorías en esta página. Los archivos descargados no se eliminan.';

  @override
  String get cacheClearAll => 'Borrar todo el caché';

  @override
  String get cacheCleanupUnused => 'Limpiar datos sin usar';

  @override
  String get cacheCleanupUnusedSubtitle =>
      'Borrar historial de descargas huérfanas y entradas  faltantes en biblioteca';

  @override
  String cacheCleanupResult(int downloadCount, int libraryCount) {
    return 'Limpieza copletada: $downloadCount descargas huéranas, $libraryCount entradas faltantes de librería';
  }

  @override
  String get cacheRefreshStats => 'Actualizar estadisticas';

  @override
  String get trackSaveCoverArt => 'Guardar portada';

  @override
  String get trackSaveLyrics => 'Guardar letra (.lrc)';

  @override
  String get trackSaveLyricsProgress => 'Guardando letra...';

  @override
  String get trackReEnrich => 'Volver a enriquecer';

  @override
  String get trackReEnrichBatchSubtitle =>
      'Elige entre una actualización en línea o manual, y luego revisa cada cambio antes de escribir';

  @override
  String get trackReEnrichFieldCover => 'Carátula';

  @override
  String get trackReEnrichFieldLyrics => 'Letra';

  @override
  String get trackReEnrichFieldBasicTags => 'Álbum, Artista del Álbum';

  @override
  String get trackReEnrichFieldTrackInfo => 'Número de pista(s) y disco(s).';

  @override
  String get trackReEnrichFieldReleaseInfo => 'Fecha e ISRC';

  @override
  String get trackReEnrichFieldExtra => 'Género, etiqueta, derechos de autor';

  @override
  String get trackReEnrichSelectAll => 'Seleccionar todos';

  @override
  String get trackReEnrichModeIsrc => 'Solo ISRC';

  @override
  String get trackReEnrichModeIsrcSubtitle =>
      'Busca y agrega el identificador de la grabación sin modificar las demás etiquetas';

  @override
  String get trackReEnrichModeMissing => 'Completa las etiquetas que faltan';

  @override
  String get trackReEnrichModeMissingSubtitle =>
      'Conserva los valores existentes y llena solo los campos que estén vacíos';

  @override
  String get trackReEnrichModeReplace =>
      'Actualizar las etiquetas seleccionadas';

  @override
  String get trackReEnrichModeReplaceSubtitle =>
      'Elige qué valores existentes pueden ser reemplazados por metadatos en línea';

  @override
  String get trackReEnrichModeManual => 'Establecer valores comunes';

  @override
  String get trackReEnrichModeManualSubtitle =>
      'Aplica los mismos valores a todas las pistas seleccionadas';

  @override
  String get trackReEnrichManualFieldsTitle => 'Valores que se deben aplicar';

  @override
  String get trackReEnrichManualHint =>
      'Deja un campo en blanco para mantener su valor actual. Los títulos de las pistas, los números y los códigos ISRC no se modifican.';

  @override
  String get trackReEnrichFieldsTitle => 'Etiquetas para actualizar';

  @override
  String get trackReEnrichReview => 'Revisar cambios';

  @override
  String get trackReEnrichReviewTitle => 'Revisar los cambios en los metadatos';

  @override
  String trackReEnrichReviewSubtitle(int changeCount, int trackCount) {
    return '$changeCount cambios propuestos en $trackCount pistas';
  }

  @override
  String get trackReEnrichNoChanges =>
      'No se encontraron cambios en los metadatos de las pistas seleccionadas.';

  @override
  String get trackReEnrichApplyChanges => 'Aplicar cambios';

  @override
  String get trackReEnrichRefreshOnline => 'Actualizar desde Internet';

  @override
  String get trackEditMetadata => 'Editar información';

  @override
  String trackCoverSaved(String fileName) {
    return 'Carátula guardada en $fileName';
  }

  @override
  String get trackCoverNoSource => 'No hay fuente de portadas disponible';

  @override
  String trackLyricsSaved(String fileName) {
    return 'Letra guardada en $fileName';
  }

  @override
  String get trackReEnrichProgress => 'Obteniendo información...';

  @override
  String get trackReEnrichSearching => 'Buscando información en línea...';

  @override
  String get trackReEnrichPreparing =>
      'Preparando los cambios en los metadatos...';

  @override
  String get trackReEnrichSuccess => 'Información ';

  @override
  String get trackReEnrichMetadataSaved => 'Metadatos guardados';

  @override
  String get trackReEnrichLyricsUpdated => 'Letra actualizada';

  @override
  String get trackReEnrichLyricsPreserved =>
      'No se encontraron nuevas letras; se mantuvieron las letras existentes';

  @override
  String get trackReEnrichLyricsDisabled =>
      'Las letras no se actualizan: la descarga de letras está desactivada en Configuración';

  @override
  String get trackReEnrichFfmpegFailed =>
      'Información incrustada con FFmpeg falló';

  @override
  String get queueFlacAction => 'Encolar FLAC';

  @override
  String queueFlacConfirmMessage(int count) {
    return 'Buscar coincidencias en línea para las pistas seleccionadas y en cola de descargas\n\nArchivos existentes no serán afectados o borrados.\n\nSolo coincidencia de alta confianza serán puestas automáticamente.\n\n$count seleccionado';
  }

  @override
  String get queueFlacNoReliableMatches =>
      'Sin coincidencias en línea de confianza';

  @override
  String queueFlacQueuedWithSkipped(int addedCount, int skippedCount) {
    return 'Añadido $addedCount pistas a la cola, omitidas $skippedCount';
  }

  @override
  String trackSaveFailed(String error) {
    return 'Error: $error';
  }

  @override
  String get trackConvertFormat => 'Convertir formato';

  @override
  String get trackConvertTitle => 'Convertir audio';

  @override
  String get trackConvertTargetFormat => 'Formato de destino';

  @override
  String get trackConvertBitrate => 'Tasa de bits';

  @override
  String get trackConvertKeepOriginal => 'Mantener archivo original';

  @override
  String get trackConvertKeepOriginalDescription =>
      'Agrega el archivo convertido como una entrada independiente en la biblioteca';

  @override
  String get trackConvertConfirmTitle => 'Confirmar conversión';

  @override
  String trackConvertConfirmMessage(
    String sourceFormat,
    String targetFormat,
    String bitrate,
  ) {
    return '¿Convertir desde $sourceFormat a $targetFormat a $bitrate?';
  }

  @override
  String trackConvertConfirmMessageLossless(
    String sourceFormat,
    String targetFormat,
  ) {
    return 'Convertir de $sourceFormat a $targetFormat? \n(Sin pérdidas)\n\nEl archivo original será eliminado después de la conversión.';
  }

  @override
  String trackConvertConfirmKeepOriginal(
    String sourceFormat,
    String targetFormat,
  ) {
    return '¿Convertir desde $sourceFormat a $targetFormat?\n\nEl archivo original se conservará y el archivo convertido se agregará como una entrada independiente en la biblioteca.\n';
  }

  @override
  String get trackConvertLosslessHint =>
      'Conversión sin pérdidas — sin pérdida de calidad';

  @override
  String get trackConvertConverting => 'Convirtiendo Audio...';

  @override
  String trackConvertSuccess(String format) {
    return 'Convertido a $format con éxito';
  }

  @override
  String get trackConvertFailed => 'La conversión ha fallado';

  @override
  String get cueSplitTitle => 'Dividir hoja CUE';

  @override
  String cueSplitAlbum(String album) {
    return 'Álbum: $album';
  }

  @override
  String cueSplitArtist(String artist) {
    return 'Artista: $artist';
  }

  @override
  String cueSplitTrackCount(int count) {
    return '$count pistas';
  }

  @override
  String get cueSplitConfirmTitle => 'Dividir álbum CUE';

  @override
  String cueSplitConfirmMessage(String album, int count) {
    return '¿Dividir \"$album\" en archivos FLAC individuales $count?\n\nLos archivos se guardarán en el mismo directorio.';
  }

  @override
  String cueSplitSplitting(int current, int total) {
    return 'Dividiendo la hoja CUE... ($current/$total)';
  }

  @override
  String cueSplitSuccess(int count) {
    return 'Se dividió correctamente en $count pistas';
  }

  @override
  String get cueSplitFailed => 'Fallo al dividir CUE';

  @override
  String get cueSplitNoAudioFile =>
      'No se encontró el archivo de audio para esta hoja CUE';

  @override
  String get cueSplitButton => 'Dividir en pistas';

  @override
  String get actionCreate => 'Crear';

  @override
  String get collectionFoldersTitle => 'Mis carpetas';

  @override
  String get collectionWishlist => 'Lista de deseos';

  @override
  String get collectionLoved => 'Me gusta';

  @override
  String get collectionFavoriteArtists => 'Artistas favoritos';

  @override
  String get collectionPlaylist => 'Lista de reproducción';

  @override
  String get collectionAddToPlaylist => 'Añadir a la lista';

  @override
  String get collectionCreatePlaylist => 'Crear lista de reproducción';

  @override
  String get collectionNoPlaylistsYet => 'Aún no hay listas de reproducción';

  @override
  String collectionPlaylistTracks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pistas',
      one: '1 pista',
    );
    return '$_temp0';
  }

  @override
  String collectionArtistCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count artistas',
      one: '1 artista',
    );
    return '$_temp0';
  }

  @override
  String collectionAddedToPlaylist(String playlistName) {
    return 'Añadida a \"$playlistName\"';
  }

  @override
  String collectionAlreadyInPlaylist(String playlistName) {
    return 'Ya está en \"$playlistName\"';
  }

  @override
  String get collectionPlaylistNameHint => 'Nombre de la lista de reproducción';

  @override
  String get collectionPlaylistNameRequired =>
      'El nombre de la lista de reproducción es obligatorio';

  @override
  String get collectionRenamePlaylist => 'Renombrar lista de reproducción';

  @override
  String get collectionDeletePlaylist => 'Eliminar lista de reproducción';

  @override
  String get collectionPlaylistRenamed => 'Lista de reproducción renombrada';

  @override
  String get collectionWishlistEmptyTitle => 'La lista de deseos está vacía';

  @override
  String get collectionWishlistEmptySubtitle =>
      'Toca el botón + en las pistas para guardar las que quieras descargar más tarde';

  @override
  String get collectionLovedEmptyTitle => 'La carpeta «Me gusta» está vacía';

  @override
  String get collectionLovedEmptySubtitle =>
      'Toca «Me gusta» en las pistas para guardar tus favoritas.';

  @override
  String get collectionFavoriteArtistsEmptyTitle =>
      'Aún no hay artistas favoritos';

  @override
  String get collectionFavoriteArtistsEmptySubtitle =>
      'Toca el corazón en la página del artista para guardarlo aquí';

  @override
  String get collectionPlaylistEmptyTitle =>
      'La lista de reproducción está vacía';

  @override
  String get collectionPlaylistEmptySubtitle =>
      'Mantén presionado el botón + en cualquier pista para añadirla aquí';

  @override
  String get collectionRemoveFromPlaylist =>
      'Quitar de la lista de reproducción';

  @override
  String get collectionRemoveFromFolder => 'Quitar de la carpeta';

  @override
  String collectionAddedToLoved(String trackName) {
    return '\"$trackName\" se agregó a «Me gusta»';
  }

  @override
  String collectionRemovedFromLoved(String trackName) {
    return '\"$trackName\" se eliminó de «Me gusta»';
  }

  @override
  String collectionAddedToWishlist(String trackName) {
    return '\"$trackName\" se agregó a la lista de deseos';
  }

  @override
  String collectionRemovedFromWishlist(String trackName) {
    return '\"$trackName\" se eliminó de la lista de deseos';
  }

  @override
  String collectionAddedToFavoriteArtists(String artistName) {
    return '\"$artistName\" se agregó a Artistas favoritos';
  }

  @override
  String collectionRemovedFromFavoriteArtists(String artistName) {
    return '\"$artistName\" se eliminó de Artistas favoritos';
  }

  @override
  String get trackOptionAddToLoved => 'Agregar a «Me gusta»';

  @override
  String get trackOptionRemoveFromLoved => 'Quitar de «Me gusta»';

  @override
  String get trackOptionAddToWishlist => 'Añadir a la lista de deseos';

  @override
  String get trackOptionRemoveFromWishlist => 'Quitar de la lista de deseos';

  @override
  String get artistOptionAddToFavorites => 'Añadir a artistas favoritos';

  @override
  String get artistOptionRemoveFromFavorites => 'Quitar de Artistas favoritos';

  @override
  String get collectionPlaylistChangeCover => 'Cambiar imagen de portada';

  @override
  String get collectionPlaylistRemoveCover => 'Eliminar imagen de portada';

  @override
  String selectionConvertCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'pistas',
      one: 'pista',
    );
    return 'Convertir $count $_temp0';
  }

  @override
  String get selectionConvertNoConvertible =>
      'No se seleccionaron pistas que se puedan convertir';

  @override
  String get selectionBatchConvertConfirmTitle => 'Conversión por lotes';

  @override
  String selectionBatchConvertConfirmMessage(
    int count,
    String format,
    String bitrate,
  ) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'pistas',
      one: 'pista',
    );
    return '¿Convertir $count $_temp0 a $format con una tasa de bits de $bitrate?\n\nLos archivos originales se eliminarán después de la conversión.';
  }

  @override
  String selectionBatchConvertConfirmMessageLossless(int count, String format) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'pistas',
      one: 'pista',
    );
    return '¿Convertir $count $_temp0 a $format? (Sin pérdida — no hay pérdida de calidad)\n\nLos archivos originales se eliminarán después de la conversión.';
  }

  @override
  String selectionBatchConvertConfirmKeepOriginal(int count, String format) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    return '¿Convertir $count $_temp0 a $format?\n\nLos archivos originales se conservarán y los archivos convertidos se agregarán como entradas separadas en la biblioteca.';
  }

  @override
  String selectionBatchConvertSuccess(int success, int total, String format) {
    return 'Se convirtieron $success de $total pistas a $format';
  }

  @override
  String downloadedAlbumDownloadedCount(int count) {
    return '$count descargado';
  }

  @override
  String get downloadUseAlbumArtistForFoldersAlbumSubtitle =>
      'Carpeta nombrada según la etiqueta Artista del álbum';

  @override
  String get downloadUseAlbumArtistForFoldersTrackSubtitle =>
      'Carpeta nombrada según la etiqueta Artista de la pista';

  @override
  String get lyricsProvidersTitle => 'Prioridad de proveedores de letras';

  @override
  String get lyricsProvidersDescription =>
      'Activa, desactiva y reordena las fuentes de letras. Los proveedores se prueban de arriba hacia abajo hasta encontrar letras.';

  @override
  String get lyricsProvidersInfoText =>
      'Los proveedores de letras de extensiones se ejecutan antes que los proveedores integrados. Debe permanecer habilitado al menos un proveedor.';

  @override
  String lyricsProvidersEnabledSection(int count) {
    return 'Activados ($count)';
  }

  @override
  String lyricsProvidersDisabledSection(int count) {
    return 'Desactivados ($count)';
  }

  @override
  String get lyricsProvidersAtLeastOne =>
      'Debe permanecer habilitado al menos un proveedor';

  @override
  String get lyricsProvidersSaved =>
      'Prioridad de proveedores de letras guardada';

  @override
  String get lyricsProvidersDiscardContent =>
      'Tienes cambios sin guardar que se perderán.';

  @override
  String get lyricsProviderLrclibDesc =>
      'Base de datos de letras sincronizadas de código abierto';

  @override
  String get lyricsProviderNeteaseDesc =>
      'NetEase Cloud Music (buena para canciones asiáticas)';

  @override
  String get lyricsProviderMusixmatchDesc =>
      'La base de datos de letras más grande (multilingüe)';

  @override
  String get lyricsProviderAppleMusicDesc =>
      'Letras sincronizadas palabra por palabra (a través de proxy)';

  @override
  String get lyricsProviderQqMusicDesc =>
      'QQ Music (ideal para canciones chinas, API directa)';

  @override
  String get lyricsProviderLyricsPlusDesc =>
      'Letras tipo karaoke palabra por palabra (Apple/ Musixmatch/Spotify/QQ, a través de proxy)';

  @override
  String get lyricsProviderToadLrcDesc =>
      'Letras de Apple Music palabra por palabra de Toad-LRC';

  @override
  String get lyricsProviderLrcRedDesc =>
      'Letras de Apple Music palabra por palabra, emparejadas por grabación';

  @override
  String get lyricsProviderBetterLyricsDesc =>
      'Letras de Apple Music palabra por palabra para canciones populares';

  @override
  String get lyricsProviderExtensionDesc => 'Proveedor de extensiones';

  @override
  String get safMigrationTitle =>
      'Se requiere actualización del almacenamiento';

  @override
  String get safMigrationMessage1 =>
      'Toadplayer ahora utiliza el Android Storage Access Framework (SAF) para las descargas. Esto soluciona los errores de «permiso denegado» en Android 10 y versiones posteriores.';

  @override
  String get safMigrationMessage2 =>
      'Por favor, vuelve a seleccionar la carpeta de descargas para cambiar al nuevo sistema de almacenamiento.';

  @override
  String get safMigrationSuccess =>
      'Carpeta de descargas actualizada al modo SAF';

  @override
  String get settingsDonate => 'Apoya el desarrollo';

  @override
  String get settingsDonateSubtitle => 'Compra un café al desarrollador';

  @override
  String get settingsBackup => 'Copia de seguridad y Restauración';

  @override
  String get settingsBackupSubtitle =>
      'Transfiere tu biblioteca, historial y configuración a un nuevo dispositivo';

  @override
  String get backupTitle => 'Copia de seguridad y Restauración';

  @override
  String get backupExportSectionTitle => 'Crear copia de seguridad';

  @override
  String get backupExportSectionDescription =>
      'Guarda tu configuración, historial de descargas, pistas con «Me gusta», lista de deseos, artistas favoritos y listas de reproducción en un solo archivo que puedes conservar o transferir a otro teléfono.';

  @override
  String get backupExportButton => 'Crear archivo de copia de seguridad';

  @override
  String get backupImportSectionTitle => 'Restaurar copia de seguridad';

  @override
  String get backupImportSectionDescription =>
      'Selecciona un archivo de copia de seguridad para restaurar tus datos. Esto reemplazará la configuración, el historial y la biblioteca actuales en este dispositivo.';

  @override
  String get backupImportButton => 'Elegir archivo de copia de seguridad';

  @override
  String get backupCreated => 'Copia de seguridad creada';

  @override
  String get backupCreateFailed => 'No se pudo crear la copia de seguridad';

  @override
  String get backupRestoreConfirmTitle => '¿Restaurar esta copia de seguridad?';

  @override
  String get backupRestoreConfirmButton => 'Restaurar';

  @override
  String get backupRestored => 'Copia de seguridad restaurada correctamente';

  @override
  String get backupRestoreFailed => 'Fallo al restaurar la copia de seguridad';

  @override
  String get backupInvalidFile =>
      'Este archivo no es una copia de seguridad válida de Toadplayer';

  @override
  String get backupRestoreRestartHint =>
      'Reinicie la aplicación para asegurarse de que cada cambio se aplique.';

  @override
  String get backupContentsTitle => 'Contenido de la copia de seguridad';

  @override
  String get backupSettingsOnly => 'Solo configuraciones';

  @override
  String get backupSelectHistory => 'Historial de descargas';

  @override
  String get backupSelectCollections => 'Colecciones de la biblioteca';

  @override
  String get backupSelectCollectionsDescription =>
      'Canciones que te gustaron, lista de deseos, artistas favoritos, listas de reproducción y portadas de listas de reproducción.';

  @override
  String get backupSelectExtensions => 'Extensiones y su configuración';

  @override
  String get backupSelectedExportDescription =>
      'Guarda las categorías seleccionadas en un archivo de respaldo. No se incluyen los archivos de audio.';

  @override
  String get backupSelectAtLeastOne =>
      'Selecciona al menos una categoría para crear una copia de seguridad.';

  @override
  String get backupSelectedRestoreMessage =>
      'Solo se restaurarán las categorías que se enumeran a continuación. Las categorías que no estén incluidas en esta copia de seguridad permanecerán sin cambios. La restauración puede reemplazar los datos existentes y no se puede deshacer.';

  @override
  String get backupContentsSettings => 'Configuración de la aplicación';

  @override
  String backupContentsHistory(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count historial $_temp0';
  }

  @override
  String backupContentsLiked(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'pistas con «Me gusta»',
      one: 'pista con «Me gusta»',
    );
    return '$count $_temp0';
  }

  @override
  String backupContentsWishlist(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'pistas en la lista de deseos',
      one: 'pista en la lista de deseos',
    );
    return '$count $_temp0';
  }

  @override
  String backupContentsPlaylists(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count listas de reproducción',
      one: '1 lista de reproducción',
    );
    return '$_temp0';
  }

  @override
  String backupContentsArtists(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count artistas favoritos',
      one: '1 artista favorito',
    );
    return '$_temp0';
  }

  @override
  String backupContentsExtensions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count extensiones',
      one: '1 extensión',
    );
    return '$_temp0';
  }

  @override
  String get backupIncludeSecrets => 'Incluir credenciales de extensión';

  @override
  String get backupIncludeSecretsDescription =>
      'Los tokens y las claves API de las extensiones se guardarán en el archivo de copia de seguridad. Mantenga el archivo privado. Cuando está desactivado, volverá a introducirlos después de restaurar.';

  @override
  String backupExtensionsRestoreFailed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'extensions',
      one: 'extension',
    );
    return 'No se pudo reinstalar $count $_temp0. Instálalas manualmente desde el repositorio.';
  }

  @override
  String get tooltipLoveAll => 'Favoritos';

  @override
  String get tooltipAddToPlaylist => 'Añadir a la lista de reproducción';

  @override
  String snackbarRemovedTracksFromLoved(int count) {
    return 'Eliminadas $count pistas de Favoritos';
  }

  @override
  String snackbarAddedTracksToLoved(int count) {
    return 'Agregadas $count pistas de Favoritos';
  }

  @override
  String get dialogDownloadAllTitle => 'Descargar todo';

  @override
  String dialogDownloadAllMessage(int count) {
    return '¿Descargar $count pistas?';
  }

  @override
  String get homeSkipAlreadyDownloaded => 'Omitir canciones ya descargadas';

  @override
  String get homeGoToAlbum => 'Ir al álbum';

  @override
  String get homeAlbumInfoUnavailable =>
      'La información del álbum no está disponible';

  @override
  String get snackbarLoadingCueSheet => 'Cargando hoja CUE...';

  @override
  String get snackbarMetadataSaved => 'Metadatos guardados correctamente';

  @override
  String get snackbarFailedToEmbedLyrics => 'Error al incrustar letras';

  @override
  String get snackbarFailedToWriteStorage =>
      'Error al escribir de vuelta al almacenamiento';

  @override
  String snackbarError(String error) {
    return 'Error: $error';
  }

  @override
  String get snackbarNoActionDefined =>
      'Ninguna acción definida para este botón';

  @override
  String get noTracksFoundForAlbum =>
      'No se encontraron pistas para este álbum';

  @override
  String get downloadLocationSubtitle =>
      'Elige dónde guardar tus pistas descargadas';

  @override
  String get storageAutomaticFolder => 'Carpeta automática';

  @override
  String get storageAutomaticDownloadFolder =>
      'Utiliza «Descargar/Toadplayer» si es un dispositivo grabable; de lo contrario, utiliza el almacenamiento de la aplicación';

  @override
  String get storageSafRecommended => 'Selecciona una carpeta (recomendado)';

  @override
  String get storageDownloadFolderHint =>
      'En el selector de carpetas de Android, abre la carpeta «Descargas» y selecciona «Toadplayer». Si no existe, créala con la opción «Nueva carpeta» y, a continuación, toca «Usar esta carpeta» para otorgar acceso.';

  @override
  String get downloadFolderAccessLostTitle =>
      'Se perdió el acceso a la carpeta de descargas';

  @override
  String get downloadFolderAccessLostSubtitle =>
      'Las descargas fallarán hasta que vuelvas a seleccionar la carpeta';

  @override
  String get downloadFolderReselect => 'Volver a seleccionar carpeta';

  @override
  String get downloadErrorSafPermissionLost =>
      'Permiso SAF inválido o revocado. Por favor, reconfigura la ubicación de descarga en Configuración.';

  @override
  String get downloadErrorFolderAccessLost =>
      'Se ha perdido el acceso a la carpeta de descarga. Por favor, vuelve a seleccionar tu carpeta de descargas en Configuración.';

  @override
  String downloadFilenameDescription(
    Object album,
    Object artist,
    Object date,
    Object disc,
    Object title,
    Object track,
    Object year,
  ) {
    return 'Usa $artist, $title, $album, $track, $year, $date, $disc como marcadores de posición.';
  }

  @override
  String get downloadFilenameInsertTag => 'Toca para insertar etiqueta:';

  @override
  String get downloadSeparateSinglesEnabled =>
      'Sencillos y EPs guardados en una carpeta separada';

  @override
  String get downloadSeparateSinglesDisabled =>
      'Sencillos y álbumes guardados en la misma carpeta';

  @override
  String get downloadArtistNameFilters => 'Filtros de Nombre del Artista';

  @override
  String get downloadCreatePlaylistSourceFolder =>
      'Carpeta de Código Fuente de Listas';

  @override
  String get downloadCreatePlaylistSourceFolderEnabled =>
      'Se crea una subcarpeta para cada lista de reproducción';

  @override
  String get downloadCreatePlaylistSourceFolderDisabled =>
      'Todas las pistas guardadas directamente en la carpeta de descargas';

  @override
  String get downloadCreatePlaylistSourceFolderRedundant =>
      'Gestionado por la configuración de organización de carpetas';

  @override
  String get downloadSongLinkRegion => 'Región de SongLink';

  @override
  String get downloadNetworkCompatibilityMode =>
      'Modo de compatibilidad de red';

  @override
  String get downloadNetworkCompatibilityModeEnabled =>
      'Se permiten los puntos finales HTTP heredados; la verificación de TLS sigue habilitada';

  @override
  String get downloadNetworkCompatibilityModeDisabled =>
      'Utilizando ajustes de red estándar';

  @override
  String get downloadAllowLocalNetwork => 'Permitir el acceso a la red local';

  @override
  String get downloadAllowLocalNetworkEnabled =>
      'Se permiten solicitudes a direcciones locales/privadas (para proxy local o DNS personalizado)';

  @override
  String get downloadAllowLocalNetworkDisabled =>
      'Las direcciones locales/privadas están bloqueadas por seguridad';

  @override
  String get downloadSelectServiceToEnable =>
      'Selecciona un proveedor con opciones de calidad para habilitar esta opción';

  @override
  String get downloadEmbedLyricsDisabled =>
      'Activar primero la incrustación de metadatos';

  @override
  String get downloadNeteaseIncludeTranslation => 'Netease: Incluir traducción';

  @override
  String get downloadNeteaseIncludeTranslationEnabled =>
      'Líneas de traducción chinas incluyeron';

  @override
  String get downloadNeteaseIncludeTranslationDisabled =>
      'Solo letras originales';

  @override
  String get downloadNeteaseIncludeRomanization =>
      'Netease: Incluir la romanización';

  @override
  String get downloadNeteaseIncludeRomanizationEnabled =>
      'Las líneas de romanización incluían';

  @override
  String get downloadNeteaseIncludeRomanizationDisabled => 'Sin romanización';

  @override
  String get downloadAppleQqMultiPerson =>
      'Apple / QQ: Letras de varias personas';

  @override
  String get downloadAppleQqMultiPersonEnabled =>
      'Etiquetas de altavoces incluidas para duetos y temas grupales';

  @override
  String get downloadAppleQqMultiPersonDisabled =>
      'Letras estándar sin etiquetas de altavoz';

  @override
  String get downloadAppleElrcWordSync => 'Apple Music eLRC Word Sync';

  @override
  String get downloadAppleElrcWordSyncEnabled =>
      'Marcas temporales brutas palabra por palabra conservadas';

  @override
  String get downloadAppleElrcWordSyncDisabled =>
      'Letras de Apple Music línea por línea más seguras';

  @override
  String get downloadMusixmatchLanguage => 'Idioma de Musixmatch';

  @override
  String get downloadMusixmatchLanguageAuto => 'Auto (idioma original)';

  @override
  String get downloadFilterContributing =>
      'Filtra a los artistas colaboradores';

  @override
  String get downloadFilterContributingEnabled =>
      'Artistas colaboradores eliminados del nombre de la carpeta Artista del álbum';

  @override
  String get downloadFilterContributingDisabled =>
      'Portada completa del artista del álbum utilizada';

  @override
  String get downloadProvidersNoneEnabled => 'No hay proveedores activos';

  @override
  String get downloadMusixmatchLanguageCode => 'Código de idioma';

  @override
  String get downloadMusixmatchLanguageHint => 'por ejemplo, en, de, ja';

  @override
  String get downloadMusixmatchLanguageDesc =>
      'Introduce un código de idioma BCP-47 (por ejemplo, en, de, ja) para solicitar letras traducidas desde Musixmatch.';

  @override
  String get downloadMusixmatchAuto => 'Automático';

  @override
  String get downloadNetworkAnySubtitle => 'Usar Wi-Fi o datos móviles';

  @override
  String get downloadNetworkWifiOnlySubtitle =>
      'Las descargas se pausan con datos móviles';

  @override
  String get downloadSongLinkRegionDesc =>
      'Región usada al resolver enlaces de pistas mediante SongLink. Elige el país donde estén disponibles tus servicios de streaming.';

  @override
  String get snackbarUnsupportedAudioFormat => 'Formato de audio no soportado';

  @override
  String get cacheRefresh => 'Actualizar';

  @override
  String dialogDownloadPlaylistsMessage(int trackCount, int playlistCount) {
    String _temp0 = intl.Intl.pluralLogic(
      trackCount,
      locale: localeName,
      other: 'pistas',
      one: 'pista',
    );
    String _temp1 = intl.Intl.pluralLogic(
      playlistCount,
      locale: localeName,
      other: 'listas de reproducción',
      one: 'lista de reproducción',
    );
    return '¿Descargar $trackCount $_temp0 de $playlistCount $_temp1?';
  }

  @override
  String bulkDownloadPlaylistsButton(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'listas de reproducción',
      one: 'lista de reproducción',
    );
    return 'Descargar $count $_temp0';
  }

  @override
  String get bulkDownloadSelectPlaylists =>
      'Selecciona listas de reproducción para descargar';

  @override
  String get snackbarSelectedPlaylistsEmpty =>
      'Las listas de reproducción seleccionadas no tienen pistas';

  @override
  String playlistsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count listas de reproducción',
      one: '1 lista de reproducción',
    );
    return '$_temp0';
  }

  @override
  String get editMetadataAutoFill => 'Autocompletar desde internet';

  @override
  String get editMetadataAutoFillDesc =>
      'Elige una extensión de metadatos, selecciona campos y revisa sus datos antes de aplicarla';

  @override
  String get editMetadataAutoFillSource => 'Fuente de metadatos';

  @override
  String get editMetadataAutoFillSourceAutomatic =>
      'Automático (prioridad del proveedor)';

  @override
  String get editMetadataAutoFillFind => 'Buscar metadatos';

  @override
  String editMetadataAutoFillPreview(String source) {
    return 'Datos de $source';
  }

  @override
  String get editMetadataAutoFillCoverAvailable => 'Portada disponible';

  @override
  String get editMetadataAutoFillApply => 'Aplicar datos seleccionados';

  @override
  String editMetadataAutoFillDoneFromSource(int count, String source) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'fields',
      one: 'field',
    );
    return 'Rellenado $count $_temp0 de $source';
  }

  @override
  String get editMetadataAutoFillSearching => 'Buscando en línea...';

  @override
  String get editMetadataAutoFillNoResults =>
      'No hay información coincidente en línea';

  @override
  String get editMetadataAutoFillNoneSelected =>
      'Selecciona al menos un campo para autocompletar';

  @override
  String get editMetadataLyricsSearch => 'Buscar letras en línea';

  @override
  String get lyricsPickerTitle => 'Elegir letras';

  @override
  String get lyricsPickerNeedsTitle =>
      'Introduce primero un título y un artista';

  @override
  String get lyricsPickerNoProviders =>
      'No hay proveedores de letras activados. Activa alguno en Ajustes > Letras.';

  @override
  String get lyricsPickerWordSynced => 'Sincronizadas por palabra';

  @override
  String get lyricsPickerSynced => 'Sincronizadas';

  @override
  String get lyricsPickerPlain => 'Texto sin formato';

  @override
  String get lyricsPickerInstrumental => 'Instrumental';

  @override
  String get lyricsPickerNotFound => 'No se encontraron letras';

  @override
  String lyricsPickerLineCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count líneas',
      one: '1 línea',
    );
    return '$_temp0';
  }

  @override
  String get editMetadataFieldTitle => 'Título';

  @override
  String get editMetadataFieldArtist => 'Artista';

  @override
  String get editMetadataFieldAlbum => 'Álbum';

  @override
  String get editMetadataFieldAlbumArtist => 'Artista del álbum';

  @override
  String get editMetadataFieldDate => 'Fecha';

  @override
  String get editMetadataFieldTrackNum => 'Pista #';

  @override
  String get editMetadataFieldDiscNum => 'Disco #';

  @override
  String get editMetadataFieldGenre => 'Género';

  @override
  String get editMetadataFieldIsrc => 'ISRC';

  @override
  String get editMetadataFieldLabel => 'Discográfica';

  @override
  String get editMetadataFieldCopyright => 'Derechos de autor';

  @override
  String get editMetadataFieldCover => 'Carátula';

  @override
  String get editMetadataSelectAll => 'Todos';

  @override
  String get editMetadataSelectEmpty => 'Solo vacíos';

  @override
  String queueDownloadingCount(int count) {
    return 'Descargando ($count)';
  }

  @override
  String get queueFilteringIndicator => 'Filtrando...';

  @override
  String queueTrackCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pistas',
      one: '1 pista',
    );
    return '$_temp0';
  }

  @override
  String queueAlbumCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count álbumes',
      one: '1 álbum',
    );
    return '$_temp0';
  }

  @override
  String get queueEmptyAlbums => 'No se han descargado álbumes';

  @override
  String get queueEmptyAlbumsSubtitle =>
      'Descarga varias canciones de un álbum para verlas aquí';

  @override
  String get queueEmptySingles => 'No hay descargas';

  @override
  String get queueEmptySinglesSubtitle =>
      'Las descargas de pistas individuales aparecerán aquí';

  @override
  String queuePlaylistCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count listas de reproducción',
      one: '1 lista de reproducción',
    );
    return '$_temp0';
  }

  @override
  String get queueEmptyPlaylistsSubtitle =>
      'Crea una lista de reproducción para organizar tus temas';

  @override
  String get libraryDefaultView => 'Vista predeterminada';

  @override
  String get libraryDefaultViewLastUsed => 'Último uso';

  @override
  String get queueEmptyHistory => 'No hay historial de descargas';

  @override
  String get queueEmptyHistorySubtitle =>
      'Las pistas descargadas aparecerán aquí';

  @override
  String get selectionAllPlaylistsSelected => 'Todas las listas seleccionadas';

  @override
  String get selectionTapPlaylistsToSelect =>
      'Pulsa listas de reproducción para seleccionar';

  @override
  String get selectionSelectPlaylistsToDelete =>
      'Selecciona listas de reproducción para eliminar';

  @override
  String get audioAnalysisTitle => 'Análisis de calidad de audio';

  @override
  String get audioAnalysisDescription =>
      'Verifica la calidad sin pérdidas mediante análisis de espectro';

  @override
  String get audioAnalysisAnalyzing => 'Analizando audio...';

  @override
  String get audioAnalysisSampleRate => 'Frecuencia de muestreo';

  @override
  String get audioAnalysisCodec => 'Códec';

  @override
  String get audioAnalysisContainer => 'Contenedor';

  @override
  String get audioAnalysisDecodedFormat => 'Formato decodificado';

  @override
  String get audioAnalysisBitDepth => 'Profundidad de bits';

  @override
  String get audioAnalysisChannels => 'Canales';

  @override
  String get audioAnalysisDuration => 'Duración';

  @override
  String get audioAnalysisNyquist => 'Nyquist';

  @override
  String get audioAnalysisFileSize => 'Tamaño';

  @override
  String get audioAnalysisDynamicRange => 'Rango dinámico';

  @override
  String get audioAnalysisPeak => 'Pico';

  @override
  String get audioAnalysisRms => 'RMS';

  @override
  String get audioAnalysisLufs => 'LUFS';

  @override
  String get audioAnalysisTruePeak => 'Pico real';

  @override
  String get audioAnalysisClipping => 'Recorte';

  @override
  String get audioAnalysisNoClipping => 'Sin recortes';

  @override
  String get audioAnalysisSpectralCutoff => 'Corte espectral';

  @override
  String get audioAnalysisCutoffNotDetected => 'No se detectó';

  @override
  String get audioAnalysisChannelStats => 'Estadísticas por canal';

  @override
  String get audioAnalysisSamples => 'Muestras';

  @override
  String get audioAnalysisRescan => 'Volver a analizar';

  @override
  String get audioAnalysisSaveSpectrogram => 'Guardar espectrograma';

  @override
  String audioAnalysisSpectrogramSaved(String fileName) {
    return 'Espectrograma guardado en $fileName';
  }

  @override
  String get downloadRedownloadFakeHiRes =>
      'Volver a descargar archivos falsos de alta resolución';

  @override
  String get downloadRedownloadFakeHiResSubtitle =>
      'Desactivado por defecto. Marca la opción «Descargas de alta resolución» y reemplaza solo cuando se conserven todas las muestras de audio. Conserva el original si falla la verificación o el procesamiento';

  @override
  String get hiResCheckVerdictFakeCertain => 'Falsa alta resolución';

  @override
  String get hiResCheckReasonSampleHold =>
      'Cada muestra se repite: se aumenta su resolución mediante duplicación';

  @override
  String get hiResCheckReasonInterpolation =>
      'Las muestras intermedias se interpolan linealmente';

  @override
  String get hiResCheckTitle => 'Autenticidad en alta resolución';

  @override
  String get hiResCheckSummary =>
      'Revisa el espectro y la profundidad de bits activa para detectar indicios de sobremuestreo o relleno.';

  @override
  String get hiResCheckLimitedBandwidth => 'Ancho de banda limitado';

  @override
  String get hiResCheckNoEvidence =>
      'No se detectó ningún remuestreo ni relleno';

  @override
  String get hiResCheckEstimatedCutoff => 'Puntuación de corte estimada';

  @override
  String get hiResCheckActiveBits => 'Bits activos / almacenados';

  @override
  String get hiResCheckBandwidthExplanation =>
      'Un umbral más bajo puede deberse a la masterización. Esto, por sí solo, no prueba que se haya realizado un sobremuestreo.';

  @override
  String hiResCheckSampledExplanation(String seconds) {
    return 'Basado en $seconds segundos de audio. Este análisis no puede certificar la grabación original.';
  }

  @override
  String get hiResCheckImagingEvidence =>
      'El espectro contiene bandas reflejadas que concuerdan con el sobremuestreo.';

  @override
  String hiResCheckRateEvidence(String cutoff) {
    return 'Una caída brusca cerca de $cutoff y el nivel de ruido de fondo medido sugieren que se trata de una fuente de baja frecuencia.';
  }

  @override
  String hiResCheckSteadyEnergy(String cutoff) {
    return 'La energía por encima de $cutoff se mantiene prácticamente constante en el segmento analizado y podría tratarse de ruido.';
  }

  @override
  String get hiResCheckRun => 'Verificar';

  @override
  String get hiResCheckChecking =>
      'Verificando la autenticidad de la alta resolución...';

  @override
  String get hiResCheckVerdictFake =>
      'Probablemente sea una imagen falsa en alta resolución';

  @override
  String get hiResCheckVerdictStandard =>
      'Definición estándar, nada que destacar';

  @override
  String get hiResCheckVerdictInconclusive =>
      'No concluyente: el segmento analizado es demasiado silencioso o demasiado corto';

  @override
  String get hiResCheckUnsupported =>
      'Solo se pueden revisar archivos FLAC y WAV';

  @override
  String hiResCheckFailed(String error) {
    return 'Fallo en la verificación de alta resolución: $error';
  }

  @override
  String hiResCheckReasonDepth(int declared, int effective) {
    return 'Declara $declared bits, pero solo los bits $effective contienen datos';
  }

  @override
  String get audioAnalysisRescanning => 'Volviendo a analizar audio...';

  @override
  String get extensionsHomeFeedProvider => 'Proveedor de noticias de inicio';

  @override
  String get extensionsHomeFeedCountry => 'País del feed de inicio';

  @override
  String get extensionsHomeFeedCountryDescription =>
      'Elige las recomendaciones de Inicio de un país sin necesidad de VPN.';

  @override
  String get extensionsHomeFeedDescription =>
      'Elige qué extensión muestra el feed de inicio en la pantalla principal';

  @override
  String get extensionsHomeFeedAuto => 'Auto';

  @override
  String get extensionsHomeFeedAutoSubtitle =>
      'Seleccionar automáticamente la mejor disponible';

  @override
  String get extensionsHomeFeedOff => 'Desactivado';

  @override
  String get extensionsHomeFeedOffSubtitle =>
      'No mostrar el feed de inicio en la pantalla principal';

  @override
  String extensionsHomeFeedUse(String extensionName) {
    return 'Usa el feed de inicio de $extensionName';
  }

  @override
  String get extensionsNoHomeFeedExtensions =>
      'No se permiten extensiones con la fuente de origen';

  @override
  String get cancelDownloadTitle => '¿Cancelar descarga?';

  @override
  String cancelDownloadContent(String trackName) {
    return 'Esto cancelará la descarga activa de «$trackName».';
  }

  @override
  String get cancelDownloadKeep => 'Mantener';

  @override
  String get queueCancelledTitle => 'Descarga cancelada';

  @override
  String get queueCancelledMessage =>
      'Esta descarga se canceló. Inténtalo de nuevo o elimínala de la fila.';

  @override
  String get metadataSaveFailedFfmpeg =>
      'No se pudieron guardar los metadatos mediante FFmpeg';

  @override
  String get metadataSaveFailedStorage =>
      'No se pudieron volver a escribir los metadatos en el almacenamiento';

  @override
  String snackbarFolderPickerFailed(String error) {
    return 'No se pudo abrir el selector de carpetas: $error';
  }

  @override
  String notifDownloadingTrack(String trackName) {
    return 'Descargando $trackName';
  }

  @override
  String notifFinalizingTrack(String trackName) {
    return 'Finalizando $trackName';
  }

  @override
  String get notifEmbeddingMetadata => 'Insertando información...';

  @override
  String notifAlreadyInLibraryCount(int completed, int total) {
    return 'Ya está en la biblioteca ($completed/$total)';
  }

  @override
  String get notifAlreadyInLibrary => 'Ya está en la biblioteca';

  @override
  String notifDownloadCompleteCount(int completed, int total) {
    return 'Descargas completas ($completed/$total)';
  }

  @override
  String get notifDownloadComplete => 'Descarga completa';

  @override
  String notifDownloadsFinished(int completed, int failed) {
    return 'Descargas finalizadas ($completed finalizadas, $failed fallidas)';
  }

  @override
  String get notifVerificationRequiredTitle => 'Se requiere verificación';

  @override
  String get notifVerificationRequiredBody =>
      'Abre la aplicación para completar la verificación y reanudar las descargas';

  @override
  String get notifAllDownloadsComplete => 'Todas las descargas completadas';

  @override
  String notifTracksDownloadedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pistas descargadas con éxito',
      one: '1 pista descargada con éxito',
    );
    return '$_temp0';
  }

  @override
  String notifDownloadsFinishedBody(int completed, int failed) {
    String _temp0 = intl.Intl.pluralLogic(
      completed,
      locale: localeName,
      other: '$completed pistas descargadas',
      one: '1 pista descargada',
    );
    String _temp1 = intl.Intl.pluralLogic(
      failed,
      locale: localeName,
      other: '$failed fallaron',
      one: '1 falló',
    );
    return '$_temp0, $_temp1';
  }

  @override
  String get notifDownloadsCanceledTitle => 'Descargas canceladas';

  @override
  String notifDownloadsCanceledBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count descargas canceladas por el usuario',
      one: '1 descarga cancelada por el usuario',
    );
    return '$_temp0';
  }

  @override
  String get notifScanningLibrary => 'Escaneando biblioteca local';

  @override
  String notifLibraryScanProgressWithTotal(
    int scanned,
    int total,
    int percentage,
  ) {
    return '$scanned/$total archivos • $percentage %';
  }

  @override
  String notifLibraryScanProgressNoTotal(int scanned) {
    return '$scanned archivos escaneados';
  }

  @override
  String get notifLibraryScanComplete => 'Escaneo de biblioteca completado';

  @override
  String notifLibraryScanCompleteBody(int count) {
    return '$count pistas indexadas';
  }

  @override
  String notifLibraryScanExcluded(int count) {
    return '$count excluido';
  }

  @override
  String notifLibraryScanErrors(int count) {
    return '$count errores';
  }

  @override
  String get notifLibraryScanFailed => 'Error al escanear la biblioteca';

  @override
  String get notifLibraryScanInterruptedBody =>
      'El análisis anterior de la biblioteca se interrumpió. Vuelve a analizar la carpeta para continuar. Tus pistas indexadas siguen disponibles.';

  @override
  String get notifLibraryScanCancelled => 'Escaneo de la biblioteca cancelado';

  @override
  String get notifLibraryScanStopped =>
      'El escaneo se detuvo antes de completarse.';

  @override
  String get notifLibraryScanPaused => 'Escaneo de la biblioteca en pausa';

  @override
  String notifLibraryScanPausedBody(int count) {
    return 'Se han escaneado $count archivos. Ve a la sección “Reanudar en la biblioteca local” para continuar desde aquí.';
  }

  @override
  String notifDownloadingUpdate(String version) {
    return 'Descargar Toadplayer v$version';
  }

  @override
  String notifUpdateProgress(String received, String total, int percentage) {
    return '$received / $total MB • $percentage %';
  }

  @override
  String get notifUpdateReady => 'Actualización preparada';

  @override
  String notifUpdateReadyBody(String version) {
    return 'Se ha descargado Toadplayer v$version. Toca para instalar.';
  }

  @override
  String get notifUpdateFailed => 'La actualización falló';

  @override
  String get notifUpdateFailedBody =>
      'No se pudo descargar la actualización. Inténtalo de nuevo más tarde.';

  @override
  String get searchTracks => 'Pistas';

  @override
  String get homeSearchHintDefault =>
      'Pega una URL válida o realiza una búsqueda...';

  @override
  String homeSearchHintProvider(String providerName) {
    return 'Buscar con $providerName...';
  }

  @override
  String get homeImportCsvTooltip =>
      'Importar lista de reproducción (CSV, M3U)';

  @override
  String get homeChangeSearchProviderTooltip =>
      'Cambiar el proveedor de búsqueda';

  @override
  String get actionPaste => 'Pegar';

  @override
  String get tutorialSearchHint => 'Pegar o buscar...';

  @override
  String get tutorialDownloadCompletedSemantics => 'Descarga completada';

  @override
  String get tutorialDownloadInProgressSemantics => 'Descarga en curso';

  @override
  String get tutorialStartDownloadSemantics => 'Comenzar descarga';

  @override
  String get optionsEmbedMetadata => 'Incrustar información';

  @override
  String get optionsEmbedMetadataSubtitleOn =>
      'Escribir información, carátulas y letras incrustadas en archivos';

  @override
  String get optionsEmbedMetadataSubtitleOff =>
      'Desactivado (avanzado): omitir toda la incrustación de metadatos';

  @override
  String get trackCoverNoEmbeddedArt =>
      'No se encontró ninguna carátula de álbum incorporada';

  @override
  String get trackCoverReplace => 'Reemplazar portada';

  @override
  String get trackCoverPick => 'Elegir portada';

  @override
  String get trackCoverClearSelected => 'Borrar portada seleccionada';

  @override
  String get trackCoverCurrent => 'Portada actual';

  @override
  String get trackCoverSelected => 'Carátula seleccionada';

  @override
  String get trackCoverReplaceNotice =>
      'La portada seleccionada sustituirá a la portada actual incrustada cuando pulses Guardar.';

  @override
  String get trackCoverResolution => 'Resolución de la portada';

  @override
  String get trackCoverResolutionHint =>
      'Establece el lado más largo al guardar. Al ampliar la imagen no se añaden detalles.';

  @override
  String get trackCoverResizeFailed =>
      'No se pudo ajustar el tamaño de la imagen de portada. Intenta con otro tamaño o con otra imagen.';

  @override
  String get actionStop => 'Detener';

  @override
  String get queueFinalizingDownload => 'Finalizando descarga';

  @override
  String get queueDownloadNext => 'Descargar siguiente';

  @override
  String get queueMoveUp => 'Subir';

  @override
  String get queueMoveDown => 'Bajar';

  @override
  String get editMetadataMusicBrainzButton => 'Obtener de MusicBrainz';

  @override
  String get editMetadataMusicBrainzFilled =>
      'Actualizado a partir de MusicBrainz';

  @override
  String get editMetadataMusicBrainzNothing =>
      'No se encontró nada en MusicBrainz';

  @override
  String get editMetadataMusicBrainzNeedsIsrc => 'Requiere una etiqueta ISRC';

  @override
  String get nowPlayingRepeatOff => 'Repetir hasta que se apague';

  @override
  String get nowPlayingRepeatAll => 'Repetir todo';

  @override
  String get nowPlayingRepeatOne => 'Repite uno';

  @override
  String queueNetworkFailedOffline(int count) {
    return '$count descargas fallaron mientras estaba sin conexión';
  }

  @override
  String get queueDownloadedFileMissing => 'Falta el archivo descargado';

  @override
  String get queueCheckingDownloadedFile =>
      'Verificando el archivo descargado...';

  @override
  String get queueDownloadCompleted => 'Descarga completada';

  @override
  String get queueRateLimitTitle => 'Tasa de servicio limitada';

  @override
  String get queueRateLimitMessage =>
      'Es posible que esta pista aún esté disponible. Espera unos minutos, reduce el número de descargas simultáneas y vuelve a intentarlo.';

  @override
  String appearanceSelectAccentColor(String hex) {
    return 'Selecciona un color de contraste $hex';
  }

  @override
  String get logAutoScrollOn => 'Desplazamiento automático ACTIVADO';

  @override
  String get logAutoScrollOff => 'Desplazamiento automático DESACTIVADO';

  @override
  String get logCopyLogs => 'Copiar registros';

  @override
  String get logClearSearch => 'Limpiar búsqueda';

  @override
  String get logIssueIspBlockingLabel =>
      'SE HA DETECTADO UN BLOQUEO DEL PROVEEDOR DE SERVICIOS DE INTERNET';

  @override
  String get logIssueIspBlockingDescription =>
      'Es posible que tu proveedor de servicios de Internet esté bloqueando el acceso a los servicios de descarga';

  @override
  String get logIssueIspBlockingSuggestion =>
      'Intenta usar una VPN o cambia el DNS a 1.1.1.1 u 8.8.8.8';

  @override
  String get logIssueRateLimitedLabel => 'LÍMITE DE TASA';

  @override
  String get logIssueRateLimitedDescription =>
      'Demasiadas solicitudes al servicio';

  @override
  String get logIssueRateLimitedSuggestion =>
      'Espera unos minutos antes de volver a intentarlo';

  @override
  String get logIssueNetworkErrorLabel => 'ERROR DE RED';

  @override
  String get logIssueNetworkErrorDescription =>
      'Se han detectado problemas de conexión';

  @override
  String get logIssueNetworkErrorSuggestion => 'Revisa tu conexión a Internet';

  @override
  String get logIssueTrackNotFoundLabel => 'NO SE ENCONTRÓ LA PISTA';

  @override
  String get logIssueTrackNotFoundDescription =>
      'Algunas canciones no se pudieron encontrar en los servicios de descarga';

  @override
  String get logIssueTrackNotFoundSuggestion =>
      'Es posible que la pista no esté disponible en calidad sin pérdida';

  @override
  String get clickableLookingUpArtist => 'Buscando al artista...';

  @override
  String clickableInformationUnavailable(String type) {
    return '$type información no disponible';
  }

  @override
  String get extensionDetailsTags => 'Etiquetas';

  @override
  String get extensionDetailsInformation => 'Información';

  @override
  String get extensionUtilityFunctions => 'Funciones de utilidad';

  @override
  String get actionDismiss => 'Descartar';

  @override
  String get setupChangeFolderTooltip => 'Cambiar de carpeta';

  @override
  String a11yOpenTrackByArtist(String trackName, String artistName) {
    return 'Abrir la canción $trackName de $artistName';
  }

  @override
  String a11yOpenItem(String itemType, String name) {
    return 'Abrir $itemType $name';
  }

  @override
  String a11yOpenItemCount(String title, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'objetos',
      one: 'objeto',
    );
    return 'Abrir $title, $count $_temp0';
  }

  @override
  String a11yOpenAlbumByArtistTrackCount(
    String albumName,
    String artistName,
    int trackCount,
  ) {
    return 'Abrir álbum $albumName de $artistName, $trackCount pistas';
  }

  @override
  String a11yTrackByArtist(String trackName, String artistName) {
    return '$trackName de $artistName';
  }

  @override
  String a11ySelectAlbum(String albumName) {
    return 'Seleccionar álbum $albumName';
  }

  @override
  String a11yOpenAlbum(String albumName) {
    return 'Abrir álbum $albumName';
  }

  @override
  String get settingsFiles => 'Archivos y carpetas';

  @override
  String get settingsFilesSubtitle =>
      'Directorio de descarga, nombre de archivo y estructura de carpetas';

  @override
  String get settingsMetadata => 'Información';

  @override
  String get settingsMetadataSubtitle =>
      'Carátula, etiquetas, ReplayGain, proveedores';

  @override
  String get settingsLyrics => 'Letra';

  @override
  String get settingsLyricsSubtitle =>
      'Insertar, modo, proveedores, opciones de idioma';

  @override
  String get settingsApp => 'Aplicación';

  @override
  String get settingsAppSubtitle =>
      'Actualizaciones, datos, extensiones repo, depuración';

  @override
  String get sectionMetadataProviders => 'Proveedores';

  @override
  String get sectionDuplicates => 'Duplicados';

  @override
  String get sectionLyricsProviderOptions => 'Opciones del proveedor';

  @override
  String get metadataProvidersTitle => 'Prioridad de proveedor de información';

  @override
  String get metadataProvidersSubtitle =>
      'Arrastre para establecer orden de búsqueda y origen de información';

  @override
  String get downloadDeduplication => 'Saltar descargas duplicadas';

  @override
  String get downloadDeduplicationEnabled =>
      'Las pistas previamente descargadas se omitirán';

  @override
  String get downloadDeduplicationWithQualityVariants =>
      'Se omitirán los archivos existentes con la calidad seleccionada';

  @override
  String get downloadDeduplicationDisabled =>
      'Todas las pistas se descargarán independientemente del historial';

  @override
  String get downloadQualityVariants =>
      'Permitir versiones de diferente calidad';

  @override
  String get downloadQualityVariantsDescription =>
      'Conserva todas las versiones de calidad; agrega su calidad medida al nombre del archivo solo cuando el nombre ya esté en uso';

  @override
  String get trackOptionDownloadQualityVariant => 'Descargar otra calidad';

  @override
  String get downloadFallbackExtensions => 'Reslpado de extensiones';

  @override
  String get downloadFallbackExtensionsSubtitle =>
      'Elige qué extensiones se pueden utilizar como alternativa';

  @override
  String get editMetadataFieldDateHint => 'AAA-MM-DD o AAAA';

  @override
  String get editMetadataFieldTrackTotal => 'Total de pistas';

  @override
  String get editMetadataFieldDiscTotal => 'Total de discos';

  @override
  String get editMetadataFieldComposer => 'Compositor';

  @override
  String get editMetadataFieldComment => 'Comentario';

  @override
  String get trackAlbumType => 'Tipo de comunicado';

  @override
  String get editMetadataFieldAlbumTypeHint =>
      'Álbum, sencillo, EP, recopilatorio...';

  @override
  String get editMetadataFieldExplicit => 'Explícito';

  @override
  String get editMetadataFieldExplicitHint =>
      'Marca esta pista como que contiene contenido explícito';

  @override
  String get metadataExplicitValue => 'Explícito';

  @override
  String get editMetadataFieldUpc => 'UPC / Código de barras';

  @override
  String get editMetadataFieldUpcHint => 'UPC, EAN o GTIN numéricos';

  @override
  String get editMetadataAdvanced => 'Avanzado';

  @override
  String get libraryFilterMetadataMissingTrackNumber => 'Falta número de pista';

  @override
  String get libraryFilterMetadataMissingDiscNumber => 'Falta número de álbum';

  @override
  String get libraryFilterMetadataMissingArtist => 'Falta artista';

  @override
  String get libraryFilterMetadataIncorrectIsrcFormat =>
      'Formato de ISRC erróneo';

  @override
  String get libraryFilterMetadataMissingIsrc => 'Falta el código ISRC';

  @override
  String get libraryFilterMetadataMissingLabel => 'Falta etiqueta';

  @override
  String collectionDeletePlaylistsMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'listas de reproducción',
      one: 'lista',
    );
    return '¿Eliminar $count $_temp0?';
  }

  @override
  String collectionPlaylistsDeleted(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'listas de reproducción',
      one: 'lista',
    );
    return '$count $_temp0 eliminadas';
  }

  @override
  String collectionAddedTracksToPlaylist(int count, String playlistName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    return 'Añadido $count $_temp0 a $playlistName';
  }

  @override
  String collectionAddedTracksToPlaylistWithExisting(
    int count,
    String playlistName,
    int alreadyCount,
  ) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'pistas',
      one: 'pista',
    );
    return 'Añadido $count $_temp0 a $playlistName ($alreadyCount ya en la lista de reproducción)';
  }

  @override
  String itemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'objetos',
      one: 'objeto',
    );
    return '$count $_temp0';
  }

  @override
  String trackReEnrichSuccessWithFailures(
    int successCount,
    int total,
    int failedCount,
  ) {
    return 'Información enriquecida nuevamente con éxito\n($successCount/$total) - Fallaron: $failedCount';
  }

  @override
  String selectionDeleteTracksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'pistas',
      one: 'pista',
    );
    return 'Eliminar $count $_temp0';
  }

  @override
  String queueDownloadSpeedStatus(String speed) {
    return 'Descargando - $speed MB/s';
  }

  @override
  String get queueDownloadStarting => 'Comenzando...';

  @override
  String get queueCheckingDownloadSession =>
      'Verificando la sesión de descarga...';

  @override
  String get queueResolvingDownloadMetadata =>
      'Se están recuperando los metadatos de la pista...';

  @override
  String get queueResolvingDownloadStream =>
      'Preparando la transmisión de audio...';

  @override
  String get queueWaitingForVerification => 'Esperando la verificación...';

  @override
  String get queueResumingAfterVerification =>
      'Continuando después de la verificación...';

  @override
  String get a11ySelectTrack => 'Seleccionar pista';

  @override
  String get a11yDeselectTrack => 'No seleccionar pista';

  @override
  String a11yPlayTrackByArtist(String trackName, String artistName) {
    return 'Reproducir $trackName de $artistName';
  }

  @override
  String storeExtensionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'extensiones',
      one: 'extensión',
    );
    return '$count $_temp0';
  }

  @override
  String storeRequiresVersion(String version) {
    return 'Requiere v$version+';
  }

  @override
  String get logIssueSummary => 'Resumen de incidencias';

  @override
  String logTotalErrors(int count) {
    return 'Total de errores: $count';
  }

  @override
  String logAffectedDomains(String domains) {
    return 'Afectados: $domains';
  }

  @override
  String get libraryScanCancelled => 'Escaneo cancelado';

  @override
  String get libraryScanCancelledSubtitle =>
      'Puedes volver a intentar el escaneo cuando esté listo.';

  @override
  String libraryDownloadsHistoryExcluded(int count) {
    return '$count del historial de descargas (excluidos de la lista)';
  }

  @override
  String get downloadNativeWorker => 'Trabajador de descarga nativo';

  @override
  String get downloadNativeWorkerSubtitle =>
      'Servicio en segundo plano de Android para descargas de extensiones';

  @override
  String get extensionServiceStatus => 'Estado del servicio';

  @override
  String get extensionServiceHealth => 'Estado de servicio';

  @override
  String extensionHealthChecksConfigured(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'chequeos',
      one: 'chequeo',
    );
    return '$count $_temp0 ';
  }

  @override
  String get extensionOauthConnectHint =>
      'Pulsa para conectar a Spotify y rellenar el campo.';

  @override
  String extensionLastChecked(String time) {
    return 'Última comprobación $time';
  }

  @override
  String get extensionRefreshStatus => 'Actualizar estado';

  @override
  String get extensionCustomUrlHandling => 'Gestión de URL personalizada';

  @override
  String get extensionCustomUrlHandlingSubtitle =>
      'Esta extensión puede manejar enlaces de estos sitios';

  @override
  String get extensionCustomUrlHandlingShareHint =>
      'Comparte enlaces de estos sitios a Toadplayer y esta extensión los manejará.';

  @override
  String extensionSettingsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ajustes',
      one: 'ajuste',
    );
    return '$count $_temp0';
  }

  @override
  String get extensionHealthOnline => 'En línea';

  @override
  String get extensionHealthDegraded => 'Degradado';

  @override
  String get extensionHealthOffline => 'Sin conexión';

  @override
  String get extensionHealthNotConfigured => 'Sin configurar';

  @override
  String get extensionHealthUnknown => 'Desconocido';

  @override
  String get extensionHealthRequired => 'requerido';

  @override
  String get extensionSettingNotSet => 'Sin establecer';

  @override
  String get extensionActionFailed => 'Error de acción';

  @override
  String get extensionEnterValue => 'Ingrese un valor';

  @override
  String get extensionHealthServiceOnline => 'Servicio en línea';

  @override
  String get extensionHealthServiceDegraded => 'Servicio degradado';

  @override
  String get extensionHealthServiceOffline => 'Servicio fuera de línea';

  @override
  String get extensionHealthServiceUnknown => 'Estado de servicio desconocido';

  @override
  String get audioAnalysisStereo => 'Estéreo';

  @override
  String get audioAnalysisMono => 'Mono';

  @override
  String trackOpenInService(String serviceName) {
    return 'Abrir en $serviceName';
  }

  @override
  String get trackLyricsEmbeddedSource => 'Incrustado';

  @override
  String get unknownAlbum => 'Álbum desconocido';

  @override
  String get unknownArtist => 'Artista desconocido';

  @override
  String get permissionAudio => 'Audio';

  @override
  String get permissionStorage => 'Almacenamiento';

  @override
  String get permissionNotification => 'Notificación';

  @override
  String get errorInvalidFolderSelected => 'Directorio seleccionado inválido';

  @override
  String get storeAnyVersion => 'Cualquier';

  @override
  String get storeCategoryMetadata => 'Información';

  @override
  String get storeCategoryDownload => 'Descargar';

  @override
  String get storeCategoryUtility => 'Utilidad';

  @override
  String get storeCategoryLyrics => 'Letras';

  @override
  String get storeCategoryIntegration => 'Integración';

  @override
  String get artistReleases => 'Lanzamientos';

  @override
  String get editMetadataSelectNone => 'Ninguno';

  @override
  String queueRetryAllFailed(int count) {
    return '$count intentos fallidos';
  }

  @override
  String get settingsSaveDownloadHistory => 'Guardar historial de descargas';

  @override
  String get settingsSaveDownloadHistorySubtitle =>
      'Mantener las descargas completadas en las vistas de historial y biblioteca';

  @override
  String get dialogDisableHistoryTitle =>
      '¿Desactivar el historial de descargas?';

  @override
  String get dialogDisableHistoryMessage =>
      'Se borrará el historial existente. Los archivos descargados no se eliminarán.';

  @override
  String get dialogDisableAndClear => 'Desactivar y borrar';

  @override
  String get openInOtherServices => 'Abrir en otros servicios';

  @override
  String get shareSheetNoExtensions => 'No hay otros servicios compatibles';

  @override
  String get shareSheetNotFound => 'No se encontró';

  @override
  String get shareSheetCopyLink => 'Copiar enlace';

  @override
  String shareSheetLinkCopied(Object service) {
    return '$service enlace copiado';
  }

  @override
  String get libraryPlayback => 'Reproducción';

  @override
  String get libraryExternalPlayer => 'Reproductor externo';

  @override
  String get libraryExternalPlayerSubtitle =>
      'Recommended for listening, best quality, gapless playback, EQ, and wider format support';

  @override
  String get libraryBuiltInPreviewPlayer => 'Reproductor integrado';

  @override
  String get libraryBuiltInPreviewPlayerSubtitle =>
      'Reproduce tu música directamente en Toadplayer';

  @override
  String get nowPlayingTitle => 'Ahora en pantalla';

  @override
  String get nowPlayingNothingPlaying => 'No se está reproduciendo nada';

  @override
  String get nowPlayingMinimize => 'Minimizar';

  @override
  String get nowPlayingUpNext => 'A continuación';

  @override
  String get nowPlayingAudioOutput => 'Salida de audio';

  @override
  String nowPlayingWrittenBy(String writers) {
    return 'Escrito por: $writers';
  }

  @override
  String nowPlayingLyricsProvider(String provider) {
    return 'Letra: $provider';
  }

  @override
  String get concertGetTickets => 'Comprar boletos';

  @override
  String get concertSetList => 'Lista de canciones del concierto';

  @override
  String get concertSetListButton => 'Lista de canciones';

  @override
  String get concertAddToCalendar => 'Agregar al calendario';

  @override
  String get concertOpenMaps => 'Abrir mapas';

  @override
  String get concertDetailsUnavailable =>
      'Por el momento no hay información disponible sobre el concierto.';

  @override
  String get concertCalendarUnavailable => 'No se puede abrir el calendario.';

  @override
  String get nowPlayingAudioOutputUnavailable =>
      'No se pueden abrir las configuraciones de salida de audio.';

  @override
  String get nowPlayingPreviousTrack => 'Pista anterior';

  @override
  String get nowPlayingNextTrack => 'Siguiente pista';

  @override
  String get nowPlayingDetails => 'Detalles';

  @override
  String get nowPlayingSleepTimer => 'Temporizador de apagado';

  @override
  String nowPlayingSleepTimerActive(String time) {
    return 'Termina a las $time';
  }

  @override
  String nowPlayingSleepTimerMinutes(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minutos',
      one: '1 minuto',
    );
    return '$_temp0';
  }

  @override
  String get nowPlayingSleepTimerOff =>
      'Desactivar el temporizador de apagado automático';

  @override
  String nowPlayingSleepTimerSet(String duration) {
    return 'Temporizador de apagado configurado para $duration';
  }

  @override
  String get nowPlayingSleepTimerCancelled =>
      'El temporizador de apagado está desactivado';

  @override
  String get nowPlayingOpenInExternalPlayer =>
      'Abrir en un reproductor externo';

  @override
  String get nowPlayingHideVolume => 'Hide volume';

  @override
  String get nowPlayingShowVolume => 'Show volume';

  @override
  String get nowPlayingTabPlayer => 'Reproductor';

  @override
  String get nowPlayingTabLyrics => 'Letra de la canción';

  @override
  String get nowPlayingNoLyrics => 'Este archivo no contiene letras';

  @override
  String get nowPlayingInstrumental => 'Instrumental';

  @override
  String get nowPlayingLyricsLanguageOptions =>
      'Opciones de idioma para las letras de las canciones';

  @override
  String get nowPlayingHidePronunciation => 'Ocultar pronunciación';

  @override
  String get nowPlayingShowPronunciation => 'Mostrar pronunciación';

  @override
  String get nowPlayingHideTranslation => 'Ocultar traducción';

  @override
  String get nowPlayingShowTranslation => 'Mostrar traducción';

  @override
  String get nowPlayingSearchLyricsOnline => 'Buscar en línea';

  @override
  String get nowPlayingNoLyricsOnline => 'No se encontraron letras en línea';

  @override
  String get nowPlayingCancelTranslation => 'Cancel Translation';

  @override
  String nowPlayingTranslatingLyrics(int percent) {
    return 'Translating lyrics, $percent%';
  }

  @override
  String get lyricsTranslateSheetTitle => 'Translate Into';

  @override
  String lyricsTranslateSheetSubtitle(String provider) {
    return 'The lyrics are sent to $provider.';
  }

  @override
  String lyricsTranslatePartial(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lines',
      one: '1 line',
    );
    return '$_temp0 could not be translated';
  }

  @override
  String lyricsTranslateAlreadyIn(String language) {
    return 'These lyrics are already in $language';
  }

  @override
  String get lyricsAiTranslation => 'AI Translation';

  @override
  String get lyricsAiTranslationOff => 'Not set up';

  @override
  String get lyricsAiTranslationNotice =>
      'Lyrics you translate are sent to the provider you choose, using your own API key. The provider\'s terms and pricing apply. Translations are saved on this device and never change your lyric files.';

  @override
  String get lyricsAiSectionProvider => 'Provider';

  @override
  String get lyricsAiSectionTranslation => 'Translation';

  @override
  String get lyricsAiProvider => 'Provider';

  @override
  String get lyricsAiProviderCustom => 'Custom Server';

  @override
  String get lyricsAiProviderCustomSubtitle =>
      'Any OpenAI-compatible server, such as Ollama or LM Studio';

  @override
  String get lyricsAiBaseUrl => 'Server URL';

  @override
  String get lyricsAiBaseUrlInvalid =>
      'Enter a URL that starts with http:// or https://';

  @override
  String get lyricsAiNotSet => 'Not set';

  @override
  String get lyricsAiApiKey => 'API Key';

  @override
  String get lyricsAiApiKeyOptional => 'Optional for local servers';

  @override
  String lyricsAiApiKeySaved(String suffix) {
    return 'Saved, ends in $suffix';
  }

  @override
  String lyricsAiApiKeyDescription(String provider) {
    return 'Kept in this device\'s secure storage and only sent to $provider.';
  }

  @override
  String get lyricsAiModel => 'Model';

  @override
  String lyricsAiModelDefault(String model) {
    return 'Default ($model)';
  }

  @override
  String get lyricsAiModelHint => 'Model ID';

  @override
  String get lyricsAiModelUseDefault => 'Use Default';

  @override
  String get lyricsAiModelLoad => 'Load Models';

  @override
  String get lyricsAiModelsEmpty => 'The provider listed no models';

  @override
  String get lyricsAiTestConnection => 'Test Connection';

  @override
  String get lyricsAiTestConnectionSubtitle =>
      'Translates one line to check the key and model';

  @override
  String get lyricsAiTestSuccess => 'The connection works';

  @override
  String get lyricsAiTargetLanguage => 'Translate Into';

  @override
  String lyricsAiTargetLanguageApp(String language) {
    return 'App language ($language)';
  }

  @override
  String get lyricsAiInstruction => 'Extra Instruction';

  @override
  String get lyricsAiInstructionNone => 'None';

  @override
  String get lyricsAiInstructionHint =>
      'For example: keep the rhymes where you can';

  @override
  String get lyricsAiAutoTranslate => 'Translate Automatically';

  @override
  String get lyricsAiAutoTranslateSubtitle =>
      'Translates synced lyrics that have no translation when you open them, using your provider\'s quota';

  @override
  String get lyricsAiRomanize => 'Add Romanization';

  @override
  String get lyricsAiRomanizeSubtitle =>
      'Shows how lyrics in other alphabets are sung, such as romaji for Japanese or pinyin for Chinese';

  @override
  String get lyricsAiClearCache => 'Clear Saved Translations';

  @override
  String lyricsAiClearCacheSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count songs',
      one: '1 song',
      zero: 'No saved translations',
    );
    return '$_temp0';
  }

  @override
  String get lyricsAiClearCacheConfirm => 'Clear saved translations?';

  @override
  String get lyricsAiClearCacheMessage =>
      'Songs will need to be translated again, which uses your provider\'s quota.';

  @override
  String get lyricsAiClearCacheDone => 'Saved translations cleared';

  @override
  String get lyricsAiErrorNotConfigured =>
      'Set up AI translation in Lyrics settings first';

  @override
  String get lyricsAiErrorInvalidKey =>
      'The provider did not accept the API key';

  @override
  String get lyricsAiErrorRateLimited =>
      'The provider is limiting requests. Try again in a moment';

  @override
  String get lyricsAiErrorQuota =>
      'Your provider account is out of credit or quota';

  @override
  String get lyricsAiErrorNetwork =>
      'Could not reach the provider. Check your connection';

  @override
  String get lyricsAiErrorTimeout => 'The provider took too long to answer';

  @override
  String get lyricsAiErrorModelNotFound =>
      'The provider does not offer this model';

  @override
  String get lyricsAiErrorRefused =>
      'The model declined to translate these lyrics';

  @override
  String get lyricsAiErrorTruncated =>
      'The model\'s answer was cut off. Try another model';

  @override
  String get lyricsAiErrorBadResponse =>
      'The model\'s answer could not be read. Try another model';

  @override
  String get lyricsAiErrorService =>
      'The provider had a problem. Try again later';

  @override
  String get lyricsAiErrorNoLyrics => 'These lyrics have nothing to translate';

  @override
  String get nowPlayingLibraryEmpty => 'Tu biblioteca está vacía';

  @override
  String nowPlayingShuffleLibraryFailed(String error) {
    return 'No se pudo mezclar la biblioteca: $error';
  }

  @override
  String get nowPlayingShuffleOn => 'Sigue adelante';

  @override
  String get nowPlayingPlayInOrder => 'Reproducir en orden';

  @override
  String get nowPlayingShuffleLibrary => 'Mezclar la biblioteca';

  @override
  String get nowPlayingQueueEmpty => 'La fila está vacía';

  @override
  String get nowPlayingNoMetadata => 'No hay metadatos disponibles';

  @override
  String get linkDevicesTitle => 'Devices';

  @override
  String get linkConnectionConnected => 'Connected';

  @override
  String get linkConnectionConnecting => 'Connecting';

  @override
  String get linkConnectionDisconnected => 'Not connected';

  @override
  String get linkThisPhone => 'This phone';

  @override
  String linkPlayingOn(String name) {
    return 'Playing on $name';
  }

  @override
  String linkDesktopDownloads(String name) {
    return 'Downloads on $name';
  }

  @override
  String linkHandoffStarted(String name) {
    return 'Playing on $name';
  }

  @override
  String linkHandoffSending(String name) {
    return 'Sending this song to $name...';
  }

  @override
  String linkHandoffMissing(String name, String titles) {
    return 'Playing on $name. Not found there: $titles';
  }

  @override
  String linkHandoffNotFound(String name) {
    return '$name has none of these tracks';
  }

  @override
  String get linkHandoffNothingPlaying => 'Nothing is playing on this phone';

  @override
  String linkContinueSkipped(String titles) {
    return 'Not on this phone: $titles';
  }

  @override
  String get linkContinueNotFound => 'None of these tracks are on this phone';

  @override
  String linkRequestFailed(String name) {
    return 'Could not reach $name';
  }

  @override
  String linkDownloadOnDesktop(String name) {
    return 'Download on $name';
  }

  @override
  String linkDownloadQueuedOnDesktop(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Queued $count tracks on $name',
      one: 'Queued 1 track on $name',
    );
    return '$_temp0';
  }

  @override
  String linkOpenOnDesktop(String name) {
    return 'Open on $name';
  }

  @override
  String linkOpenedOnDesktop(String name) {
    return 'Opened on $name';
  }

  @override
  String linkSendToDesktop(String name) {
    return 'Send to $name';
  }

  @override
  String get linkSaveToPhone => 'Save to this phone';

  @override
  String get linkSavingToPhone => 'Saving to this phone';

  @override
  String linkSavedToPhone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Saved $count songs to this phone',
      one: 'Saved 1 song to this phone',
    );
    return '$_temp0';
  }

  @override
  String linkSaveToPhoneFailed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count songs could not be saved',
      one: '1 song could not be saved',
    );
    return '$_temp0';
  }

  @override
  String get linkSaveToPhoneCancelled => 'Saving stopped';

  @override
  String linkTransferPhoneReceiving(int count, String title, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Saving $count songs from $name',
      one: 'Saving $title from $name',
    );
    return '$_temp0';
  }

  @override
  String linkTransferPhoneOffered(int count, String title, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$name is sending $count songs to this phone',
      one: '$name is sending $title to this phone',
    );
    return '$_temp0';
  }

  @override
  String get linkTransferPhoneView => 'View';

  @override
  String linkTransferPhoneWith(String name) {
    return 'Transfer with $name';
  }

  @override
  String linkTransferPhoneNothing(String name) {
    return 'None of these songs are on $name';
  }

  @override
  String linkSendSending(int count, String title, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sending $count songs to $name',
      one: 'Sending $title to $name',
    );
    return '$_temp0';
  }

  @override
  String linkSendNothing(String name) {
    return 'None of these songs can be sent to $name';
  }

  @override
  String get linkDownloadStatusQueued => 'Waiting';

  @override
  String get linkDownloadStatusDownloading => 'Downloading';

  @override
  String get linkDownloadStatusDone => 'Done';

  @override
  String get linkDownloadStatusFailed => 'Failed';

  @override
  String get announcementUnableToOpenLink =>
      'No se pudo abrir el enlace. Inténtalo de nuevo.';

  @override
  String trackConvertLosslessOutputWithCap(String quality) {
    return 'Salida sin pérdida con límite de $quality';
  }

  @override
  String trackConvertConfirmMessageLosslessCapped(
    String sourceFormat,
    String targetFormat,
    String quality,
  ) {
    return '¿Convertir de $sourceFormat a $targetFormat ($quality)?\n\nEl archivo de salida se mantendrá en un códec sin pérdida, pero la profundidad de bits y la frecuencia de muestreo se limitarán. El archivo original se eliminará después de la conversión.\n';
  }

  @override
  String selectionBatchConvertConfirmMessageLosslessCapped(
    int count,
    String format,
    String quality,
  ) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'pistas',
      one: 'pista',
    );
    return '¿Convertir $count $_temp0 a $format ($quality)?\n\nEl archivo de salida se mantendrá en un códec sin pérdida, pero la profundidad de bits y la frecuencia de muestreo se limitarán. Los archivos originales se eliminarán después de la conversión.';
  }

  @override
  String trackConvertActionLabelLossless(
    String sourceFormat,
    String targetFormat,
    String quality,
  ) {
    return '$sourceFormat → $targetFormat ($quality)';
  }

  @override
  String trackConvertActionLabelLossy(
    String sourceFormat,
    String targetFormat,
    String bitrate,
  ) {
    return '$sourceFormat → $targetFormat @ $bitrate';
  }

  @override
  String get aboutPaxsenixSubtitle =>
      'Servicio de letras de canciones para Musixmatch, Netease, Apple Music, QQ Music, Spotify, Deezer, YouTube, Kugou y Genius';

  @override
  String get snackbarPlayingNext => 'Próxima reproducción';

  @override
  String get snackbarAddedToQueueGeneric => 'Agregado a la fila';

  @override
  String selectionDeletePlaylistsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'listas de reproducción',
      one: 'lista de reproducción',
    );
    return 'Eliminar $count $_temp0';
  }

  @override
  String get actionShuffle => 'Reproducción aleatoria';

  @override
  String get downloadPrimaryArtistOnlyOn => 'Solo primaria: Activado';

  @override
  String get downloadPrimaryArtistOnlyOff => 'Solo primaria: Desactivado';

  @override
  String get downloadAlbumArtistMetadataPrimaryOnly =>
      'Metadatos de «Álbum» y «Artista»: solo los principales';

  @override
  String get downloadAlbumArtistMetadataFull =>
      'Metadatos del álbum y del artista: Completos';

  @override
  String get trackConvertOriginal => 'Original';

  @override
  String get trackConvertOriginalQuality => 'Calidad original';

  @override
  String get trackConvertLosslessSuffix => 'Sin pérdida de calidad';

  @override
  String get trackConvertDithering => 'Dithering';

  @override
  String get trackConvertResampler => 'Resampler';

  @override
  String get trackConvertDitherNone => 'Ninguno';

  @override
  String get trackConvertDitherTriangular => 'TPDF';

  @override
  String get trackConvertDitherTriangularHp => 'HP triangular';

  @override
  String get trackConvertResamplerSwr => 'SWR';

  @override
  String get trackConvertResamplerSoxr => 'SoXr';

  @override
  String get updateSeeReleaseNotes =>
      'Consulte las notas de la versión para obtener más detalles.';

  @override
  String get unknownTitle => 'Título desconocido';

  @override
  String get trackPlayNext => 'Reproducir siguiente';

  @override
  String get trackAddToQueue => 'Agregar a la fila';

  @override
  String snackbarExtensionInstalledEnable(String extensionName) {
    return '$extensionName está instalada. Actívala en Configuración > Extensiones';
  }

  @override
  String snackbarExtensionUpdatedVersion(String extensionName, String version) {
    return '$extensionName se ha actualizado a la versión v$version';
  }

  @override
  String snackbarFailedToInstallNamed(String extensionName) {
    return 'No se pudo instalar $extensionName';
  }

  @override
  String snackbarFailedToUpdateNamed(String extensionName) {
    return 'No se pudo actualizar $extensionName';
  }

  @override
  String get releaseTypeEp => 'EP';

  @override
  String get releaseTypeSingle => 'Sencillo';

  @override
  String get trackCoverOnline => 'Portada en línea';

  @override
  String get regionCountryUS => 'Estados Unidos';

  @override
  String get regionCountryIT => 'Italia';

  @override
  String get regionCountryES => 'España';

  @override
  String get regionCountryGB => 'Reino Unido';

  @override
  String get regionCountryFR => 'Francia';

  @override
  String get regionCountryDE => 'Alemania';

  @override
  String get regionCountryJP => 'Japón';

  @override
  String get regionCountryKR => 'Corea del Sur';

  @override
  String get regionCountryIN => 'India';

  @override
  String get regionCountryID => 'Indonesia';

  @override
  String get regionCountryBR => 'Brasil';

  @override
  String get regionCountryMX => 'México';

  @override
  String get regionCountryAU => 'Australia';

  @override
  String get regionCountryCA => 'Canadá';

  @override
  String get regionCountryXK => 'Kosovo';

  @override
  String get extensionVerificationBrowserTitle => 'Navegador de verificación';

  @override
  String get extensionVerificationBrowserSubtitleExternal =>
      'Abre primero los desafíos en el navegador predeterminado';

  @override
  String get extensionVerificationBrowserSubtitleInApp =>
      'Abre primero los desafíos en el navegador integrado en la aplicación';

  @override
  String get extensionVerificationBrowserExternal => 'Externo';

  @override
  String get extensionVerificationBrowserInApp => 'Dentro de la aplicación';

  @override
  String extensionVerificationUnavailable(String extension) {
    return 'No hay ninguna página de verificación disponible para $extension. Vuelve a intentar la descarga para solicitar un nuevo código de verificación.';
  }

  @override
  String get extensionVerificationHelpTitleManual =>
      'Abrir la verificación manualmente';

  @override
  String get extensionVerificationHelpTitleWaiting =>
      'La verificación sigue pendiente';

  @override
  String get extensionVerificationHelpMessageManual =>
      'Toadplayer no pudo abrir el navegador automáticamente. Abre este enlace en tu navegador o cópialo manualmente.';

  @override
  String get extensionVerificationHelpMessageWaiting =>
      'Si el navegador no se abrió, o si la verificación terminó pero no regresaste a Toadplayer, abre este enlace de nuevo o cópialo manualmente.';

  @override
  String get extensionVerificationClose => 'Cerrar';

  @override
  String get extensionVerificationCopyLink => 'Copiar enlace';

  @override
  String get extensionVerificationPasteCallback => 'Pegar callback';

  @override
  String get extensionVerificationLinkCopied =>
      'Se copió el enlace de verificación';

  @override
  String get extensionVerificationOpenBrowser => 'Abrir el navegador';

  @override
  String get settingsSearchHint => 'Configuración de búsqueda';

  @override
  String settingsSearchNoResults(String query) {
    return 'No hay configuraciones que coincidan con «$query»';
  }

  @override
  String get libraryFilterMetadataMissingLyrics => 'Letra que falta';

  @override
  String get libraryFilterMetadataMissingReplayGain => 'Falta ReplayGain';

  @override
  String get libraryFilterMetadataHasReplayGain => 'Tiene ReplayGain';

  @override
  String get libraryFilterIncompleteAlbums => 'Álbumes incompletos';

  @override
  String get libraryAlbumCompletenessUnknown =>
      'Se desconoce si el álbum está completo';

  @override
  String libraryAlbumMissingTracks(int present, int expected, int missing) {
    return '$present/$expected pistas · $missing faltantes';
  }

  @override
  String get trackOptionCopyTrackName => 'Copiar el nombre de la pista';

  @override
  String get trackOptionCopyArtist => 'Artista de copias';

  @override
  String get trackOptionCopyTrackAndArtist => 'Copiar canción y artista';

  @override
  String get metadataCopyValue => 'Copiar valor';

  @override
  String get metadataCopyField => 'Copiar campo y valor';

  @override
  String get toadplayerSearch => 'Buscar';

  @override
  String get toadplayerContinuePlaying => 'Seguir escuchando';

  @override
  String get metadataCopyAll => 'Copy all metadata';

  @override
  String get optionsEmbeddedCoverSize => 'Tamaño de la portada integrada';

  @override
  String get optionsEmbeddedCoverSizeDescription =>
      'Reduce la resolución de las portadas descargadas de forma remota antes de insertarlas. Las imágenes que ya están dentro del límite se mantienen sin cambios.';

  @override
  String get toadplayerFavorite => 'Favorito';

  @override
  String get toadplayerGoToArtist => 'Ir a Artista';

  @override
  String get toadplayerFavorited => 'Agregado a favoritos';

  @override
  String get autoMixDescription =>
      'Mezcla canciones con sincronización de ritmos y ajuste de tempo que conserva el tono. Utiliza fundido cruzado cuando no es posible sincronizar los ritmos.';

  @override
  String get gaplessPlayback => 'Gapless playback';

  @override
  String get gaplessPlaybackDescription =>
      'Start the next song the moment one ends, without silence between them. AutoMix replaces it while on.';

  @override
  String get playerCoverStyle => 'Carátula';

  @override
  String get landscapeLyricsArtwork => 'Album art beside lyrics';

  @override
  String get landscapeLyricsArtworkDescription =>
      'Show album art instead of track details in the Material landscape player';

  @override
  String get compactPlayer => 'Compact player';

  @override
  String get compactPlayerDescription =>
      'When lyrics are left alone, shrink the player to a slim bar so the lyrics get more room. A tap brings the full player back';

  @override
  String get playerCoverStyleDefault => 'Por defecto';

  @override
  String get playerCoverStyleCard => 'Card';

  @override
  String get playerCoverStyleDefaultDescription =>
      'La carátula como tarjeta sobre los controles';

  @override
  String get playerCoverStyleFullScreen => 'Pantalla completa';

  @override
  String get playerCoverStyleFullScreenDescription =>
      'La carátula ocupa la parte superior del reproductor y se desvanece en un desenfoque. La carátula animada siempre se muestra a pantalla completa en Toadplayer';

  @override
  String get musicHaptics => 'Háptica musical';

  @override
  String get musicHapticsDescription =>
      'Vibra al ritmo de las canciones descargadas y locales';

  @override
  String get musicHapticsSensitivity => 'Sensibilidad';

  @override
  String get musicHapticsStrength => 'Intensidad';

  @override
  String get autoMixOn => 'AutoMix activado';

  @override
  String get autoMixOff => 'AutoMix desactivado';

  @override
  String get autoplayOn => 'Reproducción automática activada';

  @override
  String get autoplayOff => 'Reproducción automática desactivada';

  @override
  String get autoplayFromLibrary =>
      'Reproducción automática desde tu biblioteca';

  @override
  String get autoplayDescription =>
      'Sigue con canciones relacionadas de tu biblioteca cuando termine la fila.';

  @override
  String get autoplayPersonalization => 'Reproducción automática personalizada';

  @override
  String get autoplayPersonalizationDescription =>
      'Aprende de las canciones que escuchas y de las que te saltas, de manera privada en este dispositivo. Si desactivas esta función, se detendrá el aprendizaje y se restablecerá la reproducción automática habitual.';

  @override
  String get autoplayResetLearning =>
      'Restablecer el aprendizaje de recomendaciones';

  @override
  String get autoplayResetLearningConfirmTitle =>
      'Restablecer el aprendizaje de recomendaciones?';

  @override
  String get autoplayResetLearningConfirmMessage =>
      'La reproducción automática olvida lo que aprendió de tus escuchas y de las canciones que omites. Esto no se puede deshacer.';

  @override
  String get autoplayResetLearningConfirm => 'Restablecer';

  @override
  String autoplayLearningProgress(int count, int minimum) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);
    final intl.NumberFormat minimumNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String minimumString = minimumNumberFormat.format(minimum);

    return 'Ranking tunes to you after $minimumString Autoplay songs ($countString so far)';
  }

  @override
  String get autoplayLearningWaiting =>
      'Standard ranking until you both keep and skip recent Autoplay songs';

  @override
  String autoplayLearningTuned(int learned, int starting) {
    return 'Tuned to you: $learned% accurate on your latest songs (standard $starting%)';
  }

  @override
  String autoplayLearningStandard(int learned, int starting) {
    return 'Standard ranking: tuning was not more accurate on your latest songs ($learned% vs $starting%)';
  }

  @override
  String get songAnalysis => 'Song analysis';

  @override
  String get songAnalysisDescription =>
      'Learn how each Library song sounds, privately on this device, so Autoplay picks songs that sound like what you play and flow into each other.';

  @override
  String get songAnalysisOnlyWhileCharging => 'Only while charging';

  @override
  String get songAnalysisOnlyWhileChargingDescription =>
      'Analyze the Library only while this phone charges. The song playing is analyzed either way.';

  @override
  String songAnalysisProgress(int analyzed, int total) {
    final intl.NumberFormat analyzedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String analyzedString = analyzedNumberFormat.format(analyzed);
    final intl.NumberFormat totalNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String totalString = totalNumberFormat.format(total);

    return '$analyzedString of $totalString songs analyzed';
  }

  @override
  String get songAnalysisClear => 'Clear song analysis';

  @override
  String get songAnalysisClearConfirmTitle => 'Clear song analysis?';

  @override
  String get songAnalysisClearConfirmMessage =>
      'Autoplay forgets how your songs sound. While song analysis is on, your Library is analyzed again.';

  @override
  String get songAnalysisClearConfirm => 'Clear';

  @override
  String get profileTitle => 'Perfil';

  @override
  String get profileSetUp => 'Configura tu perfil';

  @override
  String get profileEdit => 'Editar nombre y foto';

  @override
  String get backupIncludesProfile => 'Incluye tu nombre de perfil y tu foto';

  @override
  String get profileName => 'Nombre';

  @override
  String get profileNameHint => 'Tu nombre';

  @override
  String get profileChangePhoto => 'Elige una foto';

  @override
  String get profileRemovePhoto => 'Eliminar foto';

  @override
  String get profilePhotoError =>
      'Elige una imagen válida que no supere los 20 MB.';

  @override
  String get profileSaveError =>
      'No se pudo guardar tu perfil. Inténtalo de nuevo.';

  @override
  String get homeGreetingMorning1 => 'Buenos días';

  @override
  String get homeGreetingMorning2 => 'Arriba, a brillar';

  @override
  String get homeGreetingMorning3 => 'Un nuevo comienzo';

  @override
  String get homeGreetingAfternoon1 => 'Buenas tardes';

  @override
  String get homeGreetingAfternoon2 => 'Ritmo de tarde';

  @override
  String get homeGreetingAfternoon3 => 'Mantén el ambiente';

  @override
  String get homeGreetingEvening1 => 'Buenas noches';

  @override
  String get homeGreetingEvening2 => 'Hora de relajarse';

  @override
  String get homeGreetingEvening3 => 'Hora dorada';

  @override
  String get homeGreetingNight1 => 'Buenas noches';

  @override
  String get homeGreetingNight2 => 'Sesión de madrugada';

  @override
  String get homeGreetingNight3 => 'Horas tranquilas';

  @override
  String homeGreetingNamed(String greeting, String name) {
    return '$greeting, $name';
  }

  @override
  String get homeTaglineListening => '¿Qué escuchamos?';

  @override
  String get homeTaglineLink => '¿Tienes un enlace? Pégalo en la búsqueda';

  @override
  String get homeTaglineDiscover => 'Encuentra tu próximo álbum favorito';

  @override
  String get homeContinueListening => 'Seguir escuchando';

  @override
  String get homeRecentlyAdded => 'Añadidos recientemente';

  @override
  String get homeOnRepeat => 'En repetición';

  @override
  String get homeShortcuts => 'Accesos directos';

  @override
  String get homeMixesForYou => 'Mixes for you';

  @override
  String get homeMixFavoritesTitle => 'Favorites Mix';

  @override
  String homeMixGenreTitle(String genre) {
    return '$genre Mix';
  }

  @override
  String homeMixArtistTitle(String artist) {
    return '$artist Mix';
  }

  @override
  String homeMixDecadeTitle(String decade) {
    return '${decade}s Mix';
  }

  @override
  String get homeMixFreshTitle => 'New Additions Mix';

  @override
  String get homeMixRediscoverTitle => 'Rediscover Mix';

  @override
  String get homeMixDiscoverTitle => 'Discover Mix';

  @override
  String homeMixArtistsOne(String first) {
    return '$first';
  }

  @override
  String homeMixArtistsTwo(String first, String second) {
    return '$first and $second';
  }

  @override
  String homeMixArtistsMore(String first, String second) {
    return '$first, $second and more';
  }

  @override
  String get homeMixGenreHipHop => 'Hip-Hop';

  @override
  String get homeMixGenreRnb => 'R&B';

  @override
  String get homeMixGenrePop => 'Pop';

  @override
  String get homeMixGenreKpop => 'K-Pop';

  @override
  String get homeMixGenreJpop => 'J-Pop';

  @override
  String get homeMixGenreRock => 'Rock';

  @override
  String get homeMixGenreMetal => 'Metal';

  @override
  String get homeMixGenrePunk => 'Punk';

  @override
  String get homeMixGenreIndie => 'Indie & Alternative';

  @override
  String get homeMixGenreElectronic => 'Electronic';

  @override
  String get homeMixGenreChill => 'Chill & Lo-Fi';

  @override
  String get homeMixGenreJazz => 'Jazz';

  @override
  String get homeMixGenreBlues => 'Blues';

  @override
  String get homeMixGenreClassical => 'Classical';

  @override
  String get homeMixGenreSoundtrack => 'Soundtrack';

  @override
  String get homeMixGenreCountry => 'Country';

  @override
  String get homeMixGenreFolk => 'Folk & Acoustic';

  @override
  String get homeMixGenreLatin => 'Latin';

  @override
  String get homeMixGenreReggae => 'Reggae';

  @override
  String get homeMixGenreAfro => 'Afrobeats';

  @override
  String get homeMixGenreGospel => 'Gospel & Worship';

  @override
  String get homeMixGenreDangdut => 'Dangdut';

  @override
  String get homeMixUpdatedDaily => 'Made from your Library, updated daily';

  @override
  String get homeMixSaveAsPlaylist => 'Save as playlist';

  @override
  String get artistUpcomingConcerts => 'Próximos conciertos';

  @override
  String get artistAllUpcomingConcerts => 'Todos los próximos conciertos';

  @override
  String get artistNoUpcomingConcerts => 'No hay conciertos programados.';

  @override
  String get motionArtwork => 'Ilustraciones animadas';

  @override
  String get listeningStats => 'Estadísticas de escucha';

  @override
  String get listeningStatsRecord => 'Escucha de grabaciones';

  @override
  String get listeningStatsDescription =>
      'A partir de ahora, se guardará únicamente en este dispositivo. Solo se registran las reproducciones del reproductor integrado; las pausas, el almacenamiento en búfer y el avance rápido no se suman al tiempo de escucha. Una reproducción se cuenta a los 30 segundos.';

  @override
  String get listeningStatsEmpty =>
      'Reproduce música con el reproductor integrado para comenzar tu resumen de escucha. No se puede recuperar lo que ya se ha escuchado.';

  @override
  String listeningStatsDays(int days) {
    return '$days días';
  }

  @override
  String listeningStatsMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String listeningStatsTotals(int plays, int tracks, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      plays,
      locale: localeName,
      other: '$plays reproducciones',
      one: '1 reproducción',
    );
    String _temp1 = intl.Intl.pluralLogic(
      tracks,
      locale: localeName,
      other: '$tracks pistas',
      one: '1 pista',
    );
    String _temp2 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days días activos',
      one: '1 día activo',
    );
    return '$_temp0 · $_temp1 · $_temp2';
  }

  @override
  String get listeningStatsPreviousYear => 'Año anterior';

  @override
  String get listeningStatsNextYear => 'El año que viene';

  @override
  String get listeningStatsActivity => 'Días de escucha recientes · minutos';

  @override
  String get listeningStatsTopArtists => 'Artistas destacados';

  @override
  String get listeningStatsTopTracks => 'Canciones más populares';

  @override
  String get listeningStatsLoadError =>
      'No se pudieron cargar las estadísticas de escucha';

  @override
  String get listeningStatsClear => 'Estadísticas de escucha claras';

  @override
  String get listeningStatsClearError =>
      'No se pudieron borrar las estadísticas de escucha. Inténtalo de nuevo.';

  @override
  String get listeningStatsClearDescription =>
      '¿Deseas eliminar todas las estadísticas de escucha de este dispositivo? Tu música y tus listas de reproducción se conservarán.';

  @override
  String get libraryArtistsEmpty =>
      'Los artistas aparecerán aquí cuando descargues música o analices una biblioteca local.';

  @override
  String get listeningRewind => 'Rewind';

  @override
  String get listeningRewindDescription =>
      'Revive lo más destacado de tus últimas semanas y meses';

  @override
  String get listeningRewindChoosePeriod => 'Elige un periodo';

  @override
  String listeningRewindLastWeeks(int weeks) {
    return 'Últimas $weeks semanas';
  }

  @override
  String listeningRewindLastMonths(int months) {
    return 'Últimos $months meses';
  }

  @override
  String listeningRewindThisYear(int year) {
    return '$year hasta ahora';
  }

  @override
  String get listeningRewindIntroTitle => 'Tu Rewind';

  @override
  String listeningRewindIntroBody(String start, String end) {
    return 'Un repaso de lo que reprodujiste del $start al $end.';
  }

  @override
  String get listeningRewindMinutesTitle => 'Escuchaste durante';

  @override
  String listeningRewindMinutesUnit(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: 'minutos',
      one: 'minuto',
    );
    return '$_temp0';
  }

  @override
  String listeningRewindHours(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: 'Eso son aproximadamente $hours horas de música',
      one: 'Eso son aproximadamente 1 hora de música',
    );
    return '$_temp0';
  }

  @override
  String listeningRewindMore(int percent) {
    return '$percent% más que el periodo anterior';
  }

  @override
  String listeningRewindLess(int percent) {
    return '$percent% menos que el periodo anterior';
  }

  @override
  String get listeningRewindSame =>
      'Aproximadamente igual que el periodo anterior';

  @override
  String get listeningRewindTopArtistTitle => 'Tu artista más escuchado';

  @override
  String listeningRewindArtistShare(int percent) {
    return '$percent% de tu tiempo de escucha';
  }

  @override
  String get listeningRewindArtistsTitle => 'Artistas en rotación';

  @override
  String get listeningRewindTopTrackTitle => 'Tu canción más escuchada';

  @override
  String listeningRewindPlays(int plays) {
    String _temp0 = intl.Intl.pluralLogic(
      plays,
      locale: localeName,
      other: '$plays reproducciones',
      one: '1 reproducción',
    );
    return '$_temp0';
  }

  @override
  String get listeningRewindTracksTitle => 'Canciones en repetición';

  @override
  String get listeningRewindTopAlbumTitle =>
      'El álbum al que seguías volviendo';

  @override
  String get listeningRewindNewArtistsTitle => 'Nuevos descubrimientos';

  @override
  String listeningRewindNewArtistsBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Descubriste $count artistas nuevos',
      one: 'Descubriste 1 artista nuevo',
    );
    return '$_temp0';
  }

  @override
  String get listeningRewindRhythmTitle => 'Tu ritmo de escucha';

  @override
  String get listeningRewindPeakDay => 'Tu día más intenso';

  @override
  String get listeningRewindFavoriteDay => 'Día favorito';

  @override
  String get listeningRewindStreak => 'Racha más larga';

  @override
  String listeningRewindStreakDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '${days}días seguidos',
      one: '1 día',
    );
    return '$_temp0';
  }

  @override
  String get listeningRewindReplayTitle => 'No podías dejar de escuchar';

  @override
  String listeningRewindReplayBody(int plays, String date) {
    return 'La reprodujiste $plays veces el $date';
  }

  @override
  String get listeningRewindOutroTitle => 'Este es tu Rewind';

  @override
  String get listeningRewindOutroBody =>
      'Sigue escuchando. Tu próximo Rewind ya se está formando.';

  @override
  String get listeningRewindEmpty =>
      'Aún no has escuchado suficiente música en este periodo. Reproduce algo de música con el reproductor integrado y vuelve más tarde.';

  @override
  String get listeningRewindLoadError => 'No se pudo cargar tu Rewind';

  @override
  String listeningRewindSlide(int index, int count) {
    return 'Diapositiva $index de $count';
  }

  @override
  String get listeningRewindShare => 'Compartir';

  @override
  String get listeningRewindShareError => 'No se pudo compartir tu Rewind';

  @override
  String get listeningRewindNext => 'Siguiente';

  @override
  String get listeningRewindPrevious => 'Anterior';

  @override
  String get listeningRewindMonthlyReady =>
      'Tus últimas 4 semanas están listas para revivir';

  @override
  String listeningRewindYearTitle(String year) {
    return 'Tu $year en música';
  }

  @override
  String get listeningRewindYearEyebrow => 'Rewind de fin de año';

  @override
  String get listeningRewindYearBanner =>
      'Tus artistas, canciones y momentos principales del año';

  @override
  String get listeningRewindYearIntroBody =>
      'Todo lo que reprodujiste este año, desde tu primera canción hasta tu mes más intenso.';

  @override
  String get listeningRewindNumbersTitle => 'Tu año en cifras';

  @override
  String get listeningRewindSongsLabel => 'Canciones';

  @override
  String get listeningRewindArtistsLabel => 'Artistas';

  @override
  String get listeningRewindAlbumsLabel => 'Álbumes';

  @override
  String get listeningRewindDaysLabel => 'Días con música';

  @override
  String listeningRewindDaysShare(int percent) {
    return 'Música en el $percent % de tus días';
  }

  @override
  String get listeningRewindMonthsTitle => 'Mes a mes';

  @override
  String get listeningRewindBiggestMonthLabel => 'Mes más intenso';

  @override
  String listeningRewindBiggestMonth(String month) {
    return 'Tu mes más intenso fue $month';
  }

  @override
  String get listeningRewindMonthlyArtistsTitle => 'Artista del mes';

  @override
  String get listeningRewindLoyalTitle => 'Siempre a tu lado';

  @override
  String listeningRewindLoyalBody(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'With you on $days different days',
      one: 'With you on 1 day',
    );
    return '$_temp0';
  }

  @override
  String get listeningRewindFirstSongTitle => 'Where your year began';

  @override
  String listeningRewindFirstSongBody(String date) {
    return 'Your most-played song on your first listening day, $date';
  }

  @override
  String listeningRewindYearOutroTitle(String year) {
    return 'That was your $year';
  }

  @override
  String get listeningRewindYearOutroBody =>
      'Here\'s to another year of great music.';

  @override
  String get weeklyReleases => 'Novedades';

  @override
  String get weeklyReleasesDescription =>
      'Álbumes y sencillos recientes de tus artistas favoritos, proporcionados por las extensiones de metadatos instaladas.';

  @override
  String get weeklyReleasesEmpty =>
      'No se encontraron lanzamientos con fecha en este período. Agrega tus artistas favoritos o prueba con un período más largo.';

  @override
  String get weeklyReleasesUnavailable =>
      'No se pudo verificar a algunos artistas. Se conservan los resultados guardados. Es posible que los proveedores no proporcionen catálogos de artistas ni fechas exactas de lanzamiento.';

  @override
  String get weeklyReleasesLoadError =>
      'No se pudieron verificar las nuevas publicaciones. Desliza hacia abajo para actualizar.';

  @override
  String get motionArtworkDescription =>
      'Las portadas de video en bucle son proporcionadas por proveedores de metadatos. Desactívalas para usar imágenes fijas y reducir el consumo de batería.';

  @override
  String get libraryLoading => 'Cargando la biblioteca…';

  @override
  String get libraryLoadFailed =>
      'No se pudo cargar la biblioteca. Intenta volver a cargar las carpetas guardadas y el índice de pistas.';

  @override
  String get discordPresenceDescription =>
      'Comparte el título, el artista, el álbum y el progreso de la música que se reproduce en el reproductor integrado en tu perfil de Discord. Los archivos de audio y las imágenes de portada locales nunca se suben. Se borra cuando se pausa o se detiene la reproducción.';

  @override
  String get discordPresenceDisabled => 'Desactivado';

  @override
  String get discordPresenceLink => 'Vincular cuenta de Discord';

  @override
  String get discordPresenceConnecting => 'Conectándome a Discord…';

  @override
  String get discordPresenceReady => 'Listo cuando suena la música';

  @override
  String get discordPresenceActive =>
      'Compartir la canción que se está reproduciendo';

  @override
  String get discordPresenceUnavailable =>
      'Discord no está disponible. Se volverá a intentar durante la reproducción.';

  @override
  String get discordPresenceBuildUnavailable =>
      'El SDK de Discord no está disponible en esta versión.';

  @override
  String get discordPresenceAndroidHelp =>
      'Instala Discord e inicia sesión en este teléfono. Permite compartir actividad en Discord. No se admiten reproductores externos.';

  @override
  String get discordPresenceIosHelp =>
      'Vincula tu cuenta a través de Discord y permite compartir actividad. Toca aquí para volver a vincularla si falla la autorización.';

  @override
  String get discordPresenceDesktopHelp =>
      'Keep the Discord desktop app running and signed in on this computer, and allow activity sharing in Discord.';

  @override
  String get discordPresenceDisconnect => 'Desconectar y olvidar la cuenta';

  @override
  String get autoMixSettingsTitle => 'Transiciones de mezcla';

  @override
  String get autoMixAutomaticDuration => 'Duración automática';

  @override
  String get autoMixDuration => 'Duración de la mezcla';

  @override
  String get autoMixEffect => 'Efecto de transición';

  @override
  String get autoMixEffectAuto => 'Auto';

  @override
  String get autoMixEffectCrossfade => 'Fundido cruzado';

  @override
  String get autoMixEffectMuffled => 'Amortiguado';

  @override
  String get autoMixEffectEcho => 'Eco';

  @override
  String get autoMixEffectPitch => 'Tono';

  @override
  String get autoMixEffectCustom => 'Personalizado';

  @override
  String get autoMixEffectsHelp =>
      'Los efectos se aplican hasta el final de la canción que está terminando durante la mezcla. Las canciones cortas utilizan un solapamiento más corto.';

  @override
  String get autoMixSpeed => 'Velocidad';

  @override
  String get autoMixPitch => 'Tono (semitonos)';

  @override
  String get autoMixEcho => 'Eco';

  @override
  String get autoMixLowPass => 'Filtro silenciador';

  @override
  String get autoMixMixing => 'Mezcla';

  @override
  String get autoMixCrossfading => 'Fundido cruzado';

  @override
  String get playbackAutomation => 'Reproducción automática';

  @override
  String get playbackPauseOnMute => 'Pausar cuando esté silenciado';

  @override
  String get snackbarPlaybackMuted =>
      'El volumen del contenido multimedia es cero. La reproducción está en pausa. Presiona el botón de reproducción nuevamente para continuar.';

  @override
  String get playbackPauseOnMuteDescription =>
      'Se pone en pausa cuando el volumen del audio está en cero y se reanuda cuando se sube. Las pausas manuales permanecen activas. Solo salida de audio estándar.';

  @override
  String get playbackOnHeadphonesConnected =>
      'Reproducir cuando se conecten los audífonos';

  @override
  String get playbackOnHeadphonesConnectedDescription =>
      'Reanuda la canción actual cuando se conecten audífonos con cable o Bluetooth. Al desconectarlos, se pausa la reproducción. Solo en el reproductor integrado.';

  @override
  String get appearanceCustomFont => 'Fuente personalizada';

  @override
  String get appearanceCustomFontSubtitle =>
      'Importa un archivo TTF u OTF (hasta 10 MB). Anula la fuente del tema y del sistema.';

  @override
  String get appearanceCustomFontInvalid =>
      'No se pudo cargar esta fuente. Elige un archivo TTF u OTF válido de hasta 10 MB.';

  @override
  String get appearanceCustomFontReset => 'Usar la fuente del tema';

  @override
  String get equalizerTitle => 'Equalizer';

  @override
  String get equalizerDescription =>
      '5–31 bands, tone controls, preamp and dynamics';

  @override
  String get equalizerEnable => 'Enable equalizer';

  @override
  String get equalizerBands => 'Bands';

  @override
  String get equalizerTone => 'Tone & stereo';

  @override
  String get equalizerPreamp => 'Preamp';

  @override
  String get equalizerBass => 'Bass';

  @override
  String get equalizerTreble => 'Treble';

  @override
  String get equalizerBalance => 'Balance';

  @override
  String get equalizerDynamics => 'Dynamics';

  @override
  String get equalizerHeadroom => 'Automatic headroom';

  @override
  String get equalizerHeadroomDescription =>
      'Reduce input gain to make room for boosted frequencies.';

  @override
  String get equalizerLimiter => 'Peak limiter';

  @override
  String get equalizerLimiterDescription =>
      'Keep peaks below −0.5 dBFS to reduce clipping.';

  @override
  String get equalizerCompressor => 'Compressor';

  @override
  String get equalizerCompressorDescription =>
      'Reduce the difference between quiet and loud passages.';

  @override
  String get equalizerThreshold => 'Threshold';

  @override
  String get equalizerRatio => 'Ratio';

  @override
  String get equalizerAttack => 'Attack';

  @override
  String get equalizerRelease => 'Release';

  @override
  String get equalizerPresets => 'Presets';

  @override
  String get equalizerSavePreset => 'Save preset';

  @override
  String get equalizerPresetName => 'Preset name';

  @override
  String get equalizerImport => 'Import preset';

  @override
  String get equalizerExport => 'Share preset';

  @override
  String get equalizerImportInvalid =>
      'Choose a valid Toadplayer equalizer preset (JSON, up to 64 KB).';

  @override
  String get equalizerSaved => 'Preset saved';

  @override
  String get equalizerResetTitle => 'Reset equalizer?';

  @override
  String get equalizerResetDescription =>
      'Restore a flat curve, default tone and dynamics settings. Saved presets are kept.';

  @override
  String get equalizerBypass =>
      'Bit-perfect, Direct USB and exclusive Hi-Res outputs bypass EQ. Disable bit-perfect output to use EQ. External players manage their own effects.';

  @override
  String get equalizerCurve => 'EQ curve (estimated)';

  @override
  String get equalizerCurveDescription =>
      'The curve shows band gains; the exact response depends on the output engine.';

  @override
  String get equalizerEffectivePreamp => 'Input gain after headroom';

  @override
  String get equalizerDeletePreset => 'Delete preset';

  @override
  String get equalizerCustom => 'Personalizado';

  @override
  String get equalizerManagePresets => 'Manage presets';

  @override
  String get lyricsShareTitle => 'Share lyrics';

  @override
  String lyricsShareSelectHint(int count) {
    return 'Select up to $count lines';
  }

  @override
  String lyricsShareLimit(int count) {
    return 'You can share up to $count lines';
  }

  @override
  String get lyricsShareAction => 'Compartir';

  @override
  String get lyricsShareError => 'Couldn\'t create the lyrics image';

  @override
  String get lyricsShareBackgroundArtwork => 'Artwork';

  @override
  String get lyricsShareBackgroundColor => 'Cover color';

  @override
  String get lyricsShareBackgroundDark => 'Oscuro';

  @override
  String get lyricsShareBackgroundLight => 'Claro';

  @override
  String get audioInfoTitle => 'Audio info';

  @override
  String get audioInfoSource => 'Source file';

  @override
  String get audioInfoSignal => 'Signal';

  @override
  String get audioInfoLoudness => 'Loudness';

  @override
  String get audioInfoProcessing => 'Processing';

  @override
  String get audioInfoOutput => 'Output';

  @override
  String get audioInfoAnalysis => 'Spectrum and level analysis';

  @override
  String get audioInfoQuality => 'Calidad';

  @override
  String get audioInfoHiResLossless => 'Hi-Res Lossless';

  @override
  String get audioInfoLossless => 'Sin pérdida de calidad';

  @override
  String get audioInfoLossy => 'Con pérdida';

  @override
  String get audioInfoFormat => 'Formato';

  @override
  String get audioInfoCodec => 'Códec';

  @override
  String get audioInfoSampleRate => 'Sample rate';

  @override
  String get audioInfoBitDepth => 'Bit depth';

  @override
  String get audioInfoChannels => 'Canales';

  @override
  String audioInfoChannelCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count channels',
      two: 'Stereo',
      one: 'Mono',
    );
    return '$_temp0';
  }

  @override
  String get audioInfoBitrate => 'Tasa de bits';

  @override
  String get audioInfoDuration => 'Duración';

  @override
  String get audioInfoFileSize => 'File size';

  @override
  String get audioInfoCompression => 'Compression';

  @override
  String audioInfoCompressionValue(String percent) {
    return '$percent% of uncompressed size';
  }

  @override
  String get audioInfoLocation => 'Location';

  @override
  String get audioInfoLocationLocal => 'Device storage';

  @override
  String get audioInfoLocationShared => 'Shared folder';

  @override
  String get audioInfoLocationNetwork => 'Almacenamiento en red';

  @override
  String audioInfoLocationLink(String device) {
    return '$device via Toadplayer Link';
  }

  @override
  String get audioInfoPcmRate => 'Uncompressed data rate';

  @override
  String get audioInfoFrequencyRange => 'Frequency range';

  @override
  String audioInfoFrequencyRangeValue(String frequency) {
    return 'Up to $frequency (Nyquist)';
  }

  @override
  String get audioInfoDynamicRange => 'Theoretical dynamic range';

  @override
  String get audioInfoTrackGain => 'Track gain';

  @override
  String get audioInfoTrackPeak => 'Track peak';

  @override
  String get audioInfoAlbumGain => 'Album gain';

  @override
  String get audioInfoAlbumPeak => 'Album peak';

  @override
  String get audioInfoNoGainTags => 'No ReplayGain tags';

  @override
  String audioInfoApplied(String gain) {
    return 'Applied $gain';
  }

  @override
  String get audioInfoOn => 'On';

  @override
  String get audioInfoOff => 'Desactivado';

  @override
  String get audioInfoBypassed => 'Bypassed by direct output';

  @override
  String get audioInfoPlayer => 'Reproductor';

  @override
  String get audioInfoPlayerValue => 'Toadplayer built-in player';

  @override
  String get audioInfoSignalPath => 'Signal path';

  @override
  String get audioInfoPathSystem => 'System mixer';

  @override
  String get audioInfoPathDirect => 'Direct USB, bypasses the system mixer';

  @override
  String get audioInfoPathExclusive =>
      'Exclusive output, bypasses the system mixer';

  @override
  String get audioInfoDecoder => 'Decoder';

  @override
  String get audioInfoHardware => 'Hardware';

  @override
  String get audioInfoSoftware => 'Software';

  @override
  String audioInfoBands(int count) {
    return '$count bands';
  }

  @override
  String get audioInfoTempo => 'Tempo';

  @override
  String get audioInfoResampling => 'Resampling';

  @override
  String get audioInfoResamplingNone => 'None, rates match';

  @override
  String get audioInfoBitPerfect => 'Bit-perfect';

  @override
  String get audioInfoBitPerfectActive => 'Yes, unaltered samples';

  @override
  String get audioInfoBitPerfectNo => 'No, mixed by the system';

  @override
  String get audioInfoDevice => 'Device';

  @override
  String audioInfoDeviceType(String type) {
    String _temp0 = intl.Intl.selectLogic(type, {
      'speaker': 'Phone speaker',
      'earpiece': 'Earpiece',
      'wired_headphones': 'Wired headphones',
      'wired_headset': 'Wired headset',
      'line': 'Line out',
      'bluetooth': 'Bluetooth',
      'bluetooth_le': 'Bluetooth LE Audio',
      'usb': 'USB audio',
      'usb_headset': 'USB headset',
      'hdmi': 'HDMI',
      'dock': 'Dock',
      'cast': 'Cast',
      'hearing_aid': 'Hearing aid',
      'airplay': 'AirPlay',
      'car': 'Car audio',
      'other': 'Other',
    });
    return '$_temp0';
  }

  @override
  String get audioInfoOutputRate => 'Output sample rate';

  @override
  String get audioInfoOutputFormat => 'Formato de salida';

  @override
  String get audioInfoBluetoothFormat => 'Bluetooth codec format';

  @override
  String get audioInfoAndroidNotReported => 'Not reported by Android';

  @override
  String get audioInfoSystemDefaultRate => 'System default sample rate';

  @override
  String get audioInfoAndroidPcmRates => 'Android PCM sample rates';

  @override
  String get audioInfoAndroidPcmFormats => 'Android PCM formats';

  @override
  String get audioInfoSystemDefaultBuffer => 'System default buffer';

  @override
  String get audioInfoDeviceRates => 'Device sample rates';

  @override
  String get audioInfoDeviceFormats => 'Device formats';

  @override
  String get audioInfoAnyRate => 'Cualquiera';

  @override
  String get audioInfoBuffer => 'Mixer buffer';

  @override
  String get audioInfoLatency => 'Output latency';

  @override
  String get audioInfoLowLatency => 'Low-latency audio';

  @override
  String get audioInfoProAudio => 'Pro audio';

  @override
  String get audioInfoSupported => 'Supported';

  @override
  String get audioInfoNotSupported => 'Not supported';

  @override
  String get audioInfoSpatial => 'Spatial audio';

  @override
  String get audioInfoHeadTracking => 'Head tracking';

  @override
  String get audioInfoUnavailable => 'Unavailable';

  @override
  String get audioInfoFixedVolume => 'Controlled by the device';

  @override
  String get audioInfoCopy => 'Copy report';

  @override
  String get audioInfoCopied => 'Audio info copied';

  @override
  String get lyricsTextSize => 'Tamaño del texto de la letra';

  @override
  String get lyricsTextPreview => 'Sigue cada verso de tu canción favorita';

  @override
  String get lyricsBlur => 'Lyrics blur';

  @override
  String get lyricsBlurSubtitle =>
      'How much the lines around the current one soften';

  @override
  String get lyricsBlurOff => 'Off';

  @override
  String get lyricsOffset => 'Lyrics timing';

  @override
  String get lyricsOffsetSubtitle =>
      'Show synced lyrics later or earlier, for example when Bluetooth audio arrives late';

  @override
  String get lyricsOffsetNone => 'In sync';

  @override
  String lyricsOffsetLater(String seconds) {
    return '$seconds s later';
  }

  @override
  String lyricsOffsetEarlier(String seconds) {
    return '$seconds s earlier';
  }

  @override
  String get appCrashTitle => 'The app previously crashed';

  @override
  String get appAnrTitle => 'The app previously stopped responding';

  @override
  String get appAnrMessage =>
      'A diagnostic report was saved. You can copy it and send it to the developer to help investigate.';

  @override
  String get appCrashMessage =>
      'A crash report was saved. Copy it and send it to the developer to help investigate.';

  @override
  String get appCrashDetails => 'View error and log';

  @override
  String get appCrashCopy => 'Copy report for developer';

  @override
  String get appCrashDismiss => 'Descartar';

  @override
  String get appCrashCopyFailed =>
      'Could not copy the crash report. Please try again.';

  @override
  String get appCrashDismissFailed =>
      'Could not dismiss the crash report. Please try again.';

  @override
  String get optionsEmbeddedCoverSizeOriginal => 'Resolución original';

  @override
  String desktopShortcutTooltip(String action, String shortcut) {
    return '$action ($shortcut)';
  }

  @override
  String get desktopPlayerIdle => 'Not playing';

  @override
  String get desktopVolumeUp => 'Increase volume';

  @override
  String get desktopVolumeDown => 'Decrease volume';

  @override
  String desktopTableSortedAscending(String column) {
    return '$column, sorted ascending';
  }

  @override
  String desktopTableSortedDescending(String column) {
    return '$column, sorted descending';
  }

  @override
  String get desktopMenuOpen => 'Open';

  @override
  String get desktopMenuShowDetails => 'Show details';

  @override
  String get desktopDropToImport => 'Drop to add to your library';

  @override
  String desktopDropImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'folders',
      one: 'folder',
    );
    return 'Adding $count $_temp0 to your library';
  }

  @override
  String get desktopDropNothingToImport =>
      'Drop music files or folders to add them to your library';

  @override
  String get desktopAllPlaylists => 'All Playlists';

  @override
  String get desktopMenuSettings => 'Settings…';

  @override
  String get desktopMenuFile => 'File';

  @override
  String get desktopMenuEdit => 'Edit';

  @override
  String get desktopMenuView => 'View';

  @override
  String get desktopWindowMode => 'Window mode';

  @override
  String get desktopWindowed => 'Windowed';

  @override
  String get desktopWindowFullscreen => 'Full screen';

  @override
  String get desktopWindowBorderless => 'Borderless';

  @override
  String get desktopExitFullscreen => 'Exit full screen';

  @override
  String get desktopMinimizeWindow => 'Minimize window';

  @override
  String get desktopZoomWindow => 'Maximize or restore window';

  @override
  String get desktopWindowModeUnavailable =>
      'The window mode could not be changed. Try again after the current window transition finishes.';

  @override
  String get desktopMenuControls => 'Controls';

  @override
  String get desktopMenuWindow => 'Window';

  @override
  String get desktopMenuHelp => 'Help';

  @override
  String get desktopMenuPlayPause => 'Play/Pause';

  @override
  String get desktopMenuMiniPlayer => 'Mini Player';

  @override
  String get desktopMiniPlayerExpand => 'Show Full Window';

  @override
  String get desktopMenuRefresh => 'Actualizar';

  @override
  String get desktopMenuProjectPage => 'Project page';

  @override
  String get desktopDownloadsShowAll => 'Show all';

  @override
  String get desktopDownloadsQueued => 'Waiting';

  @override
  String get desktopDownloadsCancel => 'Cancel download';

  @override
  String get linkDesktopSettingsTitle => 'Toadplayer on your phone';

  @override
  String get linkDesktopSettingsSubtitle =>
      'Stream your library and control playback from your phone';

  @override
  String get linkDesktopEnableTitle => 'Share with Toadplayer on your phone';

  @override
  String get linkDesktopEnableSubtitle =>
      'Your phone can browse, play and download through this computer on your local network';

  @override
  String get linkDesktopStatusStarting => 'Starting';

  @override
  String linkDesktopStatusRunning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count phones connected',
      one: '1 phone connected',
      zero: 'no phone connected',
    );
    return 'On, $_temp0';
  }

  @override
  String linkDesktopStatusFailed(String error) {
    return 'Could not start: $error';
  }

  @override
  String get linkDesktopFirewallHint =>
      'Your computer may ask whether Toadplayer can accept incoming network connections. Allow it so your phone can connect.';

  @override
  String get linkDesktopSectionComputer => 'This computer';

  @override
  String get linkDesktopDeviceName => 'Name';

  @override
  String get linkDesktopDeviceNameHint =>
      'Phones show this name when they find this computer';

  @override
  String get linkDesktopAddress => 'Address';

  @override
  String get linkDesktopSecurityCode => 'Security code';

  @override
  String get linkDesktopSecurityCodeHint =>
      'Your phone shows the same code when it pairs';

  @override
  String linkDesktopCatalogSongs(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count songs shared',
      one: '1 song shared',
    );
    return '$_temp0';
  }

  @override
  String get linkDesktopSectionPhones => 'Phones';

  @override
  String get linkDesktopPairPhone => 'Pair a phone';

  @override
  String get linkDesktopPairPhoneSubtitle =>
      'Show a code to enter on your phone';

  @override
  String get linkDesktopNoDevices => 'No phones paired yet';

  @override
  String get linkDesktopDeviceConnected => 'Connected';

  @override
  String linkDesktopDeviceLastSeen(String date) {
    return 'Last seen $date';
  }

  @override
  String get linkDesktopDeviceNeverSeen => 'Not connected yet';

  @override
  String get linkDesktopSubsonicApp => 'Subsonic app';

  @override
  String get linkDesktopRevoke => 'Remove';

  @override
  String linkDesktopRevokeTitle(String name) {
    return 'Remove $name?';
  }

  @override
  String get linkDesktopRevokeMessage =>
      'It has to pair again before it can connect to this computer.';

  @override
  String linkDesktopRevoked(String name) {
    return '$name removed';
  }

  @override
  String get linkDesktopSectionOtherApps => 'Other apps';

  @override
  String get linkDesktopAddSubsonicApp => 'Add another Subsonic app';

  @override
  String get linkDesktopAddSubsonicAppSubtitle =>
      'Create a key for a Subsonic player on another device';

  @override
  String get linkDesktopAppName => 'App name';

  @override
  String get linkDesktopCreateKey => 'Create key';

  @override
  String linkDesktopAppKeyTitle(String name) {
    return 'Connect $name';
  }

  @override
  String get linkDesktopAppKeyMessage =>
      'Enter these details in the app. The key is shown only now.';

  @override
  String get linkDesktopServerAddress => 'Server address';

  @override
  String get linkDesktopUsername => 'Username';

  @override
  String get linkDesktopApiKey => 'Password or API key';

  @override
  String linkDesktopCopy(String label) {
    return 'Copy $label';
  }

  @override
  String get linkDesktopPairInstructions =>
      'Open Toadplayer on your phone, choose this computer and enter this code.';

  @override
  String linkDesktopPairCheckCode(String code) {
    return 'Check that your phone shows security code $code.';
  }

  @override
  String linkDesktopPairExpires(String time) {
    return 'The code expires in $time';
  }

  @override
  String linkDesktopPaired(String name) {
    return 'Paired with $name';
  }

  @override
  String get linkDesktopPairExpired =>
      'The code expired. Pair again to get a new one.';

  @override
  String get linkDesktopPairAttempts =>
      'Too many wrong codes. Pair again to get a new one.';

  @override
  String get linkDesktopPairFailed => 'Could not start pairing';

  @override
  String get linkDesktopDevicesTitle => 'Phones';

  @override
  String get linkDesktopPhoneNothingPlaying => 'Nothing playing';

  @override
  String get linkDesktopContinueOnPhone => 'Continue on phone';

  @override
  String get linkDesktopOpenOnPhone => 'Open a link on phone';

  @override
  String linkDesktopOpenLinkTitle(String name) {
    return 'Open a link on $name';
  }

  @override
  String get linkDesktopOpenLinkLabel => 'Link';

  @override
  String get linkDesktopOpen => 'Open';

  @override
  String linkDesktopSentToPhone(String name) {
    return 'Sent to $name';
  }

  @override
  String get linkDesktopNotDelivered => 'The phone did not receive it';

  @override
  String get linkDesktopNothingToContinue =>
      'Nothing is playing on this computer';

  @override
  String linkTransferDesktopSendTo(String name) {
    return 'Send to $name';
  }

  @override
  String get linkTransferDesktopSaveHere => 'Save to this computer';

  @override
  String linkTransferDesktopSendingSong(String title, String name) {
    return 'Sending \"$title\" to $name';
  }

  @override
  String linkTransferDesktopSendingSongs(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sending $count songs to $name',
      one: 'Sending 1 song to $name',
    );
    return '$_temp0';
  }

  @override
  String linkTransferDesktopReceivingSong(String title, String name) {
    return 'Receiving \"$title\" from $name';
  }

  @override
  String linkTransferDesktopReceivingSongs(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Receiving $count songs from $name',
      one: 'Receiving 1 song from $name',
    );
    return '$_temp0';
  }

  @override
  String get linkTransferDesktopView => 'View';

  @override
  String get linkTransferDesktopNothingToSend =>
      'None of these songs can be sent right now';

  @override
  String get linkTransferDesktopNothingToSave =>
      'None of these songs can be saved right now';

  @override
  String get desktopScrollBack => 'Scroll back';

  @override
  String get desktopScrollForward => 'Scroll forward';

  @override
  String get settingsKeyboardShortcuts => 'Keyboard Shortcuts';

  @override
  String get settingsKeyboardShortcutsSubtitle =>
      'Keys for playback, navigation and panels';

  @override
  String get desktopShortcutsNavigation => 'Navigation';

  @override
  String get desktopShortcutDismiss => 'Close dialog or page';

  @override
  String get desktopShortcutToggleSidebar => 'Show or hide sidebar';

  @override
  String get linkSettingsTitle => 'Toadplayer on your computer';

  @override
  String get linkSettingsSubtitle =>
      'Play and control your computer\'s library';

  @override
  String get linkPageTitle => 'Computers';

  @override
  String get linkPageDescription =>
      'Pair with Toadplayer on your computer to play its library on this phone and control what it plays. Both devices need to be on the same network.';

  @override
  String get linkPairedSection => 'Paired computers';

  @override
  String get linkPhoneSection => 'This phone';

  @override
  String get linkShareSongsTitle => 'Show songs on the computer';

  @override
  String get linkShareSongsSubtitle =>
      'Songs on this phone appear in the computer\'s Library and play there while this phone is connected';

  @override
  String get linkFollowDesktopTitle => 'Follow the computer\'s playback';

  @override
  String get linkFollowDesktopSubtitle =>
      'When the computer starts playing, this phone shows and controls it';

  @override
  String get linkNearbySection => 'On this network';

  @override
  String get linkSearching => 'Looking for computers...';

  @override
  String get linkNoneFoundTitle => 'No computers found';

  @override
  String get linkNoneFound =>
      'Open Toadplayer on your computer and turn on Share with Toadplayer on your phone in its settings.';

  @override
  String get linkAddManually => 'Add by address';

  @override
  String get linkManualHost => 'Computer address';

  @override
  String get linkManualPort => 'Port';

  @override
  String get linkManualMessage =>
      'Toadplayer on your computer shows its address and port where you turn on sharing.';

  @override
  String get linkContinue => 'Continue';

  @override
  String get linkStateConnected => 'Connected';

  @override
  String get linkStateConnecting => 'Connecting...';

  @override
  String get linkStateDisconnected => 'Not connected';

  @override
  String get linkStateInactive => 'Tap to use this computer';

  @override
  String get linkActive => 'In use';

  @override
  String get linkForget => 'Forget';

  @override
  String linkForgetTitle(String name) {
    return 'Forget $name?';
  }

  @override
  String get linkForgetMessage =>
      'This phone stops connecting to it. You can pair again later.';

  @override
  String get linkForgetRemoveLibrary => 'Also remove its music from Library';

  @override
  String linkPinTitle(String name) {
    return 'Pair with $name';
  }

  @override
  String get linkPinMessage => 'Enter the 6-digit PIN shown on your computer.';

  @override
  String get linkPinField => 'PIN';

  @override
  String linkPinCode(String code) {
    return 'Your computer shows the code $code next to the PIN. Pair only if it matches.';
  }

  @override
  String get linkPinNotOpen =>
      'Pairing is not open yet. Start pairing in Toadplayer on your computer to show a PIN.';

  @override
  String get linkPair => 'Pair';

  @override
  String linkPaired(String name) {
    return 'Paired with $name. Its music is being added to Library.';
  }

  @override
  String get linkPairAgain => 'Pair again';

  @override
  String get linkTransfersTitle => 'Transfers';

  @override
  String get linkTransfersInProgress => 'In progress';

  @override
  String get linkTransfersFinished => 'Finished';

  @override
  String get linkTransfersClearFinished => 'Clear finished';

  @override
  String get linkTransfersEmptyTitle => 'No transfers yet';

  @override
  String get linkTransfersEmptyMessage =>
      'Send or save songs from a song\'s menu, an album or a selection.';

  @override
  String linkTransfersSending(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count songs',
      one: '1 song',
    );
    return 'Sending $_temp0 to $name';
  }

  @override
  String linkTransfersReceiving(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count songs',
      one: '1 song',
    );
    return 'Receiving $_temp0 from $name';
  }

  @override
  String linkTransfersSendingSong(String title, String name) {
    return 'Sending $title to $name';
  }

  @override
  String linkTransfersReceivingSong(String title, String name) {
    return 'Receiving $title from $name';
  }

  @override
  String linkTransfersSongsTo(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count songs',
      one: '1 song',
    );
    return '$_temp0 to $name';
  }

  @override
  String linkTransfersSongsFrom(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count songs',
      one: '1 song',
    );
    return '$_temp0 from $name';
  }

  @override
  String linkTransfersSongTo(String title, String name) {
    return '$title to $name';
  }

  @override
  String linkTransfersSongFrom(String title, String name) {
    return '$title from $name';
  }

  @override
  String linkTransfersPosition(int position, int total) {
    return '$position of $total';
  }

  @override
  String linkTransfersPercent(int percent) {
    return '$percent%';
  }

  @override
  String get linkTransfersWaiting => 'Waiting';

  @override
  String linkTransfersSavedCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saved',
    );
    return '$_temp0';
  }

  @override
  String linkTransfersAlreadyThereCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count already there',
    );
    return '$_temp0';
  }

  @override
  String linkTransfersFailedCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count failed',
    );
    return '$_temp0';
  }

  @override
  String linkTransfersStopped(int done, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      done,
      locale: localeName,
      other: 'Stopped after $done of $total',
      zero: 'Stopped',
    );
    return '$_temp0';
  }

  @override
  String get linkTransfersReasonDisconnected => 'Connection lost';

  @override
  String get linkTransfersReasonNoFolder => 'Choose a download folder first';

  @override
  String linkTransfersReasonNoFolderPeer(String name) {
    return '$name has no download folder';
  }

  @override
  String get linkTransfersReasonBusy => 'Busy, try again later';

  @override
  String get linkTransfersReasonError => 'Something went wrong';

  @override
  String get linkTransfersSongSaved => 'Saved';

  @override
  String get linkTransfersSongAlreadyThere => 'Already there';

  @override
  String get linkTransfersSongFailed => 'Failed';

  @override
  String get linkTransfersSongCopying => 'Copying';

  @override
  String get linkTransfersSongNotCopied => 'Not copied';

  @override
  String get linkTransfersStop => 'Stop transfer';

  @override
  String linkTransfersActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count transfers',
      one: '1 transfer',
    );
    return '$_temp0';
  }

  @override
  String linkTransfersFinishedCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count transfers finished',
      one: '1 transfer finished',
    );
    return '$_temp0';
  }

  @override
  String get linkErrorBadPin =>
      'That PIN is not right. Check the PIN on your computer and try again.';

  @override
  String get linkErrorPairingClosed =>
      'Pairing is not open on your computer. Start pairing there, then try again.';

  @override
  String get linkErrorTooManyAttempts =>
      'Too many attempts. Wait a moment, then try again.';

  @override
  String get linkErrorCertificateTitle => 'Computer not verified';

  @override
  String get linkErrorCertificate =>
      'The computer\'s security certificate does not match what it reported. Someone on this network may be intercepting the connection, so pairing stopped.';

  @override
  String get linkErrorIncompatible =>
      'This computer runs a Toadplayer version that cannot pair with this phone. Update Toadplayer on both devices.';

  @override
  String get linkErrorUnreachable =>
      'The computer could not be reached. Check that Toadplayer is open on it and that both devices are on the same network.';

  @override
  String get linkErrorTimeout =>
      'The computer did not answer in time. Try again.';

  @override
  String get linkErrorInvalidAddress =>
      'Enter a valid address and port, such as 192.168.1.20 and 47710.';

  @override
  String get linkErrorFailed => 'Pairing failed. Try again.';

  @override
  String get linkLocalNetworkTitle => 'Local network access needed';

  @override
  String get linkLocalNetworkMessage =>
      'Toadplayer needs local network access to find your computer and connect to it.';

  @override
  String get linkLocalNetworkAllow => 'Allow access';

  @override
  String get linkWifiOffTitle => 'Not on Wi-Fi';

  @override
  String get linkWifiOffMessage =>
      'Connect this phone to the same Wi-Fi network as your computer.';

  @override
  String linkIssueUnauthorized(String name) {
    return '$name no longer accepts this phone. Pair again to reconnect.';
  }

  @override
  String linkIssueCertificate(String name) {
    return '$name presented a different security certificate. Pair again only if you reinstalled or reset Toadplayer on that computer.';
  }

  @override
  String linkIssueIncompatible(String name) {
    return 'Update Toadplayer on this phone and on $name to connect.';
  }

  @override
  String get playlistEditOrder => 'Edit order';

  @override
  String get playlistEditOrderDescription =>
      'Drag a track by its handle, or touch and hold it, to move it.';

  @override
  String get playlistEditOrderSaved => 'Playlist order saved';

  @override
  String get collectionOrderSaved => 'Song order saved';

  @override
  String get collectionOrderChanged =>
      'This collection changed while editing. Please reorder it again.';

  @override
  String get collectionOrderSaveFailed =>
      'Could not save the song order. Try again.';

  @override
  String get playlistCreateEmpty => 'Empty playlist';

  @override
  String get playlistCreateEmptySubtitle => 'Add tracks later from any list';

  @override
  String get playlistCreateFromFolder => 'From a folder';

  @override
  String get playlistCreateFromFolderSubtitle =>
      'Every track in one folder of your Library';

  @override
  String get playlistImportFile => 'Import playlist file';

  @override
  String get playlistImportFileSubtitle =>
      'M3U, M3U8 or CSV, matched to files on this device';

  @override
  String get playlistFolderPickerTitle => 'Choose a folder';

  @override
  String get playlistFolderPickerEmptyTitle => 'No folders yet';

  @override
  String get playlistFolderPickerEmpty =>
      'No scanned tracks yet. Add a Library folder and scan it first.';

  @override
  String playlistCreatedWithTracks(String name, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tracks',
      one: '1 track',
    );
    return 'Created $name with $_temp0';
  }

  @override
  String playlistImportResult(int count, String name, int matched) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tracks',
      one: '1 track',
    );
    return 'Imported $_temp0 into $name, $matched matched to files on this device';
  }

  @override
  String get playlistImportNoTracks => 'No tracks found in this file';

  @override
  String get playlistImportFailed => 'Could not read this playlist file';

  @override
  String get recognizeTitle => 'Identify Song';

  @override
  String get recognizeSearchTooltip => 'Identify a song playing nearby';

  @override
  String get recognizeIdleTitle => 'What\'s playing?';

  @override
  String get recognizeIdleMessage =>
      'Hold your device near the music, then tap to listen.';

  @override
  String get recognizeStartListening => 'Start listening';

  @override
  String get recognizeServiceNote =>
      'A sound fingerprint is sent to Shazam to find the song. The recording stays on your device.';

  @override
  String get recognizeListening => 'Listening…';

  @override
  String get recognizeListeningMessage =>
      'Keep the music playing near your device.';

  @override
  String get recognizeSearching => 'Searching…';

  @override
  String get recognizeNoMatchTitle => 'No match found';

  @override
  String get recognizeNoMatchMessage =>
      'Try again closer to the music, or when it\'s louder.';

  @override
  String get recognizeTryAgain => 'Try Again';

  @override
  String get recognizeQuietTitle => 'Couldn\'t hear the music';

  @override
  String get recognizeQuietMessage => 'Move closer to the music and try again.';

  @override
  String get recognizeNetworkTitle => 'No connection';

  @override
  String get recognizeNetworkMessage =>
      'Check your internet connection and try again.';

  @override
  String get recognizeRateLimitedTitle => 'Too many tries';

  @override
  String get recognizeRateLimitedMessage => 'Wait a minute, then try again.';

  @override
  String get recognizeUnavailableTitle => 'Identification unavailable';

  @override
  String get recognizeUnavailableMessage =>
      'The recognition service didn\'t answer. Try again later.';

  @override
  String get recognizeMicrophoneTitle => 'Microphone unavailable';

  @override
  String get recognizeMicrophoneMessage =>
      'No microphone is available, or another app is using it.';

  @override
  String get recognizePermissionTitle => 'Microphone access is off';

  @override
  String get recognizePermissionMessage =>
      'Toadplayer uses the microphone only while you identify a song.';

  @override
  String get recognizePermissionAllow => 'Allow Microphone';

  @override
  String get recognizePlay => 'Play in Toadplayer';

  @override
  String get recognizeSearch => 'Search in Toadplayer';

  @override
  String get recognizeOpenInShazam => 'Open in Shazam';

  @override
  String get recognizeListenAgain => 'Listen Again';

  @override
  String get recognizeHistory => 'Recently Identified';

  @override
  String get recognizeClearHistory => 'Clear identified songs';

  @override
  String get recognizeClearHistoryMessage =>
      'Remove every song from this list?';

  @override
  String get collectionSuggestionsTitle => 'Suggested songs';

  @override
  String get collectionSuggestionsRelated => 'Based on the songs above';

  @override
  String get collectionSuggestionsByArtists => 'More from these artists';

  @override
  String get collectionSuggestionsRefresh => 'Suggest other songs';

  @override
  String get collectionSuggestionsAddHere => 'Add to this playlist';

  @override
  String get sectionExistingDownloads => 'Existing Files';

  @override
  String get reorganizeLibraryTitle => 'Apply Rules to Existing Files';

  @override
  String get reorganizeLibrarySubtitle =>
      'Move and rename downloads and Local Library files in your download folder so they follow the folder and filename rules above';

  @override
  String get reorganizeLibraryScanning => 'Checking your files…';

  @override
  String get reorganizeLibraryBusy =>
      'Wait for active downloads to finish before reorganizing files';

  @override
  String get reorganizeLibraryNothingTitle => 'Already Organized';

  @override
  String reorganizeLibraryNothingMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'All $count tracks in your download folder already follow the current rules.',
      one:
          'The track in your download folder already follows the current rules.',
      zero:
          'There are no tracks in your download folder to reorganize. Files Toadplayer did not download are included once the folder is added and scanned in Local Library.',
    );
    return '$_temp0';
  }

  @override
  String reorganizeLibraryConfirmTitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'files',
      one: 'file',
    );
    return 'Reorganize $count $_temp0?';
  }

  @override
  String get reorganizeLibraryConfirmMessage =>
      'These tracks will be moved or renamed to match your current Files settings, using their tags. Lyrics (.lrc) files next to them move too, and folders left empty are removed.';

  @override
  String get reorganizeLibraryExamples => 'For example:';

  @override
  String reorganizeLibraryMoreChanges(int count) {
    return '…and $count more';
  }

  @override
  String reorganizeLibraryAlreadyOrganized(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks already match',
      one: 'track already matches',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'they are',
      one: 'it is',
    );
    return '$count $_temp0 and will stay where $_temp1.';
  }

  @override
  String reorganizeLibraryOutsideFolder(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks are',
      one: 'track is',
    );
    return '$count $_temp0 stored outside the current download folder and will be left alone.';
  }

  @override
  String reorganizeLibraryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'files',
      one: 'file',
    );
    return '$count $_temp0 could not be found and will be skipped.';
  }

  @override
  String reorganizeLibraryUntagged(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'files have',
      one: 'file has',
    );
    return '$count $_temp0 no artist tag and will be left alone.';
  }

  @override
  String get reorganizeLibraryScanHint =>
      'Files Toadplayer did not download are only included after their folder is added and scanned in Local Library.';

  @override
  String get reorganizeLibraryKeepsPlaylistFolders =>
      'Your folder rule uses the playlist name, which Toadplayer doesn\'t keep for past downloads, so files stay in their current folder and are only renamed.';

  @override
  String get reorganizeLibraryDropsPlaylistFolders =>
      'Toadplayer doesn\'t keep which playlist a past download came from, so tracks inside playlist folders will be moved out of them.';

  @override
  String get reorganizeLibrarySafNote =>
      'Your download folder was picked through Android\'s folder picker, so each file is copied to its new place and then removed. This can take a while for a large library.';

  @override
  String get reorganizeLibraryConfirmAction => 'Move Files';

  @override
  String get reorganizeLibraryMoving => 'Moving files';

  @override
  String reorganizeLibraryDone(int moved, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: 'files',
      one: 'file',
    );
    return 'Moved $moved of $total $_temp0';
  }

  @override
  String reorganizeLibraryDoneWithFailures(int moved, int total, int failed) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: 'files',
      one: 'file',
    );
    return 'Moved $moved of $total $_temp0 · $failed failed';
  }

  @override
  String reorganizeLibraryFailed(String error) {
    return 'Couldn\'t reorganize your files: $error';
  }
}
