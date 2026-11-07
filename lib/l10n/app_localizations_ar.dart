// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

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
  String get appearanceGlassClear => 'محو';

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
  String get navHome => 'الرئيسية';

  @override
  String get navLibrary => 'المكتبة';

  @override
  String get navSettings => 'الإعدادات';

  @override
  String get navStore => 'المستودع';

  @override
  String get homeTitle => 'الصفحة الرئيسية';

  @override
  String get homeEmptyTitle => 'لا يوجد مزودي بحث بعد';

  @override
  String get homeEmptySubtitle => 'قم بتثبيت مكون إضافي للمتابعة.';

  @override
  String get homeRecent => 'الأخيرة';

  @override
  String get searchRecentlySearched => 'Recently Searched';

  @override
  String get searchLibraryPrompt => 'Search Your Library';

  @override
  String get searchBrowse => 'Browse';

  @override
  String get historyFilterAll => 'الكل';

  @override
  String get historyFilterAlbums => 'الألبومات';

  @override
  String get historyFilterSingles => 'الأغاني';

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
  String get settingsTitle => 'الإعدادات';

  @override
  String get settingsDownload => 'إعدادات التحميل';

  @override
  String get settingsAppearance => 'المظهر';

  @override
  String get settingsExtensions => 'الإضافات';

  @override
  String get settingsAbout => 'حول البرنامج';

  @override
  String get downloadTitle => 'إعدادات التحميل';

  @override
  String get downloadAskQualitySubtitle => 'إظهار منتقي الجودة لكل تنزيل';

  @override
  String get downloadFilenameFormat => 'تنسيق اسم الملف';

  @override
  String get downloadSingleFilenameFormat => 'تنسيق اسم الملف الفردي';

  @override
  String get downloadSingleFilenameFormatDescription =>
      'نمط اسم الملف للعازفين و EPs. يستخدم نفس العلامات مثل تنسيق الألبوم.';

  @override
  String get downloadFolderOrganization => 'تنظيم المجلدات';

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
  String get folderTemplatePreviewFailed => 'المعاينة غير متوفرة';

  @override
  String get appearanceTitle => 'المظهر';

  @override
  String get appearanceThemeSystem => 'النظام';

  @override
  String get appearanceThemeLight => 'فاتح';

  @override
  String get appearanceThemeDark => 'مظلم';

  @override
  String get appearanceDynamicColor => 'لون ديناميكي';

  @override
  String get appearanceDynamicColorSubtitle => 'استخدام الألوان من الخلفية';

  @override
  String get appearanceHistoryView => 'عرض السجل';

  @override
  String get appearanceHistoryViewList => 'قائمة';

  @override
  String get appearanceHistoryViewGrid => 'شبكة';

  @override
  String get optionsPrimaryProvider => 'المزود الرئيسي';

  @override
  String get optionsPrimaryProviderSubtitle =>
      'الخدمة المستخدمة للبحث عن طريق اسم الأغنية أو الألبوم';

  @override
  String optionsUsingExtension(String extensionName) {
    return 'استخدام الإضافة: $extensionName';
  }

  @override
  String get optionsDefaultSearchTab => 'تبويب البحث الافتراضي';

  @override
  String get optionsDefaultSearchTabSubtitle =>
      'اختر علامة التبويب التي تفتح أولاً لنتائج البحث الجديدة.';

  @override
  String get optionsAutoFallback => 'التراجع التلقائي';

  @override
  String get optionsAutoFallbackSubtitle => 'تجربة خدمات أخرى إذا فشل التنزيل';

  @override
  String get optionsEmbedLyrics => 'تضمين كلمات الأغنية';

  @override
  String get optionsEmbedLyricsSubtitle =>
      'حفظ كلمات الأغاني المتزامنة جنبا إلى جنب مع المسارات التي تم تنزيلها';

  @override
  String get optionsReplayGain => 'ReplyGain';

  @override
  String get optionsReplayGainSubtitleOn =>
      'مسح الصوت و تضمين علامات ReplayGain (EBU R128)';

  @override
  String get optionsReplayGainSubtitleOff => 'معطل: لا توجد علامات تطبيع للصوت';

  @override
  String get trackReplayGain => 'إعادة مسح ReplyGain';

  @override
  String get trackReplayGainScanning => 'تحليل الصوت...';

  @override
  String get trackReplayGainSuccess => 'تم إضافة وسم ReplyGain';

  @override
  String get trackReplayGainFailed => 'فشل في إضافة علامات ReplayGain';

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
    return 'ٌReplyGain ($count)';
  }

  @override
  String get replayGainBatchConfirmTitle => 'إضافة ReplyGain';

  @override
  String replayGainBatchConfirmMessage(int count) {
    return 'تحليل الصوت وكتابة وسوم ReplayGain إلى مسار(مسارات) $count؟';
  }

  @override
  String get replayGainBatchAnalyzing => 'تحليل ReplyGain...';

  @override
  String replayGainBatchSuccess(int success, int total) {
    return 'تمت إضافة وسوم ReplyGain ل $success أغنية من أصل $total';
  }

  @override
  String get replayGainUnsupportedDecoder =>
      'Some tracks could not be analyzed because their audio codec is not supported by the ReplayGain decoder. Their files were not changed.';

  @override
  String get optionsArtistTagMode => 'وضع وسم الفنان';

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
  String get metadataSeparatorPreview => 'تجريبي';

  @override
  String get metadataSeparatorInvalid =>
      'Use 1–16 characters without line breaks or control characters.';

  @override
  String get optionsArtistTagModeDescription =>
      'اختر كيف يتم كتابة العديد من الفنانين في العلامات المضمنة.';

  @override
  String get optionsArtistTagModeJoined => 'قيمة مشتركة واحدة';

  @override
  String get optionsArtistTagModeJoinedSubtitle =>
      'اكتب قيمة ARTIST واحدة مثل \"الفنان A، الفنان B\" لتحقيق التوافق الأقصى لمشغل الأغاني.';

  @override
  String get optionsArtistTagModeSplitVorbis => 'تقسيم العلامات على FLAC/Opus';

  @override
  String get optionsArtistTagModeSplitVorbisSubtitle =>
      'اكتب علامة فنان لكل فنان لـ FLAC و Opus؛ تبقى MP3 و M4A منضمة.';

  @override
  String get optionsArtistTagModePrimary => 'Primary artist only';

  @override
  String get optionsArtistTagModePrimarySubtitle =>
      'Write only the first artist, like \"Artist A\", to Artist and Album Artist in every format, so players list one artist.';

  @override
  String get optionsExtensionStore => 'مستودع الإضافات';

  @override
  String get optionsExtensionStoreSubtitle =>
      'إظهار صفحة المستودع في شريط التنقل';

  @override
  String get optionsCheckUpdates => 'التحقق من وجود تحديثات';

  @override
  String get optionsCheckUpdatesSubtitle => 'إعلام عند توفر إصدار جديد';

  @override
  String get optionsUpdateChannel => 'قناة التحديث';

  @override
  String get optionsUpdateChannelStable => 'الإصدارات المستقرة فقط';

  @override
  String get optionsUpdateChannelPreview => 'الحصول على إصدارات تجريبية';

  @override
  String get optionsUpdateChannelWarning =>
      'قد تحتوي الإصدارات التجريبية أخطاءً أو ميزات غير مكتملة';

  @override
  String get optionsClearHistory => 'مسح سجل التحميلات';

  @override
  String get optionsClearHistorySubtitle =>
      'إزالة جميع الأغاني التي تم تنزيلها من السجل';

  @override
  String get optionsDetailedLogging => 'تسجيل تفصيلي';

  @override
  String get optionsDetailedLoggingOn => 'يتم تسجيل السجلات التفصيلية';

  @override
  String get optionsDetailedLoggingOff => 'تمكين لتقارير الأخطاء';

  @override
  String get extensionsTitle => 'الإضافات';

  @override
  String get extensionsDisabled => 'معطَّل';

  @override
  String extensionsVersion(String version) {
    return 'الإصدار $version';
  }

  @override
  String get extensionsUninstall => 'إلغاء التثبيت';

  @override
  String get storeTitle => 'مستودع الإضافات';

  @override
  String get storeSearch => 'البحث في الإضافات...';

  @override
  String get storeInstall => 'تثبيت';

  @override
  String get storeInstalled => 'مثبت';

  @override
  String get storeUpdate => 'تحديث';

  @override
  String get aboutTitle => 'حول';

  @override
  String get aboutContributors => 'المساهمون';

  @override
  String get aboutMobileDeveloper => 'مطور نسخة الهاتف';

  @override
  String get aboutLogoArtist => 'الفنان الموهوب الذي أنشأ شعار التطبيق الجميل!';

  @override
  String get aboutTranslators => 'المترجمون';

  @override
  String get aboutSpecialThanks => 'شكر خاص لِ';

  @override
  String get aboutLinks => 'روابط';

  @override
  String get aboutMobileSource => 'كود مصدر برنامج الهاتف';

  @override
  String get aboutLyricsWebsite => 'Lyrics website';

  @override
  String get aboutServiceStatus => 'Service status';

  @override
  String get aboutReportIssue => 'الإبلاغ عن خطأ';

  @override
  String get aboutReportIssueSubtitle => 'الإبلاغ عن أي مشكلة تواجهك';

  @override
  String get aboutFeatureRequest => 'اقتراح ميزة';

  @override
  String get aboutFeatureRequestSubtitle => 'اقتراح ميزات جديدة للتطبيق';

  @override
  String get aboutTelegramChannel => 'قناة تيليجرام';

  @override
  String get aboutTelegramChannelSubtitle => 'الإعلانات والتحديثات';

  @override
  String get aboutTelegramChat => 'مجتمع تليجرام';

  @override
  String get aboutTelegramChatSubtitle => 'الدردشة مع المستخدمين الآخرين';

  @override
  String get aboutSocial => 'التواصل الإجتماعي';

  @override
  String get aboutApp => 'التطبيق';

  @override
  String get aboutVersion => 'الإصدار';

  @override
  String get aboutBinimumDesc =>
      'منشئ API QQDL و HiFi. ساعد هذا المشروع في تشكيل دعم تحميل غير فاقد للجودة.';

  @override
  String get aboutSachinsenalDesc =>
      'منشئ مشروع HiFi الأصلي. مؤسسة للتكامل بدون مصدر.';

  @override
  String get aboutUnituneDesc =>
      'محلل رابط الموسيقى المفتوح المصدر بواسطة Flaze، يستخدم لمطابقة الظهر عبر المنصات.';

  @override
  String get aboutMusicBrainzDesc =>
      'فتح قاعدة بيانات الموسيقى التي يحتفظ بها ميتابراينز ومجتمعه، تستخدم لتسجيل الإحالات المرجعية.';

  @override
  String get aboutSquiglyDesc =>
      'خدمة وصلة موسيقية عالمية من قبل ليام ماكميلان، تستخدم كمرجع نهائي للحلول عبر المنصات.';

  @override
  String get aboutAppDescription =>
      'البحث عن بيانات التعريف الموسيقي، وإدارة الملحقات، وتنظيم مكتبتك.';

  @override
  String get artistAlbums => 'الألبومات';

  @override
  String get artistSingles => 'الأغاني و ال EPs';

  @override
  String get artistCompilations => 'التجميع';

  @override
  String get artistPopular => 'الأكثر شعبية';

  @override
  String get artistLatestRelease => 'Latest Release';

  @override
  String get artistTopSongs => 'Top Songs';

  @override
  String artistMonthlyListeners(String count) {
    return '$count مستمع شهري';
  }

  @override
  String get trackMetadataService => 'الخدمة';

  @override
  String get trackMetadataPlay => 'تشغيل';

  @override
  String get trackMetadataShare => 'مشاركة';

  @override
  String get trackMetadataDelete => 'حذف';

  @override
  String get setupGrantPermission => 'منح الصلاحيات';

  @override
  String get setupSkip => 'التخطي الآن';

  @override
  String get setupStorageAccessRequired => 'إذن دخول وحدة التخزين مطلوب';

  @override
  String get setupStorageAccessMessageAndroid11 =>
      'يتطلب أندرويد 11+ إذن \"الوصول إلى جميع الملفات\" لحفظ الملفات في مجلد التحميل الذي اخترته.';

  @override
  String get setupOpenSettings => 'فتح الإعدادات';

  @override
  String get setupPermissionDeniedMessage =>
      'تم رفض الإذن. الرجاء منح كافة الصلاحيات للمتابعة.';

  @override
  String setupPermissionRequired(String permissionType) {
    return '$permissionType مطلوب الإذن';
  }

  @override
  String setupPermissionRequiredMessage(String permissionType) {
    return 'الإذن $permissionType مطلوب لأفضل التجربة. يمكنك تغيير هذا لاحقاً في الإعدادات.';
  }

  @override
  String get setupUseDefaultFolder => 'استخدام المجلد الافتراضي؟';

  @override
  String get setupNoFolderSelected =>
      'لم يتم تحديد مجلد. هل ترغب في استخدام مجلد الموسيقى الافتراضي؟';

  @override
  String get setupUseDefault => 'استخدم الافتراضي';

  @override
  String get setupDownloadLocationTitle => 'موقع حفظ التنزيلات';

  @override
  String get setupDownloadLocationIosMessage =>
      'على iOS، يتم حفظ التحميلات إلى مجلد مستندات التطبيق. يمكنك الوصول إليها عبر تطبيق الملفات.';

  @override
  String get setupAppDocumentsFolder => 'مجلد مستندات التطبيق';

  @override
  String get setupAppDocumentsFolderSubtitle =>
      'موصى به - يمكن الوصول إليه عبر تطبيق الملفات';

  @override
  String get setupChooseFromFiles => 'اختر من الملفات';

  @override
  String get setupChooseFromFilesSubtitle => 'حدد iCloud أو موقع آخر';

  @override
  String get setupIosEmptyFolderWarning =>
      'حدود iOS: لا يمكن تحديد مجلدات فارغة. اختر مجلدا مع ملف واحد على الأقل.';

  @override
  String get setupIcloudNotSupported =>
      'iCloud Drive غير مدعوم. الرجاء استخدام مجلد مستندات التطبيق.';

  @override
  String get setupDownloadInFlac => 'تحميل الموسيقى بجودة عالية و عالية';

  @override
  String get setupStorageGranted => 'تم منح إذن التخزين!';

  @override
  String get setupStorageRequired => 'الإذن مطلوب للتخزين';

  @override
  String get setupStorageDescription =>
      'Toadplayer يحتاج إلى إذن تخزين لحفظ ملفات الموسيقى الخاصة بك التي تم تنزيلها.';

  @override
  String get setupNotificationGranted => 'تم منح إذن الإشعارات!';

  @override
  String get setupNotificationEnable => 'تمكين الإشعارات';

  @override
  String get setupFolderChoose => 'اختر مجلد التحميل';

  @override
  String get setupFolderDescription =>
      'حدد مجلد حيث سيتم حفظ الموسيقى التي تم تنزيلها.';

  @override
  String get setupSelectFolder => 'حدد الملف';

  @override
  String get setupEnableNotifications => 'تمكين الإشعارات';

  @override
  String get setupNotificationBackgroundDescription =>
      'الحصول على إشعار حول تقدم التحميل وإكماله. هذا يساعدك على تتبع التنزيلات عندما يكون التطبيق في الخلفية.';

  @override
  String get setupSkipForNow => 'التخطي الآن';

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
  String get setupNext => 'التالي';

  @override
  String get setupGetStarted => 'إبدأ الآن';

  @override
  String get setupAllowAccessToManageFiles =>
      'الرجاء تمكين \"السماح بالوصول لإدارة جميع الملفات\" في الشاشة التالية.';

  @override
  String get setupLanguageTitle => 'اِختر اللغة';

  @override
  String get setupLanguageDescription =>
      'حدد لغتك المفضلة للتطبيق. يمكنك تغيير هذا لاحقًا من الإعدادات.';

  @override
  String get setupLanguageSystemDefault => 'الوضع الافتراضي للنظام';

  @override
  String get dialogCancel => 'إلغاء';

  @override
  String get dialogSave => 'حفظ';

  @override
  String get dialogDelete => 'حذف';

  @override
  String get dialogRetry => 'إعادة المحاولة';

  @override
  String get dialogClear => 'محو';

  @override
  String get dialogDone => 'تم';

  @override
  String get dialogImport => 'استيراد';

  @override
  String get dialogDownload => 'تنزيل';

  @override
  String get previewPlay => 'تشغيل المعاينة';

  @override
  String get previewStop => 'إيقاف المعاينة';

  @override
  String get previewUnavailable => 'المعاينة غير متوفرة';

  @override
  String get dialogDiscard => 'تجاهل';

  @override
  String get dialogRemove => 'إزالة';

  @override
  String get dialogUninstall => 'إلغاء التثبيت';

  @override
  String get dialogDiscardChanges => 'تجاهل التغييرات؟';

  @override
  String get dialogUnsavedChanges =>
      'لديك تغييرات غير محفوظة. هل تريد المتابعة دون حفظها؟';

  @override
  String get dialogClearAll => 'مسح الكل';

  @override
  String get dialogRemoveExtension => 'إزالة إضافة';

  @override
  String get dialogRemoveExtensionMessage =>
      'هل أنت متأكد من أنك تريد إزالة هذه الإضافة؟ لا يمكن التراجع عن ذلك.';

  @override
  String get dialogUninstallExtension => 'إلغاء تثبيت الإضافة؟';

  @override
  String dialogUninstallExtensionMessage(String extensionName) {
    return 'هل أنت متأكد من أنك تريد إزالة $extensionName؟';
  }

  @override
  String get dialogClearHistoryTitle => 'مسح السجل';

  @override
  String get dialogClearHistoryMessage =>
      'هل أنت متأكد من أنك تريد مسح كل سجل التنزيلات؟ لا يمكن التراجع عن هذا.';

  @override
  String get dialogDeleteSelectedTitle => 'حذف المحدد';

  @override
  String dialogDeleteSelectedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'الأغاني',
      one: 'أغنية',
      many: 'أغنية',
      few: 'أغانٍ',
      two: 'أغنيتين',
      zero: '',
    );
    return 'حذف $count $_temp0 من التاريخ؟\n\nسيؤدي هذا أيضا إلى حذف الملفات من وحدة التخزين.';
  }

  @override
  String get dialogImportPlaylistTitle => 'استيراد قائمة تشغيل';

  @override
  String dialogImportPlaylistMessage(int count) {
    return 'تم العثور على $count مسارات في ملف قائمة التشغيل. إضافتها لتنزيل؟';
  }

  @override
  String csvImportTracks(int count) {
    return '$count مسارات من CSV';
  }

  @override
  String get collectionExportM3u => 'تصدير كـ M3U8';

  @override
  String collectionExportM3uDone(int exported, int total) {
    return 'تصدير $exported من مسارات $total';
  }

  @override
  String get collectionExportM3uNone => 'لا توجد ملفات تم تنزيلها للتصدير';

  @override
  String get collectionExportM3uFailed => 'فشل التصدير';

  @override
  String get trackOpenOn => 'فتح على...';

  @override
  String get trackOpenOnNoLinks => 'لم يتم العثور على روابط منصة لهذا المسار.';

  @override
  String get libraryReviewDuplicates => 'مراجعة التكرار';

  @override
  String get libraryReviewDuplicatesSubtitle =>
      'العثور على المسارات المخزنة أكثر من مرة';

  @override
  String get duplicatesTitle => 'مكرر';

  @override
  String get duplicatesEmpty => 'لم يتم العثور على مسارات مكررة.';

  @override
  String get duplicatesKeepBest => 'احتفظ بأفضل';

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
    return 'حذف $count نسخ أقل جودة من \"$trackName\"؟';
  }

  @override
  String duplicatesDeleteCopyMessage(String trackName) {
    return 'حذف هذه النسخة من \"$trackName\"؟';
  }

  @override
  String snackbarAddedToQueue(String trackName) {
    return 'تمت إضافة $trackName إلى قائمة الانتظار';
  }

  @override
  String snackbarAddedTracksToQueue(int count) {
    return 'تم إضافة $count أغانٍ إلى قائمة الانتظار';
  }

  @override
  String snackbarAlreadyDownloaded(String trackName) {
    return 'تم تنزيل $trackName بالفعل';
  }

  @override
  String snackbarAlreadyInLibrary(String trackName) {
    return '$trackName موجود بالفعل في مكتبتك';
  }

  @override
  String get snackbarHistoryCleared => 'تم مسح السجل.';

  @override
  String snackbarDeletedTracks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'أغانٍ',
      one: 'أغنية',
      many: 'أغنية',
      few: 'أغانٍ',
      two: 'أغنيتين',
      zero: '',
    );
    return 'تم حذف $count $_temp0';
  }

  @override
  String snackbarCannotOpenFile(String error) {
    return 'تعذر فتح الملف: $error';
  }

  @override
  String get snackbarViewQueue => 'عرض قائمة الانتظار';

  @override
  String snackbarUrlCopied(String platform) {
    return 'رابط $platform تم نسخه إلى الحافظة';
  }

  @override
  String get snackbarFileNotFound => 'لم يتم العثور على الملف';

  @override
  String get snackbarSelectExtFile => 'الرجاء تحديد ملف .toadplayer-ext';

  @override
  String get snackbarProviderPrioritySaved => 'تم حفظ أولوية المزود';

  @override
  String get snackbarMetadataProviderSaved =>
      'تم حفظ أولوية مزود البيانات الوصفية (metadata)';

  @override
  String snackbarExtensionInstalled(String extensionName) {
    return 'تم تثبيت $extensionName.';
  }

  @override
  String snackbarExtensionUpdated(String extensionName) {
    return 'تم تحديث $extensionName.';
  }

  @override
  String get snackbarFailedToInstall => 'فشل تثبيت الإضافة';

  @override
  String get snackbarFailedToUpdate => 'فشل تحديث الإضافة';

  @override
  String get errorRateLimited => 'تم الوصول للحد الأقصى';

  @override
  String get errorRateLimitedMessage =>
      'طلبات كثيرة جداً. الرجاء الانتظار قليلاً قبل البحث مرة أخرى.';

  @override
  String get errorNoTracksFound => 'لم يتم العثور على الأغنية';

  @override
  String get searchEmptyResultSubtitle => 'جرّب كلمة مفتاحية أخرى';

  @override
  String get errorUrlNotRecognized => 'رابط غير معروف';

  @override
  String get errorUrlNotRecognizedMessage =>
      'هذا الرابط غير مدعوم. تأكد من أن الرابط صحيح وتثبيت إضافة متوافق.';

  @override
  String get errorUrlFetchFailed =>
      'فشل تحميل المحتوى من هذا الرابط. الرجاء المحاولة مرة أخرى.';

  @override
  String errorMissingExtensionSource(String item) {
    return 'لا يمكن تحميل $item: مصدر الإضافة مفقود';
  }

  @override
  String get actionPause => 'إيقاف مؤقت';

  @override
  String get actionResume => 'استئناف';

  @override
  String get actionCancel => 'إلغاء';

  @override
  String get actionSelectAll => 'تحديد الكل';

  @override
  String get actionDeselect => 'إلغاء التحديد';

  @override
  String selectionSelected(int count) {
    return 'تم تحديد $count';
  }

  @override
  String get selectionAllSelected => 'تم اختيار جميع الأغاني';

  @override
  String get selectionSelectToDelete => 'حدد الأغاني المراد حذفها';

  @override
  String progressFetchingMetadata(int current, int total) {
    return 'جلب البيانات الوصفية (metadata)... $current/$total';
  }

  @override
  String get progressReadingCsv => 'جاري قراءة CSV...';

  @override
  String get searchSongs => 'أغاني';

  @override
  String get searchArtists => 'فنانون';

  @override
  String get searchAlbums => 'ألبومات';

  @override
  String get searchPlaylists => 'قوائم التشغيل';

  @override
  String get searchShowAll => 'Show all';

  @override
  String searchShowAllCategory(String category) {
    return 'Show all $category';
  }

  @override
  String get searchSortTitle => 'فرز النتائج';

  @override
  String get searchSortDefault => 'افتراضي';

  @override
  String get searchSortTitleAZ => 'العنوان (أ-ي)';

  @override
  String get searchSortTitleZA => 'العنوان (ي-أ)';

  @override
  String get searchSortArtistAZ => 'الفنان (أ-ي)';

  @override
  String get searchSortArtistZA => 'الفنان (ي-أ)';

  @override
  String get searchSortDurationShort => 'المدة (الأقصر)';

  @override
  String get searchSortDurationLong => 'المدة (الأطول)';

  @override
  String get searchSortDateOldest => 'تاريخ الإصدار (الأقدم)';

  @override
  String get searchSortDateNewest => 'تاريخ الإصدار (الأحدث)';

  @override
  String get tooltipPlay => 'تشغيل';

  @override
  String get filenameFormat => 'صيغة الملف';

  @override
  String get filenameShowAdvancedTags => 'إظهار العلامات المتقدمة';

  @override
  String get filenameShowAdvancedTagsDescription =>
      'تمكين العلامات المنسقة لحشو المقطع الصوتي وأنماط التاريخ';

  @override
  String get folderOrganizationNone => 'لا توجد منظمة';

  @override
  String get folderOrganizationByPlaylist => 'حسب قائمة التشغيل';

  @override
  String get folderOrganizationByPlaylistSubtitle =>
      'مجلد منفصل لكل قائمة تشغيل';

  @override
  String get folderOrganizationByArtist => 'حسب الفنان';

  @override
  String get folderOrganizationByAlbum => 'حسب الألبوم';

  @override
  String get folderOrganizationByArtistAlbum => 'ألبوم/الفنان';

  @override
  String get folderOrganizationDescription =>
      'تنظيم الملفات التي تم تنزيلها في المجلدات';

  @override
  String get folderOrganizationNoneSubtitle => 'جميع الملفات في مجلد التحميل';

  @override
  String get folderOrganizationByArtistSubtitle => 'مجلد منفصل لكل فنان';

  @override
  String get folderOrganizationByAlbumSubtitle => 'مجلد منفصل لكل قائمة تشغيل';

  @override
  String get folderOrganizationByArtistAlbumSubtitle =>
      'مجلدات متداخلة للفنان و الألبوم';

  @override
  String get updateAvailable => 'هناك تحديث متاح';

  @override
  String get updateLater => 'ذكرني لاحقا';

  @override
  String get updateStartingDownload => 'جاري بدء التنزيل...';

  @override
  String get updateDownloadFailed => 'فشل التنزيل';

  @override
  String get updateFailedMessage => 'فشل تنزيل التحديث';

  @override
  String get updateNewVersionReady => 'إصدار جديد جاهز';

  @override
  String get updateRequiredTitle => 'التحديث مطلوب';

  @override
  String updateRequiredNotice(int count) {
    return 'هذا الإصدار هو إصدارات $count وراءه ولم يعد مدعوماً. قم بالتحديث لمواصلة استخدام التطبيق.';
  }

  @override
  String get updateCurrent => 'الحالي';

  @override
  String get updateNew => 'جديد';

  @override
  String get updateDownloading => 'جاري التنزيل...';

  @override
  String get updateWhatsNew => 'ما الجديد';

  @override
  String get updateDownloadInstall => 'تحميل وتثبيت';

  @override
  String get updateDontRemind => 'لا تذكّرني';

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
  String get providerPriorityTitle => 'أولوية مقدم الخدمة';

  @override
  String get providerPriorityDescription =>
      'اسحب لإعادة ترتيب مزودي التحميل. سيجرب التطبيق مزودي الخدمات من الأعلى إلى الأسفل عند تحميل المسار.';

  @override
  String get providerPriorityInfo =>
      'إذا كانت الأغنية غير متوفرة عند أول مزود، فإن التطبيق سيجرب تلقائياً المزود التالي.';

  @override
  String get providerPriorityFallbackExtensionsDescription =>
      'اختر إضافات التحميل المثبتة التي يمكن استخدامها أثناء الرجوع التلقائي للمزود الاحتياطي.';

  @override
  String get providerPriorityFallbackExtensionsHint =>
      'الإضافات المفعلة فقط مع قدرة توفير التنزيل مدرجة هنا.';

  @override
  String get providerExtension => 'الإضافة';

  @override
  String get metadataProviderPriorityTitle =>
      'أولوية البيانات الوصفية (metadata)';

  @override
  String get metadataProviderPriorityDescription =>
      'اسحب لإعادة ترتيب موفري البيانات الوصفية (metadata). سيحاول التطبيق موفري البيانات الوصفية (metadata) من الأعلى إلى الأسفل عند البحث عن المسارات وجلب البيانات الوصفية (metadata).';

  @override
  String get metadataProviderPriorityInfo =>
      'Deezer ليس لديه حدود للطلبات ومُوصى به كأساسي. Spotify لديه حد للطلبات وقد لا يعمل بعد عدة عمليات.';

  @override
  String get logTitle => 'السجلات';

  @override
  String get logCopied => 'تم نسخ السجلات إلى الحافظة';

  @override
  String get logSearchHint => 'البحث في السجلات...';

  @override
  String get logFilterLevel => 'المستوى';

  @override
  String get logFilterSection => 'فرز';

  @override
  String get logShareLogs => 'مشاركة السجلات';

  @override
  String get logClearLogs => 'حذف السجل';

  @override
  String get logClearLogsTitle => 'حذف السجل';

  @override
  String get logClearLogsMessage =>
      'هل أنت متأكد من رغبتك في مسح جميع السجلات؟';

  @override
  String get logFilterBySeverity => 'تصفية السجلات حسب الخطورة';

  @override
  String get logNoLogsYet => 'لا توجد سجلات بعد';

  @override
  String get logNoLogsYetSubtitle => 'ستظهر السجلات هنا عند استخدام التطبيق';

  @override
  String logEntriesFiltered(int count) {
    return 'الإدخالات ($count تم تصفيتها)';
  }

  @override
  String logEntries(int count) {
    return 'الإدخالات ($count)';
  }

  @override
  String get channelStable => 'مستقر';

  @override
  String get channelPreview => 'تجريبي';

  @override
  String get sectionSearchSource => 'مصدر البحث';

  @override
  String get sectionDownload => 'التحميل';

  @override
  String get sectionPerformance => 'الأداء';

  @override
  String get sectionApp => 'التطبيق';

  @override
  String get sectionData => 'البيانات';

  @override
  String get sectionDebug => 'تصحيح الأخطاء';

  @override
  String get sectionService => 'الخدمة';

  @override
  String get sectionAudioQuality => 'جودة الصوت';

  @override
  String get sectionFileSettings => 'إعدادات الملف';

  @override
  String get sectionLyrics => 'كلمات الاغنية';

  @override
  String get lyricsKeepScreenOn => 'Keep screen on while viewing lyrics';

  @override
  String get lyricsKeepScreenOnSubtitle =>
      'Prevent screen timeout while lyrics are open, including when playback is paused.';

  @override
  String get lyricsMode => 'وضع كلمات الأغنية';

  @override
  String get lyricsModeDescription =>
      'اختر كيفية حفظ كلمات الأغاني مع التنزيلات الخاصة بك';

  @override
  String get lyricsModeEmbed => 'تضمين في الملف';

  @override
  String get lyricsModeEmbedSubtitle =>
      'كلمات الأغاني مخزنة داخل بيانات تعريف FLAC';

  @override
  String get lyricsModeExternal => 'ملف .lrc منفصل';

  @override
  String get lyricsModeExternalSubtitle =>
      'فصل ملف .lrc لمشغلي الأغاني مثل Samsung Music';

  @override
  String get lyricsModeBoth => 'كلاهما';

  @override
  String get lyricsModeBothSubtitle => 'تضمين وحفظ ملف .lrc';

  @override
  String get sectionColor => 'اللون';

  @override
  String get sectionTheme => 'الثيم';

  @override
  String get sectionLayout => 'التخطيط';

  @override
  String get sectionLanguage => 'اللّغة';

  @override
  String get appearanceLanguage => 'لغة التطبيق';

  @override
  String get settingsAppearanceSubtitle => 'السمة والألوان والعرض';

  @override
  String get settingsDownloadSubtitle => 'الخدمة والجودة الأحتياطات';

  @override
  String get settingsExtensionsSubtitle => 'إدارة موفري التحميل';

  @override
  String get settingsLogsSubtitle => 'عرض سجلات التطبيقات لتصحيح الأخطاء';

  @override
  String get loadingSharedLink => 'تحميل الرابط المشترك...';

  @override
  String get pressBackAgainToExit => 'اضغط رجوع مجددًا للخروج';

  @override
  String downloadAllCount(int count) {
    return 'تنزيل الكل ($count)';
  }

  @override
  String tracksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count أغانٍ',
      one: 'أغنية واحدة',
      many: '$count أغانٍ',
      few: '$count أغانٍ',
      two: 'أغنيتين',
      zero: 'لا توجد أغاني محددة',
    );
    return '$_temp0';
  }

  @override
  String get trackCopyFilePath => 'نسخ مسار الملف';

  @override
  String get trackRemoveFromDevice => 'حذف من الجهاز';

  @override
  String get trackLoadLyrics => 'تحميل كلمات الأغاني';

  @override
  String get trackMetadata => 'البيانات الوصفية (Metadata)';

  @override
  String get trackFileInfo => 'معلومات الملف';

  @override
  String get trackLyrics => 'كلمات الاغنية';

  @override
  String get trackFileNotFound => 'لم يتم العثور على الملف';

  @override
  String get trackFileUnavailable =>
      'File is currently unavailable. Check storage access and try again.';

  @override
  String get trackOpenInDeezer => 'فتح في Deezer';

  @override
  String get trackOpenInSpotify => 'فتح في Spotify';

  @override
  String get trackTrackName => 'اسم الأغنية';

  @override
  String get trackArtist => 'الفنان';

  @override
  String get trackAlbumArtist => 'فنان الألبوم';

  @override
  String get trackAlbum => 'الألبوم';

  @override
  String get trackTrackNumber => 'رقم الأغنية';

  @override
  String get trackDiscNumber => 'رقم القرص';

  @override
  String get trackDuration => 'المدة';

  @override
  String get trackAudioQuality => 'جودة الصوت';

  @override
  String get trackReplayGainTrackGain => 'ReplayGain Track Gain';

  @override
  String get trackReplayGainTrackPeak => 'ReplayGain Track Peak';

  @override
  String get trackReplayGainAlbumGain => 'ReplayGain Album Gain';

  @override
  String get trackReplayGainAlbumPeak => 'ReplayGain Album Peak';

  @override
  String get libraryQualityLabelFileFormat => 'صيغة الملف';

  @override
  String get trackReleaseDate => 'تاريخ الإصدار';

  @override
  String get trackGenre => 'النوع';

  @override
  String get trackLabel => 'تصنيف';

  @override
  String get trackCopyright => 'حقوق الطبع و النشر';

  @override
  String get trackDownloaded => 'تم التنزيل';

  @override
  String get trackCopyLyrics => 'نسخ كلمات الأغنية';

  @override
  String trackLyricsSource(String source) {
    return 'المصدر: $source';
  }

  @override
  String get trackLyricsNotAvailable => 'كلمات الأغنية غير متوفرة لهذه الأغنية';

  @override
  String get trackLyricsNotInFile =>
      'لم يتم العثور على كلمات الأغاني في هذا الملف';

  @override
  String get trackFetchOnlineLyrics => 'جلب من الإنترنت';

  @override
  String get trackLyricsTimeout => 'انتهت مهلة الطلب. حاول مرة أخرى لاحقاً.';

  @override
  String get trackLyricsLoadFailed => 'فشل تحميل كلمات الأغاني';

  @override
  String get trackEmbedLyrics => 'تضمين كلمات الأغنية';

  @override
  String get trackLyricsEmbedded => 'تمت إضافة كلمات الأغنية بنجاح';

  @override
  String get trackInstrumental => 'المسار الآلي';

  @override
  String get trackCopiedToClipboard => 'تم النسخ إلى الحافظة';

  @override
  String get trackDeleteConfirmTitle => 'حذف من الجهاز؟';

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
      'سيؤدي هذا إلى حذف الملف الذي تم تنزيله وإزالته من السجل الخاص بك بشكل دائم.';

  @override
  String get dateToday => 'اليوم';

  @override
  String get dateYesterday => 'الأمس';

  @override
  String dateDaysAgo(int count) {
    return 'قبل $count أيام';
  }

  @override
  String dateWeeksAgo(int count) {
    return 'قبل $count أسابيع';
  }

  @override
  String dateMonthsAgo(int count) {
    return 'منذ $count أشهر';
  }

  @override
  String get storeFilterAll => 'الكل';

  @override
  String get storeFilterMetadata => 'البيانات الوصفية (Metadata)';

  @override
  String get storeFilterDownload => 'التحميل';

  @override
  String get storeFilterUtility => 'الأدوات';

  @override
  String get storeFilterLyrics => 'كلمات الأغنية';

  @override
  String get storeFilterIntegration => 'التكامل';

  @override
  String get storeClearFilters => 'حذف الفلاتر';

  @override
  String get storeAddRepoTitle => 'إضافة مستودع إضافات';

  @override
  String get storeAddRepoDescription =>
      'أدخل عنوان مستودع GitHub الذي يحتوي على ملف registry.json لتصفح وتثبيت الإضافات.';

  @override
  String get storeRepoUrlLabel => 'رابط المستودع';

  @override
  String get storeRepoUrlHint => 'https://github.com/user/repo';

  @override
  String get storeAddRepoButton => 'أضف مستودعًا';

  @override
  String get storeChangeRepoTooltip => 'تغيير المستودع';

  @override
  String get storeRepoDialogTitle => 'مستودع الإضافات';

  @override
  String get storeRepoDialogCurrent => 'المستودع الحالي:';

  @override
  String get storeNewRepoUrlLabel => 'رابط المستودع';

  @override
  String get storeLoadError => 'فشل تحميل المستودع';

  @override
  String get storeEmptyNoExtensions => 'لا توجد إضافات متاحة';

  @override
  String get storeEmptyNoResults => 'لم يتم العثور على إضافات';

  @override
  String get extensionId => 'ID';

  @override
  String get extensionError => 'خطأ';

  @override
  String get extensionCapabilities => 'الإمكانيات';

  @override
  String get extensionMetadataProvider => 'مزود بيانات التعريف';

  @override
  String get extensionDownloadProvider => 'مزود التحميل';

  @override
  String get extensionLyricsProvider => 'موفر كلمات الأغاني';

  @override
  String get extensionUrlHandler => 'معالج الروابط';

  @override
  String get extensionQualityOptions => 'خيارات الجودة';

  @override
  String get extensionPostProcessingHooks => 'روابط المعالجة اللاحقة';

  @override
  String get extensionPermissions => 'الصلاحيات';

  @override
  String get extensionSettings => 'الإعدادات';

  @override
  String get extensionRemoveButton => 'حذف الإضافة';

  @override
  String get extensionUpdated => 'تاريخ التحديث';

  @override
  String get extensionMinAppVersion => 'اصدار التطبيق الأدنى';

  @override
  String get extensionCustomTrackMatching => 'مطابقة المسار المخصص';

  @override
  String get extensionPostProcessing => 'مرحلة ما بعد المعالجة';

  @override
  String extensionHooksAvailable(int count) {
    return 'متاح $count روابط';
  }

  @override
  String extensionPatternsCount(int count) {
    return '$count أنماط';
  }

  @override
  String extensionStrategy(String strategy) {
    return 'الاستراتيجية: $strategy';
  }

  @override
  String get extensionsProviderPrioritySection => 'أولوية مزود الخدمة';

  @override
  String get extensionsInstalledSection => 'الإضافات المُثبّتة';

  @override
  String get extensionsNoExtensions => 'لا توجد إضافات مثبتة';

  @override
  String get extensionsNoExtensionsSubtitle =>
      'تثبيت ملفات .toadplayer-ext لإضافة موفرين جدد';

  @override
  String get extensionsInstallButton => 'تثبيت الإضافة';

  @override
  String get extensionsInfoTip =>
      'يمكن للإضافات تزويدك بموفري بيانات التعريف الجديدة وتحميلها. ثبت الإضافات من مصادر موثوق بها فقط.';

  @override
  String get extensionsInstalledSuccess => 'تم تثبيت الإضافة بنجاح';

  @override
  String extensionsInstalledCount(int count) {
    return 'تم تثبيت $count إضافات بنجاح';
  }

  @override
  String extensionsInstallPartialSuccess(int installed, int attempted) {
    return 'تم تثبيت $installed من أصل $attempted إضافات';
  }

  @override
  String get extensionsDownloadPriority => 'أولوية التحميل';

  @override
  String get extensionsDownloadPrioritySubtitle => 'تعيين ترتيب خدمة التحميل';

  @override
  String get extensionsFallbackTitle => 'الإضافات الاحتياطية';

  @override
  String get extensionsFallbackSubtitle =>
      'اختر إضافات التحميل المثبتة التي يمكن استخدامها أثناء الرجوع التلقائي للمزود الاحتياطي';

  @override
  String get extensionsNoDownloadProvider =>
      'لا توجد إضافات مع إمكانية مزود التحميل';

  @override
  String get extensionsMetadataPriority => 'أولوية البيانات الوصفية (metadata)';

  @override
  String get extensionsMetadataPrioritySubtitle =>
      'تعيين ترتيب مصدر البحث والبيانات الوصفية';

  @override
  String get extensionsNoMetadataProvider =>
      'لا توجد إضافات مع إمكانية مزود البيانات الوصفية';

  @override
  String get extensionsSearchProvider => 'مزود البحث';

  @override
  String get extensionsNoCustomSearch => 'لا توجد ملحقات مع بحث مخصص';

  @override
  String get extensionsSearchProviderDescription =>
      'اختر الخدمة التي يمكن استخدامها للبحث عن المسارات';

  @override
  String get extensionsCustomSearch => 'بحث مخصص';

  @override
  String get extensionsErrorLoading => 'خطأ في تحميل الملحق';

  @override
  String get qualityFlacLossless => 'عدم فقدان الدقة FLAC';

  @override
  String get qualityFlacLosslessSubtitle => '16-bit / 44.1kHz';

  @override
  String get qualityHiResFlac => 'Hi-Res FLAC';

  @override
  String get qualityHiResFlacSubtitle => '24 بت / ما يصل إلى 96 كيلو هرتز';

  @override
  String get qualityHiResFlacMax => 'Hi-Res FLAC Max';

  @override
  String get qualityHiResFlacMaxSubtitle => '24 بت / ما يصل إلى 192 كيلو هرتز';

  @override
  String get downloadLossyFormat => 'تنسيق مضغوط';

  @override
  String get downloadAutoConvert => 'التحويل التلقائي بعد التحميل';

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
      'تحويل التنزيلات المكتملة إلى تنسيق أقل خسارة. يتم استبدال الأصل فقط بعد نجاح التحويل.';

  @override
  String get downloadAutoConvertFormat => 'تنسيق الإخراج';

  @override
  String get downloadAutoConvertFormatSubtitle =>
      'اختر التنسيق  المستخدم للتنزيلات المكتملة حديثا.';

  @override
  String get downloadAutoConvertBitrate => 'جودة الإخراج';

  @override
  String get downloadAutoConvertBitrateSubtitle =>
      'معدلات البتات الأعلى تحافظ على المزيد من التفاصيل ولكن تنشئ ملفات أكبر.';

  @override
  String get downloadAutoConvertMp3Subtitle =>
      'أفضل توافق عبر اللاعبين والأجهزة';

  @override
  String get downloadAutoConvertM4aSubtitle => 'صوت AC فعال في حاوية M4A';

  @override
  String get downloadAutoConvertOpusSubtitle => 'أفضل كفاءة للاعبين الجدد';

  @override
  String get downloadAskBeforeDownload => 'اسأل قبل التحميل';

  @override
  String get downloadDirectory => 'مسار التنزيل';

  @override
  String get downloadSeparateSinglesFolder => 'فصل مجلد الفرديات';

  @override
  String get downloadAlbumFolderStructure => 'هيكل مجلد الألبوم';

  @override
  String get albumFolderStructureDescription =>
      'اختر كيف يتم تنظيم مجلدات الألبوم';

  @override
  String get downloadUseAlbumArtistForFolders =>
      'استخدام فنان الألبوم للمجلدات';

  @override
  String get downloadUsePrimaryArtistOnly => 'الفنان الأساسي فقط للمجلدات';

  @override
  String get downloadUsePrimaryArtistOnlyEnabled =>
      'الفنانين المتميزين الذين تمت إزالتهم من اسم المجلد (على سبيل المثال جاستين بيبر، كويفو -> جاستين بيبر)';

  @override
  String get downloadUsePrimaryArtistOnlyDisabled =>
      'اسم الفنان الكامل المستخدمة لاسم المجلد';

  @override
  String get downloadSelectQuality => 'تحديد الجودة';

  @override
  String get downloadFrom => 'تحميل من';

  @override
  String get appearanceAmoledDark => 'الوضع الداكن AMOLED';

  @override
  String get appearanceAmoledDarkSubtitle => 'خلفية سوداء تامة';

  @override
  String get appearanceHeroAnimations => 'الرسوم المتحركة ';

  @override
  String get appearanceHeroAnimationsSubtitle =>
      'أغطية الطيران بين الشاشات، على سبيل المثال عند فتح اللاعب';

  @override
  String get appearanceForceBlur => 'استخدام تأثيرات الضبابية دائمًا';

  @override
  String get appearanceForceBlurSubtitle =>
      'تمكين شريط التنقل يطمس حتى على الأجهزة حيث يتم إيقافه بشكل افتراضي. قد يكون أداء التكلفة.';

  @override
  String get queueClearAll => 'مسح الكل';

  @override
  String get queueClearAllMessage =>
      'هل أنت متأكد من أنك تريد مسح جميع التنزيلات؟';

  @override
  String get settingsAutoExportFailed => 'فشل التصدير التلقائي للتنزيلات';

  @override
  String get settingsAutoExportFailedSubtitle =>
      'حفظ التنزيلات التي فشلت إلى ملف TXT تلقائيًا';

  @override
  String get settingsDownloadNetwork => 'تحميل الشبكة';

  @override
  String get settingsDownloadNetworkAny => 'WiFi + بيانات الجوال';

  @override
  String get settingsDownloadNetworkWifiOnly => 'WiFi فقط';

  @override
  String get settingsDownloadNetworkSubtitle =>
      'اختر الشبكة التي تريد استخدامها للتنزيلات. عند تعيين WiFi فقط، التنزيلات لن تعمل على بيانات الجوال.';

  @override
  String get settingsConcurrentDownloads => 'عدد التنزيلات في نفس الوقت';

  @override
  String get settingsConcurrentDownloadsSubtitle =>
      'تنزيل عدة مسارات في وقت واحد أسرع، ولكن بعض مقدمي الخدمات قد يحدون من الطلبات الموازية.';

  @override
  String get concurrentDownloadsOne => 'مسار واحد في وقت واحد';

  @override
  String concurrentDownloadsCount(int count) {
    return 'حتى $count مسارات في وقت واحد';
  }

  @override
  String get albumFolderArtistAlbum => 'ألبوم / الفنان';

  @override
  String get albumFolderArtistAlbumSubtitle =>
      'الألبومات / اسم الفنان / اسم الألبوم';

  @override
  String get albumFolderArtistYearAlbum => 'الفنان / [Year] ألبوم';

  @override
  String get albumFolderArtistYearAlbumSubtitle =>
      'الألبومات/اسم الفنان /[2005] اسم الألبوم/';

  @override
  String get albumFolderAlbumOnly => 'الألبوم فقط';

  @override
  String get albumFolderAlbumOnlySubtitle => 'الألبومات/اسم الألبوم/';

  @override
  String get albumFolderYearAlbum => '[Year] الألبوم';

  @override
  String get albumFolderYearAlbumSubtitle => 'الألبومات/[2005] اسم الألبوم/';

  @override
  String get albumFolderArtistAlbumSingles => 'الفنان / الألبوم + المفردات';

  @override
  String get albumFolderArtistAlbumSinglesSubtitle =>
      'الفنان/الألبوم  و  الفنان / المفردات';

  @override
  String get albumFolderArtistAlbumFlat => 'فنان / ألبوم (منفردات سطحية)';

  @override
  String get albumFolderArtistAlbumFlatSubtitle =>
      'الفنان / الألبوم  والفنان / الأغنية.flac';

  @override
  String get downloadedAlbumDeleteSelected => 'حذف المحدد';

  @override
  String downloadedAlbumDeleteMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'الأغاني',
      one: 'أغنية',
      many: 'أغنية',
      few: 'أغانٍ',
      two: 'أغنيتين',
      zero: '',
    );
    return 'حذف $count $_temp0 من التاريخ؟\n\nسيؤدي هذا أيضا إلى حذف الملفات من وحدة التخزين.';
  }

  @override
  String downloadedAlbumSelectedCount(int count) {
    return 'تم تحديد $count';
  }

  @override
  String get downloadedAlbumTapToSelect => 'اضغط على المسارات لتحديد';

  @override
  String downloadedAlbumDeleteCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'أغانٍ',
      one: 'أغنية',
      many: 'أغنية',
      few: 'أغانٍ',
      two: 'أغنيتين',
      zero: '',
    );
    return 'تم حذف $count $_temp0';
  }

  @override
  String get downloadedAlbumSelectToDelete => 'حدد الأغاني المراد حذفها';

  @override
  String downloadedAlbumDiscHeader(int discNumber) {
    return 'قرص $discNumber';
  }

  @override
  String get recentTypeArtist => 'الفنان';

  @override
  String get recentTypeAlbum => 'الألبوم';

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
    return 'تم إضافة $count أغانٍ إلى قائمة الانتظار';
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
  String get librarySourceDisabled => 'معطَّل';

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
      'إظهار عند البحث عن المسارات الموجودة';

  @override
  String get libraryAutoScan => 'فحص تلقائي';

  @override
  String get libraryAutoScanSubtitle => 'مسح مكتبتك تلقائياً للملفات الجديدة';

  @override
  String get libraryAutoScanOff => 'إيقاف';

  @override
  String get libraryAutoScanOnOpen => 'كل مرة يتم فيها فتح التطبيق';

  @override
  String get libraryAutoScanDaily => 'يومياً';

  @override
  String get libraryAutoScanWeekly => 'أسبوعيًا';

  @override
  String get libraryActions => 'الإجراءات';

  @override
  String get libraryScan => 'تفحص المكتبة';

  @override
  String get libraryScanSubtitle => 'البحث عن الملفات الصوتية';

  @override
  String get libraryScanSelectFolderFirst => 'حدد مجلد أولاً';

  @override
  String get libraryCleanupMissingFiles => 'تنظيف الملفات المفقودة';

  @override
  String get libraryCleanupMissingFilesSubtitle =>
      'إزالة المدخلات للملفات التي لم تعد موجودة';

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
  String get libraryClear => 'مسح المكتبة';

  @override
  String get libraryClearSubtitle => 'إزالة جميع المسارات الممسوحة ضوئيا';

  @override
  String get libraryClearConfirmTitle => 'مسح المكتبة';

  @override
  String get libraryClearConfirmMessage =>
      'سيؤدي هذا إلى إزالة جميع المسارات التي تم فحصها من مكتبتك. لن يتم حذف ملفات الموسيقى الفعلية الخاصة بك.';

  @override
  String get libraryAbout => 'حول المكتبة المحلية';

  @override
  String get libraryAboutDescription =>
      'Scans your existing music collection to detect duplicates when downloading. Supports FLAC, M4A, MP3, Opus, and OGG formats. Metadata is read from file tags when available.';

  @override
  String libraryTracksUnit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count أغانٍ',
      one: 'أغنية واحدة',
      many: '$count أغانٍ',
      few: '$count أغانٍ',
      two: 'أغنيتين',
      zero: 'لا توجد أغاني محددة',
    );
    return '$_temp0';
  }

  @override
  String libraryFilesUnit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ملفات',
      one: 'ملف',
      many: 'ملفات',
      few: 'ملفات',
      two: 'ملفات',
      zero: '',
    );
    return '$_temp0';
  }

  @override
  String libraryLastScanned(String time) {
    return 'آخر مسح: $time';
  }

  @override
  String get libraryLastScannedNever => 'مطلقًا';

  @override
  String get libraryScanning => 'جارٍ الفحص...';

  @override
  String get libraryScanFinalizing => 'الانتهاء من المكتبة...';

  @override
  String get libraryScanPaused => 'Scan paused';

  @override
  String libraryScanProgress(String progress, int total) {
    return '$progress% من ملفات $total';
  }

  @override
  String get libraryInLibrary => 'في المكتبة';

  @override
  String libraryRemovedMissingFiles(int count) {
    return 'إزالة الملفات المفقودة $count من المكتبة';
  }

  @override
  String get libraryCleared => 'تم مسح السجل';

  @override
  String get libraryStorageAccessRequired => 'إذن دخول وحدة التخزين مطلوب';

  @override
  String get libraryStorageAccessMessage =>
      'Toadplayer يحتاج إلى الوصول إلى التخزين لمسح مكتبة الموسيقى الخاصة بك. الرجاء منح الإذن في الإعدادات.';

  @override
  String get librarySourceDownloaded => 'تم التنزيل';

  @override
  String get librarySourceLocal => 'محلي';

  @override
  String get libraryFilterAll => 'الكل';

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
  String get libraryFilterDownloaded => 'تم التنزيل';

  @override
  String get libraryFilterLocal => 'محلي';

  @override
  String get libraryFilterTitle => 'المرشحات';

  @override
  String get libraryFilterReset => 'إعادة الضبط';

  @override
  String get libraryFilterApply => 'تطبيق';

  @override
  String get libraryFilterSource => 'المصدر';

  @override
  String get libraryFilterQuality => 'الجودة';

  @override
  String get libraryFilterQualityHiRes => 'Hi-Res (24bit)';

  @override
  String get libraryFilterQualityCD => 'قرص مدمج (16bit)';

  @override
  String get libraryFilterQualityLossy => 'فقدان';

  @override
  String get libraryFilterFormat => 'التنسيق';

  @override
  String get libraryFilterMetadata => 'البيانات الوصفية (Metadata)';

  @override
  String get libraryFilterMetadataComplete => 'أكمل البيانات الوصفية';

  @override
  String get libraryFilterMetadataMissingAny => 'بيانات التعريف مفقودة';

  @override
  String get libraryFilterMetadataMissingYear => 'السنة المفقودة';

  @override
  String get libraryFilterMetadataMissingGenre => 'السنة المفقودة';

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
  String get tutorialWelcomeTitle => 'Welcome to Toadplayer!';

  @override
  String get tutorialWelcomeDesc =>
      'Learn how to find music with extensions, choose the quality you want, and manage downloads in Toadplayer.';

  @override
  String get tutorialWelcomeTip1 =>
      'Search with an installed extension or paste a supported music link';

  @override
  String get tutorialWelcomeTip2 =>
      'Choose from the audio qualities offered by your download provider';

  @override
  String get tutorialWelcomeTip3 =>
      'Embed metadata, cover art, lyrics, and release information automatically';

  @override
  String get tutorialSearchTitle => 'Finding Music';

  @override
  String get tutorialSearchDesc =>
      'Search with your selected extension or paste a supported music link.';

  @override
  String get tutorialDownloadTitle => 'Downloading Music';

  @override
  String get tutorialDownloadDesc =>
      'Pick an available quality, start the download, and follow its progress in the queue.';

  @override
  String get tutorialLibraryTitle => 'Your Library';

  @override
  String get tutorialLibraryDesc =>
      'Downloaded and locally scanned music is organized in your Library.';

  @override
  String get tutorialLibraryTip1 =>
      'Manage active, pending, and completed downloads from the Library queue';

  @override
  String get tutorialLibraryTip2 =>
      'Tap a track to play it with the built-in player';

  @override
  String get tutorialLibraryTip3 =>
      'Browse tracks, albums, and playlists in list or grid views';

  @override
  String get tutorialExtensionsTitle => 'الإضافات';

  @override
  String get tutorialExtensionsDesc =>
      'Extensions add search, download, metadata, lyrics, and other integrations.';

  @override
  String get tutorialExtensionsTip1 =>
      'Browse the Repo tab to discover useful extensions';

  @override
  String get tutorialExtensionsTip2 =>
      'Choose providers for search, downloads, metadata, and fallbacks';

  @override
  String get tutorialExtensionsTip3 =>
      'Connect accounts when required and keep extensions up to date';

  @override
  String get tutorialSettingsTitle => 'Customize Your Experience';

  @override
  String get tutorialSettingsDesc =>
      'Fine-tune downloads, playback, Library behavior, appearance, and storage.';

  @override
  String get tutorialSettingsTip1 =>
      'Change download location and folder organization';

  @override
  String get tutorialSettingsTip2 =>
      'Set quality, concurrency, filenames, and conversion preferences';

  @override
  String get tutorialSettingsTip3 => 'Customize app theme and appearance';

  @override
  String get tutorialReadyMessage =>
      'You\'re ready. Select your extensions, then search or paste a supported link.';

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
  String get cacheTempDirectory => 'مجلد مؤقت';

  @override
  String get cacheTempDirectoryDesc =>
      'الملفات المؤقتة من التنزيلات وتحويل الصوت.';

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
  String get playbackNormalizationModeAlbum => 'الألبوم';

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
  String get trackReEnrichFieldLyrics => 'كلمات الأغنية';

  @override
  String get trackReEnrichFieldBasicTags => 'Album, Album Artist';

  @override
  String get trackReEnrichFieldTrackInfo => 'Track & Disc Number';

  @override
  String get trackReEnrichFieldReleaseInfo => 'Date & ISRC';

  @override
  String get trackReEnrichFieldExtra => 'Genre, Label, Copyright';

  @override
  String get trackReEnrichSelectAll => 'تحديد الكل';

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
      other: '$count أغانٍ',
      one: 'أغنية واحدة',
      many: '$count أغانٍ',
      few: '$count أغانٍ',
      two: 'أغنيتين',
      zero: 'لا توجد أغاني محددة',
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
      'QQ Music (good for Chinese songs, direct API)';

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
      'Choose a metadata extension, select fields, then review its data before applying';

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
  String get editMetadataFieldArtist => 'الفنان';

  @override
  String get editMetadataFieldAlbum => 'الألبوم';

  @override
  String get editMetadataFieldAlbumArtist => 'Album Artist';

  @override
  String get editMetadataFieldDate => 'Date';

  @override
  String get editMetadataFieldTrackNum => 'Track #';

  @override
  String get editMetadataFieldDiscNum => 'Disc #';

  @override
  String get editMetadataFieldGenre => 'النوع';

  @override
  String get editMetadataFieldIsrc => 'ISRC';

  @override
  String get editMetadataFieldLabel => 'تصنيف';

  @override
  String get editMetadataFieldCopyright => 'حقوق الطبع و النشر';

  @override
  String get editMetadataFieldCover => 'Cover Art';

  @override
  String get editMetadataSelectAll => 'الكل';

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
      other: '$count أغانٍ',
      one: 'أغنية واحدة',
      many: '$count أغانٍ',
      few: '$count أغانٍ',
      two: 'أغنيتين',
      zero: 'لا توجد أغاني محددة',
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
  String get audioAnalysisDuration => 'المدة';

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
  String get extensionsHomeFeedOff => 'إيقاف';

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
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tracks downloaded successfully',
      one: '1 track downloaded successfully',
    );
    return '$_temp0';
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
  String get homeSearchHintDefault => 'Paste supported URL or search...';

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
  String get settingsMetadata => 'البيانات الوصفية (Metadata)';

  @override
  String get settingsMetadataSubtitle =>
      'Cover art, tags, ReplayGain, providers';

  @override
  String get settingsLyrics => 'كلمات الأغنية';

  @override
  String get settingsLyricsSubtitle =>
      'Embed, mode, providers, language options';

  @override
  String get settingsApp => 'التطبيق';

  @override
  String get settingsAppSubtitle => 'Updates, data, extension repo, debug';

  @override
  String get sectionMetadataProviders => 'Providers';

  @override
  String get sectionDuplicates => 'مكرر';

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
  String get downloadFallbackExtensions => 'الإضافات الاحتياطية';

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
      other: 'أغانٍ',
      one: 'أغنية',
      many: 'أغنية',
      few: 'أغانٍ',
      two: 'أغنيتين',
      zero: '',
    );
    return 'تم حذف $count $_temp0';
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
  String get storeCategoryMetadata => 'البيانات الوصفية (Metadata)';

  @override
  String get storeCategoryDownload => 'التحميل';

  @override
  String get storeCategoryUtility => 'الأدوات';

  @override
  String get storeCategoryLyrics => 'كلمات الأغنية';

  @override
  String get storeCategoryIntegration => 'التكامل';

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
      'Recommended for listening, best quality, gapless playback, EQ, and wider format support';

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
  String get nowPlayingPreviousTrack => 'Previous track';

  @override
  String get nowPlayingNextTrack => 'Next track';

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
  String get nowPlayingTabLyrics => 'كلمات الأغنية';

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
  String get settingsSearchHint => 'Search settings';

  @override
  String settingsSearchNoResults(String query) {
    return 'No settings match \"$query\"';
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
  String get playerCoverStyleDefault => 'افتراضي';

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
  String get autoplayResetLearningConfirm => 'إعادة الضبط';

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
  String get listeningRewindShare => 'مشاركة';

  @override
  String get listeningRewindShareError => 'Could not share your Rewind';

  @override
  String get listeningRewindNext => 'التالي';

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
  String get listeningRewindSongsLabel => 'أغاني';

  @override
  String get listeningRewindArtistsLabel => 'فنانون';

  @override
  String get listeningRewindAlbumsLabel => 'ألبومات';

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
  String get discordPresenceDisabled => 'معطَّل';

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
  String get lyricsShareAction => 'مشاركة';

  @override
  String get lyricsShareError => 'Couldn\'t create the lyrics image';

  @override
  String get lyricsShareBackgroundArtwork => 'Artwork';

  @override
  String get lyricsShareBackgroundColor => 'Cover color';

  @override
  String get lyricsShareBackgroundDark => 'مظلم';

  @override
  String get lyricsShareBackgroundLight => 'فاتح';

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
  String get audioInfoQuality => 'الجودة';

  @override
  String get audioInfoHiResLossless => 'Hi-Res Lossless';

  @override
  String get audioInfoLossless => 'Lossless';

  @override
  String get audioInfoLossy => 'فقدان';

  @override
  String get audioInfoFormat => 'التنسيق';

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
  String get audioInfoDuration => 'المدة';

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
  String get audioInfoOff => 'إيقاف';

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
  String get audioInfoOutputFormat => 'تنسيق الإخراج';

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
