// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

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
  String get trackMood => 'Stimmung';

  @override
  String get subsonicAddToLibrary => 'Server zur Bibliothek hinzufügen';

  @override
  String get subsonicLibraryAdded => 'Server zur Bibliothek hinzugefügt';

  @override
  String get subsonicLibraryDescription =>
      'Synchronisiere den Serverkatalog und das Artwork mit der Bibliothek. Musik bleibt auf deinem Server. Scanne ihn in den Einstellungen der Lokalen Bibliothek erneut, um den Katalog zu aktualisieren.';

  @override
  String get subsonicAuthentication => 'Authentifizierung';

  @override
  String get subsonicToken => 'Sicherheits-Token';

  @override
  String get subsonicPasswordAuth => 'Passwort';

  @override
  String get subsonicApiKey => 'API-Key';

  @override
  String get subsonicUsername => 'Nutzername';

  @override
  String get subsonicPassword => 'Passwort';

  @override
  String get subsonicSearch => 'Servermusik suchen...';

  @override
  String get subsonicMoreAlbums => 'Weitere Alben';

  @override
  String get subsonicErrorApi =>
      'Der Server unterstützt diese API-Version oder Authentifizierungsmethode nicht. Überprüfen Sie die Server-Einstellungen und die ausgewählte Anmeldemethode.';

  @override
  String get networkDownloadDestination => 'Netzwerk Download-Ziel';

  @override
  String get networkUseForDownloads => 'In diesen Ordner downloaden';

  @override
  String get networkDownloadSelected => 'Ausgewähltes Download-Ziel';

  @override
  String get networkUseLocalDownloads => 'Lokalen Download-Ordner verwenden';

  @override
  String get networkDownloadAccessFailed =>
      'In diesen Ordner konnte nicht geschrieben werden.';

  @override
  String get networkUploading => 'Auf Netzwerkspeicher hochladen';

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
      'Bereite Songs auf diesem Gerät vor und lade sie dann zu deiner NAS hoch. Halte die App offen, bis der Upload abgeschlossen ist. „Wiederholen“ verwendet bereits aufbereitetes Audiomaterial erneut. Bestehende Dateien werden beibehalten, neue Downloads mit dem gleichen Namen erhalten ein nummeriertes Suffix.';

  @override
  String get networkAddToLibrary => 'Ordner zur Bibliothek hinzufügen';

  @override
  String get networkLibraryAdded => 'Ordner zur Bibliothek hinzugefügt';

  @override
  String get networkLibraryDescription =>
      'Scanne diesen Ordner und seine Unterordner. Musik bleibt auf deinem Server; Metadaten und Artwork werden auf diesem Gerät gespeichert. Verwalten oder erneuern kannst du es in den Einstellungen für lokale Bibliotheken.';

  @override
  String get networkStorage => 'Netzwerkspeicher';

  @override
  String get networkErrorUnreachable =>
      'Der Server konnte nicht erreicht werden. Überprüfe, ob dein Handy auf das Netzwerk zugreifen kann und ob der File-Sharing-Dienst läuft. Für SMB muss Port 445 erreichbar sein.';

  @override
  String get networkErrorTimeout =>
      'Der Server hat nicht rechtzeitig geantwortet. Überprüfe die Verbindung und versuche es erneut.';

  @override
  String get networkErrorAuthentication =>
      'Der Server hat die Anmeldung abgelehnt. Überprüfe den Benutzernamen, das Passwort und die Domain. Lasse die Domain leer, es sei denn, Ihr Server benötigt eine.';

  @override
  String get networkErrorPermission =>
      'Dieses Konto darf auf diese Freigaben oder Ordner nicht zugreifen. Überprüfe die Leserechte auf dem Server.';

  @override
  String get networkErrorLocalPermission =>
      'Local network access is not allowed. Allow Nearby devices for Toadplayer in Android app settings, then try again.';

  @override
  String get networkErrorShare =>
      'Die Freigabe oder der Ordner wurde nicht gefunden. Für SMB verwende den Namen des freigegebenen Ordners nach seiner Adresse, wie smb://server/Music/.';

  @override
  String get networkErrorProtocol =>
      'Der Server und dieser SMB-Client konnten sich nicht auf ein unterstütztes Protokoll einigen. Aktiviere SMB2 oder SMB3 auf dem Server. SMB1 wird nicht unterstützt.';

  @override
  String get networkErrorAddress =>
      'Überprüfe die Server-Adresse. Verwende smb://server/share/ für SMB, oder eine http:// oder https:// Adresse für WebDAV und HTTP.';

  @override
  String get networkConnections => 'Gespeicherte Verbindungen';

  @override
  String get networkServer => 'Server';

  @override
  String get networkCredentials => 'Anmelden (optional)';

  @override
  String get networkRefresh => 'Aktualisieren';

  @override
  String get networkStorageDescription =>
      'Verbinde dich mit deinem NAS- oder Musikserver und durchsuche die Ordner. Deine Anmeldedaten werden sicher auf diesem Gerät gespeichert.';

  @override
  String get networkAddConnection => 'Verbindung hinzufügen';

  @override
  String get networkEditConnection => 'Verbindung bearbeiten';

  @override
  String get networkConnectionName => 'Name';

  @override
  String get networkAddress => 'Server oder Audio-URL';

  @override
  String get networkProtocol => 'Protokoll';

  @override
  String get networkUsername => 'Benutzername (optional)';

  @override
  String get networkPassword => 'Passwort (optional)';

  @override
  String get networkDomain => 'Domain (optional)';

  @override
  String get networkConnectSave => 'Verbinden und speichern';

  @override
  String get networkErrorCertificate =>
      'Das HTTPS-Zertifikat des Servers konnte nicht verifiziert werden. Bearbeite dessen Verbindung, um sein Zertifikat zu überprüfen und zu vertrauen, oder überprüfen Sie die HTTPS-Konfiguration des Servers.';

  @override
  String get networkCertificatePrompt =>
      'This server uses an untrusted HTTPS certificate. Routers and NAS devices often use self-signed certificates. Verify the server address and SHA-256 fingerprint before trusting it. Trust applies only to this certificate on this server; a changed certificate requires approval again.';

  @override
  String get networkTrustCertificate => 'Zertifikat vertrauen und wiederholen';

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
  String get sectionAudioOutput => 'Audio-Output';

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
  String get usbVolumeAccept => 'Verstanden';

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
  String get upgradeIntroContinue => 'Fortfahren';

  @override
  String get cacheMotionArtwork => 'Offline motion covers';

  @override
  String get cacheMotionArtworkDesc =>
      'Album videos saved with downloads. Removing them keeps your music files and static covers.';

  @override
  String get nowPlayingVolume => 'Lautstärke';

  @override
  String get appearanceStyle => 'App-Stil';

  @override
  String get appearanceAccentRed => 'Rot (Standard)';

  @override
  String get appearanceAccentOrange => 'Orange';

  @override
  String get appearanceAccentGreen => 'Grün';

  @override
  String get appearanceAccentTeal => 'Türkis';

  @override
  String get appearanceAccentBlue => 'Blau';

  @override
  String get appearanceAccentPurple => 'Lila';

  @override
  String get appearanceAccentPink => 'Pink';

  @override
  String get appearanceGlassClarity => 'Glastransparenz';

  @override
  String get appearanceGlassOutlines => 'Glass outlines';

  @override
  String get appearanceGlassOutlinesSubtitle =>
      'Show decorative edges around Toadplayer glass. Turning this off keeps blur and refraction.';

  @override
  String get appearanceGlassClaritySubtitle =>
      'Adjust transparency in Toadplayer menus and navigation. Text contrast is preserved.';

  @override
  String get appearanceGlassTinted => 'Eingefärbt';

  @override
  String get appearanceGlassClear => 'klar';

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
  String get navHome => 'Startseite';

  @override
  String get navLibrary => 'Bibliothek';

  @override
  String get navSettings => 'Einstellungen';

  @override
  String get navStore => 'Repo';

  @override
  String get homeTitle => 'Startseite';

  @override
  String get homeEmptyTitle => 'Noch keine Suchanbieter';

  @override
  String get homeEmptySubtitle =>
      'Installiere eine Erweiterung um fortzufahren.';

  @override
  String get homeRecent => 'Zuletzt';

  @override
  String get searchRecentlySearched => 'Recently Searched';

  @override
  String get searchLibraryPrompt => 'Search Your Library';

  @override
  String get searchBrowse => 'Browse';

  @override
  String get historyFilterAll => 'Alle';

  @override
  String get historyFilterAlbums => 'Alben';

  @override
  String get historyFilterSingles => 'Singles';

  @override
  String get libraryRecentlyAdded => 'Zuletzt hinzugefügt';

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
  String get settingsTitle => 'Einstellungen';

  @override
  String get settingsDownload => 'Herunterladen';

  @override
  String get settingsAppearance => 'Erscheinungsbild';

  @override
  String get settingsExtensions => 'Erweiterungen';

  @override
  String get settingsAbout => 'Über';

  @override
  String get downloadTitle => 'Herunterladen';

  @override
  String get downloadAskQualitySubtitle =>
      'Qualitätsauswahl für jeden Download anzeigen';

  @override
  String get downloadFilenameFormat => 'Dateinamenformat';

  @override
  String get downloadSingleFilenameFormat => 'Einzelnes Dateinamenformat';

  @override
  String get downloadSingleFilenameFormatDescription =>
      'Dateinamenmuster für Singles und EPs. Verwendet die gleichen Tags wie das Albumformat.';

  @override
  String get downloadFolderOrganization => 'Ordnerstruktur';

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
  String get appearanceTitle => 'Erscheinungsbild';

  @override
  String get appearanceThemeSystem => 'System';

  @override
  String get appearanceThemeLight => 'Hell';

  @override
  String get appearanceThemeDark => 'Dunkel';

  @override
  String get appearanceDynamicColor => 'Dynamische Farben';

  @override
  String get appearanceDynamicColorSubtitle =>
      'Farben deines Hintergrundbilds verwenden';

  @override
  String get appearanceHistoryView => 'Verlaufsansicht';

  @override
  String get appearanceHistoryViewList => 'Liste';

  @override
  String get appearanceHistoryViewGrid => 'Raster';

  @override
  String get optionsPrimaryProvider => 'Primärer Anbieter';

  @override
  String get optionsPrimaryProviderSubtitle =>
      'Dienst zur Suche nach Titel oder Albumnamen';

  @override
  String optionsUsingExtension(String extensionName) {
    return 'Erweiterung verwenden: $extensionName';
  }

  @override
  String get optionsDefaultSearchTab => 'Standard Such-Tab';

  @override
  String get optionsDefaultSearchTabSubtitle =>
      'Wähle aus, welcher Tab zuerst für neue Suchergebnisse geöffnet wird.';

  @override
  String get optionsAutoFallback => 'Automatischer Fallback';

  @override
  String get optionsAutoFallbackSubtitle =>
      'Andere Dienste versuchen, wenn Download fehlschlägt';

  @override
  String get optionsEmbedLyrics => 'Liedtexte einbetten';

  @override
  String get optionsEmbedLyricsSubtitle =>
      'Speichere synchronisierte Liedtexte zusammen mit heruntergeladenen Titeln';

  @override
  String get optionsReplayGain => 'ReplayGain';

  @override
  String get optionsReplayGainSubtitleOn =>
      'Scanne Lautstärke und füge ReplayGain-Tags ein (EBU R128)';

  @override
  String get optionsReplayGainSubtitleOff =>
      'Deaktiviert: keine Lautstärke-Normalisierungs-Tags';

  @override
  String get trackReplayGain => 'ReplayGain neu scannen';

  @override
  String get trackReplayGainScanning => 'Analyzing loudness...';

  @override
  String get trackReplayGainSuccess => 'ReplayGain tags added';

  @override
  String get trackReplayGainFailed => 'Failed to add ReplayGain tags';

  @override
  String get trackRemoveReplayGain => 'ReplayGain entfernen';

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
  String get replayGainBatchConfirmTitle => 'ReplayGain hinzufügen';

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
  String get optionsArtistTagMode => 'Künstler Tag-Modus';

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
  String get metadataSeparatorPreview => 'Vorschau';

  @override
  String get metadataSeparatorInvalid =>
      'Use 1–16 characters without line breaks or control characters.';

  @override
  String get optionsArtistTagModeDescription =>
      'Wähle aus, wie mehrere Künstler in eingebetteten Tags geschrieben sind.';

  @override
  String get optionsArtistTagModeJoined => 'Einzelne beigefügte Werte';

  @override
  String get optionsArtistTagModeJoinedSubtitle =>
      'Einen Künstler wert wie \"Artist A, Artist B\" für maximale Player-Kompatibilität schreiben.';

  @override
  String get optionsArtistTagModeSplitVorbis => 'Tags für FLAC/Opus aufteilen';

  @override
  String get optionsArtistTagModeSplitVorbisSubtitle =>
      'Schreibe einen Künstler Tag pro Künstler für FLAC und Opus; MP3 und M4A bleiben beigetreten.';

  @override
  String get optionsArtistTagModePrimary => 'Primary artist only';

  @override
  String get optionsArtistTagModePrimarySubtitle =>
      'Write only the first artist, like \"Artist A\", to Artist and Album Artist in every format, so players list one artist.';

  @override
  String get optionsExtensionStore => 'Erweiterungs-Repo';

  @override
  String get optionsExtensionStoreSubtitle =>
      'Repo-Tab in der Navigation anzeigen';

  @override
  String get optionsCheckUpdates => 'Nach Updates suchen';

  @override
  String get optionsCheckUpdatesSubtitle =>
      'Benachrichtigen, wenn neue Version verfügbar';

  @override
  String get optionsUpdateChannel => 'Update-Kanal';

  @override
  String get optionsUpdateChannelStable => 'Nur stabile Versionen';

  @override
  String get optionsUpdateChannelPreview => 'Vorschau-Versionen erhalten';

  @override
  String get optionsUpdateChannelWarning =>
      'Vorschau kann Fehler oder unvollständige Funktionen enthalten';

  @override
  String get optionsClearHistory => 'Download-Verlauf löschen';

  @override
  String get optionsClearHistorySubtitle =>
      'Alle heruntergeladenen Titel aus dem Verlauf entfernen';

  @override
  String get optionsDetailedLogging => 'Detaillierte Protokollierung';

  @override
  String get optionsDetailedLoggingOn =>
      'Detaillierte Logs werden aufgezeichnet';

  @override
  String get optionsDetailedLoggingOff => 'Für Fehlerberichte aktivieren';

  @override
  String get extensionsTitle => 'Erweiterungen';

  @override
  String get extensionsDisabled => 'Deaktiviert';

  @override
  String extensionsVersion(String version) {
    return 'Version $version';
  }

  @override
  String get extensionsUninstall => 'Deinstallieren';

  @override
  String get storeTitle => 'Erweiterungs-Repo';

  @override
  String get storeSearch => 'Erweiterungen suchen...';

  @override
  String get storeInstall => 'Installieren';

  @override
  String get storeInstalled => 'Installiert';

  @override
  String get storeUpdate => 'Aktualisieren';

  @override
  String get aboutTitle => 'Über';

  @override
  String get aboutContributors => 'Mitwirkende';

  @override
  String get aboutMobileDeveloper => 'Mobile-Version Entwickler';

  @override
  String get aboutLogoArtist =>
      'Der talentierte Künstler, der unser wunderschönes App-Logo entworfen hat!';

  @override
  String get aboutTranslators => 'Übersetzer';

  @override
  String get aboutSpecialThanks => 'Besonderer Dank';

  @override
  String get aboutLinks => 'Links';

  @override
  String get aboutMobileSource => 'Mobiler Quellcode';

  @override
  String get aboutLyricsWebsite => 'Lyrics website';

  @override
  String get aboutServiceStatus => 'Service status';

  @override
  String get aboutReportIssue => 'Problem melden';

  @override
  String get aboutReportIssueSubtitle => 'Melde Probleme, die dir auffallen';

  @override
  String get aboutFeatureRequest => 'Feature vorschlagen';

  @override
  String get aboutFeatureRequestSubtitle =>
      'Schlage neue Funktionen für die App vor';

  @override
  String get aboutTelegramChannel => 'Telegram Kanal';

  @override
  String get aboutTelegramChannelSubtitle => 'Ankündigungen und Updates';

  @override
  String get aboutTelegramChat => 'Telegram Community';

  @override
  String get aboutTelegramChatSubtitle => 'Mit anderen Nutzern chatten';

  @override
  String get aboutSocial => 'Sozial';

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
      'Musik-Metadaten durchsuchen, Erweiterungen verwalten und deine Bibliothek organisieren.';

  @override
  String get artistAlbums => 'Alben';

  @override
  String get artistSingles => 'Singles & EPs';

  @override
  String get artistCompilations => 'Zusammenstellungen';

  @override
  String get artistPopular => 'Beliebt';

  @override
  String get artistLatestRelease => 'Latest Release';

  @override
  String get artistTopSongs => 'Top Songs';

  @override
  String artistMonthlyListeners(String count) {
    return '$count monatliche Hörer';
  }

  @override
  String get trackMetadataService => 'Anbieter';

  @override
  String get trackMetadataPlay => 'Abspielen';

  @override
  String get trackMetadataShare => 'Teilen';

  @override
  String get trackMetadataDelete => 'Löschen';

  @override
  String get setupGrantPermission => 'Berechtigung erlauben';

  @override
  String get setupSkip => 'Vorerst überspringen';

  @override
  String get setupStorageAccessRequired => 'Speicherzugriff erforderlich';

  @override
  String get setupStorageAccessMessageAndroid11 =>
      'Android 11+ benötigt die Berechtigung „Auf alle Dateien“, um Dateien im ausgewählten Download-Ordner zu speichern.';

  @override
  String get setupOpenSettings => 'Einstellungen öffnen';

  @override
  String get setupPermissionDeniedMessage =>
      'Berechtigung verweigert. Bitte erteile alle Berechtigungen um fortzufahren.';

  @override
  String setupPermissionRequired(String permissionType) {
    return '$permissionType-Berechtigung erforderlich';
  }

  @override
  String setupPermissionRequiredMessage(String permissionType) {
    return '$permissionType-Berechtigung ist erforderlich für\ndie beste Benutzererfahrung. Du kannst dies später in den Einstellungen ändern.';
  }

  @override
  String get setupUseDefaultFolder => 'Als Standardordner verwenden?';

  @override
  String get setupNoFolderSelected =>
      'Kein Ordner ausgewählt. Soll der Standard-Musikordner verwendet werden?';

  @override
  String get setupUseDefault => 'Standard verwenden';

  @override
  String get setupDownloadLocationTitle => 'Speicherort';

  @override
  String get setupDownloadLocationIosMessage =>
      'Auf iOS werden Downloads im Dokumentenordner der App gespeichert. Du kannst sie über die Datei-App aufrufen.';

  @override
  String get setupAppDocumentsFolder => 'App-Dokumentenordner';

  @override
  String get setupAppDocumentsFolderSubtitle =>
      'Empfohlen - zugänglich über die Datei-App';

  @override
  String get setupChooseFromFiles => 'Aus Dateien auswählen';

  @override
  String get setupChooseFromFilesSubtitle =>
      'Wähle iCloud oder einen anderen Speicherort';

  @override
  String get setupIosEmptyFolderWarning =>
      'iOS-Einschränkung: Leere Ordner können nicht ausgewählt werden. Wähle einen Ordner mit mindestens einer Datei.';

  @override
  String get setupIcloudNotSupported =>
      'iCloud Drive wird nicht unterstützt. Bitte verwende den \"Dokumente\" Ordner.';

  @override
  String get setupDownloadInFlac =>
      'Download music in lossless and Hi-Res quality';

  @override
  String get setupStorageGranted => 'Speicherberechtigung erlaubt!';

  @override
  String get setupStorageRequired => 'Speicherzugriff erforderlich';

  @override
  String get setupStorageDescription =>
      'Toadplayer benötigt Speicherrechte, um die heruntergeladenen Musikdateien zu speichern.';

  @override
  String get setupNotificationGranted =>
      'Benachrichtigungs-Berechtigung erteilt';

  @override
  String get setupNotificationEnable => 'Benachrichtigungen aktivieren';

  @override
  String get setupFolderChoose => 'Speicherort auswählen';

  @override
  String get setupFolderDescription =>
      'Wähle einen Ordner, in dem die heruntergeladene Musik gespeichert wird.';

  @override
  String get setupSelectFolder => 'Ordner wählen';

  @override
  String get setupEnableNotifications => 'Benachrichtigungen aktivieren';

  @override
  String get setupNotificationBackgroundDescription =>
      'Erhalte Benachrichtigungen über den Fortschritt und die Fertigstellung deiner Downloads, selbst wenn die App im Hintergrund läuft.';

  @override
  String get setupSkipForNow => 'Vorerst überspringen';

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
  String get setupNext => 'Weiter';

  @override
  String get setupGetStarted => 'Los geht‘s';

  @override
  String get setupAllowAccessToManageFiles =>
      'Bitte aktiviere \"Zugriff auf alle Dateien erlauben\" auf dem nächsten Bildschirm.';

  @override
  String get setupLanguageTitle => 'Sprache auswählen';

  @override
  String get setupLanguageDescription =>
      'Wählen deine bevorzugte Sprache für die App. Dies kann später in den Einstellungen geändert werden.';

  @override
  String get setupLanguageSystemDefault => 'Systemstandard';

  @override
  String get dialogCancel => 'Abbrechen';

  @override
  String get dialogSave => 'Speichern';

  @override
  String get dialogDelete => 'Löschen';

  @override
  String get dialogRetry => 'Wiederholen';

  @override
  String get dialogClear => 'Leeren';

  @override
  String get dialogDone => 'Fertig';

  @override
  String get dialogImport => 'Importieren';

  @override
  String get dialogDownload => 'Herunterladen';

  @override
  String get previewPlay => 'Vorschau abspielen';

  @override
  String get previewStop => 'Vorschau stoppen';

  @override
  String get previewUnavailable => 'Preview unavailable';

  @override
  String get dialogDiscard => 'Verwerfen';

  @override
  String get dialogRemove => 'Entfernen';

  @override
  String get dialogUninstall => 'Deinstallieren';

  @override
  String get dialogDiscardChanges => 'Änderungen verwerfen?';

  @override
  String get dialogUnsavedChanges =>
      'Du hast ungespeicherte Änderungen. Möchtest du sie verwerfen?';

  @override
  String get dialogClearAll => 'Alles löschen';

  @override
  String get dialogRemoveExtension => 'Erweiterung entfernen';

  @override
  String get dialogRemoveExtensionMessage =>
      'Bist du sicher, dass du diese Erweiterung entfernen möchtest? Diese Aktion kann nicht rückgängig gemacht werden.';

  @override
  String get dialogUninstallExtension => 'Erweiterung deinstallieren?';

  @override
  String dialogUninstallExtensionMessage(String extensionName) {
    return 'Bist du sicher, dass du $extensionName entfernen möchtest?';
  }

  @override
  String get dialogClearHistoryTitle => 'Verlauf löschen';

  @override
  String get dialogClearHistoryMessage =>
      'Bist du sicher, dass du den gesamten Downloadverlauf löschen möchtest? Dies kann nicht rückgängig gemacht werden.';

  @override
  String get dialogDeleteSelectedTitle => 'Ausgewählte löschen';

  @override
  String dialogDeleteSelectedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tracks',
      one: 'Track',
    );
    return 'Lösche $count $_temp0 aus dem Verlauf?\n\nDies löscht auch die Dateien aus dem Speicher.';
  }

  @override
  String get dialogImportPlaylistTitle => 'Playlist importieren';

  @override
  String dialogImportPlaylistMessage(int count) {
    return 'Found $count tracks in the playlist file. Add them to download queue?';
  }

  @override
  String csvImportTracks(int count) {
    return '$count Titel aus CSV';
  }

  @override
  String get collectionExportM3u => 'Als M3U8 exportieren';

  @override
  String collectionExportM3uDone(int exported, int total) {
    return 'Exported $exported of $total tracks';
  }

  @override
  String get collectionExportM3uNone => 'No downloaded files to export';

  @override
  String get collectionExportM3uFailed => 'Export fehlgeschlagen';

  @override
  String get trackOpenOn => 'Öffnen in…';

  @override
  String get trackOpenOnNoLinks => 'No platform links found for this track.';

  @override
  String get libraryReviewDuplicates => 'Review duplicates';

  @override
  String get libraryReviewDuplicatesSubtitle =>
      'Find tracks stored more than once';

  @override
  String get duplicatesTitle => 'Duplikate';

  @override
  String get duplicatesEmpty => 'No duplicate tracks found.';

  @override
  String get duplicatesKeepBest => 'Behalte das Beste';

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
    return '\"$trackName\" hinzugefügt';
  }

  @override
  String snackbarAddedTracksToQueue(int count) {
    return '$count Titel hinzugefügt';
  }

  @override
  String snackbarAlreadyDownloaded(String trackName) {
    return '\"$trackName\" bereits heruntergeladen';
  }

  @override
  String snackbarAlreadyInLibrary(String trackName) {
    return '\"$trackName\" existiert bereits in deiner Bibliothek';
  }

  @override
  String get snackbarHistoryCleared => 'Verlauf gelöscht';

  @override
  String snackbarDeletedTracks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Titel',
      one: 'Titel',
    );
    return '$count $_temp0';
  }

  @override
  String snackbarCannotOpenFile(String error) {
    return 'Datei kann nicht geöffnet werden: $error';
  }

  @override
  String get snackbarViewQueue => 'Warteschlange anzeigen';

  @override
  String snackbarUrlCopied(String platform) {
    return '$platform URL in die Zwischenablage kopiert';
  }

  @override
  String get snackbarFileNotFound => 'Datei nicht gefunden';

  @override
  String get snackbarSelectExtFile => 'Bitte wähle eine .toadplayer-ext Datei';

  @override
  String get snackbarProviderPrioritySaved => 'Anbieterpriorität gespeichert';

  @override
  String get snackbarMetadataProviderSaved =>
      'Priorität des Metadaten-Anbieters gespeichert';

  @override
  String snackbarExtensionInstalled(String extensionName) {
    return '$extensionName installiert.';
  }

  @override
  String snackbarExtensionUpdated(String extensionName) {
    return '$extensionName aktualisiert.';
  }

  @override
  String get snackbarFailedToInstall =>
      'Erweiterung konnte nicht installiert werden';

  @override
  String get snackbarFailedToUpdate =>
      'Erweiterung konnte nicht aktualisiert werden';

  @override
  String get errorRateLimited => 'Anfragelimit überschritten';

  @override
  String get errorRateLimitedMessage =>
      'Zu viele Anfragen. Bitte warte einen Moment, bevor du es erneut suchst.';

  @override
  String get errorNoTracksFound => 'Keine Titel gefunden';

  @override
  String get searchEmptyResultSubtitle => 'Try another keyword';

  @override
  String get errorUrlNotRecognized => 'Link wurde nicht erkannt';

  @override
  String get errorUrlNotRecognizedMessage =>
      'Dieser Link ist inkompatibel. Prüfe die URL und stelle sicher, dass eine kompatible Erweiterung installiert ist.';

  @override
  String get errorUrlFetchFailed =>
      'Laden fehlgeschlagen. Bitte erneut versuchen.';

  @override
  String errorMissingExtensionSource(String item) {
    return 'Kann $item nicht laden wegen fehlender Erweiterungsquelle';
  }

  @override
  String get actionPause => 'Pause';

  @override
  String get actionResume => 'Fortfahren';

  @override
  String get actionCancel => 'Abbrechen';

  @override
  String get actionSelectAll => 'Alles Auswählen';

  @override
  String get actionDeselect => 'Alle abwählen';

  @override
  String selectionSelected(int count) {
    return '$count ausgewählt';
  }

  @override
  String get selectionAllSelected => 'Alle Titel sind ausgewählt';

  @override
  String get selectionSelectToDelete => 'Titel zum Löschen wählen';

  @override
  String progressFetchingMetadata(int current, int total) {
    return 'Lade Metadaten... $current/$total';
  }

  @override
  String get progressReadingCsv => 'CSV wird gelesen...';

  @override
  String get searchSongs => 'Titel';

  @override
  String get searchArtists => 'Künstler';

  @override
  String get searchAlbums => 'Alben';

  @override
  String get searchPlaylists => 'Playlists';

  @override
  String get searchShowAll => 'Show all';

  @override
  String searchShowAllCategory(String category) {
    return 'Show all $category';
  }

  @override
  String get searchSortTitle => 'Ergebnisse sortieren';

  @override
  String get searchSortDefault => 'Standard';

  @override
  String get searchSortTitleAZ => 'Titel (A-Z)';

  @override
  String get searchSortTitleZA => 'Titel (Z-A)';

  @override
  String get searchSortArtistAZ => 'Künstler (A-Z)';

  @override
  String get searchSortArtistZA => 'Künstler (Z-A)';

  @override
  String get searchSortDurationShort => 'Dauer (kürzeste)';

  @override
  String get searchSortDurationLong => 'Dauer (längste)';

  @override
  String get searchSortDateOldest => 'Veröffentlichungsdatum (älteste)';

  @override
  String get searchSortDateNewest => 'Veröffentlichungsdatum (Neueste)';

  @override
  String get tooltipPlay => 'Abspielen';

  @override
  String get filenameFormat => 'Dateinamenformat';

  @override
  String get filenameShowAdvancedTags => 'Erweiterte Tags anzeigen';

  @override
  String get filenameShowAdvancedTagsDescription =>
      'Formatierte Tags für Track-Padding und Datumsmuster aktivieren';

  @override
  String get folderOrganizationNone => 'Keine Organisation';

  @override
  String get folderOrganizationByPlaylist => 'Nach Playlist';

  @override
  String get folderOrganizationByPlaylistSubtitle =>
      'Ordner für jede Playlist trennen';

  @override
  String get folderOrganizationByArtist => 'Nach Künstler';

  @override
  String get folderOrganizationByAlbum => 'Nach Album';

  @override
  String get folderOrganizationByArtistAlbum => 'Künstler/Album';

  @override
  String get folderOrganizationDescription =>
      'Heruntergeladene Dateien in Ordner organisieren';

  @override
  String get folderOrganizationNoneSubtitle =>
      'Alle Dateien im Download-Ordner';

  @override
  String get folderOrganizationByArtistSubtitle =>
      'Trenne Ordner nach Künstler';

  @override
  String get folderOrganizationByAlbumSubtitle => 'Trenne Ordner nach Album';

  @override
  String get folderOrganizationByArtistAlbumSubtitle =>
      'Verschachtelte Ordner für Künstler und Album';

  @override
  String get updateAvailable => 'Update verfügbar';

  @override
  String get updateLater => 'Später';

  @override
  String get updateStartingDownload => 'Download wird gestartet...';

  @override
  String get updateDownloadFailed => 'Download fehlgeschlagen';

  @override
  String get updateFailedMessage =>
      'Das Update konnte nicht heruntergeladen werden';

  @override
  String get updateNewVersionReady => 'Eine neue Version ist verfügbar';

  @override
  String get updateRequiredTitle => 'Update required';

  @override
  String updateRequiredNotice(int count) {
    return 'This version is $count releases behind and is no longer supported. Update to keep using the app.';
  }

  @override
  String get updateCurrent => 'Aktuell';

  @override
  String get updateNew => 'Neu';

  @override
  String get updateDownloading => 'Wird heruntergeladen...';

  @override
  String get updateWhatsNew => 'Was ist neu';

  @override
  String get updateDownloadInstall => 'Herunterladen & Installieren';

  @override
  String get updateDontRemind => 'Nicht erinnern';

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
  String get providerPriorityTitle => 'Anbieterpriorität';

  @override
  String get providerPriorityDescription =>
      'Ziehen, um Download-Anbieter neu zu ordnen. Die App versucht Anbieter von oben nach unten, wenn Titel heruntergeladen werden.';

  @override
  String get providerPriorityInfo =>
      'Wenn kein Titel bei dem ersten Anbieter nicht verfügbar ist, wird die App automatisch den nächsten versuchen.';

  @override
  String get providerPriorityFallbackExtensionsDescription =>
      'Wähle aus, welche installierten Download-Erweiterungen beim automatischen Fallback verwendet werden sollen.';

  @override
  String get providerPriorityFallbackExtensionsHint =>
      'Hier werden nur aktivierte Erweiterungen mit Download-Provider-Funktion aufgelistet.';

  @override
  String get providerExtension => 'Erweiterung';

  @override
  String get metadataProviderPriorityTitle => 'Metadaten Priorität';

  @override
  String get metadataProviderPriorityDescription =>
      'Ziehe, um Metadatenanbieter neu zu ordnen. Die App versucht Anbieter von oben nach unten, wenn sie nach Tracks suchen und Metadaten abrufen.';

  @override
  String get metadataProviderPriorityInfo =>
      'Deezer hat keine Limits und wird als primäre empfohlen. Spotify kann nach vielen Anfragen begrenzen.';

  @override
  String get logTitle => 'Protokolle';

  @override
  String get logCopied => 'Logs in Zwischenablage kopiert';

  @override
  String get logSearchHint => 'Logs durchsuchen ...';

  @override
  String get logFilterLevel => 'Stufe';

  @override
  String get logFilterSection => 'Filter';

  @override
  String get logShareLogs => 'Logs teilen';

  @override
  String get logClearLogs => 'Logs löschen';

  @override
  String get logClearLogsTitle => 'Logs leeren';

  @override
  String get logClearLogsMessage =>
      'Bist du dir sicher, dass Sie alle Logs löschen möchtest?';

  @override
  String get logFilterBySeverity => 'Logs nach Schweregrad filtern';

  @override
  String get logNoLogsYet => 'Noch keine Logs';

  @override
  String get logNoLogsYetSubtitle =>
      'Logs werden hier angezeigt, während du die App benutzt';

  @override
  String logEntriesFiltered(int count) {
    return 'Einträge ($count gefiltert)';
  }

  @override
  String logEntries(int count) {
    return '$count Einträge';
  }

  @override
  String get channelStable => 'Stabil';

  @override
  String get channelPreview => 'Vorschau';

  @override
  String get sectionSearchSource => 'Suchquelle';

  @override
  String get sectionDownload => 'Herunterladen';

  @override
  String get sectionPerformance => 'Performance';

  @override
  String get sectionApp => 'App';

  @override
  String get sectionData => 'Daten';

  @override
  String get sectionDebug => 'Debug';

  @override
  String get sectionService => 'Anbieter';

  @override
  String get sectionAudioQuality => 'Audioqualität';

  @override
  String get sectionFileSettings => 'Datei-Einstellungen';

  @override
  String get sectionLyrics => 'Lyrics';

  @override
  String get lyricsKeepScreenOn => 'Keep screen on while viewing lyrics';

  @override
  String get lyricsKeepScreenOnSubtitle =>
      'Prevent screen timeout while lyrics are open, including when playback is paused.';

  @override
  String get lyricsMode => 'Lyrics-Modus';

  @override
  String get lyricsModeDescription =>
      'Wähle wie Songtexte mit deinen Downloads gespeichert werden';

  @override
  String get lyricsModeEmbed => 'In Datei einbetten';

  @override
  String get lyricsModeEmbedSubtitle => 'Lyrics in FLAC Metadaten gespeichert';

  @override
  String get lyricsModeExternal => 'Externe .lrc Datei';

  @override
  String get lyricsModeExternalSubtitle =>
      'Separate .lrc Datei für Player wie Samsung Music';

  @override
  String get lyricsModeBoth => 'Beides';

  @override
  String get lyricsModeBothSubtitle =>
      'Lyrics einbetten und als .lrc speichern';

  @override
  String get sectionColor => 'Farbe';

  @override
  String get sectionTheme => 'Design';

  @override
  String get sectionLayout => 'Layout';

  @override
  String get sectionLanguage => 'Sprache';

  @override
  String get appearanceLanguage => 'App Sprache';

  @override
  String get settingsAppearanceSubtitle => 'Design, Farben, Anzeige';

  @override
  String get settingsDownloadSubtitle => 'Anbieter, Qualität, Rückfall';

  @override
  String get settingsExtensionsSubtitle => 'Download-Anbieter verwalten';

  @override
  String get settingsLogsSubtitle => 'App-Logs zum Debuggen anzeigen';

  @override
  String get loadingSharedLink => 'Link wird geladen...';

  @override
  String get pressBackAgainToExit =>
      'Drücke wieder \"zurück\" um die App zu beenden';

  @override
  String downloadAllCount(int count) {
    return 'Alle $count Titel herunterladen';
  }

  @override
  String tracksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Titel',
      one: '1 Titel',
    );
    return '$_temp0';
  }

  @override
  String get trackCopyFilePath => 'Dateipfad kopieren';

  @override
  String get trackRemoveFromDevice => 'Vom Gerät entfernen';

  @override
  String get trackLoadLyrics => 'Lade Lyrics';

  @override
  String get trackMetadata => 'Metadaten';

  @override
  String get trackFileInfo => 'Datei-Info';

  @override
  String get trackLyrics => 'Lyrics';

  @override
  String get trackFileNotFound => 'Datei nicht gefunden';

  @override
  String get trackFileUnavailable =>
      'File is currently unavailable. Check storage access and try again.';

  @override
  String get trackOpenInDeezer => 'In Deezer öffnen';

  @override
  String get trackOpenInSpotify => 'In Spotify öffnen';

  @override
  String get trackTrackName => 'Titel Name';

  @override
  String get trackArtist => 'Künstler';

  @override
  String get trackAlbumArtist => 'Album Künstler';

  @override
  String get trackAlbum => 'Album';

  @override
  String get trackTrackNumber => 'Titelnummer';

  @override
  String get trackDiscNumber => 'CD-Nummer';

  @override
  String get trackDuration => 'Länge';

  @override
  String get trackAudioQuality => 'Audioqualität';

  @override
  String get trackReplayGainTrackGain => 'ReplayGain Track Gain';

  @override
  String get trackReplayGainTrackPeak => 'ReplayGain Track Peak';

  @override
  String get trackReplayGainAlbumGain => 'ReplayGain Album Gain';

  @override
  String get trackReplayGainAlbumPeak => 'ReplayGain Album Peak';

  @override
  String get libraryQualityLabelFileFormat => 'Datei Format';

  @override
  String get trackReleaseDate => 'Erscheinungsdatum';

  @override
  String get trackGenre => 'Genre';

  @override
  String get trackLabel => 'Label';

  @override
  String get trackCopyright => 'Urheberrecht';

  @override
  String get trackDownloaded => 'Heruntergeladen';

  @override
  String get trackCopyLyrics => 'Lyrics kopieren';

  @override
  String trackLyricsSource(String source) {
    return 'Quelle: $source';
  }

  @override
  String get trackLyricsNotAvailable =>
      'Lyrics sind für diesen Titel nicht verfügbar';

  @override
  String get trackLyricsNotInFile => 'Keine Lyrics in dieser Datei gefunden';

  @override
  String get trackFetchOnlineLyrics => 'Online abrufen';

  @override
  String get trackLyricsTimeout =>
      'Anfrage Timeout. Versuche es später erneut.';

  @override
  String get trackLyricsLoadFailed => 'Fehler beim Laden der Lyrics';

  @override
  String get trackEmbedLyrics => 'Lyrics einbetten';

  @override
  String get trackLyricsEmbedded => 'Lyrics erfolgreich eingebettet';

  @override
  String get trackInstrumental => 'Instrumentalspur';

  @override
  String get trackCopiedToClipboard => 'In Zwischenablage kopiert';

  @override
  String get trackDeleteConfirmTitle => 'Vom Gerät entfernen?';

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
      'Dies wird die heruntergeladene Datei dauerhaft löschen und sie aus deinem Verlauf entfernen.';

  @override
  String get dateToday => 'Heute';

  @override
  String get dateYesterday => 'Gestern';

  @override
  String dateDaysAgo(int count) {
    return 'Vor $count Tagen';
  }

  @override
  String dateWeeksAgo(int count) {
    return 'Vor $count Wochen';
  }

  @override
  String dateMonthsAgo(int count) {
    return 'Vor $count Monaten';
  }

  @override
  String get storeFilterAll => 'Alle';

  @override
  String get storeFilterMetadata => 'Metadaten';

  @override
  String get storeFilterDownload => 'Herunterladen';

  @override
  String get storeFilterUtility => 'Hilfsmittel';

  @override
  String get storeFilterLyrics => 'Lyrics';

  @override
  String get storeFilterIntegration => 'Integration';

  @override
  String get storeClearFilters => 'Filter entfernen';

  @override
  String get storeAddRepoTitle => 'Erweiterungs-Repository hinzufügen';

  @override
  String get storeAddRepoDescription =>
      'Gib eine GitHub Repository-URL ein, die eine Registry.json Datei enthält, um Erweiterungen zu durchsuchen und zu installieren.';

  @override
  String get storeRepoUrlLabel => 'Repository-URL';

  @override
  String get storeRepoUrlHint => 'https://github.com/user/repo';

  @override
  String get storeAddRepoButton => 'Repository hinzufügen';

  @override
  String get storeChangeRepoTooltip => 'Repository ändern';

  @override
  String get storeRepoDialogTitle => 'Erweiterungs-Repository';

  @override
  String get storeRepoDialogCurrent => 'Aktuelles Repository:';

  @override
  String get storeNewRepoUrlLabel => 'Neue Repository-URL';

  @override
  String get storeLoadError => 'Fehler beim Laden der Repository';

  @override
  String get storeEmptyNoExtensions => 'Keine Erweiterung verfügbar';

  @override
  String get storeEmptyNoResults => 'Keine Erweiterungen gefunden';

  @override
  String get extensionId => 'ID';

  @override
  String get extensionError => 'Fehler';

  @override
  String get extensionCapabilities => 'Eigenschaften';

  @override
  String get extensionMetadataProvider => 'Metadaten-Anbieter';

  @override
  String get extensionDownloadProvider => 'Download-Anbieter';

  @override
  String get extensionLyricsProvider => 'Lyrics-Anbieter';

  @override
  String get extensionUrlHandler => 'URL Handler';

  @override
  String get extensionQualityOptions => 'Qualitätsoptionen';

  @override
  String get extensionPostProcessingHooks => 'Post-Processing Hooks';

  @override
  String get extensionPermissions => 'Berechtigungen';

  @override
  String get extensionSettings => 'Einstellungen';

  @override
  String get extensionRemoveButton => 'Erweiterung entfernen';

  @override
  String get extensionUpdated => 'Aktualisiert';

  @override
  String get extensionMinAppVersion => 'Min App-Version';

  @override
  String get extensionCustomTrackMatching =>
      'Benutzerdefiniertes Track-Matching';

  @override
  String get extensionPostProcessing => 'Post-processing';

  @override
  String extensionHooksAvailable(int count) {
    return '$count Hook(s) verfügbar';
  }

  @override
  String extensionPatternsCount(int count) {
    return '$count Muster';
  }

  @override
  String extensionStrategy(String strategy) {
    return 'Strategie: $strategy';
  }

  @override
  String get extensionsProviderPrioritySection => 'Provider-Priorität';

  @override
  String get extensionsInstalledSection => 'Installierte Erweiterungen';

  @override
  String get extensionsNoExtensions => 'Keine Erweiterungen installiert';

  @override
  String get extensionsNoExtensionsSubtitle =>
      'Installiere .toadplayer-ext Dateien um neue Anbieter hinzuzufügen';

  @override
  String get extensionsInstallButton => 'Erweiterung installieren';

  @override
  String get extensionsInfoTip =>
      'Erweiterungen können neue Metadaten und Download-Anbieter hinzufügen. Installiere nur Erweiterungen von vertrauenswürdigen Quellen.';

  @override
  String get extensionsInstalledSuccess =>
      'Erweiterung erfolgreich installiert';

  @override
  String extensionsInstalledCount(int count) {
    return '$count Erweiterungen erfolgreich installiert';
  }

  @override
  String extensionsInstallPartialSuccess(int installed, int attempted) {
    return '$installed von $attempted Erweiterungen installiert';
  }

  @override
  String get extensionsDownloadPriority => 'Download-Priorität';

  @override
  String get extensionsDownloadPrioritySubtitle =>
      'Download-Service-Reihenfolge festlegen';

  @override
  String get extensionsFallbackTitle => 'Fallback-Erweiterungen';

  @override
  String get extensionsFallbackSubtitle =>
      'Wähle welche installierten Download-Erweiterungen als Fallback verwendet werden sollen';

  @override
  String get extensionsNoDownloadProvider =>
      'Keine Erweiterungen mit Download-Provider';

  @override
  String get extensionsMetadataPriority => 'Metadaten Priorität';

  @override
  String get extensionsMetadataPrioritySubtitle =>
      'Reihenfolge der Such- und Metadaten quellen festlegen';

  @override
  String get extensionsNoMetadataProvider =>
      'Keine Erweiterungen mit Metadaten-Anbieter';

  @override
  String get extensionsSearchProvider => 'Such-Provider';

  @override
  String get extensionsNoCustomSearch =>
      'Keine Erweiterungen mit benutzerdefinierter Suche';

  @override
  String get extensionsSearchProviderDescription =>
      'Wähle den Dienst für die Suche von Titel';

  @override
  String get extensionsCustomSearch => 'Benutzerdefinierte Suche';

  @override
  String get extensionsErrorLoading => 'Fehler beim Laden der Erweiterung';

  @override
  String get qualityFlacLossless => 'FLAC Verlustfrei';

  @override
  String get qualityFlacLosslessSubtitle => '16-bit / 44,1kHz';

  @override
  String get qualityHiResFlac => 'Hi-Res FLAC';

  @override
  String get qualityHiResFlacSubtitle => '24-Bit / bis 96kHz';

  @override
  String get qualityHiResFlacMax => 'Hi-Res FLAC Max';

  @override
  String get qualityHiResFlacMaxSubtitle => '24-Bit / bis 192kHz';

  @override
  String get downloadLossyFormat => 'Verlustbehaftetes Format';

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
  String get downloadAutoConvertFormat => 'Ausgabeformat';

  @override
  String get downloadAutoConvertFormatSubtitle =>
      'Choose the lossy format used for newly completed downloads.';

  @override
  String get downloadAutoConvertBitrate => 'Ausgabequalität';

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
  String get downloadAskBeforeDownload => 'Qualität vor Download fragen';

  @override
  String get downloadDirectory => 'Download-Ordner';

  @override
  String get downloadSeparateSinglesFolder => 'Singles Ordner trennen';

  @override
  String get downloadAlbumFolderStructure => 'Album-Ordnerstruktur';

  @override
  String get albumFolderStructureDescription =>
      'Choose how album folders are structured';

  @override
  String get downloadUseAlbumArtistForFolders =>
      'Album-Künstler für Ordner verwenden';

  @override
  String get downloadUsePrimaryArtistOnly => 'Primärer Künstler nur für Ordner';

  @override
  String get downloadUsePrimaryArtistOnlyEnabled =>
      'Vorgestellte Künstler aus dem Ordnernamen entfernt (z.B. Justin Bieber, Quavo → Justin Bieber)';

  @override
  String get downloadUsePrimaryArtistOnlyDisabled =>
      'Vollständiger Künstler für Ordnername';

  @override
  String get downloadSelectQuality => 'Qualität wählen';

  @override
  String get downloadFrom => 'Herunterladen von';

  @override
  String get appearanceAmoledDark => 'AMOLED Schwarz';

  @override
  String get appearanceAmoledDarkSubtitle => 'AMOLED Hintergrund';

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
  String get queueClearAll => 'Alles löschen';

  @override
  String get queueClearAllMessage =>
      'Bist du dir sicher, dass du alle Downloads löschen möchten?';

  @override
  String get settingsAutoExportFailed =>
      'Auto-Export fehlgeschlagener Downloads';

  @override
  String get settingsAutoExportFailedSubtitle =>
      'Fehlgeschlagene Downloads automatisch in eine TXT-Datei speichern';

  @override
  String get settingsDownloadNetwork => 'Download Netzwerk';

  @override
  String get settingsDownloadNetworkAny => 'WLAN + Mobile Daten';

  @override
  String get settingsDownloadNetworkWifiOnly => 'Nur WLAN';

  @override
  String get settingsDownloadNetworkSubtitle =>
      'Wähle aus, welches Netzwerk für Downloads verwendet werden soll. Wenn nur WLAN aktiviert wird, werden Downloads auf mobilen Daten angehalten.';

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
  String get albumFolderArtistAlbum => 'Künstler/Album';

  @override
  String get albumFolderArtistAlbumSubtitle => 'Alben/Künster Name/Album Name/';

  @override
  String get albumFolderArtistYearAlbum => 'Künstler / [Year] Album';

  @override
  String get albumFolderArtistYearAlbumSubtitle =>
      'Alben/Künster Name/[2005] Album Name/';

  @override
  String get albumFolderAlbumOnly => 'Nur Alben';

  @override
  String get albumFolderAlbumOnlySubtitle => 'Alben/Album Name/';

  @override
  String get albumFolderYearAlbum => '[Year] Album';

  @override
  String get albumFolderYearAlbumSubtitle => 'Alben/[2005] Album Name/';

  @override
  String get albumFolderArtistAlbumSingles => 'Künstler / Album + Singles';

  @override
  String get albumFolderArtistAlbumSinglesSubtitle =>
      'Künstler/Album/ und Künstler/Singles/';

  @override
  String get albumFolderArtistAlbumFlat => 'Künstler / Album (Singles flach)';

  @override
  String get albumFolderArtistAlbumFlatSubtitle =>
      'Künstler/Album/ Und Künstler/Lied.flac';

  @override
  String get downloadedAlbumDeleteSelected => 'Ausgewählte löschen';

  @override
  String downloadedAlbumDeleteMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Titel',
      one: 'Titel',
    );
    return '$count $_temp0 aus diesem Album löschen?\n\nDadurch werden auch die Dateien aus dem Speicher gelöscht.';
  }

  @override
  String downloadedAlbumSelectedCount(int count) {
    return '$count ausgewählt';
  }

  @override
  String get downloadedAlbumTapToSelect => 'Tippe auf Titel zum Auswählen';

  @override
  String downloadedAlbumDeleteCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Titel',
      one: 'Titel',
    );
    return 'Lösche $count $_temp0';
  }

  @override
  String get downloadedAlbumSelectToDelete => 'Titel zum Löschen wählen';

  @override
  String downloadedAlbumDiscHeader(int discNumber) {
    return 'Disc $discNumber';
  }

  @override
  String get recentTypeArtist => 'Künstler';

  @override
  String get recentTypeAlbum => 'Album';

  @override
  String get recentTypeSong => 'Titel';

  @override
  String get recentTypePlaylist => 'Playlist';

  @override
  String get recentEmpty => 'Noch keine aktuellen Einträge';

  @override
  String get recentClearAllMessage =>
      'Clear all recent activity? Download history and music files will not be deleted.';

  @override
  String get recentShowAllDownloads => 'Alle Downloads anzeigen';

  @override
  String recentPlaylistInfo(String name) {
    return 'Playlist: $name';
  }

  @override
  String get discographyDownload => 'Diskographie herunterladen';

  @override
  String get discographyDownloadAll => 'Alle Herunterladen';

  @override
  String discographyDownloadAllSubtitle(int count, int albumCount) {
    return '$count Titel von $albumCount Releases';
  }

  @override
  String get discographyAlbumsOnly => 'Nur Alben';

  @override
  String discographyAlbumsOnlySubtitle(int count, int albumCount) {
    return '$count Titel aus $albumCount Alben';
  }

  @override
  String get discographySinglesOnly => 'Nur Singles & EPs';

  @override
  String discographySinglesOnlySubtitle(int count, int albumCount) {
    return '$count Titel von $albumCount Singles';
  }

  @override
  String get discographySelectAlbums => 'Alben auswählen...';

  @override
  String get discographySelectAlbumsSubtitle =>
      'Wähle bestimmte Alben oder Singles';

  @override
  String get discographyFetchingTracks => 'Lade Titel...';

  @override
  String discographyFetchingAlbum(int current, int total) {
    return 'Lade $current von $total...';
  }

  @override
  String get discographyDownloadSelected => 'Auswahl herunterladen';

  @override
  String discographyAddedToQueue(int count) {
    return '$count Titel zur Warteschlange hinzugefügt';
  }

  @override
  String discographySkippedDownloaded(int added, int skipped) {
    return '$added hinzugefügt, $skipped bereits heruntergeladen';
  }

  @override
  String get discographyNoAlbums => 'Es sind keine Alben verfügbar';

  @override
  String get discographyFailedToFetch => 'Fehler beim Abrufen einiger Alben';

  @override
  String get sectionStorageAccess => 'Speicherzugriff';

  @override
  String get allFilesAccess => 'Zugriff auf alle Dateien';

  @override
  String get allFilesAccessEnabledSubtitle => 'Darf in jeden Ordner schreiben';

  @override
  String get allFilesAccessDisabledSubtitle => 'Nur auf Medienordner begrenzt';

  @override
  String get allFilesAccessDescription =>
      'Option bei Schreibfehlern bitte aktivieren (erforderlich ab Android 13).';

  @override
  String get allFilesAccessDeniedMessage =>
      'Zugriff verweigert. Bitte aktiviere \"Zugriff auf alle Dateien\" manuell in den Systemeinstellungen.';

  @override
  String get allFilesAccessDisabledMessage =>
      'Zugriff auf alle Dateien ist deaktiviert. Die App verwendet nur begrenzten Zugriff auf den Speicher.';

  @override
  String get settingsLocalLibrary => 'Lokale Bibliothek';

  @override
  String get settingsLocalLibrarySubtitle =>
      'Musik scannen & Duplikate erkennen';

  @override
  String get settingsCache => 'Speicher & Cache';

  @override
  String get settingsCacheSubtitle =>
      'Größe anzeigen und Daten im Cache leeren';

  @override
  String get libraryTitle => 'Lokale Bibliothek';

  @override
  String get libraryScanSettings => 'Scan Einstellungen';

  @override
  String get libraryEnableLocalLibrary => 'Lokale Bibliothek aktivieren';

  @override
  String get libraryEnableLocalLibrarySubtitle =>
      'Scan und verfolge deine bestehende Musik';

  @override
  String get libraryFolder => 'Bibliotheksordner';

  @override
  String get libraryFolderHint => 'Tippe um Ordner auszuwählen';

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
  String get librarySourceDisabled => 'Deaktiviert';

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
  String get libraryShowDuplicateIndicator => 'Duplikat Indikator anzeigen';

  @override
  String get libraryShowDuplicateIndicatorSubtitle =>
      'Bei der Suche nach vorhandenen Titeln anzeigen';

  @override
  String get libraryAutoScan => 'Auto-Scan';

  @override
  String get libraryAutoScanSubtitle =>
      'Scanne die Bibliothek automatisch nach neuen Dateien';

  @override
  String get libraryAutoScanOff => 'Aus';

  @override
  String get libraryAutoScanOnOpen => 'Bei jeder App Öffnung';

  @override
  String get libraryAutoScanDaily => 'Täglich';

  @override
  String get libraryAutoScanWeekly => 'Wöchentlich';

  @override
  String get libraryActions => 'Aktionen';

  @override
  String get libraryScan => 'Bibliothek scannen';

  @override
  String get libraryScanSubtitle => 'Suche nach Audiodateien';

  @override
  String get libraryScanSelectFolderFirst => 'Wähle zuerst einen Ordner';

  @override
  String get libraryCleanupMissingFiles => 'Fehlende Dateien bereinigen';

  @override
  String get libraryCleanupMissingFilesSubtitle =>
      'Verlaufseinträge für Dateien löschen, die nicht mehr existieren';

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
  String get libraryClear => 'Bibliothek löschen';

  @override
  String get libraryClearSubtitle => 'Alle gescannten Titel entfernen';

  @override
  String get libraryClearConfirmTitle => 'Bibliothek löschen';

  @override
  String get libraryClearConfirmMessage =>
      'Dadurch werden alle gescannten Titel aus deiner Bibliothek entfernt. Deine eigentlichen Musikdateien werden nicht gelöscht.';

  @override
  String get libraryAbout => 'Über die lokale Bibliothek';

  @override
  String get libraryAboutDescription =>
      'Durchsucht deine bestehende Musiksammlung, um Duplikate beim Herunterladen zu erkennen. Unterstützt die Formate FLAC, M4A, MP3, Opus und OGG. Metadaten werden, sofern verfügbar, aus den Dateitags gelesen.';

  @override
  String libraryTracksUnit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Titel',
      one: '1 Titel',
    );
    return '$_temp0';
  }

  @override
  String libraryFilesUnit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Datein',
      one: '1 Datei',
    );
    return '$_temp0';
  }

  @override
  String libraryLastScanned(String time) {
    return 'Zuletzt gescannt: $time';
  }

  @override
  String get libraryLastScannedNever => 'Nie';

  @override
  String get libraryScanning => 'Scannen...';

  @override
  String get libraryScanFinalizing => 'Bibliothek wird aktualisiert...';

  @override
  String get libraryScanPaused => 'Scan pausiert';

  @override
  String libraryScanProgress(String progress, int total) {
    return '$progress% von $total Dateien';
  }

  @override
  String get libraryInLibrary => 'In Bibliothek';

  @override
  String libraryRemovedMissingFiles(int count) {
    return 'Entfernte $count fehlende Dateien aus der Bibliothek';
  }

  @override
  String get libraryCleared => 'Bibliothek geleert';

  @override
  String get libraryStorageAccessRequired => 'Speicherzugriff erforderlich';

  @override
  String get libraryStorageAccessMessage =>
      'Toadplayer benötigt Speicherzugriff, um deine Musikbibliothek zu scannen. Bitte erteile die Berechtigung in den Einstellungen.';

  @override
  String get librarySourceDownloaded => 'Heruntergeladen';

  @override
  String get librarySourceLocal => 'Lokal';

  @override
  String get libraryFilterAll => 'Alle';

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
  String get libraryFilterDownloaded => 'Heruntergeladen';

  @override
  String get libraryFilterLocal => 'Lokal';

  @override
  String get libraryFilterTitle => 'Filter';

  @override
  String get libraryFilterReset => 'Zurücksetzen';

  @override
  String get libraryFilterApply => 'Anwenden';

  @override
  String get libraryFilterSource => 'Quelle';

  @override
  String get libraryFilterQuality => 'Qualität';

  @override
  String get libraryFilterQualityHiRes => 'Hi-Res (24bit)';

  @override
  String get libraryFilterQualityCD => 'CD (16bit)';

  @override
  String get libraryFilterQualityLossy => 'Verlustbehaftet';

  @override
  String get libraryFilterFormat => 'Format';

  @override
  String get libraryFilterMetadata => 'Metadaten';

  @override
  String get libraryFilterMetadataComplete => 'Komplette Metadaten';

  @override
  String get libraryFilterMetadataMissingAny => 'Metadaten fehlen';

  @override
  String get libraryFilterMetadataMissingYear => 'Jahr fehlt';

  @override
  String get libraryFilterMetadataMissingGenre => 'Genre fehlt';

  @override
  String get libraryFilterMetadataMissingAlbumArtist =>
      'Fehlender Album-Künstler';

  @override
  String get libraryFilterSort => 'Sortieren';

  @override
  String get libraryFilterSortLatest => 'Neuste';

  @override
  String get libraryFilterSortOldest => 'Älteste';

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
  String get timeJustNow => 'Gerade eben';

  @override
  String timeMinutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'vor $count Minuten',
      one: 'vor 1 Minute',
    );
    return '$_temp0';
  }

  @override
  String timeHoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'vor $count Stunden',
      one: 'vor 1 Stunde',
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
  String get tutorialSearchTitle => 'Suche Musik';

  @override
  String get tutorialSearchDesc =>
      'Search with your selected extension or paste a supported music link.';

  @override
  String get tutorialDownloadTitle => 'Musik wird heruntergeladen';

  @override
  String get tutorialDownloadDesc =>
      'Pick an available quality, start the download, and follow its progress in the queue.';

  @override
  String get tutorialLibraryTitle => 'Deine Bibliothek';

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
  String get tutorialExtensionsTitle => 'Erweiterungen';

  @override
  String get tutorialExtensionsDesc =>
      'Extensions add search, download, metadata, lyrics, and other integrations.';

  @override
  String get tutorialExtensionsTip1 =>
      'Im Repo Tab findest du nützliche Erweiterungen';

  @override
  String get tutorialExtensionsTip2 =>
      'Choose providers for search, downloads, metadata, and fallbacks';

  @override
  String get tutorialExtensionsTip3 =>
      'Connect accounts when required and keep extensions up to date';

  @override
  String get tutorialSettingsTitle => 'Passe deine Benutzererfahrung an';

  @override
  String get tutorialSettingsDesc =>
      'Fine-tune downloads, playback, Library behavior, appearance, and storage.';

  @override
  String get tutorialSettingsTip1 =>
      'Download-Ordner und Ordner-Organisation ändern';

  @override
  String get tutorialSettingsTip2 =>
      'Set quality, concurrency, filenames, and conversion preferences';

  @override
  String get tutorialSettingsTip3 => 'App-Design und Aussehen anpassen';

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
  String get libraryForceFullScan => 'Vollen Neu-Scan erzwingen';

  @override
  String get libraryForceFullScanSubtitle =>
      'Alle Dateien erneut scannen und Cache ignorieren';

  @override
  String get cleanupOrphanedDownloads => 'Verwaiste Downloads bereinigen';

  @override
  String get cleanupOrphanedDownloadsSubtitle =>
      'Verlaufseinträge für Dateien löschen, die nicht mehr existieren';

  @override
  String cleanupOrphanedDownloadsResult(int count) {
    return 'Entfernte $count verwaiste Einträge aus dem Verlauf';
  }

  @override
  String get cleanupOrphanedDownloadsNone =>
      'Keine verwaisten Einträge gefunden';

  @override
  String get cacheTitle => 'Speicher & Cache';

  @override
  String get cacheSummaryTitle => 'Cache-Übersicht';

  @override
  String get cacheSummarySubtitle =>
      'Das Leeren des Caches entfernt nicht heruntergeladene Musikdateien.';

  @override
  String cacheEstimatedTotal(String size) {
    return 'Geschätzte Cache-Größe: $size';
  }

  @override
  String get cacheSectionStorage => 'Zwischengespeicherte Daten';

  @override
  String get cacheSectionMaintenance => 'Wartung';

  @override
  String get cacheAppDirectory => 'App-Cache Ordner';

  @override
  String get cacheAppDirectoryDesc =>
      'HTTP-Antworten, WebView Daten und andere temporäre App-Daten.';

  @override
  String get cacheTempDirectory => 'Temporärer Ordner';

  @override
  String get cacheTempDirectoryDesc =>
      'Temporäre Dateien von Downloads und Audio-Konvertierung.';

  @override
  String get cacheCoverImage => 'Cover-Cache';

  @override
  String get cacheCoverImageDesc =>
      'Album- und Titelcover heruntergeladen. Werden erneut heruntergeladen.';

  @override
  String get cacheLibraryCover => 'Bibliotheks-Cover-Cache';

  @override
  String get cacheLibraryCoverDesc =>
      'Cover aus lokalen Musikdateien extrahiert. Wird beim nächsten Scannen neu extrahiert.';

  @override
  String get libraryPlaybackNormalization => 'Volume normalization';

  @override
  String get libraryPlaybackNormalizationSubtitle =>
      'Even out loudness between tracks using their ReplayGain or R128 tags, when present';

  @override
  String get playbackNormalizationMode => 'Gain mode';

  @override
  String get playbackNormalizationModeTrack => 'Titel';

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
  String get cacheExploreFeed => 'Feed-Cache entdecken';

  @override
  String get cacheExploreFeedDesc =>
      'Startseiten-Inhalt (neue Releases, Trends). Wird bei einem Neustart aktualisiert.';

  @override
  String get cacheTrackLookup => 'Titel Such-Cache';

  @override
  String get cacheTrackLookupDesc =>
      'Spotify/Deezer Track-ID-Lookups. Das Löschen kann die nächsten Suchergebnisse verlangsamen.';

  @override
  String get cacheCleanupUnusedDesc =>
      'Verwaisten Downloadverlauf und Bibliothekseinträge für fehlende Dateien entfernen.';

  @override
  String get cacheNoData => 'Keine gecachten Daten';

  @override
  String cacheSizeWithFiles(String size, int count) {
    return '$size in $count Dateien';
  }

  @override
  String cacheSizeOnly(String size) {
    return '$size';
  }

  @override
  String cacheEntries(int count) {
    return '$count Einträge';
  }

  @override
  String cacheClearSuccess(String target) {
    return 'Entfernt: $target';
  }

  @override
  String get cacheClearConfirmTitle => 'Cache leeren?';

  @override
  String cacheClearConfirmMessage(String target) {
    return 'Dies löscht zwischengespeicherte Daten in $target. Die Musikdateien werden nicht gelöscht.';
  }

  @override
  String get cacheClearAllConfirmTitle => 'Gesamten Cache leeren?';

  @override
  String get cacheClearAllConfirmMessage =>
      'Dadurch werden alle Cache-Kategorien auf dieser Seite gelöscht. Heruntergeladene Musikdateien werden nicht gelöscht.';

  @override
  String get cacheClearAll => 'Gesamten Cache leeren';

  @override
  String get cacheCleanupUnused => 'Unbenutzte Daten bereinigen';

  @override
  String get cacheCleanupUnusedSubtitle =>
      'Verwaisten Downloadverlauf und fehlende Bibliothekseinträge löschen';

  @override
  String cacheCleanupResult(int downloadCount, int libraryCount) {
    return 'Bereinigung: $downloadCount verwaiste Downloads, $libraryCount fehlende Bibliothekseinträge';
  }

  @override
  String get cacheRefreshStats => 'Statistik aktualisieren';

  @override
  String get trackSaveCoverArt => 'Cover speichern';

  @override
  String get trackSaveLyrics => 'Lyrics als .lrc speichern';

  @override
  String get trackSaveLyricsProgress => 'Speichere Lyrics...';

  @override
  String get trackReEnrich => 'Neu-anreichern';

  @override
  String get trackReEnrichBatchSubtitle =>
      'Choose an online or manual update, then review every change before writing';

  @override
  String get trackReEnrichFieldCover => 'Cover-Art';

  @override
  String get trackReEnrichFieldLyrics => 'Lyrics';

  @override
  String get trackReEnrichFieldBasicTags => 'Album, Album-Künstler';

  @override
  String get trackReEnrichFieldTrackInfo => 'Track & Disc Nummer';

  @override
  String get trackReEnrichFieldReleaseInfo => 'Datum & ISRC';

  @override
  String get trackReEnrichFieldExtra => 'Genre, Label, Copyright';

  @override
  String get trackReEnrichSelectAll => 'Alles Auswählen';

  @override
  String get trackReEnrichModeIsrc => 'Nur ISRC';

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
  String get trackReEnrichApplyChanges => 'Änderungen anwenden';

  @override
  String get trackReEnrichRefreshOnline => 'Refresh from online';

  @override
  String get trackEditMetadata => 'Metadaten bearbeiten';

  @override
  String trackCoverSaved(String fileName) {
    return 'Cover in $fileName gespeichert';
  }

  @override
  String get trackCoverNoSource => 'Keine Cover Quelle vorhanden';

  @override
  String trackLyricsSaved(String fileName) {
    return 'Lyrics in $fileName gespeichert';
  }

  @override
  String get trackReEnrichProgress => 'Metadaten neu anreichern...';

  @override
  String get trackReEnrichSearching => 'Suche Metadaten online...';

  @override
  String get trackReEnrichPreparing => 'Preparing metadata changes...';

  @override
  String get trackReEnrichSuccess => 'Metadaten erfolgreich neu angereichert';

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
  String get trackReEnrichFfmpegFailed =>
      'FFmpeg Metadaten-Einbettung fehlgeschlagen';

  @override
  String get queueFlacAction => 'Warteschlange FLAC';

  @override
  String queueFlacConfirmMessage(int count) {
    return 'Suche Online-Matches für ausgewählte Titel und Playlists für FLAC-Downloads.\n\nVorhandene Dateien werden weder geändert noch gelöscht.\n\nNur eindeutige Treffer werden automatisch zur Warteschlange hinzugefügt.\n\n$count ausgewählt';
  }

  @override
  String get queueFlacNoReliableMatches =>
      'Keine zuverlässigen Online-Übereinstimmungen für die Auswahl gefunden';

  @override
  String queueFlacQueuedWithSkipped(int addedCount, int skippedCount) {
    return '$addedCount Titel zur Warteschlange hinzugefügt, $skippedCount übersprungen';
  }

  @override
  String trackSaveFailed(String error) {
    return 'Fehler: $error';
  }

  @override
  String get trackConvertFormat => 'Format konvertieren';

  @override
  String get trackConvertTitle => 'Audio konvertieren';

  @override
  String get trackConvertTargetFormat => 'Zielformat';

  @override
  String get trackConvertBitrate => 'Bitrate';

  @override
  String get trackConvertKeepOriginal => 'Keep original file';

  @override
  String get trackConvertKeepOriginalDescription =>
      'Add the converted file as a separate library entry';

  @override
  String get trackConvertConfirmTitle => 'Konvertierung bestätigen';

  @override
  String trackConvertConfirmMessage(
    String sourceFormat,
    String targetFormat,
    String bitrate,
  ) {
    return 'Konvertieren von $sourceFormat in $targetFormat bei $bitrate?\n\nDie Originaldatei wird nach der Konvertierung gelöscht.';
  }

  @override
  String trackConvertConfirmMessageLossless(
    String sourceFormat,
    String targetFormat,
  ) {
    return 'Konvertieren von $sourceFormat in $targetFormat? (kein Qualitätsverlust)\n\nDie Originaldatei wird nach der Konvertierung gelöscht.';
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
      'Verlustfreie Konvertierung kein Qualitätsverlust';

  @override
  String get trackConvertConverting => 'Konvertiere Audio...';

  @override
  String trackConvertSuccess(String format) {
    return 'Konvertiert in $format erfolgreich';
  }

  @override
  String get trackConvertFailed => 'Konvertierung fehlgeschlagen';

  @override
  String get cueSplitTitle => 'CUE-Sheet aufteilen';

  @override
  String cueSplitAlbum(String album) {
    return 'Album: $album';
  }

  @override
  String cueSplitArtist(String artist) {
    return 'Künstler: $artist';
  }

  @override
  String cueSplitTrackCount(int count) {
    return '$count Titel';
  }

  @override
  String get cueSplitConfirmTitle => 'CUE-Album aufteilen';

  @override
  String cueSplitConfirmMessage(String album, int count) {
    return 'Soll „$album“ in $count einzelne FLAC-Dateien aufgeteilt werden?\n\nDie Dateien werden im selben Ordner gespeichert.';
  }

  @override
  String cueSplitSplitting(int current, int total) {
    return 'CUE-Sheet wird geteilt... ($current/$total)';
  }

  @override
  String cueSplitSuccess(int count) {
    return '$count Titel erfolgreich aufgeteilt';
  }

  @override
  String get cueSplitFailed => 'CUE-Aufteilung fehlgeschlagen';

  @override
  String get cueSplitNoAudioFile =>
      'Audiodatei für dieses CUE-Sheet nicht gefunden';

  @override
  String get cueSplitButton => 'In Titel aufteilen';

  @override
  String get actionCreate => 'Erstellen';

  @override
  String get collectionFoldersTitle => 'Meine Ordner';

  @override
  String get collectionWishlist => 'Wunschliste';

  @override
  String get collectionLoved => 'Lieblingssongs';

  @override
  String get collectionFavoriteArtists => 'Lieblingskünstler';

  @override
  String get collectionPlaylist => 'Playlist';

  @override
  String get collectionAddToPlaylist => 'Zur Playlist hinzufügen';

  @override
  String get collectionCreatePlaylist => 'Playlist erstellen';

  @override
  String get collectionNoPlaylistsYet => 'Noch keine Playlists';

  @override
  String collectionPlaylistTracks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Titel',
      one: '1 Titel',
    );
    return '$_temp0';
  }

  @override
  String collectionArtistCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Künstler',
      one: '1 Künstler',
    );
    return '$_temp0';
  }

  @override
  String collectionAddedToPlaylist(String playlistName) {
    return 'Zu \"$playlistName \" hinzugefügt';
  }

  @override
  String collectionAlreadyInPlaylist(String playlistName) {
    return 'Bereits in \"$playlistName\"';
  }

  @override
  String get collectionPlaylistNameHint => 'Playlist-Name';

  @override
  String get collectionPlaylistNameRequired => 'Playlist-Name ist erforderlich';

  @override
  String get collectionRenamePlaylist => 'Playlist umbenennen';

  @override
  String get collectionDeletePlaylist => 'Playlist löschen';

  @override
  String get collectionPlaylistRenamed => 'Playlist umbenannt';

  @override
  String get collectionWishlistEmptyTitle => 'Wunschliste ist leer';

  @override
  String get collectionWishlistEmptySubtitle =>
      'Tippe auf das + bei den Titeln, um sie zum späteren Herunterladen zu speichern';

  @override
  String get collectionLovedEmptyTitle => 'Lieblingssongs sind leer';

  @override
  String get collectionLovedEmptySubtitle =>
      'Tippe auf das Herz, um deine Favoriten zu behalten';

  @override
  String get collectionFavoriteArtistsEmptyTitle =>
      'Noch keine Lieblingskünstler';

  @override
  String get collectionFavoriteArtistsEmptySubtitle =>
      'Tippe auf das Herz auf einer Künstlerseite, um sie hier zu sehen';

  @override
  String get collectionPlaylistEmptyTitle => 'Die Playlist ist leer';

  @override
  String get collectionPlaylistEmptySubtitle =>
      'Drücke lange + auf einem beliebigen Titel, um ihn hier hinzuzufügen';

  @override
  String get collectionRemoveFromPlaylist => 'Von Playlist entfernen';

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
  String get collectionRemoveFromFolder => 'Aus Ordner entfernen';

  @override
  String collectionAddedToLoved(String trackName) {
    return '\"$trackName\" zu Lieblingssongs hinzugefügt';
  }

  @override
  String collectionRemovedFromLoved(String trackName) {
    return '\"$trackName\" aus Lieblingssongs entfernt';
  }

  @override
  String collectionAddedToWishlist(String trackName) {
    return '\"$trackName\" zur Wunschliste hinzugefügt';
  }

  @override
  String collectionRemovedFromWishlist(String trackName) {
    return '\"$trackName\" aus der Wunschliste entfernt';
  }

  @override
  String collectionAddedToFavoriteArtists(String artistName) {
    return '\"$artistName\" zu Lieblingskünstlern hinzugefügt';
  }

  @override
  String collectionRemovedFromFavoriteArtists(String artistName) {
    return '\"$artistName\" entfernt aus Lieblingskünstlern';
  }

  @override
  String get trackOptionAddToLoved => 'Zu Lieblingssongs hinzufügen';

  @override
  String get trackOptionRemoveFromLoved => 'Aus Lieblingssongs entfernt';

  @override
  String get trackOptionAddToWishlist => 'Zur Wunschliste hinzufügen';

  @override
  String get trackOptionRemoveFromWishlist => 'Von der Wunschliste entfernen';

  @override
  String get artistOptionAddToFavorites => 'Zu Favoriten hinzufügen';

  @override
  String get artistOptionRemoveFromFavorites => 'Aus Favoriten entfernen';

  @override
  String get collectionPlaylistChangeCover => 'Coverbild ändern';

  @override
  String get collectionPlaylistRemoveCover => 'Cover entfernen';

  @override
  String selectionConvertCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Titel',
      one: 'Titel',
    );
    return 'Konvertiere $count $_temp0';
  }

  @override
  String get selectionConvertNoConvertible =>
      'Keine konvertierbare Titel ausgewählt';

  @override
  String get selectionBatchConvertConfirmTitle => 'Batch-Konvertierung';

  @override
  String selectionBatchConvertConfirmMessage(
    int count,
    String format,
    String bitrate,
  ) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Titel',
      one: 'Titel',
    );
    return 'Konvertiere $count $format $_temp0 zu $bitrate?\n\nOriginaldateien werden nach der Konvertierung gelöscht.';
  }

  @override
  String selectionBatchConvertConfirmMessageLossless(int count, String format) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Titel',
      one: 'Titel',
    );
    return 'Konvertiere $count $_temp0 in $format? (kein Qualitätsverlust)\n\nOriginaldateien werden nach der Konvertierung gelöscht.';
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
    return '$success von $total Titeln in $format konvertiert';
  }

  @override
  String downloadedAlbumDownloadedCount(int count) {
    return '$count heruntergeladen';
  }

  @override
  String get downloadUseAlbumArtistForFoldersAlbumSubtitle =>
      'Ordner benannt nach dem Tag des Albumkünstlers';

  @override
  String get downloadUseAlbumArtistForFoldersTrackSubtitle =>
      'Ordner benannt nach dem Tag des Künstlers';

  @override
  String get lyricsProvidersTitle => 'Priorität des Lyrics-Anbieters';

  @override
  String get lyricsProvidersDescription =>
      'Lyrics aktivieren, deaktivieren und neu ordnen. Anbieter werden von oben nach unten ausprobiert, bis Lyrics gefunden werden.';

  @override
  String get lyricsProvidersInfoText =>
      'Extension lyrics providers run before built-in lyrics providers. At least one provider must remain enabled.';

  @override
  String lyricsProvidersEnabledSection(int count) {
    return '($count) aktiviert';
  }

  @override
  String lyricsProvidersDisabledSection(int count) {
    return '($count) deaktiviert';
  }

  @override
  String get lyricsProvidersAtLeastOne =>
      'Mindestens ein Anbieter muss aktiviert bleiben';

  @override
  String get lyricsProvidersSaved =>
      'Priorität des Lyrics-Anbieters gespeichert';

  @override
  String get lyricsProvidersDiscardContent =>
      'Ungespeicherte Änderungen die verloren gehen.';

  @override
  String get lyricsProviderLrclibDesc =>
      'Open-Source-Synchronisierte Lyrics-Datenbank';

  @override
  String get lyricsProviderNeteaseDesc =>
      'NetEase Cloud Music (gut für asiatische Lieder)';

  @override
  String get lyricsProviderMusixmatchDesc =>
      'Größte Lyrics-Datenbank (mehrsprachig)';

  @override
  String get lyricsProviderAppleMusicDesc =>
      'Wort-für-Wort-synchronisierte Lyrics (via Proxy)';

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
  String get lyricsProviderExtensionDesc => 'Erweiterungsanbieter';

  @override
  String get safMigrationTitle => 'Speicheraktualisierung erforderlich';

  @override
  String get safMigrationMessage1 =>
      'Toadplayer verwendet jetzt Android Storage Access Framework (SAF) beim Herunterladen. Dies behebt Fehler bei Android 10+.';

  @override
  String get safMigrationMessage2 =>
      'Bitte wähle dein Download-Ordner erneut aus, um zum neuen System zu wechseln.';

  @override
  String get safMigrationSuccess =>
      'Download-Ordner auf SAF-Modus aktualisiert';

  @override
  String get settingsDonate => 'Unterstütze die Entwicklung';

  @override
  String get settingsDonateSubtitle => 'Kaufe dem Entwickler einen Kaffee';

  @override
  String get settingsBackup => 'Backup & Restore';

  @override
  String get settingsBackupSubtitle =>
      'Move your library, history and settings to a new device';

  @override
  String get backupTitle => 'Backup & Restore';

  @override
  String get backupExportSectionTitle => 'Backup erstellen';

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
  String get backupRestoreConfirmButton => 'Wiederherstellen';

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
  String get backupSettingsOnly => 'Nur Einstellungen';

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
  String get backupContentsSettings => 'Appeinstellungen';

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
      other: '$count Playlists',
      one: '1 Playlist',
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
  String get tooltipLoveAll => 'Alle lieben';

  @override
  String get tooltipAddToPlaylist => 'Zur Wiedergabeliste hinzufügen';

  @override
  String snackbarRemovedTracksFromLoved(int count) {
    return '$count Titel von geliebt entfernt';
  }

  @override
  String snackbarAddedTracksToLoved(int count) {
    return '$count titel zu geliebt hinzugefügt';
  }

  @override
  String get dialogDownloadAllTitle => 'Alle Herunterladen';

  @override
  String dialogDownloadAllMessage(int count) {
    return '$count titel herunterladen?';
  }

  @override
  String get homeSkipAlreadyDownloaded =>
      'Bereits heruntergeladene Titel überspringen';

  @override
  String get homeGoToAlbum => 'Zum Album gehen';

  @override
  String get homeAlbumInfoUnavailable => 'Albuminfo nicht verfügbar';

  @override
  String get snackbarLoadingCueSheet => 'CAE-Sheet wird geladen...';

  @override
  String get snackbarMetadataSaved => 'Metadaten erfolgreich gespeichert';

  @override
  String get snackbarFailedToEmbedLyrics => 'Fehler beim Einbinden der Lyrics';

  @override
  String get snackbarFailedToWriteStorage =>
      'Fehler beim Zurückschreiben in den Speicher';

  @override
  String snackbarError(String error) {
    return 'Fehler: $error';
  }

  @override
  String get snackbarNoActionDefined => 'Keine Aktion für Taste definiert';

  @override
  String get noTracksFoundForAlbum => 'Keine Titel in diesem Album gefunden';

  @override
  String get downloadLocationSubtitle =>
      'Wählen Sie den Speicherort für Ihre heruntergeladenen Titel';

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
    return 'Verwende $artist, $title, $album, $track, $year, $date, $disc als Platzhalter.';
  }

  @override
  String get downloadFilenameInsertTag => 'Tippe, um Tag einzufügen:';

  @override
  String get downloadSeparateSinglesEnabled =>
      'Singles und EPs werden in einem separaten Ordner gespeichert';

  @override
  String get downloadSeparateSinglesDisabled =>
      'Singles und Alben im selben Ordner gespeichert';

  @override
  String get downloadArtistNameFilters => 'Künstlernamen-Filter';

  @override
  String get downloadCreatePlaylistSourceFolder => 'Playlist-Quellordner';

  @override
  String get downloadCreatePlaylistSourceFolderEnabled =>
      'Für jede Playlist wird ein Unterordner erstellt';

  @override
  String get downloadCreatePlaylistSourceFolderDisabled =>
      'Alle Titel direkt im Download-Ordner gespeichert';

  @override
  String get downloadCreatePlaylistSourceFolderRedundant =>
      'Wird durch die Ordnerorganisationseinstellung verarbeitet';

  @override
  String get downloadSongLinkRegion => 'SongLink-Region';

  @override
  String get downloadNetworkCompatibilityMode => 'Netzwerkkompatibilitätsmodus';

  @override
  String get downloadNetworkCompatibilityModeEnabled =>
      'Allowing legacy HTTP endpoints; TLS verification remains enabled';

  @override
  String get downloadNetworkCompatibilityModeDisabled =>
      'Standard-Netzwerkeinstellungen verwenden';

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
  String get downloadEmbedLyricsDisabled =>
      'Metadaten-Einbettung zuerst aktivieren';

  @override
  String get downloadNeteaseIncludeTranslation =>
      'Netease: Übersetzung einschließen';

  @override
  String get downloadNeteaseIncludeTranslationEnabled =>
      'Chinesische Übersetzungszeilen enthalten';

  @override
  String get downloadNeteaseIncludeTranslationDisabled =>
      'Original Lyrics verwenden';

  @override
  String get downloadNeteaseIncludeRomanization =>
      'Netease: Romanisierung einschließen';

  @override
  String get downloadNeteaseIncludeRomanizationEnabled =>
      'Romanisierungszeilen enthalten';

  @override
  String get downloadNeteaseIncludeRomanizationDisabled =>
      'Keine Romanisierung';

  @override
  String get downloadAppleQqMultiPerson => 'Apple / QQ: Multi-Personen-Lyrics';

  @override
  String get downloadAppleQqMultiPersonEnabled =>
      'Sängerlabel für Duette und Gruppentitel enthalten';

  @override
  String get downloadAppleQqMultiPersonDisabled =>
      'Standardlyrics ohne Lautsprecher-Labels';

  @override
  String get downloadAppleElrcWordSync => 'Apple Music eLRC Word Sync';

  @override
  String get downloadAppleElrcWordSyncEnabled => 'Rohe Zeitstempel erhalten';

  @override
  String get downloadAppleElrcWordSyncDisabled =>
      'Sichere Line-by-line Apple Music Texte';

  @override
  String get downloadMusixmatchLanguage => 'Musixmatch Sprache';

  @override
  String get downloadMusixmatchLanguageAuto => 'Auto (Originalsprache)';

  @override
  String get downloadFilterContributing => 'Mitwirkende Künstler filtern';

  @override
  String get downloadFilterContributingEnabled =>
      'Mitwirkende Künstler vom Albumname des Künstlers entfernt';

  @override
  String get downloadFilterContributingDisabled =>
      'Volle Album Künstler String verwendet';

  @override
  String get downloadProvidersNoneEnabled => 'Keine Anbieter aktiviert';

  @override
  String get downloadMusixmatchLanguageCode => 'Sprach-Code';

  @override
  String get downloadMusixmatchLanguageHint => 'z.B. en, de, ja';

  @override
  String get downloadMusixmatchLanguageDesc =>
      'Gib einen BCP-47 Sprachcode ein (z.B. en, de, ja), um übersetzte Lyrics von Musixmatch anzufordern.';

  @override
  String get downloadMusixmatchAuto => 'Auto';

  @override
  String get downloadNetworkAnySubtitle => 'WLAN oder mobile Daten verwenden';

  @override
  String get downloadNetworkWifiOnlySubtitle =>
      'Downloads bei mobilen Daten pausieren';

  @override
  String get downloadSongLinkRegionDesc =>
      'Region, die beim Auflösen von Titellinks über SongLink verwendet wird. Wähle das Land, in dem der Streaming-Dienste verfügbar sind.';

  @override
  String get snackbarUnsupportedAudioFormat =>
      'Nicht unterstütztes Audioformat';

  @override
  String get cacheRefresh => 'Aktualisieren';

  @override
  String dialogDownloadPlaylistsMessage(int trackCount, int playlistCount) {
    String _temp0 = intl.Intl.pluralLogic(
      trackCount,
      locale: localeName,
      other: 'Titel',
      one: 'Titel',
    );
    String _temp1 = intl.Intl.pluralLogic(
      playlistCount,
      locale: localeName,
      other: 'Playlists',
      one: 'Playlist',
    );
    return 'Lade $trackCount $_temp0 von $playlistCount $_temp1?';
  }

  @override
  String bulkDownloadPlaylistsButton(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Playlists',
      one: 'Playlist',
    );
    return 'Lade $count $_temp0 herunter';
  }

  @override
  String get bulkDownloadSelectPlaylists => 'Playlist zum Herunterladen wählen';

  @override
  String get snackbarSelectedPlaylistsEmpty =>
      'Ausgewählte Playlisten haben keine Titel';

  @override
  String playlistsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Playlists',
      one: '1 Playlist',
    );
    return '$_temp0';
  }

  @override
  String get editMetadataAutoFill => 'Aus online ausfüllen';

  @override
  String get editMetadataAutoFillDesc =>
      'Choose a metadata extension, select fields, then review its data before applying';

  @override
  String get editMetadataAutoFillSource => 'Metadatenquelle';

  @override
  String get editMetadataAutoFillSourceAutomatic =>
      'Automatic (provider priority)';

  @override
  String get editMetadataAutoFillFind => 'Metadaten finden';

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
  String get editMetadataAutoFillSearching => 'Online suchen...';

  @override
  String get editMetadataAutoFillNoResults =>
      'Keine passenden Metadaten online gefunden';

  @override
  String get editMetadataAutoFillNoneSelected =>
      'Wähle mindestens ein Feld zum automatischen Ausfüllen aus';

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
  String get editMetadataFieldTitle => 'Titel';

  @override
  String get editMetadataFieldArtist => 'Künstler';

  @override
  String get editMetadataFieldAlbum => 'Album';

  @override
  String get editMetadataFieldAlbumArtist => 'Album Künstler';

  @override
  String get editMetadataFieldDate => 'Datum';

  @override
  String get editMetadataFieldTrackNum => 'Titel #';

  @override
  String get editMetadataFieldDiscNum => 'Disk #';

  @override
  String get editMetadataFieldGenre => 'Genre';

  @override
  String get editMetadataFieldIsrc => 'ISRC';

  @override
  String get editMetadataFieldLabel => 'Label';

  @override
  String get editMetadataFieldCopyright => 'Urheberrecht';

  @override
  String get editMetadataFieldCover => 'Cover-Art';

  @override
  String get editMetadataSelectAll => 'Alle';

  @override
  String get editMetadataSelectEmpty => 'Nur leer';

  @override
  String queueDownloadingCount(int count) {
    return '$count werden heruntergeladen';
  }

  @override
  String get queueFilteringIndicator => 'Filtere...';

  @override
  String queueTrackCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Titel',
      one: '1 Titel',
    );
    return '$_temp0';
  }

  @override
  String queueAlbumCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Alben',
      one: '1 Album',
    );
    return '$_temp0';
  }

  @override
  String get queueEmptyAlbums => 'Keine Album-Downloads';

  @override
  String get queueEmptyAlbumsSubtitle =>
      'Lade mehrere Titel eines Albums herunter, um sie hier zu sehen';

  @override
  String get queueEmptySingles => 'Kein Single Download';

  @override
  String get queueEmptySinglesSubtitle =>
      'Einzelne Titel-Downloads werden hier angezeigt';

  @override
  String queuePlaylistCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Playlists',
      one: '1 Playlist',
    );
    return '$_temp0';
  }

  @override
  String get queueEmptyPlaylistsSubtitle =>
      'Create a playlist to organize your tracks';

  @override
  String get libraryDefaultView => 'Standardansicht';

  @override
  String get libraryDefaultViewLastUsed => 'Zuletzt verwendet';

  @override
  String get queueEmptyHistory => 'Kein Download-Verlauf';

  @override
  String get queueEmptyHistorySubtitle =>
      'Heruntergeladene Titel werden hier angezeigt';

  @override
  String get selectionAllPlaylistsSelected => 'Alle Playlists ausgewählt';

  @override
  String get selectionTapPlaylistsToSelect =>
      'Zum Auswählen auf Playlists tippen';

  @override
  String get selectionSelectPlaylistsToDelete => 'Playlist zum Löschen wählen';

  @override
  String get audioAnalysisTitle => 'Audio-Qualitätsanalyse';

  @override
  String get audioAnalysisDescription =>
      'Verlustfreie Qualität mit Spektrumanalyse überprüfen';

  @override
  String get audioAnalysisAnalyzing => 'Audio wird analysiert...';

  @override
  String get audioAnalysisSampleRate => 'Abtastrate';

  @override
  String get audioAnalysisCodec => 'Codec';

  @override
  String get audioAnalysisContainer => 'Container';

  @override
  String get audioAnalysisDecodedFormat => 'Dekodiertes Format';

  @override
  String get audioAnalysisBitDepth => 'Bit-Tiefe';

  @override
  String get audioAnalysisChannels => 'Kanäle';

  @override
  String get audioAnalysisDuration => 'Länge';

  @override
  String get audioAnalysisNyquist => 'Nyquist';

  @override
  String get audioAnalysisFileSize => 'Größe';

  @override
  String get audioAnalysisDynamicRange => 'Dynamischer Bereich';

  @override
  String get audioAnalysisPeak => 'Maximum';

  @override
  String get audioAnalysisRms => 'RMS';

  @override
  String get audioAnalysisLufs => 'LUFS';

  @override
  String get audioAnalysisTruePeak => 'True Peak';

  @override
  String get audioAnalysisClipping => 'Clipping';

  @override
  String get audioAnalysisNoClipping => 'Kein Clipping';

  @override
  String get audioAnalysisSpectralCutoff => 'Spektralschnitt';

  @override
  String get audioAnalysisCutoffNotDetected => 'Nicht erkannt';

  @override
  String get audioAnalysisChannelStats => 'Pro Kanal Statistik';

  @override
  String get audioAnalysisSamples => 'Proben';

  @override
  String get audioAnalysisRescan => 'Neu analysieren';

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
  String get hiResCheckRun => 'Überprüfen';

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
  String get audioAnalysisRescanning => 'Audio wird analysiert...';

  @override
  String get extensionsHomeFeedProvider => 'Home Feed Anbieter';

  @override
  String get extensionsHomeFeedCountry => 'Home feed country';

  @override
  String get extensionsHomeFeedCountryDescription =>
      'Choose a country\'s Home recommendations without a VPN.';

  @override
  String get extensionsHomeFeedDescription =>
      'Wählen Sie die Erweiterung aus, die den Start-Feed auf dem Hauptbildschirm anzeigt';

  @override
  String get extensionsHomeFeedAuto => 'Auto';

  @override
  String get extensionsHomeFeedAutoSubtitle =>
      'Automatisch die besten verfügbaren auswählen';

  @override
  String get extensionsHomeFeedOff => 'Aus';

  @override
  String get extensionsHomeFeedOffSubtitle =>
      'Start-Feed nicht auf dem Hauptbildschirm anzeigen';

  @override
  String extensionsHomeFeedUse(String extensionName) {
    return '$extensionName Home Feed verwenden';
  }

  @override
  String get extensionsNoHomeFeedExtensions =>
      'Keine Erweiterungen mit Home-Feed';

  @override
  String get cancelDownloadTitle => 'Download abbrechen?';

  @override
  String cancelDownloadContent(String trackName) {
    return 'Dadurch wird der aktive Download für \"$trackName\" abgebrochen.';
  }

  @override
  String get cancelDownloadKeep => 'Behalten';

  @override
  String get queueCancelledTitle => 'Download cancelled';

  @override
  String get queueCancelledMessage =>
      'This download was cancelled. Retry it or remove it from the queue.';

  @override
  String get metadataSaveFailedFfmpeg =>
      'Fehler beim Speichern der Metadaten über FFmpeg';

  @override
  String get metadataSaveFailedStorage =>
      'Metadaten konnten nicht zurück in den Speicher geschrieben werden';

  @override
  String snackbarFolderPickerFailed(String error) {
    return 'Fehler beim Öffnen des Ordners: $error';
  }

  @override
  String notifDownloadingTrack(String trackName) {
    return '$trackName wird heruntergeladen';
  }

  @override
  String notifFinalizingTrack(String trackName) {
    return '$trackName wird fertiggestellt';
  }

  @override
  String get notifEmbeddingMetadata => 'Bette Metadaten ein...';

  @override
  String notifAlreadyInLibraryCount(int completed, int total) {
    return 'Bereits in der Bibliothek ($completed/$total)';
  }

  @override
  String get notifAlreadyInLibrary => 'Bereits in der Bibliothek';

  @override
  String notifDownloadCompleteCount(int completed, int total) {
    return 'Download abgeschlossen ($completed/$total)';
  }

  @override
  String get notifDownloadComplete => 'Download abgeschlossen';

  @override
  String notifDownloadsFinished(int completed, int failed) {
    return 'Downloads abgeschlossen ($completed fertig, $failed fehlgeschlagen)';
  }

  @override
  String get notifVerificationRequiredTitle => 'Verification required';

  @override
  String get notifVerificationRequiredBody =>
      'Open the app to complete verification and resume downloads';

  @override
  String get notifAllDownloadsComplete => 'Alle Downloads abgeschlossen';

  @override
  String notifTracksDownloadedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Titel erfolgreich heruntergeladen',
      one: '1 Titel erfolgreich heruntergeladen',
    );
    return '$_temp0';
  }

  @override
  String notifDownloadsFinishedBody(int completed, int failed) {
    String _temp0 = intl.Intl.pluralLogic(
      completed,
      locale: localeName,
      other: '$completed Titel heruntergeladen',
      one: '1 Titel heruntergeladen',
    );
    String _temp1 = intl.Intl.pluralLogic(
      failed,
      locale: localeName,
      other: '$failed fehlgeschlagen',
      one: '1 fehlgeschlagen',
    );
    return '$_temp0, $_temp1';
  }

  @override
  String get notifDownloadsCanceledTitle => 'Downloads abgebrochen';

  @override
  String notifDownloadsCanceledBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Downloads vom Nutzer abgebrochen',
      one: '1 Download vom Nutzer abgebrochen',
    );
    return '$_temp0';
  }

  @override
  String get notifScanningLibrary => 'Scanne lokale Bibliothek';

  @override
  String notifLibraryScanProgressWithTotal(
    int scanned,
    int total,
    int percentage,
  ) {
    return '$scanned/$total Dateien • $percentage%';
  }

  @override
  String notifLibraryScanProgressNoTotal(int scanned) {
    return '$scanned gescannte Dateien';
  }

  @override
  String get notifLibraryScanComplete => 'Bibliotheksscan abgeschlossen';

  @override
  String notifLibraryScanCompleteBody(int count) {
    return '$count titel indiziert';
  }

  @override
  String notifLibraryScanExcluded(int count) {
    return '$count ausgeschlossen';
  }

  @override
  String notifLibraryScanErrors(int count) {
    return '$count Fehler';
  }

  @override
  String get notifLibraryScanFailed => 'Bibliotheksscan fehlgeschlagen';

  @override
  String get notifLibraryScanInterruptedBody =>
      'The previous library scan was interrupted. Scan the folder again to continue. Your indexed tracks are still available.';

  @override
  String get notifLibraryScanCancelled => 'Bibliotheksscan abgebrochen';

  @override
  String get notifLibraryScanStopped => 'Scan wurde vor Abschluss gestoppt.';

  @override
  String get notifLibraryScanPaused => 'Library scan paused';

  @override
  String notifLibraryScanPausedBody(int count) {
    return '$count files scanned. Resume in Local Library settings to continue from here.';
  }

  @override
  String notifDownloadingUpdate(String version) {
    return 'Toadplayer v$version wird heruntergeladen';
  }

  @override
  String notifUpdateProgress(String received, String total, int percentage) {
    return '$received / $total MB • $percentage%';
  }

  @override
  String get notifUpdateReady => 'Update bereit';

  @override
  String notifUpdateReadyBody(String version) {
    return 'Toadplayer v$version heruntergeladen. Zum Installieren tippen.';
  }

  @override
  String get notifUpdateFailed => 'Update fehlgeschlagen';

  @override
  String get notifUpdateFailedBody =>
      'Update konnte nicht heruntergeladen werden. Versuche es später erneut.';

  @override
  String get searchTracks => 'Titel';

  @override
  String get homeSearchHintDefault =>
      'Unterstützte URL einfügen oder suchen...';

  @override
  String homeSearchHintProvider(String providerName) {
    return 'Mit $providerName suchen...';
  }

  @override
  String get homeImportCsvTooltip => 'Import playlist (CSV, M3U)';

  @override
  String get homeChangeSearchProviderTooltip => 'Suchanbieter ändern';

  @override
  String get actionPaste => 'Einfügen';

  @override
  String get tutorialSearchHint => 'Einfügen oder suchen...';

  @override
  String get tutorialDownloadCompletedSemantics => 'Download abgeschlossen';

  @override
  String get tutorialDownloadInProgressSemantics => 'Download wird ausgeführt';

  @override
  String get tutorialStartDownloadSemantics => 'Download starten';

  @override
  String get optionsEmbedMetadata => 'Eingebettete Metadaten';

  @override
  String get optionsEmbedMetadataSubtitleOn =>
      'Schreibe Metadaten, Cover und eingebettete Songtexte in Dateien';

  @override
  String get optionsEmbedMetadataSubtitleOff =>
      'Deaktiviert (erweitert): Metadateneinbettung überspringen';

  @override
  String get trackCoverNoEmbeddedArt =>
      'Kein eingebettetes Albumcover gefunden';

  @override
  String get trackCoverReplace => 'Cover ersetzen';

  @override
  String get trackCoverPick => 'Cover auswählen';

  @override
  String get trackCoverClearSelected => 'Ausgewähltes Cover löschen';

  @override
  String get trackCoverCurrent => 'Aktuelles Cover';

  @override
  String get trackCoverSelected => 'Ausgewähltes Cover';

  @override
  String get trackCoverReplaceNotice =>
      'Das ausgewählte Cover ersetzt das aktuell eingebettete Cover, wenn auf speichern gedrückt wird.';

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
  String get queueFinalizingDownload => 'Download wird abgeschlossen';

  @override
  String get queueDownloadNext => 'Nächstes herunterladen';

  @override
  String get queueMoveUp => 'Nach oben';

  @override
  String get queueMoveDown => 'Nach unten';

  @override
  String get editMetadataMusicBrainzButton => 'Fetch from MusicBrainz';

  @override
  String get editMetadataMusicBrainzFilled => 'Updated from MusicBrainz';

  @override
  String get editMetadataMusicBrainzNothing => 'Nothing found on MusicBrainz';

  @override
  String get editMetadataMusicBrainzNeedsIsrc => 'Requires an ISRC tag';

  @override
  String get nowPlayingRepeatOff => 'Wiederholen deaktivieren';

  @override
  String get nowPlayingRepeatAll => 'Alle wiederholen';

  @override
  String get nowPlayingRepeatOne => '1x wiederholen';

  @override
  String queueNetworkFailedOffline(int count) {
    return '$count downloads failed while offline';
  }

  @override
  String get queueDownloadedFileMissing => 'Heruntergeladene Datei fehlt';

  @override
  String get queueCheckingDownloadedFile => 'Checking downloaded file...';

  @override
  String get queueDownloadCompleted => 'Download abgeschlossen';

  @override
  String get queueRateLimitTitle => 'Service rate limited';

  @override
  String get queueRateLimitMessage =>
      'This track may still be available. Wait a few minutes, reduce parallel downloads, then retry.';

  @override
  String appearanceSelectAccentColor(String hex) {
    return 'Wähle Akzentfarbe $hex';
  }

  @override
  String get logAutoScrollOn => 'Auto-Scrollen AN';

  @override
  String get logAutoScrollOff => 'Auto-Scrollen AUS';

  @override
  String get logCopyLogs => 'Logs kopieren';

  @override
  String get logClearSearch => 'Suche löschen';

  @override
  String get logIssueIspBlockingLabel => 'ISP BLOCKIERUNG ERKANNT';

  @override
  String get logIssueIspBlockingDescription =>
      'Dein ISP blockiert möglicherweise den Zugriff auf den Download Dienst';

  @override
  String get logIssueIspBlockingSuggestion =>
      'Versuche es einem VPN oder ändere DNS auf 1.1.1.1 oder 8.8.8.8';

  @override
  String get logIssueRateLimitedLabel => 'LIMIT ERKANNT';

  @override
  String get logIssueRateLimitedDescription =>
      'Zu viele Anfragen an den Dienst';

  @override
  String get logIssueRateLimitedSuggestion =>
      'Warte ein paar Minuten, bevor du es erneut versuchst';

  @override
  String get logIssueNetworkErrorLabel => 'NETZWERKFEHLER';

  @override
  String get logIssueNetworkErrorDescription => 'Verbindungsprobleme erkannt';

  @override
  String get logIssueNetworkErrorSuggestion =>
      'Überprüfe deine Internetverbindung';

  @override
  String get logIssueTrackNotFoundLabel => 'TITEL NICHT GEFUNDEN';

  @override
  String get logIssueTrackNotFoundDescription =>
      'Einige Titel konnten auf Download-Diensten nicht gefunden werden';

  @override
  String get logIssueTrackNotFoundSuggestion =>
      'Der Titel ist möglicherweise nicht in verlustfreier Qualität verfügbar';

  @override
  String get clickableLookingUpArtist => 'Künstler wird gesucht...';

  @override
  String clickableInformationUnavailable(String type) {
    return '$type Informationen nicht verfügbar';
  }

  @override
  String get extensionDetailsTags => 'Tags';

  @override
  String get extensionDetailsInformation => 'Info';

  @override
  String get extensionUtilityFunctions => 'Hilfsfunktionen';

  @override
  String get actionDismiss => 'Schließen';

  @override
  String get setupChangeFolderTooltip => 'Ordner ändern';

  @override
  String a11yOpenTrackByArtist(String trackName, String artistName) {
    return 'Öffne Track $trackName von $artistName';
  }

  @override
  String a11yOpenItem(String itemType, String name) {
    return '$itemType $name öffnen';
  }

  @override
  String a11yOpenItemCount(String title, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Items',
      one: 'Item',
    );
    return 'Öffne $title, $count $_temp0';
  }

  @override
  String a11yOpenAlbumByArtistTrackCount(
    String albumName,
    String artistName,
    int trackCount,
  ) {
    return 'Öffne Album $albumName von $artistName, $trackCount Titel';
  }

  @override
  String a11yTrackByArtist(String trackName, String artistName) {
    return '$trackName von $artistName';
  }

  @override
  String a11ySelectAlbum(String albumName) {
    return 'Wähle Album $albumName';
  }

  @override
  String a11yOpenAlbum(String albumName) {
    return 'Album öffnen $albumName';
  }

  @override
  String get settingsFiles => 'Dateien & Ordner';

  @override
  String get settingsFilesSubtitle => 'Speicherort, Dateiname, Ordnerstruktur';

  @override
  String get settingsMetadata => 'Metadaten';

  @override
  String get settingsMetadataSubtitle =>
      'Cover Art, Tags, ReplayGain, Anbieter';

  @override
  String get settingsLyrics => 'Lyrics';

  @override
  String get settingsLyricsSubtitle =>
      'Einbetten, Modus, Anbieter, Sprachoptionen';

  @override
  String get settingsApp => 'App';

  @override
  String get settingsAppSubtitle => 'Updates, Daten, Erweiterungsrepo, Debug';

  @override
  String get sectionMetadataProviders => 'Anbieter';

  @override
  String get sectionDuplicates => 'Duplikate';

  @override
  String get sectionLyricsProviderOptions => 'Anbieter-Optionen';

  @override
  String get metadataProvidersTitle => 'Priorität des Metadaten-Anbieters';

  @override
  String get metadataProvidersSubtitle =>
      'Zieh, um Such- und Metadatenquellenreihenfolge zu setzen';

  @override
  String get downloadDeduplication => 'Doppelte Downloads überspringen';

  @override
  String get downloadDeduplicationEnabled =>
      'Bereits heruntergeladene Titel werden übersprungen';

  @override
  String get downloadDeduplicationWithQualityVariants =>
      'Existing files at the selected quality will be skipped';

  @override
  String get downloadDeduplicationDisabled =>
      'Alle Titel werden unabhängig vom Verlauf heruntergeladen';

  @override
  String get downloadQualityVariants => 'Allow different quality versions';

  @override
  String get downloadQualityVariantsDescription =>
      'Keep every quality version; add its measured quality to the filename only when the name is already used';

  @override
  String get trackOptionDownloadQualityVariant => 'Download another quality';

  @override
  String get downloadFallbackExtensions => 'Fallback-Erweiterungen';

  @override
  String get downloadFallbackExtensionsSubtitle =>
      'Wähle, welche Erweiterungen als Fallback verwendet werden können';

  @override
  String get editMetadataFieldDateHint => 'JJJJ-MM-TT oder JJJJJ';

  @override
  String get editMetadataFieldTrackTotal => 'Titel insgesamt';

  @override
  String get editMetadataFieldDiscTotal => 'Disc gesamt';

  @override
  String get editMetadataFieldComposer => 'Komponist';

  @override
  String get editMetadataFieldComment => 'Kommentar';

  @override
  String get trackAlbumType => 'Veröffentlichungstyp';

  @override
  String get editMetadataFieldAlbumTypeHint =>
      'Album, single, EP, compilation...';

  @override
  String get editMetadataFieldExplicit => 'Anstößig';

  @override
  String get editMetadataFieldExplicitHint =>
      'Mark this track as containing explicit content';

  @override
  String get metadataExplicitValue => 'Anstößig';

  @override
  String get editMetadataFieldUpc => 'UPC / Barcode';

  @override
  String get editMetadataFieldUpcHint => 'Numeric UPC, EAN, or GTIN';

  @override
  String get editMetadataAdvanced => 'Erweitert';

  @override
  String get libraryFilterMetadataMissingTrackNumber => 'Fehlende Tracknummer';

  @override
  String get libraryFilterMetadataMissingDiscNumber => 'Fehlende Disc-Nummer';

  @override
  String get libraryFilterMetadataMissingArtist => 'Fehlender Künstler';

  @override
  String get libraryFilterMetadataIncorrectIsrcFormat => 'Falsches ISRC-Format';

  @override
  String get libraryFilterMetadataMissingIsrc => 'Fehlendes ISRC';

  @override
  String get libraryFilterMetadataMissingLabel => 'Label fehlt';

  @override
  String collectionDeletePlaylistsMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Playlists',
      one: 'Playlist',
    );
    return 'Lösche $count $_temp0?';
  }

  @override
  String collectionPlaylistsDeleted(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Playlists',
      one: 'Playlist',
    );
    return '$count $_temp0 gelöscht';
  }

  @override
  String collectionAddedTracksToPlaylist(int count, String playlistName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Titel',
      one: 'Titel',
    );
    return '$count $_temp0 zu $playlistName hinzugefügt';
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
      other: 'Titel',
      one: 'Titel',
    );
    return '$count $_temp0 zu $playlistName ($alreadyCount bereits in der Playlist)';
  }

  @override
  String itemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sachen',
      one: 'Sache',
    );
    return '$count $_temp0';
  }

  @override
  String trackReEnrichSuccessWithFailures(
    int successCount,
    int total,
    int failedCount,
  ) {
    return 'Metadaten erfolgreich neu angereichert ($successCount/$total) - fehlgeschlagen: $failedCount';
  }

  @override
  String selectionDeleteTracksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Titel',
      one: 'Titel',
    );
    return 'Lösche $count $_temp0';
  }

  @override
  String queueDownloadSpeedStatus(String speed) {
    return 'Herunterladen - $speed MB/s';
  }

  @override
  String get queueDownloadStarting => 'Starte...';

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
  String get a11ySelectTrack => 'Titel auswählen';

  @override
  String get a11yDeselectTrack => 'Titel abwählen';

  @override
  String a11yPlayTrackByArtist(String trackName, String artistName) {
    return 'Spiele $trackName von $artistName';
  }

  @override
  String storeExtensionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Erweiterungen',
      one: 'Erweiterung',
    );
    return '$count $_temp0';
  }

  @override
  String storeRequiresVersion(String version) {
    return 'Benötigt v$version+';
  }

  @override
  String get logIssueSummary => 'Problemübersicht';

  @override
  String logTotalErrors(int count) {
    return 'Gesamte Fehler: $count';
  }

  @override
  String logAffectedDomains(String domains) {
    return 'Betroffen: $domains';
  }

  @override
  String get libraryScanCancelled => 'Scan abgebrochen';

  @override
  String get libraryScanCancelledSubtitle =>
      'Du kannst erneut Scannen, wenn er fertig ist.';

  @override
  String libraryDownloadsHistoryExcluded(int count) {
    return '$count aus dem Download-Verlauf (von der Liste ausgeschlossen)';
  }

  @override
  String get downloadNativeWorker => 'Nativer Download Dienst';

  @override
  String get downloadNativeWorkerSubtitle =>
      'Android background service for extension downloads';

  @override
  String get extensionServiceStatus => 'Dienststatus';

  @override
  String get extensionServiceHealth => 'Service-Gesundheit';

  @override
  String extensionHealthChecksConfigured(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Prüfungen',
      one: 'Prüfung',
    );
    return '$count $_temp0 konfiguriert';
  }

  @override
  String get extensionOauthConnectHint =>
      'Tippe auf \"Mit Spotify verbinden\" um dieses Feld auszufüllen.';

  @override
  String extensionLastChecked(String time) {
    return 'Zuletzt geprüft $time';
  }

  @override
  String get extensionRefreshStatus => 'Status aktualisieren';

  @override
  String get extensionCustomUrlHandling => 'Benutzerdefinierte URL-Handling';

  @override
  String get extensionCustomUrlHandlingSubtitle =>
      'Diese Erweiterung kann Links von diesen Seiten benutzen';

  @override
  String get extensionCustomUrlHandlingShareHint =>
      'Teile Links von diesen Seiten mit Toadplayer und diese Erweiterung wird sie verarbeiten.';

  @override
  String extensionSettingsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Einstellungen',
      one: 'Einstellung',
    );
    return '$count $_temp0';
  }

  @override
  String get extensionHealthOnline => 'Online';

  @override
  String get extensionHealthDegraded => 'Eingeschränkt';

  @override
  String get extensionHealthOffline => 'Offline';

  @override
  String get extensionHealthNotConfigured => 'Nicht konfiguriert';

  @override
  String get extensionHealthUnknown => 'Unbekannt';

  @override
  String get extensionHealthRequired => 'benötigt';

  @override
  String get extensionSettingNotSet => 'Nicht eingestellt';

  @override
  String get extensionActionFailed => 'Aktion fehlgeschlagen';

  @override
  String get extensionEnterValue => 'Wert eingeben';

  @override
  String get extensionHealthServiceOnline => 'Dienste online';

  @override
  String get extensionHealthServiceDegraded => 'Dienst Eingeschränkt';

  @override
  String get extensionHealthServiceOffline => 'Dienst offline';

  @override
  String get extensionHealthServiceUnknown => 'Dienst-Status unbekannt';

  @override
  String get audioAnalysisStereo => 'Stereo';

  @override
  String get audioAnalysisMono => 'Mono';

  @override
  String trackOpenInService(String serviceName) {
    return 'Öffne in $serviceName';
  }

  @override
  String get trackLyricsEmbeddedSource => 'Eingebettet';

  @override
  String get unknownAlbum => 'Unbekanntes Album';

  @override
  String get unknownArtist => 'Unbekannter Künstler';

  @override
  String get permissionAudio => 'Audio';

  @override
  String get permissionStorage => 'Speicher';

  @override
  String get permissionNotification => 'Benachrichtigung';

  @override
  String get errorInvalidFolderSelected => 'Ungültiger Ordner ausgewählt';

  @override
  String get storeAnyVersion => 'Alle';

  @override
  String get storeCategoryMetadata => 'Metadaten';

  @override
  String get storeCategoryDownload => 'Herunterladen';

  @override
  String get storeCategoryUtility => 'Hilfsmittel';

  @override
  String get storeCategoryLyrics => 'Lyrics';

  @override
  String get storeCategoryIntegration => 'Integration';

  @override
  String get artistReleases => 'Veröffentlichungen';

  @override
  String get editMetadataSelectNone => 'Keine';

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
  String get shareSheetNotFound => 'Nicht gefunden';

  @override
  String get shareSheetCopyLink => 'Link kopieren';

  @override
  String shareSheetLinkCopied(Object service) {
    return '$service link copied';
  }

  @override
  String get libraryPlayback => 'Wiedergabe';

  @override
  String get libraryExternalPlayer => 'Externer Player';

  @override
  String get libraryExternalPlayerSubtitle =>
      'Recommended for listening, best quality, gapless playback, EQ, and wider format support';

  @override
  String get libraryBuiltInPreviewPlayer => 'Built-in player';

  @override
  String get libraryBuiltInPreviewPlayerSubtitle =>
      'Play your music right inside Toadplayer';

  @override
  String get nowPlayingTitle => 'Jetzt läuft';

  @override
  String get nowPlayingNothingPlaying => 'Nothing is playing';

  @override
  String get nowPlayingMinimize => 'Minimieren';

  @override
  String get nowPlayingUpNext => 'Als Nächstes';

  @override
  String get nowPlayingAudioOutput => 'Audio-Output';

  @override
  String nowPlayingWrittenBy(String writers) {
    return 'Written by: $writers';
  }

  @override
  String nowPlayingLyricsProvider(String provider) {
    return 'Lyrics: $provider';
  }

  @override
  String get concertGetTickets => 'Tickets holen';

  @override
  String get concertSetList => 'Concert Set List';

  @override
  String get concertSetListButton => 'Set List';

  @override
  String get concertAddToCalendar => 'Add to Calendar';

  @override
  String get concertOpenMaps => 'Karte öffnen';

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
  String get nowPlayingNextTrack => 'Nächster Titel';

  @override
  String get nowPlayingDetails => 'Details';

  @override
  String get nowPlayingSleepTimer => 'Schlaf Timer';

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
  String get nowPlayingShuffleOn => 'Shuffle an';

  @override
  String get nowPlayingPlayInOrder => 'In Reihenfolge abspielen';

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
  String get snackbarPlayingNext => 'Als nächstes';

  @override
  String get snackbarAddedToQueueGeneric => 'Added to queue';

  @override
  String selectionDeletePlaylistsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Playlists',
      one: 'Playlist',
    );
    return 'Lösche $count $_temp0';
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
  String get trackConvertLosslessSuffix => 'Verlustfrei';

  @override
  String get trackConvertDithering => 'Dithering';

  @override
  String get trackConvertResampler => 'Resampler';

  @override
  String get trackConvertDitherNone => 'Keine';

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
  String get unknownTitle => 'Unbekannter Titel';

  @override
  String get trackPlayNext => 'Als Nächstes spielen';

  @override
  String get trackAddToQueue => 'Zur Warteschlange hinzufügen';

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
  String get trackCoverOnline => 'Online-Cover';

  @override
  String get regionCountryUS => 'Vereinigte Staaten';

  @override
  String get regionCountryIT => 'Italy';

  @override
  String get regionCountryES => 'Spain';

  @override
  String get regionCountryGB => 'Vereinigtes Königreich';

  @override
  String get regionCountryFR => 'Frankreich';

  @override
  String get regionCountryDE => 'Deutschland';

  @override
  String get regionCountryJP => 'Japan';

  @override
  String get regionCountryKR => 'Südkorea';

  @override
  String get regionCountryIN => 'Indien';

  @override
  String get regionCountryID => 'Indonesien';

  @override
  String get regionCountryBR => 'Brasilien';

  @override
  String get regionCountryMX => 'Mexiko';

  @override
  String get regionCountryAU => 'Australien';

  @override
  String get regionCountryCA => 'Kanada';

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
  String get extensionVerificationBrowserExternal => 'Extern';

  @override
  String get extensionVerificationBrowserInApp => 'In-App';

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
  String get extensionVerificationClose => 'Schließen';

  @override
  String get extensionVerificationCopyLink => 'Link kopieren';

  @override
  String get extensionVerificationPasteCallback => 'Paste callback';

  @override
  String get extensionVerificationLinkCopied => 'Verification link copied';

  @override
  String get extensionVerificationOpenBrowser => 'Browser öffnen';

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
  String get trackOptionCopyArtist => 'Künstler kopieren';

  @override
  String get trackOptionCopyTrackAndArtist => 'Copy track and artist';

  @override
  String trackOptionCopyLink(String service) {
    return 'Copy $service link';
  }

  @override
  String get metadataCopyValue => 'Wert kopieren';

  @override
  String get metadataCopyField => 'Copy field and value';

  @override
  String get toadplayerSearch => 'Suche';

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
  String get toadplayerFavorite => 'Favorit';

  @override
  String get toadplayerGoToArtist => 'Zum Künstler';

  @override
  String get toadplayerGetInfo => 'Get Info';

  @override
  String get toadplayerFavorited => 'Favorisiert';

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
  String get playerCoverStyleDefault => 'Standard';

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
  String get autoMixOn => 'AutoMix an';

  @override
  String get autoMixOff => 'AutoMix aus';

  @override
  String get autoplayOn => 'Autoplay an';

  @override
  String get autoplayOff => 'Autoplay aus';

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
  String get autoplayResetLearningConfirm => 'Zurücksetzen';

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
  String get profileTitle => 'Profil';

  @override
  String get profileSetUp => 'Set up your profile';

  @override
  String get profileEdit => 'Edit name and photo';

  @override
  String get backupIncludesProfile => 'Includes your profile name and photo';

  @override
  String get profileName => 'Name';

  @override
  String get profileNameHint => 'Dein Name';

  @override
  String get profileChangePhoto => 'Bild wählen';

  @override
  String get profileRemovePhoto => 'Bild entfernen';

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
  String get listeningRewindShare => 'Teilen';

  @override
  String get listeningRewindShareError => 'Could not share your Rewind';

  @override
  String get listeningRewindNext => 'Weiter';

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
  String get listeningRewindSongsLabel => 'Titel';

  @override
  String get listeningRewindArtistsLabel => 'Künstler';

  @override
  String get listeningRewindAlbumsLabel => 'Alben';

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
  String get discordPresenceDisabled => 'Deaktiviert';

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
  String get lyricsShareAction => 'Teilen';

  @override
  String get lyricsShareError => 'Couldn\'t create the lyrics image';

  @override
  String get lyricsShareBackgroundArtwork => 'Artwork';

  @override
  String get lyricsShareBackgroundColor => 'Cover color';

  @override
  String get lyricsShareBackgroundDark => 'Dunkel';

  @override
  String get lyricsShareBackgroundLight => 'Hell';

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
  String get audioInfoQuality => 'Qualität';

  @override
  String get audioInfoHiResLossless => 'Hi-Res Lossless';

  @override
  String get audioInfoLossless => 'Verlustfrei';

  @override
  String get audioInfoLossy => 'Verlustbehaftet';

  @override
  String get audioInfoFormat => 'Format';

  @override
  String get audioInfoCodec => 'Codec';

  @override
  String get audioInfoSampleRate => 'Sample rate';

  @override
  String get audioInfoBitDepth => 'Bit depth';

  @override
  String get audioInfoChannels => 'Kanäle';

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
  String get audioInfoDuration => 'Länge';

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
  String get audioInfoOff => 'Aus';

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
  String get audioInfoOutputFormat => 'Ausgabeformat';

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
  String get audioInfoAnyRate => 'Alle';

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
  String get appCrashDismiss => 'Schließen';

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
  String get desktopMenuRefresh => 'Aktualisieren';

  @override
  String get desktopMenuProjectPage => 'Project page';

  @override
  String get desktopDownloadsShowAll => 'Show all';

  @override
  String get desktopDownloadsQueued => 'Waiting';

  @override
  String get desktopDownloadsCancel => 'Download abbrechen';

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
