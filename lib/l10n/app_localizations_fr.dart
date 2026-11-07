// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

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
  String get trackMood => 'Humeur';

  @override
  String get subsonicAddToLibrary => 'Connecte un serveur à ta bibliothèque';

  @override
  String get subsonicLibraryAdded => 'Serveur connecté à la bibliothèque';

  @override
  String get subsonicLibraryDescription =>
      'Sync the server catalogue and artwork to Library. Music stays on your server. Rescan it in Local Library settings to update the catalogue.';

  @override
  String get subsonicAuthentication => 'Authentification';

  @override
  String get subsonicToken => 'Salted token';

  @override
  String get subsonicPasswordAuth => 'Mot de passe';

  @override
  String get subsonicApiKey => 'Clé API';

  @override
  String get subsonicUsername => 'Nom d\'utilisateur';

  @override
  String get subsonicPassword => 'Mot de passe';

  @override
  String get subsonicSearch => 'Rechercher parmi les musiques du serveur...';

  @override
  String get subsonicMoreAlbums => 'Plus d\'albums';

  @override
  String get subsonicErrorApi =>
      'Ce serveur ne supporte pas cette version de l\'API ou ce moyen d\'authentification. Vérifiez les paramètres du serveur et sélectionnez comment vous voulez connecter.';

  @override
  String get networkDownloadDestination =>
      'Destination du téléchargement réseau';

  @override
  String get networkUseForDownloads => 'Télécharger dans ce dossier';

  @override
  String get networkDownloadSelected =>
      'Destination de téléchargement sélectionnée';

  @override
  String get networkUseLocalDownloads =>
      'Utiliser le dossier de téléchargement local';

  @override
  String get networkDownloadAccessFailed =>
      'Impossible d\'écrire dans ce dossier.';

  @override
  String get networkUploading =>
      'Transfert vers un espace de stockage en réseau';

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
      'Téléchargez les musiques sur votre serveur de stockage réseau (NAS) après les avoir préparées sur cet appareil. L\'application doit rester ouverte jusqu\'à la fin du téléchargement. Chaque essai réutilise les musiques préparées. Les fichiers déjà existants sont conservés tandis que les nouveaux téléchargements portant le même nom se voient attribuer un suffixe numéroté.';

  @override
  String get networkAddToLibrary => 'Ajouter un dossier à la bibliothèque';

  @override
  String get networkLibraryAdded => 'Dossier ajouté à la bibliothèque';

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
  String get networkRefresh => 'Actualiser';

  @override
  String get networkStorageDescription =>
      'Connect to your NAS or music server and browse its folders. Your sign-in details are stored securely on this device.';

  @override
  String get networkAddConnection => 'Add connection';

  @override
  String get networkEditConnection => 'Edit connection';

  @override
  String get networkConnectionName => 'Nom';

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
      'Lecteur, volume, AutoMix et sortie audio';

  @override
  String get sectionPlayer => 'Lecteur';

  @override
  String get sectionVolumeAndTransitions => 'Volume et transitions';

  @override
  String get sectionAudioOutput => 'Sortie audio';

  @override
  String get usbBitPerfect => 'Audio haute résolution et sans perte';

  @override
  String get usbBitPerfectDescription =>
      'Conservez la précision de la source sur les sorties compatibles. Choisissez ci-dessous « USB direct » ou « AAudio exclusif » ; sinon, la sortie USB Android nécessite Android 14 ou une version ultérieure. S\'applique à partir du morceau suivant, sans AutoMix ni normalisation. Le volume système peut ne pas contrôler la sortie USB directe.';

  @override
  String get usbHardwareVolume => 'Volume du matériel DAC';

  @override
  String get usbVolumeWarningTitle =>
      'Vérifiez le volume de votre appareil audio';

  @override
  String get usbVolumeWarning =>
      'Le son USB direct peut être beaucoup plus fort qu\'une lecture normale, et les boutons de volume du téléphone peuvent ne pas permettre de le régler. Baissez le volume de votre DAC ou de votre amplificateur avant de commencer. Lorsque cette fonctionnalité est prise en charge, Toadplayer règle le DAC à −40 dB au maximum lors de la connexion ; cela ne garantit toutefois pas un niveau d\'écoute sûr sur tous les amplificateurs ou casques.';

  @override
  String get usbVolumeAccept => 'Je comprends';

  @override
  String get usbVolumeUnavailable =>
      'La lecture est en pause car ce DAC ne dispose pas d\'un contrôle du volume matériel vérifié. Baissez le volume du DAC ou de l\'amplificateur, puis activez la sortie à volume fixe si nécessaire et sélectionnez à nouveau la piste.';

  @override
  String get usbFixedVolume => 'Autoriser la sortie USB à volume fixe';

  @override
  String get usbFixedVolumeDescription =>
      'Pour les DAC ne disposant pas d\'un réglage du volume accessible depuis l\'application. À laisser désactivé pour les casques USB ne disposant pas de leur propre réglage du volume. S\'applique à partir du morceau suivant.';

  @override
  String get usbFixedVolumeWarning =>
      'L\'application ne peut pas réduire le volume sur cette sortie. Le son peut démarrer à plein volume, et le curseur de volume du téléphone ne servira à rien. Ne poursuivez l\'opération qu\'après avoir réduit le volume sur votre DAC ou votre amplificateur externe. N\'activez pas cette fonction pour un casque ne disposant pas de son propre contrôle de volume.';

  @override
  String get dapExclusive => 'DAP haute résolution (exclusivité AAudio)';

  @override
  String get dapExclusiveDescription =>
      'Utilisez Oboe/AAudio à la fréquence et à la précision d\'origine de la piste pour les fichiers FLAC/WAV PCM. Nécessite Android 8.1 ou une version ultérieure, ainsi qu\'un matériel compatible. L\'option « Accès exclusif » est cochée ; les formats non pris en charge sont lus en mode normal. Le format DSD nécessite le pilote USB direct. S\'applique à partir de la piste suivante.';

  @override
  String get dapExclusiveUnavailable =>
      'L\'accès exclusif AAudio n\'est pas disponible pour ce morceau et cette sortie. La lecture s\'effectue en mode normal. Pour un DAC USB, essayez le pilote USB direct.';

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
  String get usbDirect => 'Pilote USB direct';

  @override
  String get usbDirectDescription =>
      'Utilisez la fonction audio USB exclusive pour les formats FLAC/WAV, DSF/DFF et WavPack DSD, avec l\'autorisation USB Android. Le DSD natif nécessite un DAC compatible et reconnu. Les autres formats PCM sont lus normalement. Cette fonction s\'applique à partir de la piste suivante.';

  @override
  String get usbDsdOverPcm => 'DSD sur PCM (DoP)';

  @override
  String get usbDsdOverPcmDescription =>
      'À activer uniquement si votre DAC prend explicitement en charge le DoP. Envoie des fichiers DSF/DFF et WavPack DSD dans une porteuse PCM lorsque le DSD natif n\'est pas disponible. Un périphérique incompatible peut émettre du bruit ; laissez cette option désactivée pour les casques USB classiques.';

  @override
  String get usbDsdUnsupported =>
      'Ce format DSD ou ce DAC connecté n\'est pas pris en charge. La lecture s\'est arrêtée.';

  @override
  String get usbPermissionDenied =>
      'L\'autorisation USB n\'a pas été accordée. Lecture normale.';

  @override
  String get usbBitPerfectPending =>
      'En attendant le prochain morceau et une sortie USB compatible.';

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
      'Aucun DAC USB n\'est connecté. La sortie audio standard est utilisée.';

  @override
  String get usbBitPerfectFallback =>
      'Cet appareil ou ce format audio ne prend pas en charge la sortie « bit-perfect ». Lecture normale.';

  @override
  String get usbBitPerfectRouteChanged =>
      'La connexion audio USB a changé. La lecture est en pause ; sélectionnez un morceau pour rétablir la connexion.';

  @override
  String get upgradeIntroContinue => 'Continuer';

  @override
  String get cacheMotionArtwork => 'Couverture de mouvement hors ligne';

  @override
  String get cacheMotionArtworkDesc =>
      'Les clips vidéo des albums sont enregistrés avec les téléchargements. Si vous les supprimez, vos fichiers musicaux et vos pochettes d\'album resteront intacts.';

  @override
  String get nowPlayingVolume => 'Volume';

  @override
  String get appearanceStyle => 'Style de l\'application';

  @override
  String get appearanceAccentRed => 'Rouge (par défaut)';

  @override
  String get appearanceAccentOrange => 'Orange';

  @override
  String get appearanceAccentGreen => 'Vert';

  @override
  String get appearanceAccentTeal => 'Bleu sarcelle';

  @override
  String get appearanceAccentBlue => 'Bleu';

  @override
  String get appearanceAccentPurple => 'Violet';

  @override
  String get appearanceAccentPink => 'Rose';

  @override
  String get appearanceGlassClarity => 'Transparence du verre';

  @override
  String get appearanceGlassOutlines => 'Glass outlines';

  @override
  String get appearanceGlassOutlinesSubtitle =>
      'Show decorative edges around Toadplayer glass. Turning this off keeps blur and refraction.';

  @override
  String get appearanceGlassClaritySubtitle =>
      'Régler la transparence des menus et de la navigation dans Toadplayer. Le contraste du texte est conservé.';

  @override
  String get appearanceGlassTinted => 'Teinté';

  @override
  String get appearanceGlassClear => 'Effacer';

  @override
  String get appearanceGlassClearPerformance =>
      'Very clear glass may use more power and feel less smooth on older devices. Lower clarity if needed.';

  @override
  String appearanceGlassClarityBlurOff(String setting) {
    return 'Le verre est opaque sur cet appareil. Activez « $setting » pour régler la transparence.';
  }

  @override
  String appearanceGlassClarityHighContrast(String setting) {
    return 'Le système demande un contraste accru, ce qui rend le verre opaque. Activez « $setting » pour utiliser tout de même l’effet de verre ; le contraste du texte est préservé.';
  }

  @override
  String get appearanceUseSystemFont => 'Utiliser la police système';

  @override
  String get appearanceUseSystemFontSubtitle =>
      'Utilisez la police par défaut de votre appareil pour le texte de l\'application.';

  @override
  String get appName => 'Toadplayer';

  @override
  String get navHome => 'Accueil';

  @override
  String get navLibrary => 'Bibliothèque';

  @override
  String get navSettings => 'Paramètres';

  @override
  String get navStore => 'Dépôt';

  @override
  String get homeTitle => 'Accueil';

  @override
  String get homeEmptyTitle => 'Aucun moteur de recherche pour le moment';

  @override
  String get homeEmptySubtitle => 'Installez une extension pour continuer.';

  @override
  String get homeRecent => 'Récent';

  @override
  String get searchRecentlySearched => 'Recently Searched';

  @override
  String get searchLibraryPrompt => 'Search Your Library';

  @override
  String get searchBrowse => 'Browse';

  @override
  String get historyFilterAll => 'Tous';

  @override
  String get historyFilterAlbums => 'Albums';

  @override
  String get historyFilterSingles => 'Titres';

  @override
  String get libraryRecentlyAdded => 'Ajouts récents';

  @override
  String get libraryDownloads => 'Téléchargements';

  @override
  String get libraryNoActiveDownloads => 'Aucun téléchargement en cours';

  @override
  String get librarySearchHint => 'Rechercher dans votre bibliothèque';

  @override
  String get libraryEmptyCollection => 'Votre musique apparaîtra ici';

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
  String get settingsTitle => 'Paramètres';

  @override
  String get settingsDownload => 'Télécharger';

  @override
  String get settingsAppearance => 'Apparence';

  @override
  String get settingsExtensions => 'Extensions';

  @override
  String get settingsAbout => 'À propos';

  @override
  String get downloadTitle => 'Télécharger';

  @override
  String get downloadAskQualitySubtitle =>
      'Afficher le sélecteur de qualité pour chaque téléchargement';

  @override
  String get downloadFilenameFormat => 'Nom du fichier';

  @override
  String get downloadSingleFilenameFormat => 'Format de nom de fichier unique';

  @override
  String get downloadSingleFilenameFormatDescription =>
      'Modèle de nom de fichier pour les singles et les EP. Utilise les mêmes balises que le format album.';

  @override
  String get downloadFolderOrganization => 'Organisation du dossier';

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
  String get folderTemplatePreviewFailed => 'Aperçu indisponible';

  @override
  String get appearanceTitle => 'Apparence';

  @override
  String get appearanceThemeSystem => 'Système';

  @override
  String get appearanceThemeLight => 'Clair';

  @override
  String get appearanceThemeDark => 'Sombre';

  @override
  String get appearanceDynamicColor => 'Couleur dynamique';

  @override
  String get appearanceDynamicColorSubtitle =>
      'Utilisez les couleurs de votre fond d\'écran';

  @override
  String get appearanceHistoryView => 'Historique';

  @override
  String get appearanceHistoryViewList => 'Liste';

  @override
  String get appearanceHistoryViewGrid => 'Grille';

  @override
  String get optionsPrimaryProvider => 'Fournisseur principal';

  @override
  String get optionsPrimaryProviderSubtitle =>
      'Service permettant d\'effectuer une recherche par titre de morceau ou d\'album';

  @override
  String optionsUsingExtension(String extensionName) {
    return 'Utilisation de l\'extension : $extensionName';
  }

  @override
  String get optionsDefaultSearchTab => 'Onglet de recherche par défaut';

  @override
  String get optionsDefaultSearchTabSubtitle =>
      'Choisissez l\'onglet qui s\'ouvre en premier pour les nouveaux résultats de recherche.';

  @override
  String get optionsAutoFallback => 'Récupération automatique';

  @override
  String get optionsAutoFallbackSubtitle =>
      'Essayez d\'autres services si le téléchargement échoue';

  @override
  String get optionsEmbedLyrics => 'Intégrer les paroles';

  @override
  String get optionsEmbedLyricsSubtitle =>
      'Enregistrez les paroles synchronisées avec vos morceaux téléchargés';

  @override
  String get optionsReplayGain => 'ReplayGain';

  @override
  String get optionsReplayGainSubtitleOn =>
      'Analyser le niveau sonore et intégrer des balises ReplayGain (EBU R128)';

  @override
  String get optionsReplayGainSubtitleOff =>
      'Désactivé : aucune balise de normalisation du volume';

  @override
  String get trackReplayGain => 'Réanalyser ReplayGain';

  @override
  String get trackReplayGainScanning => 'Analyse du volume sonore...';

  @override
  String get trackReplayGainSuccess => 'Ajout des balises ReplayGain';

  @override
  String get trackReplayGainFailed =>
      'Impossible d\'ajouter les balises ReplayGain';

  @override
  String get trackRemoveReplayGain => 'Supprimer ReplayGain';

  @override
  String get trackRemoveReplayGainSuccess =>
      'Suppression des balises ReplayGain';

  @override
  String get trackRemoveReplayGainFailed =>
      'Impossible de supprimer les balises ReplayGain';

  @override
  String get replayGainRemoving => 'Suppression de ReplayGain...';

  @override
  String replayGainRemoveConfirmMessage(int count) {
    return 'Souhaitez-vous supprimer les balises ReplayGain des $count titres ? Les données audio, les pochettes et les autres métadonnées seront conservées.';
  }

  @override
  String selectionRemoveReplayGainCount(int count) {
    return 'Supprimer RG ($count)';
  }

  @override
  String replayGainRemoveBatchSuccess(int success, int total) {
    return 'ReplayGain supprimé de $success sur $total titres';
  }

  @override
  String selectionReplayGainCount(int count) {
    return 'ReplayGain ($count)';
  }

  @override
  String get replayGainBatchConfirmTitle => 'Ajouter ReplayGain';

  @override
  String replayGainBatchConfirmMessage(int count) {
    return 'Analyser le niveau sonore et ajouter des balises ReplayGain à $count piste(s) ?';
  }

  @override
  String get replayGainBatchAnalyzing => 'Analyse de ReplayGain...';

  @override
  String replayGainBatchSuccess(int success, int total) {
    return 'ReplayGain ajouté à $success de $total pistes';
  }

  @override
  String get replayGainUnsupportedDecoder =>
      'Certaines pistes n\'ont pas pu être analysées car leur codec audio n\'est pas pris en charge par le décodeur ReplayGain. Leurs fichiers n\'ont pas été modifiés.';

  @override
  String get optionsArtistTagMode => 'Mode « Artiste »';

  @override
  String get metadataSeparators => 'Metadata separators';

  @override
  String get metadataSeparatorsDescription =>
      'Choisissez comment les valeurs séparées par des virgules ou des points-virgules seront regroupées lors des prochains téléchargements. Les séparateurs d\'artistes personnalisés utilisent une balise de regroupement ; l\'option « Artiste principal uniquement » reste applicable. Les noms contenant « & » ou « / » sont conservés.';

  @override
  String get metadataSeparatorSource =>
      'Conserver la mise en forme du texte source';

  @override
  String get metadataSeparatorComma => 'Comma (,)';

  @override
  String get metadataSeparatorSemicolon => 'Semicolon (;)';

  @override
  String get metadataSeparatorSlash => 'Slash (/)';

  @override
  String get metadataSeparatorCustom => 'Séparateur personnalisé';

  @override
  String get metadataSeparatorPreview => 'Aperçu';

  @override
  String get metadataSeparatorInvalid =>
      'Utilisez entre 1 et 16 caractères, sans saut de ligne ni caractères de contrôle.';

  @override
  String get optionsArtistTagModeDescription =>
      'Choisissez comment les noms de plusieurs artistes doivent apparaître dans les balises intégrées.';

  @override
  String get optionsArtistTagModeJoined => 'Valeur unique combinée';

  @override
  String get optionsArtistTagModeJoinedSubtitle =>
      'Indiquez une seule valeur ARTIST, par exemple « Artiste A, Artiste B », pour garantir une compatibilité maximale avec les lecteurs.';

  @override
  String get optionsArtistTagModeSplitVorbis =>
      'Diviser les balises pour FLAC/Opus';

  @override
  String get optionsArtistTagModeSplitVorbisSubtitle =>
      'Créez une balise « artiste » par artiste pour les fichiers FLAC et Opus ; les fichiers MP3 et M4A restent regroupés.';

  @override
  String get optionsArtistTagModePrimary => 'Artiste principal uniquement';

  @override
  String get optionsArtistTagModePrimarySubtitle =>
      'Dans tous les formats, indiquez uniquement le premier artiste (par exemple « Artiste A ») dans les champs « Artiste » et « Artiste de l\'album », afin que les lecteurs n\'affichent qu\'un seul artiste.';

  @override
  String get optionsExtensionStore => 'Référentiel d\'extensions';

  @override
  String get optionsExtensionStoreSubtitle =>
      'Afficher l\'onglet « Dépôt » dans le menu de navigation';

  @override
  String get optionsCheckUpdates => 'Vérifier les mises à jour';

  @override
  String get optionsCheckUpdatesSubtitle =>
      'M\'avertir lorsqu\'une nouvelle version est disponible';

  @override
  String get optionsUpdateChannel => 'Chaîne de mise à jour';

  @override
  String get optionsUpdateChannelStable => 'Uniquement les versions stables';

  @override
  String get optionsUpdateChannelPreview =>
      'Accédez aux versions préliminaires';

  @override
  String get optionsUpdateChannelWarning =>
      'La version préliminaire peut contenir des bogues ou des fonctionnalités incomplètes';

  @override
  String get optionsClearHistory => 'Effacer l\'historique des téléchargements';

  @override
  String get optionsClearHistorySubtitle =>
      'Supprimez tous les morceaux téléchargés de l\'historique';

  @override
  String get optionsDetailedLogging => 'Journalisation détaillée';

  @override
  String get optionsDetailedLoggingOn =>
      'Des journaux détaillés sont enregistrés';

  @override
  String get optionsDetailedLoggingOff => 'Activer pour les rapports de bogues';

  @override
  String get extensionsTitle => 'Extensions';

  @override
  String get extensionsDisabled => 'Désactivée';

  @override
  String extensionsVersion(String version) {
    return 'Version $version';
  }

  @override
  String get extensionsUninstall => 'Désinstaller';

  @override
  String get storeTitle => 'Répertoire des extensions';

  @override
  String get storeSearch => 'Recherche d\'extensions...';

  @override
  String get storeInstall => 'Installer';

  @override
  String get storeInstalled => 'Installé';

  @override
  String get storeUpdate => 'Mettre à jour';

  @override
  String get aboutTitle => 'À propos';

  @override
  String get aboutContributors => 'Contributeurs';

  @override
  String get aboutMobileDeveloper => 'Développeur de la version mobile';

  @override
  String get aboutLogoArtist =>
      'Le talentueux artiste qui a créé le magnifique logo de notre application !';

  @override
  String get aboutTranslators => 'Traducteurs';

  @override
  String get aboutSpecialThanks => 'Remerciements particuliers';

  @override
  String get aboutLinks => 'Liens';

  @override
  String get aboutMobileSource => 'Code source pour mobile';

  @override
  String get aboutLyricsWebsite => 'Site web de paroles de chansons';

  @override
  String get aboutServiceStatus => 'État du service';

  @override
  String get aboutReportIssue => 'Signaler un problème';

  @override
  String get aboutReportIssueSubtitle =>
      'Signalez tout problème que vous rencontrez';

  @override
  String get aboutFeatureRequest => 'Demande de fonctionnalité';

  @override
  String get aboutFeatureRequestSubtitle =>
      'Proposez de nouvelles fonctionnalités pour l\'application';

  @override
  String get aboutTelegramChannel => 'Chaîne Telegram';

  @override
  String get aboutTelegramChannelSubtitle => 'Annonces et mises à jour';

  @override
  String get aboutTelegramChat => 'Communauté Telegram';

  @override
  String get aboutTelegramChatSubtitle =>
      'Discutez avec d\'autres utilisateurs';

  @override
  String get aboutSocial => 'Réseaux sociaux';

  @override
  String get aboutApp => 'Application';

  @override
  String get aboutVersion => 'Version';

  @override
  String get aboutBinimumDesc =>
      'Créateur de QQDL et de l\'API HiFi. Ce projet a contribué à mettre en place la prise en charge des téléchargements sans perte.';

  @override
  String get aboutSachinsenalDesc =>
      'Le créateur du projet HiFi original. Une base pour l\'intégration de sources sans perte.';

  @override
  String get aboutUnituneDesc =>
      'Résolveur de liens musicaux open source développé par Flaze, utilisé pour la correspondance de repli multiplateforme.';

  @override
  String get aboutMusicBrainzDesc =>
      'Base de données musicale ouverte gérée par MetaBrainz et sa communauté, utilisée pour enregistrer des références croisées.';

  @override
  String get aboutSquiglyDesc =>
      'Service de liens musicaux universel développé par Liam Macmillan, utilisé comme solution de secours finale pour la résolution multiplateforme.';

  @override
  String get aboutAppDescription =>
      'Recherchez des métadonnées musicales, gérez les extensions et organisez votre bibliothèque.';

  @override
  String get artistAlbums => 'Albums';

  @override
  String get artistSingles => 'Singles & EPs';

  @override
  String get artistCompilations => 'Compilations';

  @override
  String get artistPopular => 'Populaire';

  @override
  String get artistLatestRelease => 'Latest Release';

  @override
  String get artistTopSongs => 'Top Songs';

  @override
  String artistMonthlyListeners(String count) {
    return '$count auditeurs mensuels';
  }

  @override
  String get trackMetadataService => 'Service';

  @override
  String get trackMetadataPlay => 'Lire';

  @override
  String get trackMetadataShare => 'Partager';

  @override
  String get trackMetadataDelete => 'Supprimer';

  @override
  String get setupGrantPermission => 'Accorder l\'autorisation';

  @override
  String get setupSkip => 'Ignorer pour le moment';

  @override
  String get setupStorageAccessRequired => 'Accès au stockage requis';

  @override
  String get setupStorageAccessMessageAndroid11 =>
      'Depuis Android 11, l\'autorisation « Accès à tous les fichiers » est requise pour enregistrer des fichiers dans le dossier de téléchargement de votre choix.';

  @override
  String get setupOpenSettings => 'Ouvrir les paramètres';

  @override
  String get setupPermissionDeniedMessage =>
      'Autorisation refusée. Veuillez accorder toutes les autorisations pour continuer.';

  @override
  String setupPermissionRequired(String permissionType) {
    return 'Autorisation $permissionType requise';
  }

  @override
  String setupPermissionRequiredMessage(String permissionType) {
    return 'L\'autorisation $permissionType est requise pour profiter pleinement de l\'application. Vous pourrez modifier ce paramètre ultérieurement dans les Paramètres.';
  }

  @override
  String get setupUseDefaultFolder => 'Utiliser le dossier par défaut ?';

  @override
  String get setupNoFolderSelected =>
      'Aucun dossier n\'est sélectionné. Souhaitez-vous utiliser le dossier Musique par défaut ?';

  @override
  String get setupUseDefault => 'Utiliser les paramètres par défaut';

  @override
  String get setupDownloadLocationTitle => 'Emplacement de téléchargement';

  @override
  String get setupDownloadLocationIosMessage =>
      'Sous iOS, les fichiers téléchargés sont enregistrés dans le dossier « Documents » de l\'application. Vous pouvez y accéder via l\'application Fichiers.';

  @override
  String get setupAppDocumentsFolder =>
      'Dossier « Documents » de l\'application';

  @override
  String get setupAppDocumentsFolderSubtitle =>
      'Recommandé - accessible via l\'application Fichiers';

  @override
  String get setupChooseFromFiles => 'Sélectionnez un fichier';

  @override
  String get setupChooseFromFilesSubtitle =>
      'Sélectionnez iCloud ou un autre emplacement';

  @override
  String get setupIosEmptyFolderWarning =>
      'Limitation iOS : les dossiers vides ne peuvent pas être sélectionnés. Choisissez un dossier contenant au moins un fichier.';

  @override
  String get setupIcloudNotSupported =>
      'iCloud Drive n\'est pas pris en charge. Veuillez utiliser le dossier « Documents » de l\'application.';

  @override
  String get setupDownloadInFlac =>
      'Télécharger de la musique en qualité sans perte et haute résolution';

  @override
  String get setupStorageGranted => 'Autorisation de stockage accordée !';

  @override
  String get setupStorageRequired => 'Autorisation de stockage requise';

  @override
  String get setupStorageDescription =>
      'Toadplayer a besoin d\'une autorisation d\'accès au stockage pour enregistrer vos fichiers musicaux téléchargés.';

  @override
  String get setupNotificationGranted =>
      'Autorisation de notification accordée !';

  @override
  String get setupNotificationEnable => 'Activer les notifications';

  @override
  String get setupFolderChoose => 'Choisissez le dossier de téléchargement';

  @override
  String get setupFolderDescription =>
      'Sélectionnez un dossier dans lequel votre musique téléchargée sera enregistrée.';

  @override
  String get setupSelectFolder => 'Sélectionner un dossier';

  @override
  String get setupEnableNotifications => 'Activer les notifications';

  @override
  String get setupNotificationBackgroundDescription =>
      'Recevez des notifications sur la progression et la fin du téléchargement. Cela vous permet de suivre les téléchargements lorsque l\'application est en arrière-plan.';

  @override
  String get setupSkipForNow => 'Ignorer pour le moment';

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
  String get setupNext => 'Suivant';

  @override
  String get setupGetStarted => 'Démarrer';

  @override
  String get setupAllowAccessToManageFiles =>
      'Veuillez cocher la case « Autoriser l\'accès pour gérer tous les fichiers » sur l\'écran suivant.';

  @override
  String get setupLanguageTitle => 'Choisir la langue';

  @override
  String get setupLanguageDescription =>
      'Sélectionnez la langue de votre choix pour l\'application. Vous pourrez la modifier ultérieurement dans les Paramètres.';

  @override
  String get setupLanguageSystemDefault => 'Paramètres par défaut du système';

  @override
  String get dialogCancel => 'Annuler';

  @override
  String get dialogSave => 'Sauvegarder';

  @override
  String get dialogDelete => 'Supprimer';

  @override
  String get dialogRetry => 'Réessayer';

  @override
  String get dialogClear => 'Effacer';

  @override
  String get dialogDone => 'C\'est fait';

  @override
  String get dialogImport => 'Importer';

  @override
  String get dialogDownload => 'Télécharger';

  @override
  String get previewPlay => 'Écouter un aperçu';

  @override
  String get previewStop => 'Arrêter l\'aperçu';

  @override
  String get previewUnavailable => 'Aperçu indisponible';

  @override
  String get dialogDiscard => 'Ignorer';

  @override
  String get dialogRemove => 'Supprimer';

  @override
  String get dialogUninstall => 'Désinstaller';

  @override
  String get dialogDiscardChanges => 'Ignorer les modifications ?';

  @override
  String get dialogUnsavedChanges =>
      'Vous avez des modifications non enregistrées. Voulez-vous les ignorer ?';

  @override
  String get dialogClearAll => 'Tout effacer';

  @override
  String get dialogRemoveExtension => 'Supprimer l\'extension';

  @override
  String get dialogRemoveExtensionMessage =>
      'Êtes-vous sûr de vouloir supprimer cette extension ? Cette action ne peut pas être annulée.';

  @override
  String get dialogUninstallExtension => 'Supprimer l\'extension ?';

  @override
  String dialogUninstallExtensionMessage(String extensionName) {
    return 'Êtes-vous sûr de vouloir supprimer $extensionName ?';
  }

  @override
  String get dialogClearHistoryTitle => 'Effacer l\'historique';

  @override
  String get dialogClearHistoryMessage =>
      'Êtes-vous sûr de vouloir effacer tout l\'historique des téléchargements ? Cette action ne peut pas être annulée.';

  @override
  String get dialogDeleteSelectedTitle => 'Supprimer la sélection';

  @override
  String dialogDeleteSelectedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'titres',
      one: 'titre',
    );
    return 'Supprimer $count $_temp0 de l\'historique ?\n\nCela supprimera également les fichiers du stockage.';
  }

  @override
  String get dialogImportPlaylistTitle => 'Importer une playlist';

  @override
  String dialogImportPlaylistMessage(int count) {
    return '$count titres ont été trouvés dans le fichier de la playlist. Voulez-vous les ajouter à la file d\'attente de téléchargement ?';
  }

  @override
  String csvImportTracks(int count) {
    return '$count pistes issues d\'un fichier CSV';
  }

  @override
  String get collectionExportM3u => 'Exporter au format M3U8';

  @override
  String collectionExportM3uDone(int exported, int total) {
    return '$exported titres exportés sur $total';
  }

  @override
  String get collectionExportM3uNone => 'Aucun fichier téléchargé à exporter';

  @override
  String get collectionExportM3uFailed => 'L\'exportation a échoué';

  @override
  String get trackOpenOn => 'Ouvrir sur...';

  @override
  String get trackOpenOnNoLinks =>
      'Aucun lien vers une plateforme n\'a été trouvé pour ce titre.';

  @override
  String get libraryReviewDuplicates => 'Vérifier les doublons';

  @override
  String get libraryReviewDuplicatesSubtitle =>
      'Rechercher les titres enregistrés plusieurs fois';

  @override
  String get duplicatesTitle => 'Doublons';

  @override
  String get duplicatesEmpty => 'Aucun titre en double n\'a été détecté.';

  @override
  String get duplicatesKeepBest => 'Garder le meilleur';

  @override
  String get duplicatesKeepBestAll =>
      'À conserver dans les meilleures conditions pour tous';

  @override
  String duplicatesKeepBestAllMessage(int count, int groupCount) {
    String _temp0 = intl.Intl.pluralLogic(
      groupCount,
      locale: localeName,
      other: 'pistes',
      one: 'piste',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'copies',
      one: 'copie',
    );
    return 'Conserver la meilleure copie parmi $groupCount $_temp0 et supprimer $count copies de moindre qualité parmi $_temp1 ?\n\nLes fichiers supprimés seront retirés de l\'espace de stockage.';
  }

  @override
  String duplicatesKeepBestMessage(int count, String trackName) {
    return 'Supprimer $count copies de moindre qualité de « $trackName » ?';
  }

  @override
  String duplicatesDeleteCopyMessage(String trackName) {
    return 'Souhaitez-vous supprimer cette copie de « $trackName » ?';
  }

  @override
  String snackbarAddedToQueue(String trackName) {
    return 'Ajout de « $trackName » à la file d\'attente';
  }

  @override
  String snackbarAddedTracksToQueue(int count) {
    return '$count titres ont été ajoutés à la file d\'attente';
  }

  @override
  String snackbarAlreadyDownloaded(String trackName) {
    return '« $trackName » a déjà été téléchargé';
  }

  @override
  String snackbarAlreadyInLibrary(String trackName) {
    return '« $trackName » existe déjà dans votre bibliothèque';
  }

  @override
  String get snackbarHistoryCleared => 'Historique effacé';

  @override
  String snackbarDeletedTracks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'titres',
      one: 'titre',
    );
    return 'Supprimé $count $_temp0';
  }

  @override
  String snackbarCannotOpenFile(String error) {
    return 'Impossible d\'ouvrir le fichier : $error';
  }

  @override
  String get snackbarViewQueue => 'Afficher la file d\'attente';

  @override
  String snackbarUrlCopied(String platform) {
    return 'L\'URL de $platform a été copiée dans le presse-papiers';
  }

  @override
  String get snackbarFileNotFound => 'Fichier introuvable';

  @override
  String get snackbarSelectExtFile =>
      'Veuillez sélectionner un fichier .toadplayer-ext';

  @override
  String get snackbarProviderPrioritySaved =>
      'Priorité du fournisseur enregistrée';

  @override
  String get snackbarMetadataProviderSaved =>
      'Priorité du fournisseur de métadonnées enregistrée';

  @override
  String snackbarExtensionInstalled(String extensionName) {
    return '$extensionName est installée.';
  }

  @override
  String snackbarExtensionUpdated(String extensionName) {
    return '$extensionName a été mis à jour.';
  }

  @override
  String get snackbarFailedToInstall =>
      'Échec de l\'installation de l\'extension';

  @override
  String get snackbarFailedToUpdate =>
      'Échec de la mise à jour de l\'extension';

  @override
  String get errorRateLimited => 'Débit limité';

  @override
  String get errorRateLimitedMessage =>
      'Trop de requêtes. Veuillez patienter quelques instants avant de relancer la recherche.';

  @override
  String get errorNoTracksFound => 'Aucun titre trouvé';

  @override
  String get searchEmptyResultSubtitle => 'Essayez un autre mot-clé';

  @override
  String get errorUrlNotRecognized => 'Lien non reconnu';

  @override
  String get errorUrlNotRecognizedMessage =>
      'Ce lien n\'est pas pris en charge. Vérifiez que l\'URL est correcte et qu\'une extension compatible est installée.';

  @override
  String get errorUrlFetchFailed =>
      'Impossible de charger le contenu de ce lien. Veuillez réessayer.';

  @override
  String errorMissingExtensionSource(String item) {
    return 'Impossible de charger $item : source de l\'extension manquante';
  }

  @override
  String get actionPause => 'Pause';

  @override
  String get actionResume => 'Resumer';

  @override
  String get actionCancel => 'Annuler';

  @override
  String get actionSelectAll => 'Tout sélectionner';

  @override
  String get actionDeselect => 'Désélectionner';

  @override
  String selectionSelected(int count) {
    return '$count sélectionnés';
  }

  @override
  String get selectionAllSelected => 'Toutes les pistes sélectionnées';

  @override
  String get selectionSelectToDelete => 'Sélectionnez les titres à supprimer';

  @override
  String progressFetchingMetadata(int current, int total) {
    return 'Récupération des métadonnées... $current/$total';
  }

  @override
  String get progressReadingCsv => 'Lecture du fichier CSV...';

  @override
  String get searchSongs => 'Titres';

  @override
  String get searchArtists => 'Artistes';

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
  String get searchSortTitle => 'Trier les résultats';

  @override
  String get searchSortDefault => 'Par défaut';

  @override
  String get searchSortTitleAZ => 'Titre (A-Z)';

  @override
  String get searchSortTitleZA => 'Titre (Z-A)';

  @override
  String get searchSortArtistAZ => 'Artiste (A-Z)';

  @override
  String get searchSortArtistZA => 'Artiste (Z-A)';

  @override
  String get searchSortDurationShort => 'Durée (la plus courte)';

  @override
  String get searchSortDurationLong => 'Durée (la plus longue)';

  @override
  String get searchSortDateOldest => 'Date de sortie (la plus ancienne)';

  @override
  String get searchSortDateNewest => 'Date de sortie (la plus récente)';

  @override
  String get tooltipPlay => 'Lecture';

  @override
  String get filenameFormat => 'Format des noms de fichiers';

  @override
  String get filenameShowAdvancedTags => 'Afficher les balises avancées';

  @override
  String get filenameShowAdvancedTagsDescription =>
      'Activer les balises de formatage pour le remplissage des pistes et les formats de date';

  @override
  String get folderOrganizationNone => 'Aucune organisation';

  @override
  String get folderOrganizationByPlaylist => 'Par playlist';

  @override
  String get folderOrganizationByPlaylistSubtitle =>
      'Un dossier distinct pour chaque playlist';

  @override
  String get folderOrganizationByArtist => 'Par artiste';

  @override
  String get folderOrganizationByAlbum => 'Par album';

  @override
  String get folderOrganizationByArtistAlbum => 'Artiste/Album';

  @override
  String get folderOrganizationDescription =>
      'Classer les fichiers téléchargés dans des dossiers';

  @override
  String get folderOrganizationNoneSubtitle =>
      'Tous les fichiers du dossier « Téléchargements »';

  @override
  String get folderOrganizationByArtistSubtitle =>
      'Un dossier distinct pour chaque artiste';

  @override
  String get folderOrganizationByAlbumSubtitle =>
      'Un dossier distinct pour chaque album';

  @override
  String get folderOrganizationByArtistAlbumSubtitle =>
      'Dossiers imbriqués pour les artistes et les albums';

  @override
  String get updateAvailable => 'Mise à jour disponible';

  @override
  String get updateLater => 'Plus tard';

  @override
  String get updateStartingDownload => 'Début du téléchargement...';

  @override
  String get updateDownloadFailed => 'Échec du téléchargement';

  @override
  String get updateFailedMessage => 'Échec du téléchargement de la mise à jour';

  @override
  String get updateNewVersionReady => 'Une nouvelle version est disponible';

  @override
  String get updateRequiredTitle => 'Mise à jour requise';

  @override
  String updateRequiredNotice(int count) {
    return 'Cette version a $count versions de retard et n\'est plus prise en charge. Effectuez la mise à jour pour continuer à utiliser l\'application.';
  }

  @override
  String get updateCurrent => 'Actuel';

  @override
  String get updateNew => 'Nouveau';

  @override
  String get updateDownloading => 'Téléchargement en cours...';

  @override
  String get updateWhatsNew => 'Quoi de neuf ?';

  @override
  String get updateDownloadInstall => 'Télécharger & Installer';

  @override
  String get updateDontRemind => 'Ne plus me le rappeler';

  @override
  String get updateViewRelease => 'Consulter le communiqué de presse';

  @override
  String get updateStartingInstaller =>
      'Lancement du programme d\'installation...';

  @override
  String get updateMacInstallHint =>
      'L\'image disque est ouverte dans le Finder. Quittez Toadplayer, puis faites glisser Toadplayer depuis l\'image disque vers le dossier « Applications » et remplacez l\'ancienne copie.';

  @override
  String get updateQuitApp => 'Quitter Toadplayer';

  @override
  String get updateReadyToRestart =>
      'La mise à jour est installée. Redémarrez Toadplayer pour en profiter.';

  @override
  String get updateRestartNow => 'Redémarrer maintenant';

  @override
  String get providerPriorityTitle => 'Priorité accordée aux prestataires';

  @override
  String get providerPriorityDescription =>
      'Faites glisser pour réorganiser les fournisseurs de téléchargement. L\'application testera les fournisseurs dans l\'ordre indiqué, de haut en bas, lors du téléchargement des morceaux.';

  @override
  String get providerPriorityInfo =>
      'Si un morceau n\'est pas disponible chez le premier fournisseur, l\'application essaiera automatiquement le suivant.';

  @override
  String get providerPriorityFallbackExtensionsDescription =>
      'Sélectionnez les extensions de téléchargement installées qui peuvent être utilisées lors du basculement automatique.';

  @override
  String get providerPriorityFallbackExtensionsHint =>
      'Seules les extensions activées disposant de la fonctionnalité « fournisseur de téléchargement » sont répertoriées ici.';

  @override
  String get providerExtension => 'Extension';

  @override
  String get metadataProviderPriorityTitle => 'Priorité des métadonnées';

  @override
  String get metadataProviderPriorityDescription =>
      'Faites glisser pour réorganiser les fournisseurs de métadonnées. L\'application testera les fournisseurs dans l\'ordre de haut en bas lors de la recherche de morceaux et de la récupération des métadonnées.';

  @override
  String get metadataProviderPriorityInfo =>
      'Deezer n\'impose aucune limite de débit et est recommandé comme service principal. Spotify peut limiter le débit après un certain nombre de requêtes.';

  @override
  String get logTitle => 'Journaux';

  @override
  String get logCopied => 'Journaux copiés dans le presse-papiers';

  @override
  String get logSearchHint => 'Recherche dans les journaux...';

  @override
  String get logFilterLevel => 'Niveau';

  @override
  String get logFilterSection => 'Filtre';

  @override
  String get logShareLogs => 'Partager les journaux';

  @override
  String get logClearLogs => 'Effacer les journaux';

  @override
  String get logClearLogsTitle => 'Effacer les journaux';

  @override
  String get logClearLogsMessage =>
      'Êtes-vous sûr de vouloir effacer tous les journaux ?';

  @override
  String get logFilterBySeverity =>
      'Filtrer les journaux par niveau de gravité';

  @override
  String get logNoLogsYet => 'Pas encore de journal';

  @override
  String get logNoLogsYetSubtitle =>
      'Les journaux s\'afficheront ici au fur et à mesure que vous utiliserez l\'application';

  @override
  String logEntriesFiltered(int count) {
    return 'Entrées ($count résultats filtrés)';
  }

  @override
  String logEntries(int count) {
    return 'Entrées ($count)';
  }

  @override
  String get channelStable => 'Stable';

  @override
  String get channelPreview => 'Aperçu';

  @override
  String get sectionSearchSource => 'Rechercher dans la source';

  @override
  String get sectionDownload => 'Télécharger';

  @override
  String get sectionPerformance => 'Performances';

  @override
  String get sectionApp => 'Application';

  @override
  String get sectionData => 'Données';

  @override
  String get sectionDebug => 'Débogage';

  @override
  String get sectionService => 'Service';

  @override
  String get sectionAudioQuality => 'Qualité audio';

  @override
  String get sectionFileSettings => 'Paramètres du fichier';

  @override
  String get sectionLyrics => 'Paroles';

  @override
  String get lyricsKeepScreenOn =>
      'Garder l\'écran allumé pendant l\'affichage des paroles';

  @override
  String get lyricsKeepScreenOnSubtitle =>
      'Empêcher la mise en veille de l\'écran lorsque les paroles sont affichées, y compris lorsque la lecture est en pause.';

  @override
  String get lyricsMode => 'Mode Paroles';

  @override
  String get lyricsModeDescription =>
      'Choisissez comment les paroles sont enregistrées avec vos téléchargements';

  @override
  String get lyricsModeEmbed => 'Intégrer dans un fichier';

  @override
  String get lyricsModeEmbedSubtitle =>
      'Paroles enregistrées dans les métadonnées FLAC';

  @override
  String get lyricsModeExternal => 'Fichier .lrc externe';

  @override
  String get lyricsModeExternalSubtitle =>
      'Fichier .lrc distinct pour les lecteurs tels que Samsung Music';

  @override
  String get lyricsModeBoth => 'Les deux';

  @override
  String get lyricsModeBothSubtitle =>
      'Intégrer et enregistrer le fichier .lrc';

  @override
  String get sectionColor => 'Couleur';

  @override
  String get sectionTheme => 'Thème';

  @override
  String get sectionLayout => 'Mise en page';

  @override
  String get sectionLanguage => 'Langue';

  @override
  String get appearanceLanguage => 'Langue de l\'application';

  @override
  String get settingsAppearanceSubtitle => 'Thème, couleurs, affichage';

  @override
  String get settingsDownloadSubtitle =>
      'Service, qualité, solution de secours';

  @override
  String get settingsExtensionsSubtitle =>
      'Gérez les fournisseurs de téléchargement';

  @override
  String get settingsLogsSubtitle =>
      'Consulter les journaux de l\'application pour le débogage';

  @override
  String get loadingSharedLink => 'Chargement du lien partagé...';

  @override
  String get pressBackAgainToExit =>
      'Appuyez de nouveau sur retour pour quitter';

  @override
  String downloadAllCount(int count) {
    return 'Tout télécharger ($count)';
  }

  @override
  String tracksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count titres',
      one: '1 titre',
    );
    return '$_temp0';
  }

  @override
  String get trackCopyFilePath => 'Copier le chemin d\'accès au fichier';

  @override
  String get trackRemoveFromDevice => 'Supprimer de l\'appareil';

  @override
  String get trackLoadLyrics => 'Charger les paroles';

  @override
  String get trackMetadata => 'Métadonnées';

  @override
  String get trackFileInfo => 'Informations sur le fichier';

  @override
  String get trackLyrics => 'Paroles';

  @override
  String get trackFileNotFound => 'Fichier introuvable';

  @override
  String get trackFileUnavailable =>
      'File is currently unavailable. Check storage access and try again.';

  @override
  String get trackOpenInDeezer => 'Ouvrir dans Deezer';

  @override
  String get trackOpenInSpotify => 'Ouvrir dans Spotify';

  @override
  String get trackTrackName => 'Nom de la piste';

  @override
  String get trackArtist => 'Artiste';

  @override
  String get trackAlbumArtist => 'Artiste de l\'album';

  @override
  String get trackAlbum => 'Album';

  @override
  String get trackTrackNumber => 'Numéro de piste';

  @override
  String get trackDiscNumber => 'Numéro de disque';

  @override
  String get trackDuration => 'Durée';

  @override
  String get trackAudioQuality => 'Qualité audio';

  @override
  String get trackReplayGainTrackGain => 'ReplayGain - Gain par piste';

  @override
  String get trackReplayGainTrackPeak => 'ReplayGain – Pic de piste';

  @override
  String get trackReplayGainAlbumGain => 'ReplayGain - Gain de l\'album';

  @override
  String get trackReplayGainAlbumPeak =>
      'ReplayGain – Valeur maximale de l\'album';

  @override
  String get libraryQualityLabelFileFormat => 'Format de fichier';

  @override
  String get trackReleaseDate => 'Date de sortie';

  @override
  String get trackGenre => 'Genre';

  @override
  String get trackLabel => 'Label';

  @override
  String get trackCopyright => 'Droits d\'auteur';

  @override
  String get trackDownloaded => 'Téléchargé';

  @override
  String get trackCopyLyrics => 'Copier les paroles';

  @override
  String trackLyricsSource(String source) {
    return 'Source : $source';
  }

  @override
  String get trackLyricsNotAvailable =>
      'Les paroles de ce morceau ne sont pas disponibles';

  @override
  String get trackLyricsNotInFile =>
      'Aucune parole n\'a été trouvée dans ce fichier';

  @override
  String get trackFetchOnlineLyrics => 'Télécharger depuis Internet';

  @override
  String get trackLyricsTimeout =>
      'La requête a expiré. Veuillez réessayer plus tard.';

  @override
  String get trackLyricsLoadFailed => 'Impossible de charger les paroles';

  @override
  String get trackEmbedLyrics => 'Intégrer les paroles';

  @override
  String get trackLyricsEmbedded => 'Les paroles ont été intégrées avec succès';

  @override
  String get trackInstrumental => 'Morceau instrumental';

  @override
  String get trackCopiedToClipboard => 'Copié dans le presse-papiers';

  @override
  String get trackDeleteConfirmTitle => 'Supprimer de l\'appareil ?';

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
      'Cela supprimera définitivement le fichier téléchargé et l\'effacera de votre historique.';

  @override
  String get dateToday => 'Aujourd\'hui';

  @override
  String get dateYesterday => 'Hier';

  @override
  String dateDaysAgo(int count) {
    return 'Il y a $count jours';
  }

  @override
  String dateWeeksAgo(int count) {
    return 'Il y a $count semaines';
  }

  @override
  String dateMonthsAgo(int count) {
    return 'Il y a $count mois';
  }

  @override
  String get storeFilterAll => 'Tout';

  @override
  String get storeFilterMetadata => 'Métadonnées';

  @override
  String get storeFilterDownload => 'Télécharger';

  @override
  String get storeFilterUtility => 'Utilitaire';

  @override
  String get storeFilterLyrics => 'Paroles';

  @override
  String get storeFilterIntegration => 'Intégration';

  @override
  String get storeClearFilters => 'Effacer les filtres';

  @override
  String get storeAddRepoTitle => 'Ajouter un dépôt d\'extensions';

  @override
  String get storeAddRepoDescription =>
      'Saisissez l\'URL d\'un dépôt GitHub contenant un fichier registry.json pour parcourir et installer des extensions.';

  @override
  String get storeRepoUrlLabel => 'URL du dépôt';

  @override
  String get storeRepoUrlHint => 'https://github.com/user/repo';

  @override
  String get storeAddRepoButton => 'Ajouter un dépôt';

  @override
  String get storeChangeRepoTooltip => 'Changer de dépôt';

  @override
  String get storeRepoDialogTitle => 'Répertoire des extensions';

  @override
  String get storeRepoDialogCurrent => 'Dépôt actuel :';

  @override
  String get storeNewRepoUrlLabel => 'Nouvelle URL du dépôt';

  @override
  String get storeLoadError => 'Échec du chargement du dépôt';

  @override
  String get storeEmptyNoExtensions => 'Aucune extension disponible';

  @override
  String get storeEmptyNoResults => 'Aucune extension trouvée';

  @override
  String get extensionId => 'Identifiant';

  @override
  String get extensionError => 'Erreur';

  @override
  String get extensionCapabilities => 'Fonctionnalités';

  @override
  String get extensionMetadataProvider => 'Fournisseur de métadonnées';

  @override
  String get extensionDownloadProvider => 'Fournisseur de téléchargement';

  @override
  String get extensionLyricsProvider => 'Fournisseur de paroles';

  @override
  String get extensionUrlHandler => 'Gestionnaire d\'URL';

  @override
  String get extensionQualityOptions => 'Options de qualité';

  @override
  String get extensionPostProcessingHooks => 'Crochets de post-traitement';

  @override
  String get extensionPermissions => 'Autorisations';

  @override
  String get extensionSettings => 'Paramètres';

  @override
  String get extensionRemoveButton => 'Supprimer l\'extension';

  @override
  String get extensionUpdated => 'Mis à jour';

  @override
  String get extensionMinAppVersion => 'Version minimale de l\'application';

  @override
  String get extensionCustomTrackMatching =>
      'Correspondance personnalisée des pistes';

  @override
  String get extensionPostProcessing => 'Post-traitement';

  @override
  String extensionHooksAvailable(int count) {
    return '$count crochet(s) disponibles';
  }

  @override
  String extensionPatternsCount(int count) {
    return '$count motif(s)';
  }

  @override
  String extensionStrategy(String strategy) {
    return 'Stratégie : $strategy';
  }

  @override
  String get extensionsProviderPrioritySection =>
      'Priorité accordée aux prestataires';

  @override
  String get extensionsInstalledSection => 'Extensions installées';

  @override
  String get extensionsNoExtensions => 'Aucune extension installée';

  @override
  String get extensionsNoExtensionsSubtitle =>
      'Installez les fichiers .toadplayer-ext pour ajouter de nouveaux fournisseurs';

  @override
  String get extensionsInstallButton => 'Installer l\'extension';

  @override
  String get extensionsInfoTip =>
      'Les extensions permettent d\'ajouter de nouvelles métadonnées et de nouveaux fournisseurs de téléchargement. N\'installez que des extensions provenant de sources fiables.';

  @override
  String get extensionsInstalledSuccess =>
      'L\'extension a été installée avec succès';

  @override
  String extensionsInstalledCount(int count) {
    return '$count extensions ont été installées avec succès';
  }

  @override
  String extensionsInstallPartialSuccess(int installed, int attempted) {
    return '$installed extensions sur $attempted';
  }

  @override
  String get extensionsDownloadPriority => 'Priorité de téléchargement';

  @override
  String get extensionsDownloadPrioritySubtitle =>
      'Définissez l\'ordre des services de téléchargement';

  @override
  String get extensionsFallbackTitle => 'Extensions de secours';

  @override
  String get extensionsFallbackSubtitle =>
      'Choisissez les extensions de téléchargement installées qui peuvent servir de solution de secours';

  @override
  String get extensionsNoDownloadProvider =>
      'Aucune extension avec le fournisseur de téléchargement';

  @override
  String get extensionsMetadataPriority => 'Priorité des métadonnées';

  @override
  String get extensionsMetadataPrioritySubtitle =>
      'Définissez l\'ordre des sources de recherche et de métadonnées';

  @override
  String get extensionsNoMetadataProvider =>
      'Aucune extension avec fournisseur de métadonnées';

  @override
  String get extensionsSearchProvider => 'Moteur de recherche';

  @override
  String get extensionsNoCustomSearch =>
      'Aucune extension avec recherche personnalisée';

  @override
  String get extensionsSearchProviderDescription =>
      'Choisissez le service que vous souhaitez utiliser pour rechercher des morceaux';

  @override
  String get extensionsCustomSearch => 'Recherche personnalisée';

  @override
  String get extensionsErrorLoading =>
      'Erreur lors du chargement de l\'extension';

  @override
  String get qualityFlacLossless => 'FLAC sans perte';

  @override
  String get qualityFlacLosslessSubtitle => '16 bits / 44,1 kHz';

  @override
  String get qualityHiResFlac => 'FLAC haute résolution';

  @override
  String get qualityHiResFlacSubtitle => '24 bits / jusqu\'à 96 kHz';

  @override
  String get qualityHiResFlacMax => 'FLAC haute résolution Max';

  @override
  String get qualityHiResFlacMaxSubtitle => '24 bits / jusqu\'à 192 kHz';

  @override
  String get downloadLossyFormat => 'Format avec perte';

  @override
  String get downloadAutoConvert =>
      'Conversion automatique après le téléchargement';

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
      'Convertissez les téléchargements terminés dans un format compressé avec perte plus léger. Le fichier d\'origine n\'est remplacé qu\'une fois la conversion réussie.';

  @override
  String get downloadAutoConvertFormat => 'Format de sortie';

  @override
  String get downloadAutoConvertFormatSubtitle =>
      'Choisissez le format avec perte à utiliser pour les téléchargements qui viennent d\'être terminés.';

  @override
  String get downloadAutoConvertBitrate => 'Qualité de sortie';

  @override
  String get downloadAutoConvertBitrateSubtitle =>
      'Des débits binaires plus élevés permettent de conserver davantage de détails, mais génèrent des fichiers plus volumineux.';

  @override
  String get downloadAutoConvertMp3Subtitle =>
      'Compatibilité optimale entre les lecteurs et les appareils';

  @override
  String get downloadAutoConvertM4aSubtitle =>
      'Fichier audio AAC de haute qualité au format M4A';

  @override
  String get downloadAutoConvertOpusSubtitle =>
      'Une efficacité optimale pour les lecteurs d\'aujourd\'hui';

  @override
  String get downloadAskBeforeDownload => 'Demander avant de télécharger';

  @override
  String get downloadDirectory => 'Répertoire de téléchargement';

  @override
  String get downloadSeparateSinglesFolder =>
      'Dossier dédié aux titres individuels';

  @override
  String get downloadAlbumFolderStructure => 'Structure du dossier de l\'album';

  @override
  String get albumFolderStructureDescription =>
      'Choisissez la structure des dossiers d\'albums';

  @override
  String get downloadUseAlbumArtistForFolders =>
      'Utilisez l\'artiste de l\'album pour les dossiers';

  @override
  String get downloadUsePrimaryArtistOnly =>
      'Artiste principal uniquement pour les dossiers';

  @override
  String get downloadUsePrimaryArtistOnlyEnabled =>
      'Les noms des artistes mis en avant ont été supprimés du nom du dossier (par exemple : Justin Bieber, Quavo → Justin Bieber)';

  @override
  String get downloadUsePrimaryArtistOnlyDisabled =>
      'Nom complet de l\'artiste utilisé pour le nom du dossier';

  @override
  String get downloadSelectQuality => 'Sélectionner la qualité';

  @override
  String get downloadFrom => 'Télécharger depuis';

  @override
  String get appearanceAmoledDark => 'Noir Amoled';

  @override
  String get appearanceAmoledDarkSubtitle => 'Fond noir pur';

  @override
  String get appearanceHeroAnimations => 'Animations des héros';

  @override
  String get appearanceHeroAnimationsSubtitle =>
      'Des fenêtres contextuelles apparaissent entre les écrans, par exemple lors de l\'ouverture du lecteur';

  @override
  String get appearanceForceBlur => 'Utilisez toujours des effets de flou';

  @override
  String get appearanceForceBlurSubtitle =>
      'Activer l\'effet de flou de la barre de navigation même sur les appareils où cette option est désactivée par défaut. Cela peut nuire aux performances.';

  @override
  String get queueClearAll => 'Tout effacer';

  @override
  String get queueClearAllMessage =>
      'Êtes-vous sûr de vouloir supprimer tous les fichiers téléchargés ?';

  @override
  String get settingsAutoExportFailed =>
      'Échec de l\'exportation automatique des téléchargements';

  @override
  String get settingsAutoExportFailedSubtitle =>
      'Enregistrez automatiquement les téléchargements ayant échoué dans un fichier TXT';

  @override
  String get settingsDownloadNetwork => 'Réseau de téléchargement';

  @override
  String get settingsDownloadNetworkAny => 'Wi-Fi + données mobiles';

  @override
  String get settingsDownloadNetworkWifiOnly => 'Wi-Fi uniquement';

  @override
  String get settingsDownloadNetworkSubtitle =>
      'Choisissez le réseau à utiliser pour les téléchargements. Si vous sélectionnez « Wi-Fi uniquement », les téléchargements seront interrompus lorsque vous utilisez les données mobiles.';

  @override
  String get settingsConcurrentDownloads => 'Téléchargements simultanés';

  @override
  String get settingsConcurrentDownloadsSubtitle =>
      'Le téléchargement simultané de plusieurs titres est plus rapide, mais certains fournisseurs peuvent limiter le débit des requêtes parallèles.';

  @override
  String get concurrentDownloadsOne => '1 titre à la fois';

  @override
  String concurrentDownloadsCount(int count) {
    return 'Jusqu\'à $count titres à la fois';
  }

  @override
  String get albumFolderArtistAlbum => 'Artiste / Album';

  @override
  String get albumFolderArtistAlbumSubtitle =>
      'Albums/Nom de l\'artiste/Titre de l\'album/';

  @override
  String get albumFolderArtistYearAlbum => 'Artiste / [Année] Album';

  @override
  String get albumFolderArtistYearAlbumSubtitle =>
      'Albums/Nom de l\'artiste/[2005] Nom de l\'album/';

  @override
  String get albumFolderAlbumOnly => 'Album uniquement';

  @override
  String get albumFolderAlbumOnlySubtitle => 'Albums/Nom de l\'album/';

  @override
  String get albumFolderYearAlbum => '[Année] Album';

  @override
  String get albumFolderYearAlbumSubtitle => 'Albums/[2005] Titre de l\'album/';

  @override
  String get albumFolderArtistAlbumSingles => 'Artiste / Album + Singles';

  @override
  String get albumFolderArtistAlbumSinglesSubtitle =>
      'Artiste/Album/ et Artiste/Singles/';

  @override
  String get albumFolderArtistAlbumFlat => 'Artiste / Album (singles)';

  @override
  String get albumFolderArtistAlbumFlatSubtitle =>
      'Artiste/Album/ et Artiste/titre.flac';

  @override
  String get downloadedAlbumDeleteSelected => 'Supprimer la sélection';

  @override
  String downloadedAlbumDeleteMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'pistes',
      one: 'piste',
    );
    return 'Souhaitez-vous supprimer $count $_temp0 de cet album ?\n\nCela supprimera également les fichiers de l\'espace de stockage.';
  }

  @override
  String downloadedAlbumSelectedCount(int count) {
    return '$count sélectionnés';
  }

  @override
  String get downloadedAlbumTapToSelect =>
      'Appuyez sur les titres pour les sélectionner';

  @override
  String downloadedAlbumDeleteCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'pistes',
      one: 'piste',
    );
    return 'Supprimer $count $_temp0';
  }

  @override
  String get downloadedAlbumSelectToDelete =>
      'Sélectionnez les pistes à supprimer';

  @override
  String downloadedAlbumDiscHeader(int discNumber) {
    return 'Disque $discNumber';
  }

  @override
  String get recentTypeArtist => 'Artiste';

  @override
  String get recentTypeAlbum => 'Album';

  @override
  String get recentTypeSong => 'Titre';

  @override
  String get recentTypePlaylist => 'Playlist';

  @override
  String get recentEmpty => 'Aucun élément récent pour le moment';

  @override
  String get recentClearAllMessage =>
      'Effacer toutes les activités récentes ? L\'historique des téléchargements et les fichiers musicaux ne seront pas supprimés.';

  @override
  String get recentShowAllDownloads => 'Afficher tous les téléchargements';

  @override
  String recentPlaylistInfo(String name) {
    return 'Playlist : $name';
  }

  @override
  String get discographyDownload => 'Télécharger la discographie';

  @override
  String get discographyDownloadAll => 'Tout télécharger';

  @override
  String discographyDownloadAllSubtitle(int count, int albumCount) {
    return '$count titres issus de $albumCount albums';
  }

  @override
  String get discographyAlbumsOnly => 'Albums uniquement';

  @override
  String discographyAlbumsOnlySubtitle(int count, int albumCount) {
    return '$count titres issus de $albumCount albums';
  }

  @override
  String get discographySinglesOnly => 'Uniquement les singles et les EP';

  @override
  String discographySinglesOnlySubtitle(int count, int albumCount) {
    return '$count titres issus de $albumCount singles';
  }

  @override
  String get discographySelectAlbums => 'Sélectionner des albums...';

  @override
  String get discographySelectAlbumsSubtitle =>
      'Choisissez des albums ou des titres spécifiques';

  @override
  String get discographyFetchingTracks => 'Chargement des pistes...';

  @override
  String discographyFetchingAlbum(int current, int total) {
    return 'Récupération de $current sur $total...';
  }

  @override
  String get discographyDownloadSelected => 'Télécharger la sélection';

  @override
  String discographyAddedToQueue(int count) {
    return '$count titres ont été ajoutés à la file d\'attente';
  }

  @override
  String discographySkippedDownloaded(int added, int skipped) {
    return '$added ajouté, $skipped déjà téléchargé';
  }

  @override
  String get discographyNoAlbums => 'Aucun album disponible';

  @override
  String get discographyFailedToFetch =>
      'Impossible de récupérer certains albums';

  @override
  String get sectionStorageAccess => 'Accès au stockage';

  @override
  String get allFilesAccess => 'Accès à tous les fichiers';

  @override
  String get allFilesAccessEnabledSubtitle =>
      'Peut écrire dans n\'importe quel dossier';

  @override
  String get allFilesAccessDisabledSubtitle =>
      'Réservé aux dossiers multimédias uniquement';

  @override
  String get allFilesAccessDescription =>
      'Activez cette option si vous rencontrez des erreurs d\'écriture lors de l\'enregistrement dans des dossiers personnalisés. À partir d\'Android 13, l\'accès à certains répertoires est restreint par défaut.';

  @override
  String get allFilesAccessDeniedMessage =>
      'L\'autorisation a été refusée. Veuillez activer manuellement l\'option « Accès à tous les fichiers » dans les paramètres système.';

  @override
  String get allFilesAccessDisabledMessage =>
      'L\'accès à tous les fichiers est désactivé. L\'application disposera d\'un accès limité au stockage.';

  @override
  String get settingsLocalLibrary => 'Bibliothèque locale';

  @override
  String get settingsLocalLibrarySubtitle =>
      'Analysez la musique et détectez les doublons';

  @override
  String get settingsCache => 'Stockage & Cache';

  @override
  String get settingsCacheSubtitle => 'Afficher la taille et vider le cache';

  @override
  String get libraryTitle => 'Bibliothèque locale';

  @override
  String get libraryScanSettings => 'Paramètres de numérisation';

  @override
  String get libraryEnableLocalLibrary => 'Activer la bibliothèque locale';

  @override
  String get libraryEnableLocalLibrarySubtitle =>
      'Analysez et gérez votre bibliothèque musicale';

  @override
  String get libraryFolder => 'Dossier de bibliothèque';

  @override
  String get libraryFolderHint => 'Appuyez pour sélectionner un dossier';

  @override
  String get libraryAddFolder => 'Ajouter un dossier de bibliothèque';

  @override
  String get libraryAddFolderSubtitle =>
      'Mémoire interne, carte SD, SSD ou autre disque externe';

  @override
  String get librarySourceOnline => 'En ligne';

  @override
  String get librarySourceOffline =>
      'Hors ligne. Reconnectez le périphérique de stockage pour restaurer ces morceaux.';

  @override
  String get librarySourceDisabled => 'Désactivé';

  @override
  String librarySourceScanCount(int scanned, int total, String progress) {
    return '$scanned fichiers analysés sur $total ($progress %)';
  }

  @override
  String get libraryExternalStorage => 'Stockage externe';

  @override
  String get libraryRemoveFolder => 'Supprimer le dossier de la bibliothèque';

  @override
  String get libraryRemoveFolderMessage =>
      'Supprimer ce dossier et les morceaux indexés qu\'il contient de Toadplayer ? Les fichiers audio présents sur le périphérique de stockage ne seront pas supprimés.';

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
  String get libraryShowDuplicateIndicator =>
      'Afficher l\'indicateur de doublons';

  @override
  String get libraryShowDuplicateIndicatorSubtitle =>
      'Afficher lors de la recherche de pistes existantes';

  @override
  String get libraryAutoScan => 'Analyse automatique';

  @override
  String get libraryAutoScanSubtitle =>
      'Analysez automatiquement votre bibliothèque à la recherche de nouveaux fichiers';

  @override
  String get libraryAutoScanOff => 'Désactivée';

  @override
  String get libraryAutoScanOnOpen => 'À chaque ouverture de l\'application';

  @override
  String get libraryAutoScanDaily => 'Tous les jours';

  @override
  String get libraryAutoScanWeekly => 'Hebdomadaire';

  @override
  String get libraryActions => 'Actions';

  @override
  String get libraryScan => 'Analyse de la bibliothèque';

  @override
  String get libraryScanSubtitle => 'Recherchez des fichiers audio';

  @override
  String get libraryScanSelectFolderFirst => 'Sélectionnez d\'abord un dossier';

  @override
  String get libraryCleanupMissingFiles => 'Nettoyage des fichiers manquants';

  @override
  String get libraryCleanupMissingFilesSubtitle =>
      'Supprimez les entrées correspondant aux fichiers qui n\'existent plus';

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
  String get libraryClear => 'Vider la bibliothèque';

  @override
  String get libraryClearSubtitle => 'Supprimez tous les titres numérisés';

  @override
  String get libraryClearConfirmTitle => 'Vider la bibliothèque';

  @override
  String get libraryClearConfirmMessage =>
      'Cette opération supprimera toutes les pistes numérisées de votre bibliothèque. Vos fichiers musicaux ne seront pas supprimés.';

  @override
  String get libraryAbout => 'À propos de la bibliothèque locale';

  @override
  String get libraryAboutDescription =>
      'Analyse votre bibliothèque musicale existante pour détecter les doublons lors du téléchargement. Prend en charge les formats FLAC, M4A, MP3, Opus et OGG. Les métadonnées sont extraites des balises des fichiers lorsqu\'elles sont disponibles.';

  @override
  String libraryTracksUnit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'pistes',
      one: 'piste',
    );
    return '$_temp0';
  }

  @override
  String libraryFilesUnit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'fichiers',
      one: 'fichier',
    );
    return '$_temp0';
  }

  @override
  String libraryLastScanned(String time) {
    return 'Dernière analyse : $time';
  }

  @override
  String get libraryLastScannedNever => 'Jamais';

  @override
  String get libraryScanning => 'En cours d\'analyse...';

  @override
  String get libraryScanFinalizing => 'Finalisation de la bibliothèque...';

  @override
  String get libraryScanPaused => 'Numérisation en pause';

  @override
  String libraryScanProgress(String progress, int total) {
    return '$progress % des $total fichiers';
  }

  @override
  String get libraryInLibrary => 'Dans la bibliothèque';

  @override
  String libraryRemovedMissingFiles(int count) {
    return '$count fichiers manquants ont été supprimés de la bibliothèque';
  }

  @override
  String get libraryCleared => 'Bibliothèque vidée';

  @override
  String get libraryStorageAccessRequired => 'Accès au stockage requis';

  @override
  String get libraryStorageAccessMessage =>
      'Toadplayer a besoin d\'un accès au stockage pour analyser votre bibliothèque musicale. Veuillez lui accorder l\'autorisation dans les paramètres.';

  @override
  String get librarySourceDownloaded => 'Téléchargé';

  @override
  String get librarySourceLocal => 'Locale';

  @override
  String get libraryFilterAll => 'Tout';

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
  String get libraryFilterDownloaded => 'Téléchargé';

  @override
  String get libraryFilterLocal => 'Locale';

  @override
  String get libraryFilterTitle => 'Filtres';

  @override
  String get libraryFilterReset => 'Réinitialiser';

  @override
  String get libraryFilterApply => 'Appliquer';

  @override
  String get libraryFilterSource => 'Source';

  @override
  String get libraryFilterQuality => 'Qualité';

  @override
  String get libraryFilterQualityHiRes => 'Haute résolution (24 bits)';

  @override
  String get libraryFilterQualityCD => 'CD (16 bits)';

  @override
  String get libraryFilterQualityLossy => 'Avec perte';

  @override
  String get libraryFilterFormat => 'Format';

  @override
  String get libraryFilterMetadata => 'Métadonnées';

  @override
  String get libraryFilterMetadataComplete => 'Métadonnées complètes';

  @override
  String get libraryFilterMetadataMissingAny => 'Métadonnées manquantes';

  @override
  String get libraryFilterMetadataMissingYear => 'Année manquante';

  @override
  String get libraryFilterMetadataMissingGenre => 'Genre manquant';

  @override
  String get libraryFilterMetadataMissingAlbumArtist =>
      'Artiste d\'album manquant';

  @override
  String get libraryFilterSort => 'Trier';

  @override
  String get libraryFilterSortLatest => 'Le plus récent';

  @override
  String get libraryFilterSortOldest => 'Le plus ancien';

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
  String get timeJustNow => 'Il y a quelques instants';

  @override
  String timeMinutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'il y a $count minutes',
      one: 'il y a 1 minute',
    );
    return '$_temp0';
  }

  @override
  String timeHoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'il y a $count heures',
      one: 'il y a 1 heure',
    );
    return '$_temp0';
  }

  @override
  String get tutorialWelcomeTitle => 'Bienvenue sur Toadplayer !';

  @override
  String get tutorialWelcomeDesc =>
      'Découvrez comment rechercher de la musique avec des extensions, choisir la qualité souhaitée et gérer vos téléchargements dans Toadplayer.';

  @override
  String get tutorialWelcomeTip1 =>
      'Effectuez une recherche à l\'aide d\'une extension installée ou collez un lien musical pris en charge';

  @override
  String get tutorialWelcomeTip2 =>
      'Choisissez parmi les qualités audio proposées par votre fournisseur de téléchargement';

  @override
  String get tutorialWelcomeTip3 =>
      'Intégrez automatiquement les métadonnées, la pochette, les paroles et les informations relatives à la sortie';

  @override
  String get tutorialSearchTitle => 'Trouver de la musique';

  @override
  String get tutorialSearchDesc =>
      'Effectuez une recherche à l\'aide de l\'extension que vous avez sélectionnée ou collez un lien musical pris en charge.';

  @override
  String get tutorialDownloadTitle => 'Télécharger de la musique';

  @override
  String get tutorialDownloadDesc =>
      'Choisissez une qualité disponible, lancez le téléchargement et suivez sa progression dans la file d\'attente.';

  @override
  String get tutorialLibraryTitle => 'Votre bibliothèque';

  @override
  String get tutorialLibraryDesc =>
      'La musique téléchargée et numérisée localement est classée dans votre bibliothèque.';

  @override
  String get tutorialLibraryTip1 =>
      'Gérez les téléchargements en cours, en attente et terminés depuis la file d\'attente de la bibliothèque';

  @override
  String get tutorialLibraryTip2 =>
      'Appuyez sur un morceau pour le lire avec le lecteur intégré';

  @override
  String get tutorialLibraryTip3 =>
      'Parcourez les titres, les albums et les playlists sous forme de liste ou de grille';

  @override
  String get tutorialExtensionsTitle => 'Extensions';

  @override
  String get tutorialExtensionsDesc =>
      'Les extensions permettent d\'ajouter des fonctionnalités de recherche, de téléchargement, de métadonnées, de paroles de morceaux et d\'autres intégrations.';

  @override
  String get tutorialExtensionsTip1 =>
      'Consultez l\'onglet « Dépôt » pour découvrir des extensions utiles';

  @override
  String get tutorialExtensionsTip2 =>
      'Choisissez les fournisseurs pour la recherche, les téléchargements, les métadonnées et les solutions de secours';

  @override
  String get tutorialExtensionsTip3 =>
      'Connectez les comptes lorsque cela est nécessaire et veillez à ce que les extensions soient à jour';

  @override
  String get tutorialSettingsTitle => 'Personnalisez votre expérience';

  @override
  String get tutorialSettingsDesc =>
      'Personnalisez les téléchargements, la lecture, le fonctionnement de la bibliothèque, l\'apparence et le stockage.';

  @override
  String get tutorialSettingsTip1 =>
      'Modifier l\'emplacement de téléchargement et l\'organisation des dossiers';

  @override
  String get tutorialSettingsTip2 =>
      'Définissez la qualité, le nombre de tâches simultanées, les noms de fichiers et les préférences de conversion';

  @override
  String get tutorialSettingsTip3 =>
      'Personnaliser le thème et l\'apparence de l\'application';

  @override
  String get tutorialReadyMessage =>
      'Vous êtes prêt. Sélectionnez vos extensions, puis effectuez une recherche ou collez un lien compatible.';

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
  String get libraryForceFullScan => 'Lancer une analyse complète';

  @override
  String get libraryForceFullScanSubtitle =>
      'Réanalysez tous les fichiers en ignorant le cache';

  @override
  String get cleanupOrphanedDownloads =>
      'Nettoyage des téléchargements orphelins';

  @override
  String get cleanupOrphanedDownloadsSubtitle =>
      'Supprimez les entrées de l\'historique correspondant aux fichiers qui n\'existent plus';

  @override
  String cleanupOrphanedDownloadsResult(int count) {
    return '$count entrées orphelines ont été supprimées de l\'historique';
  }

  @override
  String get cleanupOrphanedDownloadsNone =>
      'Aucune entrée orpheline n\'a été trouvée';

  @override
  String get cacheTitle => 'Stockage & Cache';

  @override
  String get cacheSummaryTitle => 'Présentation du cache';

  @override
  String get cacheSummarySubtitle =>
      'La suppression du cache n\'entraînera pas la suppression des fichiers musicaux téléchargés.';

  @override
  String cacheEstimatedTotal(String size) {
    return 'Utilisation estimée du cache : $size';
  }

  @override
  String get cacheSectionStorage => 'Données mises en cache';

  @override
  String get cacheSectionMaintenance => 'Entretien';

  @override
  String get cacheAppDirectory => 'Répertoire de cache de l\'application';

  @override
  String get cacheAppDirectoryDesc =>
      'Réponses HTTP, données WebView et autres données temporaires de l\'application.';

  @override
  String get cacheTempDirectory => 'Répertoire temporaire';

  @override
  String get cacheTempDirectoryDesc =>
      'Fichiers temporaires liés aux téléchargements et à la conversion audio.';

  @override
  String get cacheCoverImage => 'Cache des images de couverture';

  @override
  String get cacheCoverImageDesc =>
      'J\'ai téléchargé les pochettes de l\'album et des titres. Je les téléchargerai à nouveau lors de leur consultation.';

  @override
  String get cacheLibraryCover => 'Cache de couverture de bibliothèque';

  @override
  String get cacheLibraryCoverDesc =>
      'Pochettes extraites des fichiers musicaux locaux. Elles seront extraites à nouveau lors de la prochaine analyse.';

  @override
  String get libraryPlaybackNormalization => 'Normalisation du volume';

  @override
  String get libraryPlaybackNormalizationSubtitle =>
      'Équilibrer le volume entre les morceaux à l\'aide des balises ReplayGain ou R128, lorsqu\'elles sont présentes';

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
  String get cacheAudioAnalysis => 'Cache d\'analyse audio';

  @override
  String get cacheAudioAnalysisDesc =>
      'Spectrogrammes et résultats d\'analyse enregistrés. Réanalyse prévue lors de la prochaine ouverture.';

  @override
  String get cacheExploreFeed => 'Explorer le cache des flux';

  @override
  String get cacheExploreFeedDesc =>
      'Contenu de l\'onglet « Explorer » (nouvelles sorties, tendances). Se mettra à jour lors de votre prochaine visite.';

  @override
  String get cacheTrackLookup => 'Cache de recherche de piste';

  @override
  String get cacheTrackLookupDesc =>
      'Recherche d\'identifiant de titre sur Spotify/Deezer. La suppression des données peut ralentir les prochaines recherches.';

  @override
  String get cacheCleanupUnusedDesc =>
      'Supprimer les entrées orphelines de l\'historique des téléchargements et de la bibliothèque pour les fichiers manquants.';

  @override
  String get cacheNoData => 'Aucune donnée mise en cache';

  @override
  String cacheSizeWithFiles(String size, int count) {
    return '$size dans $count fichiers';
  }

  @override
  String cacheSizeOnly(String size) {
    return '$size';
  }

  @override
  String cacheEntries(int count) {
    return '$count entrées';
  }

  @override
  String cacheClearSuccess(String target) {
    return 'Effacé : $target';
  }

  @override
  String get cacheClearConfirmTitle => 'Vider le cache ?';

  @override
  String cacheClearConfirmMessage(String target) {
    return 'Cette opération effacera les données mises en cache pour $target. Les fichiers musicaux téléchargés ne seront pas supprimés.';
  }

  @override
  String get cacheClearAllConfirmTitle => 'Vider tout le cache ?';

  @override
  String get cacheClearAllConfirmMessage =>
      'Cette opération effacera toutes les catégories mises en cache sur cette page. Les fichiers musicaux téléchargés ne seront pas supprimés.';

  @override
  String get cacheClearAll => 'Vider tout le cache';

  @override
  String get cacheCleanupUnused => 'Nettoyer les données inutilisées';

  @override
  String get cacheCleanupUnusedSubtitle =>
      'Supprimer l\'historique des téléchargements orphelins et les entrées manquantes dans la bibliothèque';

  @override
  String cacheCleanupResult(int downloadCount, int libraryCount) {
    return 'Nettoyage terminé : $downloadCount téléchargements orphelins, $libraryCount entrées de bibliothèque manquantes';
  }

  @override
  String get cacheRefreshStats => 'Actualiser les statistiques';

  @override
  String get trackSaveCoverArt => 'Enregistrer la pochette';

  @override
  String get trackSaveLyrics => 'Enregistrer les paroles (.lrc)';

  @override
  String get trackSaveLyricsProgress => 'Enregistrement des paroles...';

  @override
  String get trackReEnrich => 'Réenrichir';

  @override
  String get trackReEnrichBatchSubtitle =>
      'Choisissez une mise à jour en ligne ou manuelle, puis vérifiez chaque modification avant de valider';

  @override
  String get trackReEnrichFieldCover => 'Illustration de couverture';

  @override
  String get trackReEnrichFieldLyrics => 'Paroles';

  @override
  String get trackReEnrichFieldBasicTags => 'Album, Album Artiste';

  @override
  String get trackReEnrichFieldTrackInfo => 'Numéro de piste & de disque';

  @override
  String get trackReEnrichFieldReleaseInfo => 'Date & ISRC';

  @override
  String get trackReEnrichFieldExtra => 'Genre, Label, Droits d\'auteur';

  @override
  String get trackReEnrichSelectAll => 'Tout sélectionner';

  @override
  String get trackReEnrichModeIsrc => 'ISRC uniquement';

  @override
  String get trackReEnrichModeIsrcSubtitle =>
      'Rechercher et ajouter l\'identifiant de l\'enregistrement sans modifier les autres balises';

  @override
  String get trackReEnrichModeMissing => 'Compléter les balises manquantes';

  @override
  String get trackReEnrichModeMissingSubtitle =>
      'Conserver les valeurs existantes et ne remplir que les champs vides';

  @override
  String get trackReEnrichModeReplace =>
      'Mettre à jour les balises sélectionnées';

  @override
  String get trackReEnrichModeReplaceSubtitle =>
      'Sélectionnez les valeurs existantes pouvant être remplacées par des métadonnées en ligne';

  @override
  String get trackReEnrichModeManual => 'Définir des valeurs communes';

  @override
  String get trackReEnrichModeManualSubtitle =>
      'Appliquer les mêmes valeurs à toutes les pistes sélectionnées';

  @override
  String get trackReEnrichManualFieldsTitle => 'Valeurs à appliquer';

  @override
  String get trackReEnrichManualHint =>
      'Laissez un champ vide pour conserver sa valeur actuelle. Les titres, numéros et codes ISRC des morceaux restent inchangés.';

  @override
  String get trackReEnrichFieldsTitle => 'Balises à mettre à jour';

  @override
  String get trackReEnrichReview => 'Vérifier les modifications';

  @override
  String get trackReEnrichReviewTitle =>
      'Vérifier les modifications apportées aux métadonnées';

  @override
  String trackReEnrichReviewSubtitle(int changeCount, int trackCount) {
    return '$changeCount modifications proposées sur $trackCount titres';
  }

  @override
  String get trackReEnrichNoChanges =>
      'Aucune modification des métadonnées n\'a été détectée pour les morceaux sélectionnés.';

  @override
  String get trackReEnrichApplyChanges => 'Appliquer les modifications';

  @override
  String get trackReEnrichRefreshOnline => 'Actualiser depuis Internet';

  @override
  String get trackEditMetadata => 'Modifier les métadonnées';

  @override
  String trackCoverSaved(String fileName) {
    return 'La pochette a été enregistrée sous le nom $fileName';
  }

  @override
  String get trackCoverNoSource =>
      'Aucune source d\'illustration de couverture disponible';

  @override
  String trackLyricsSaved(String fileName) {
    return 'Paroles enregistrées dans $fileName';
  }

  @override
  String get trackReEnrichProgress => 'Réenrichissement des métadonnées...';

  @override
  String get trackReEnrichSearching => 'Recherche de métadonnées en ligne...';

  @override
  String get trackReEnrichPreparing =>
      'Préparation des modifications des métadonnées...';

  @override
  String get trackReEnrichSuccess => 'Métadonnées réenrichies avec succès';

  @override
  String get trackReEnrichMetadataSaved => 'Métadonnées enregistrées';

  @override
  String get trackReEnrichLyricsUpdated => 'Paroles mises à jour';

  @override
  String get trackReEnrichLyricsPreserved =>
      'Aucune nouvelle parole n\'a été trouvée ; les paroles existantes ont été conservées';

  @override
  String get trackReEnrichLyricsDisabled =>
      'Paroles non mises à jour : le téléchargement des paroles est désactivé dans les paramètres';

  @override
  String get trackReEnrichFfmpegFailed =>
      'Échec de l\'intégration des métadonnées FFmpeg';

  @override
  String get queueFlacAction => 'File d\'attente FLAC';

  @override
  String queueFlacConfirmMessage(int count) {
    return 'Recherchez en ligne les correspondances pour les morceaux sélectionnés et ajoutez les téléchargements FLAC à la file d\'attente.\n\nLes fichiers existants ne seront ni modifiés ni supprimés.\n\nSeules les correspondances hautement fiables sont automatiquement ajoutées à la file d\'attente.\n\n$count sélectionnés';
  }

  @override
  String get queueFlacNoReliableMatches =>
      'Aucun résultat pertinent n\'a été trouvé en ligne pour cette sélection';

  @override
  String queueFlacQueuedWithSkipped(int addedCount, int skippedCount) {
    return '$addedCount titres ajoutés à la file d\'attente, $skippedCount titres ignorés';
  }

  @override
  String trackSaveFailed(String error) {
    return 'Échec : $error';
  }

  @override
  String get trackConvertFormat => 'Convertir le format';

  @override
  String get trackConvertTitle => 'Convertir un fichier audio';

  @override
  String get trackConvertTargetFormat => 'Format cible';

  @override
  String get trackConvertBitrate => 'Débit binaire';

  @override
  String get trackConvertKeepOriginal => 'Conserver le fichier d\'origine';

  @override
  String get trackConvertKeepOriginalDescription =>
      'Ajoutez le fichier converti en tant qu\'entrée distincte dans la bibliothèque';

  @override
  String get trackConvertConfirmTitle => 'Confirmer la conversion';

  @override
  String trackConvertConfirmMessage(
    String sourceFormat,
    String targetFormat,
    String bitrate,
  ) {
    return 'Convertir du format $sourceFormat au format $targetFormat avec un débit binaire de $bitrate ?\n\nLe fichier d\'origine sera supprimé après la conversion.';
  }

  @override
  String trackConvertConfirmMessageLossless(
    String sourceFormat,
    String targetFormat,
  ) {
    return 'Convertir de $sourceFormat vers $targetFormat ? (Sans perte — aucune perte de qualité)\n\nLe fichier d\'origine sera supprimé après la conversion.';
  }

  @override
  String trackConvertConfirmKeepOriginal(
    String sourceFormat,
    String targetFormat,
  ) {
    return 'Convertir du format $sourceFormat au format $targetFormat ?\n\nLe fichier d\'origine sera conservé et le fichier converti sera ajouté en tant qu\'entrée distincte dans la bibliothèque.';
  }

  @override
  String get trackConvertLosslessHint =>
      'Conversion sans perte — aucune perte de qualité';

  @override
  String get trackConvertConverting => 'Conversion audio en cours...';

  @override
  String trackConvertSuccess(String format) {
    return 'Conversion vers $format réussie';
  }

  @override
  String get trackConvertFailed => 'Échec de la conversion';

  @override
  String get cueSplitTitle => 'Fiche CUE fractionnée';

  @override
  String cueSplitAlbum(String album) {
    return 'Album : $album';
  }

  @override
  String cueSplitArtist(String artist) {
    return 'Artiste : $artist';
  }

  @override
  String cueSplitTrackCount(int count) {
    return '$count titres';
  }

  @override
  String get cueSplitConfirmTitle => 'Album CUE fractionné';

  @override
  String cueSplitConfirmMessage(String album, int count) {
    return 'Diviser « $album » en $count fichiers FLAC individuels ?\n\nLes fichiers seront enregistrés dans le même répertoire.';
  }

  @override
  String cueSplitSplitting(int current, int total) {
    return 'Fractionnement de la liste CUE... ($current/$total)';
  }

  @override
  String cueSplitSuccess(int count) {
    return 'Le fichier a été divisé en $count pistes avec succès';
  }

  @override
  String get cueSplitFailed => 'Échec de la division CUE';

  @override
  String get cueSplitNoAudioFile =>
      'Fichier audio introuvable pour cette liste CUE';

  @override
  String get cueSplitButton => 'Diviser en pistes';

  @override
  String get actionCreate => 'Créer';

  @override
  String get collectionFoldersTitle => 'Mes dossiers';

  @override
  String get collectionWishlist => 'Liste de souhaits';

  @override
  String get collectionLoved => 'Favoris';

  @override
  String get collectionFavoriteArtists => 'Artistes Favoris';

  @override
  String get collectionPlaylist => 'Playlist';

  @override
  String get collectionAddToPlaylist => 'Ajouter à la playlist';

  @override
  String get collectionCreatePlaylist => 'Créer une playlist';

  @override
  String get collectionNoPlaylistsYet => 'Aucune playlist pour le moment';

  @override
  String collectionPlaylistTracks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count titres',
      one: '1 titre',
    );
    return '$_temp0';
  }

  @override
  String collectionArtistCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count artistes',
      one: '1 artiste',
    );
    return '$_temp0';
  }

  @override
  String collectionAddedToPlaylist(String playlistName) {
    return 'Ajouté à « $playlistName »';
  }

  @override
  String collectionAlreadyInPlaylist(String playlistName) {
    return 'Déjà présent dans « $playlistName »';
  }

  @override
  String get collectionPlaylistNameHint => 'Nom de la playlist';

  @override
  String get collectionPlaylistNameRequired =>
      'Le nom de la playlist est requis';

  @override
  String get collectionRenamePlaylist => 'Renommer la playlist';

  @override
  String get collectionDeletePlaylist => 'Supprimer la playlist';

  @override
  String get collectionPlaylistRenamed => 'Playlist renommée';

  @override
  String get collectionWishlistEmptyTitle => 'La liste de souhaits est vide';

  @override
  String get collectionWishlistEmptySubtitle =>
      'Appuyez sur le signe « + » à côté des morceaux pour enregistrer ceux que vous souhaitez télécharger plus tard';

  @override
  String get collectionLovedEmptyTitle => 'Le dossier « Favoris » est vide';

  @override
  String get collectionLovedEmptySubtitle =>
      'Appuyez sur les morceaux que vous aimez pour les ajouter à vos favoris';

  @override
  String get collectionFavoriteArtistsEmptyTitle =>
      'Pas encore d\'artistes préférés';

  @override
  String get collectionFavoriteArtistsEmptySubtitle =>
      'Appuyez sur le cœur sur la page d\'un artiste pour le garder ici';

  @override
  String get collectionPlaylistEmptyTitle => 'La playlist est vide';

  @override
  String get collectionPlaylistEmptySubtitle =>
      'Appuyez longuement sur le bouton « + » sur n\'importe quel morceau pour l\'ajouter ici';

  @override
  String get collectionRemoveFromPlaylist => 'Supprimer de la playlist';

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
  String get collectionRemoveFromFolder => 'Supprimer du dossier';

  @override
  String collectionAddedToLoved(String trackName) {
    return '\"$trackName\" ajouté aux Favoris';
  }

  @override
  String collectionRemovedFromLoved(String trackName) {
    return '\"$trackName\" supprimé des Favoris';
  }

  @override
  String collectionAddedToWishlist(String trackName) {
    return '« $trackName » a été ajouté à la liste de souhaits';
  }

  @override
  String collectionRemovedFromWishlist(String trackName) {
    return '« $trackName » a été supprimé de la liste de souhaits';
  }

  @override
  String collectionAddedToFavoriteArtists(String artistName) {
    return '« $artistName » a été ajouté à vos artistes préférés';
  }

  @override
  String collectionRemovedFromFavoriteArtists(String artistName) {
    return '« $artistName » a été supprimé de vos artistes favoris';
  }

  @override
  String get trackOptionAddToLoved => 'Ajouter aux Favoris';

  @override
  String get trackOptionRemoveFromLoved => 'Supprimer des Favoris';

  @override
  String get trackOptionAddToWishlist => 'Ajouter à la liste de souhaits';

  @override
  String get trackOptionRemoveFromWishlist =>
      'Supprimer de la liste de souhaits';

  @override
  String get artistOptionAddToFavorites => 'Ajouter aux Artistes Favoris';

  @override
  String get artistOptionRemoveFromFavorites =>
      'Supprimer des Artistes Favoris';

  @override
  String get collectionPlaylistChangeCover => 'Changer l\'image de couverture';

  @override
  String get collectionPlaylistRemoveCover =>
      'Supprimer l\'image de couverture';

  @override
  String selectionConvertCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'titres',
      one: 'titre',
    );
    return 'Convertir $count $_temp0';
  }

  @override
  String get selectionConvertNoConvertible =>
      'Aucune piste convertible sélectionnée';

  @override
  String get selectionBatchConvertConfirmTitle => 'Conversion par lots';

  @override
  String selectionBatchConvertConfirmMessage(
    int count,
    String format,
    String bitrate,
  ) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'titres',
      one: 'titre',
    );
    return 'Convertir $count $_temp0 au format $format avec un débit binaire de $bitrate ?\n\nLes fichiers d\'origine seront supprimés après la conversion.';
  }

  @override
  String selectionBatchConvertConfirmMessageLossless(int count, String format) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'titres',
      one: 'titre',
    );
    return 'Convertir $count $_temp0 au format $format ? (Sans perte — aucune perte de qualité)\n\nLes fichiers d\'origine seront supprimés après la conversion.';
  }

  @override
  String selectionBatchConvertConfirmKeepOriginal(int count, String format) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'titres',
      one: 'titre',
    );
    return 'Convertir $count $_temp0 au format $format ?\n\nLes fichiers d\'origine seront conservés et les fichiers convertis seront ajoutés sous forme d\'entrées distinctes dans la bibliothèque.';
  }

  @override
  String selectionBatchConvertSuccess(int success, int total, String format) {
    return '$success pistes sur $total ont été converties au format $format';
  }

  @override
  String downloadedAlbumDownloadedCount(int count) {
    return '$count téléchargements';
  }

  @override
  String get downloadUseAlbumArtistForFoldersAlbumSubtitle =>
      'Dossier nommé d\'après la balise « Artiste de l\'album »';

  @override
  String get downloadUseAlbumArtistForFoldersTrackSubtitle =>
      'Dossier nommé d\'après la balise « Artiste » de la piste';

  @override
  String get lyricsProvidersTitle => 'Priorité au fournisseur de paroles';

  @override
  String get lyricsProvidersDescription =>
      'Activer, désactiver et réorganiser les sources de paroles. Les sources sont parcourues de haut en bas jusqu\'à ce que les paroles soient trouvées.';

  @override
  String get lyricsProvidersInfoText =>
      'Les fournisseurs de paroles d\'extension s\'exécutent avant les fournisseurs de paroles intégrés. Au moins un fournisseur doit rester activé.';

  @override
  String lyricsProvidersEnabledSection(int count) {
    return 'Activé ($count)';
  }

  @override
  String lyricsProvidersDisabledSection(int count) {
    return 'Désactivés ($count)';
  }

  @override
  String get lyricsProvidersAtLeastOne =>
      'Au moins un fournisseur doit rester activé';

  @override
  String get lyricsProvidersSaved =>
      'Priorité du fournisseur de paroles enregistrée';

  @override
  String get lyricsProvidersDiscardContent =>
      'Vous avez des modifications non enregistrées qui seront perdues.';

  @override
  String get lyricsProviderLrclibDesc =>
      'Base de données open source de paroles synchronisées';

  @override
  String get lyricsProviderNeteaseDesc =>
      'NetEase Cloud Music (idéal pour les titres asiatiques)';

  @override
  String get lyricsProviderMusixmatchDesc =>
      'La plus grande base de données de paroles (multilingue)';

  @override
  String get lyricsProviderAppleMusicDesc =>
      'Paroles synchronisées mot à mot (via un proxy)';

  @override
  String get lyricsProviderQqMusicDesc =>
      'QQ Music (idéal pour les morceaux chinois, API directe)';

  @override
  String get lyricsProviderLyricsPlusDesc =>
      'Paroles de karaoké mot à mot (Apple/Musixmatch/Spotify/QQ, via un proxy)';

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
  String get lyricsProviderExtensionDesc => 'Fournisseur d\'extensions';

  @override
  String get safMigrationTitle => 'Mise à jour du stockage requise';

  @override
  String get safMigrationMessage1 =>
      'Toadplayer utilise désormais le framework d\'accès au stockage Android (SAF) pour les téléchargements. Cela permet de résoudre les erreurs « autorisation refusée » sur Android 10 et versions ultérieures.';

  @override
  String get safMigrationMessage2 =>
      'Veuillez sélectionner à nouveau votre dossier de téléchargement pour passer au nouveau système de stockage.';

  @override
  String get safMigrationSuccess =>
      'Le dossier de téléchargement a été mis à jour en mode SAF';

  @override
  String get settingsDonate => 'Soutien au développement';

  @override
  String get settingsDonateSubtitle => 'Offrez un café au développeur';

  @override
  String get settingsBackup => 'Sauvegarde & Restauration';

  @override
  String get settingsBackupSubtitle =>
      'Transférer votre bibliothèque, votre historique et vos paramètres vers un nouvel appareil';

  @override
  String get backupTitle => 'Sauvegarde & Restauration';

  @override
  String get backupExportSectionTitle => 'Créer une sauvegarde';

  @override
  String get backupExportSectionDescription =>
      'Enregistrez vos paramètres, votre historique de téléchargement, les titres que vous avez aimés, votre liste de souhaits, vos artistes préférés et vos playlists dans un seul fichier que vous pourrez conserver ou transférer vers un autre téléphone.';

  @override
  String get backupExportButton => 'Créer un fichier de sauvegarde';

  @override
  String get backupImportSectionTitle => 'Restaurer la sauvegarde';

  @override
  String get backupImportSectionDescription =>
      'Sélectionnez un fichier de sauvegarde pour restaurer vos données. Cette opération remplacera les réglages actuels, l\'historique et la bibliothèque de cet appareil.';

  @override
  String get backupImportButton => 'Choisissez un fichier de sauvegarde';

  @override
  String get backupCreated => 'Sauvegarde créée';

  @override
  String get backupCreateFailed => 'Échec de la création de la sauvegarde';

  @override
  String get backupRestoreConfirmTitle => 'Restaurer cette sauvegarde ?';

  @override
  String get backupRestoreConfirmButton => 'Restaurer';

  @override
  String get backupRestored => 'La sauvegarde a été restaurée avec succès';

  @override
  String get backupRestoreFailed => 'Échec de la restauration de la sauvegarde';

  @override
  String get backupInvalidFile =>
      'Ce fichier n\'est pas une sauvegarde Toadplayer valide';

  @override
  String get backupRestoreRestartHint =>
      'Redémarrez l\'application pour vous assurer que toutes les modifications ont bien été prises en compte.';

  @override
  String get backupContentsTitle => 'Contenu de la sauvegarde';

  @override
  String get backupSettingsOnly => 'Paramètres uniquement';

  @override
  String get backupSelectHistory => 'Historique des téléchargements';

  @override
  String get backupSelectCollections => 'Fonds de la bibliothèque';

  @override
  String get backupSelectCollectionsDescription =>
      'Titres appréciés, liste de souhaits, artistes préférés, playlists et pochettes de playlists.';

  @override
  String get backupSelectExtensions => 'Les extensions et leurs paramètres';

  @override
  String get backupSelectedExportDescription =>
      'Enregistrez les catégories sélectionnées dans un fichier de sauvegarde. Les fichiers audio ne sont pas inclus.';

  @override
  String get backupSelectAtLeastOne =>
      'Sélectionnez au moins une catégorie pour créer une sauvegarde.';

  @override
  String get backupSelectedRestoreMessage =>
      'Seules les catégories répertoriées ci-dessous seront restaurées. Les catégories non incluses dans cette sauvegarde resteront inchangées. La restauration peut remplacer les données existantes et ne peut pas être annulée.';

  @override
  String get backupContentsSettings => 'Paramètres de l\'application';

  @override
  String backupContentsHistory(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'éléments',
      one: 'élément',
    );
    return '$count historique $_temp0';
  }

  @override
  String backupContentsLiked(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'titres',
      one: 'titre',
    );
    return '$count favoris $_temp0';
  }

  @override
  String backupContentsWishlist(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'titres',
      one: 'titre',
    );
    return '$count liste de souhaits $_temp0';
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
      other: '$count artistes préférés',
      one: '1 artiste préféré',
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
  String get backupIncludeSecrets =>
      'Inclure les informations d\'identification de l\'extension';

  @override
  String get backupIncludeSecretsDescription =>
      'Les jetons et les clés API des extensions seront enregistrés dans le fichier de sauvegarde. Veillez à ne pas divulguer ce fichier. Si l\'extension est désactivée, vous devrez les saisir à nouveau après la restauration.';

  @override
  String backupExtensionsRestoreFailed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'extensions',
      one: 'extension',
    );
    return '$count $_temp0 n\'ont pas pu être réinstallées. Installez-les manuellement à partir du dépôt.';
  }

  @override
  String get tooltipLoveAll => 'Tout aimer';

  @override
  String get tooltipAddToPlaylist => 'Ajouter à la playlist';

  @override
  String snackbarRemovedTracksFromLoved(int count) {
    return '$count titres supprimés des Favoris';
  }

  @override
  String snackbarAddedTracksToLoved(int count) {
    return '$count titres ajoutés aux Favoris';
  }

  @override
  String get dialogDownloadAllTitle => 'Tout télécharger';

  @override
  String dialogDownloadAllMessage(int count) {
    return 'Télécharger $count titres ?';
  }

  @override
  String get homeSkipAlreadyDownloaded =>
      'Ignorer les morceaux déjà téléchargés';

  @override
  String get homeGoToAlbum => 'Aller à l\'album';

  @override
  String get homeAlbumInfoUnavailable =>
      'Informations sur l\'album non disponibles';

  @override
  String get snackbarLoadingCueSheet => 'Chargement de la liste CUE...';

  @override
  String get snackbarMetadataSaved =>
      'Les métadonnées ont été enregistrées avec succès';

  @override
  String get snackbarFailedToEmbedLyrics =>
      'Impossible d\'intégrer les paroles';

  @override
  String get snackbarFailedToWriteStorage =>
      'Échec de l\'écriture sur le support de stockage';

  @override
  String snackbarError(String error) {
    return 'Erreur : $error';
  }

  @override
  String get snackbarNoActionDefined =>
      'Aucune action n\'est associée à ce bouton';

  @override
  String get noTracksFoundForAlbum => 'Aucun morceau trouvé pour cet album';

  @override
  String get downloadLocationSubtitle =>
      'Choisissez l\'emplacement où enregistrer vos morceaux téléchargés';

  @override
  String get storageAutomaticFolder => 'Dossier automatique';

  @override
  String get storageAutomaticDownloadFolder =>
      'Utilise « Download/Toadplayer » si l\'espace de stockage est accessible en écriture, sinon le stockage de l\'application';

  @override
  String get storageSafRecommended => 'Choisir un dossier (recommandé)';

  @override
  String get storageDownloadFolderHint =>
      'Dans le sélecteur de dossiers Android, ouvrez le dossier « Téléchargements » et sélectionnez « Toadplayer ». S\'il n\'existe pas, créez-le à l\'aide de l\'option « Nouveau dossier », puis appuyez sur « Utiliser ce dossier » pour autoriser l\'accès.';

  @override
  String get downloadFolderAccessLostTitle =>
      'Accès au dossier de téléchargement perdu';

  @override
  String get downloadFolderAccessLostSubtitle =>
      'Les téléchargements échoueront tant que vous n\'aurez pas resélectionné le dossier';

  @override
  String get downloadFolderReselect => 'Sélectionner à nouveau le dossier';

  @override
  String get downloadErrorSafPermissionLost =>
      'Autorisation SAF non valide ou révoquée. Veuillez reconfigurer l\'emplacement de téléchargement dans les Paramètres.';

  @override
  String get downloadErrorFolderAccessLost =>
      'Accès au dossier de téléchargement perdu. Veuillez sélectionner à nouveau votre dossier de téléchargement dans les Paramètres.';

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
    return 'Utilisez $artist, $title, $album, $track, $year, $date et $disc comme variables de remplacement.';
  }

  @override
  String get downloadFilenameInsertTag => 'Appuyez pour insérer une balise :';

  @override
  String get downloadSeparateSinglesEnabled =>
      'Les singles et les EP sont enregistrés dans un dossier séparé';

  @override
  String get downloadSeparateSinglesDisabled =>
      'Les singles et les albums sont enregistrés dans le même dossier';

  @override
  String get downloadArtistNameFilters => 'Filtres par nom d\'artiste';

  @override
  String get downloadCreatePlaylistSourceFolder =>
      'Dossier source de la playlist';

  @override
  String get downloadCreatePlaylistSourceFolderEnabled =>
      'Un sous-dossier est créé pour chaque playlist';

  @override
  String get downloadCreatePlaylistSourceFolderDisabled =>
      'Tous les morceaux sont enregistrés directement dans le dossier de téléchargement';

  @override
  String get downloadCreatePlaylistSourceFolderRedundant =>
      'Géré par les paramètres d\'organisation des dossiers';

  @override
  String get downloadSongLinkRegion => 'Région SongLink';

  @override
  String get downloadNetworkCompatibilityMode => 'Mode de compatibilité réseau';

  @override
  String get downloadNetworkCompatibilityModeEnabled =>
      'Les points de terminaison HTTP hérités sont autorisés ; la vérification TLS reste activée';

  @override
  String get downloadNetworkCompatibilityModeDisabled =>
      'Utilisation des paramètres réseau par défaut';

  @override
  String get downloadAllowLocalNetwork => 'Autoriser l\'accès au réseau local';

  @override
  String get downloadAllowLocalNetworkEnabled =>
      'Les requêtes vers des adresses locales ou privées sont autorisées (pour un proxy local ou un DNS personnalisé)';

  @override
  String get downloadAllowLocalNetworkDisabled =>
      'Les adresses locales/privées sont bloquées pour des raisons de sécurité';

  @override
  String get downloadSelectServiceToEnable =>
      'Choisissez un fournisseur proposant des options de qualité pour activer cette fonctionnalité';

  @override
  String get downloadEmbedLyricsDisabled =>
      'Activez d\'abord l\'intégration des métadonnées';

  @override
  String get downloadNeteaseIncludeTranslation =>
      'Netease : inclure la traduction';

  @override
  String get downloadNeteaseIncludeTranslationEnabled =>
      'Lignes de traduction en chinois incluses';

  @override
  String get downloadNeteaseIncludeTranslationDisabled =>
      'Paroles originales uniquement';

  @override
  String get downloadNeteaseIncludeRomanization =>
      'Netease : inclure la romanisation';

  @override
  String get downloadNeteaseIncludeRomanizationEnabled =>
      'Lignes de romanisation incluses';

  @override
  String get downloadNeteaseIncludeRomanizationDisabled =>
      'Pas de romanisation';

  @override
  String get downloadAppleQqMultiPerson =>
      'Apple / QQ : Paroles pour plusieurs personnes';

  @override
  String get downloadAppleQqMultiPersonEnabled =>
      'Étiquettes d\'intervenants incluses pour les duos et les morceaux en groupe';

  @override
  String get downloadAppleQqMultiPersonDisabled =>
      'Paroles standard sans indication du haut-parleur';

  @override
  String get downloadAppleElrcWordSync =>
      'Synchronisation des paroles Apple Music eLRC';

  @override
  String get downloadAppleElrcWordSyncEnabled =>
      'Conservation des horodatages bruts mot à mot';

  @override
  String get downloadAppleElrcWordSyncDisabled =>
      'Paroles d\'Apple Music, ligne par ligne, en toute sécurité';

  @override
  String get downloadMusixmatchLanguage => 'Langue Musixmatch';

  @override
  String get downloadMusixmatchLanguageAuto => 'Auto (langue d\'origine)';

  @override
  String get downloadFilterContributing => 'Filtrer les artistes participants';

  @override
  String get downloadFilterContributingEnabled =>
      'Les artistes ayant contribué à l\'album ont été supprimés du nom du dossier « Artiste de l\'album »';

  @override
  String get downloadFilterContributingDisabled =>
      'Chaîne « Artiste » de l\'album complet utilisée';

  @override
  String get downloadProvidersNoneEnabled => 'Aucun fournisseur n\'est activé';

  @override
  String get downloadMusixmatchLanguageCode => 'Code de langue';

  @override
  String get downloadMusixmatchLanguageHint => 'par exemple : en, de, ja';

  @override
  String get downloadMusixmatchLanguageDesc =>
      'Saisissez un code de langue BCP-47 (par exemple : en, de, ja) pour demander les paroles traduites à Musixmatch.';

  @override
  String get downloadMusixmatchAuto => 'Auto';

  @override
  String get downloadNetworkAnySubtitle =>
      'Utilisez le Wi-Fi ou les données mobiles';

  @override
  String get downloadNetworkWifiOnlySubtitle =>
      'Les téléchargements sont mis en pause lors de l\'utilisation des données mobiles';

  @override
  String get downloadSongLinkRegionDesc =>
      'Région utilisée lors de la résolution des liens vers les morceaux via SongLink. Sélectionnez le pays dans lequel vos services de streaming sont disponibles.';

  @override
  String get snackbarUnsupportedAudioFormat =>
      'Format audio non pris en charge';

  @override
  String get cacheRefresh => 'Actualiser';

  @override
  String dialogDownloadPlaylistsMessage(int trackCount, int playlistCount) {
    String _temp0 = intl.Intl.pluralLogic(
      trackCount,
      locale: localeName,
      other: 'titres',
      one: 'titre',
    );
    String _temp1 = intl.Intl.pluralLogic(
      playlistCount,
      locale: localeName,
      other: 'playlists',
      one: 'playlist',
    );
    return 'Télécharger $trackCount $_temp0 depuis $playlistCount $_temp1 ?';
  }

  @override
  String bulkDownloadPlaylistsButton(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'playlists',
      one: 'playlist',
    );
    return 'Télécharger $count $_temp0';
  }

  @override
  String get bulkDownloadSelectPlaylists =>
      'Sélectionnez les playlists à télécharger';

  @override
  String get snackbarSelectedPlaylistsEmpty =>
      'Les playlists sélectionnées ne contiennent aucun morceau';

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
  String get editMetadataAutoFill => 'Remplissage automatique en ligne';

  @override
  String get editMetadataAutoFillDesc =>
      'Choisissez une extension de métadonnées, sélectionnez les champs, puis vérifiez les données avant de l\'appliquer';

  @override
  String get editMetadataAutoFillSource => 'Source des métadonnées';

  @override
  String get editMetadataAutoFillSourceAutomatic =>
      'Automatique (priorité au fournisseur)';

  @override
  String get editMetadataAutoFillFind => 'Rechercher des métadonnées';

  @override
  String editMetadataAutoFillPreview(String source) {
    return 'Données provenant de $source';
  }

  @override
  String get editMetadataAutoFillCoverAvailable =>
      'Illustration de couverture disponible';

  @override
  String get editMetadataAutoFillApply => 'Appliquer les données sélectionnées';

  @override
  String editMetadataAutoFillDoneFromSource(int count, String source) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'champs',
      one: 'champ',
    );
    return 'Rempli $count $_temp0 ont été renseignés à partir de $source';
  }

  @override
  String get editMetadataAutoFillSearching => 'Recherche en ligne...';

  @override
  String get editMetadataAutoFillNoResults =>
      'Aucune métadonnée correspondante n\'a été trouvée en ligne';

  @override
  String get editMetadataAutoFillNoneSelected =>
      'Sélectionnez au moins un champ pour le remplir automatiquement';

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
  String get editMetadataFieldTitle => 'Titre';

  @override
  String get editMetadataFieldArtist => 'Artiste';

  @override
  String get editMetadataFieldAlbum => 'Album';

  @override
  String get editMetadataFieldAlbumArtist => 'Artiste de l\'album';

  @override
  String get editMetadataFieldDate => 'Date';

  @override
  String get editMetadataFieldTrackNum => 'Piste n°';

  @override
  String get editMetadataFieldDiscNum => 'Disque n°';

  @override
  String get editMetadataFieldGenre => 'Genre';

  @override
  String get editMetadataFieldIsrc => 'ISRC';

  @override
  String get editMetadataFieldLabel => 'Label';

  @override
  String get editMetadataFieldCopyright => 'Droits d\'auteur';

  @override
  String get editMetadataFieldCover => 'Illustration de couverture';

  @override
  String get editMetadataSelectAll => 'Tout';

  @override
  String get editMetadataSelectEmpty => 'Vide uniquement';

  @override
  String queueDownloadingCount(int count) {
    return 'Téléchargement ($count)';
  }

  @override
  String get queueFilteringIndicator => 'Filtrage...';

  @override
  String queueTrackCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count titres',
      one: '1 titre',
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
  String get queueEmptyAlbums => 'Aucun album téléchargé';

  @override
  String get queueEmptyAlbumsSubtitle =>
      'Téléchargez plusieurs titres d\'un album pour les écouter ici';

  @override
  String get queueEmptySingles => 'Pas de téléchargement individuel';

  @override
  String get queueEmptySinglesSubtitle =>
      'Les téléchargements de titres individuels apparaîtront ici';

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
      'Créez une playlist pour organiser vos morceaux';

  @override
  String get libraryDefaultView => 'Affichage par défaut';

  @override
  String get libraryDefaultViewLastUsed => 'Dernière utilisation';

  @override
  String get queueEmptyHistory => 'Aucun historique de téléchargement';

  @override
  String get queueEmptyHistorySubtitle =>
      'Les morceaux téléchargés apparaîtront ici';

  @override
  String get selectionAllPlaylistsSelected =>
      'Toutes les playlists sélectionnées';

  @override
  String get selectionTapPlaylistsToSelect =>
      'Appuyez sur les playlists pour les sélectionner';

  @override
  String get selectionSelectPlaylistsToDelete =>
      'Sélectionnez les playlists à supprimer';

  @override
  String get audioAnalysisTitle => 'Analyse de la qualité audio';

  @override
  String get audioAnalysisDescription =>
      'Vérifier la qualité sans perte à l\'aide d\'une analyse spectrale';

  @override
  String get audioAnalysisAnalyzing => 'Analyse audio en cours...';

  @override
  String get audioAnalysisSampleRate => 'Fréquence d\'échantillonnage';

  @override
  String get audioAnalysisCodec => 'Codec';

  @override
  String get audioAnalysisContainer => 'Conteneur';

  @override
  String get audioAnalysisDecodedFormat => 'Format décodé';

  @override
  String get audioAnalysisBitDepth => 'Nombre de bits';

  @override
  String get audioAnalysisChannels => 'Chaînes';

  @override
  String get audioAnalysisDuration => 'Durée';

  @override
  String get audioAnalysisNyquist => 'Nyquist';

  @override
  String get audioAnalysisFileSize => 'Taille';

  @override
  String get audioAnalysisDynamicRange => 'Plage dynamique';

  @override
  String get audioAnalysisPeak => 'Pic';

  @override
  String get audioAnalysisRms => 'RMS';

  @override
  String get audioAnalysisLufs => 'LUFS';

  @override
  String get audioAnalysisTruePeak => 'True Peak';

  @override
  String get audioAnalysisClipping => 'Coupure';

  @override
  String get audioAnalysisNoClipping => 'Pas de coupure';

  @override
  String get audioAnalysisSpectralCutoff => 'Limite spectrale';

  @override
  String get audioAnalysisCutoffNotDetected => 'Non détecté';

  @override
  String get audioAnalysisChannelStats => 'Statistiques par chaîne';

  @override
  String get audioAnalysisSamples => 'Échantillons';

  @override
  String get audioAnalysisRescan => 'Réanalyser';

  @override
  String get audioAnalysisSaveSpectrogram => 'Save Spectrogram';

  @override
  String audioAnalysisSpectrogramSaved(String fileName) {
    return 'Spectrogram saved to $fileName';
  }

  @override
  String get downloadRedownloadFakeHiRes =>
      'Télécharger à nouveau la fausse version haute résolution';

  @override
  String get downloadRedownloadFakeHiResSubtitle =>
      'Désactivé par défaut. Cochez « Téléchargements haute résolution » et ne remplacez les fichiers que si tous les échantillons audio sont conservés. Conservez l\'original en cas d\'échec de la vérification ou du traitement.';

  @override
  String get hiResCheckVerdictFakeCertain => 'Fausse haute résolution';

  @override
  String get hiResCheckReasonSampleHold =>
      'Chaque échantillon est répété : suréchantillonné par duplication';

  @override
  String get hiResCheckReasonInterpolation =>
      'Les échantillons intermédiaires sont interpolés de manière linéaire';

  @override
  String get hiResCheckTitle => 'Authenticité haute résolution';

  @override
  String get hiResCheckSummary =>
      'Vérifiez le spectre et la profondeur de bits active pour détecter d\'éventuels signes de suréchantillonnage ou de remplissage.';

  @override
  String get hiResCheckLimitedBandwidth => 'Bande passante limitée';

  @override
  String get hiResCheckNoEvidence =>
      'Aucun suréchantillonnage ni remplissage détecté';

  @override
  String get hiResCheckEstimatedCutoff => 'Seuil estimé';

  @override
  String get hiResCheckActiveBits => 'Bits actifs / stockés';

  @override
  String get hiResCheckBandwidthExplanation =>
      'Une fréquence de coupure inférieure peut résulter du mastering. Elle ne prouve pas, en soi, qu\'il y a eu suréchantillonnage.';

  @override
  String hiResCheckSampledExplanation(String seconds) {
    return 'Sur la base de $seconds secondes d\'enregistrement audio. Cette analyse ne permet pas de certifier l\'authenticité de la source originale.';
  }

  @override
  String get hiResCheckImagingEvidence =>
      'Le spectre présente des bandes symétriques, ce qui correspond à un suréchantillonnage.';

  @override
  String hiResCheckRateEvidence(String cutoff) {
    return 'Une forte atténuation en proximité de $cutoff et le niveau de bruit de fond mesuré laissent supposer une source à faible débit.';
  }

  @override
  String hiResCheckSteadyEnergy(String cutoff) {
    return 'L\'énergie au-dessus de $cutoff est globalement stable dans le segment analysé et pourrait correspondre à du bruit.';
  }

  @override
  String get hiResCheckRun => 'Vérifier';

  @override
  String get hiResCheckChecking =>
      'Vérification de l\'authenticité de la haute résolution...';

  @override
  String get hiResCheckVerdictFake =>
      'Probablement une fausse image haute résolution';

  @override
  String get hiResCheckVerdictStandard =>
      'Définition standard, rien à signaler';

  @override
  String get hiResCheckVerdictInconclusive =>
      'Résultat non concluant : le segment analysé est trop silencieux ou trop court';

  @override
  String get hiResCheckUnsupported =>
      'Seuls les fichiers FLAC et WAV peuvent être vérifiés';

  @override
  String hiResCheckFailed(String error) {
    return 'Échec de la vérification haute résolution : $error';
  }

  @override
  String hiResCheckReasonDepth(int declared, int effective) {
    return 'Déclare $declared bits, mais seuls les $effective bits contiennent des données';
  }

  @override
  String get audioAnalysisRescanning => 'Réanalyse du fichier audio...';

  @override
  String get extensionsHomeFeedProvider => 'Fournisseur de flux RSS';

  @override
  String get extensionsHomeFeedCountry => 'Home feed country';

  @override
  String get extensionsHomeFeedCountryDescription =>
      'Choose a country\'s Home recommendations without a VPN.';

  @override
  String get extensionsHomeFeedDescription =>
      'Choisissez l\'extension qui affiche le fil d\'actualité sur l\'écran principal';

  @override
  String get extensionsHomeFeedAuto => 'Auto';

  @override
  String get extensionsHomeFeedAutoSubtitle =>
      'Sélectionnez automatiquement la meilleure option disponible';

  @override
  String get extensionsHomeFeedOff => 'Désactivé';

  @override
  String get extensionsHomeFeedOffSubtitle =>
      'Ne pas afficher le fil d\'actualité sur l\'écran principal';

  @override
  String extensionsHomeFeedUse(String extensionName) {
    return 'Utiliser le fil d\'actualité de $extensionName';
  }

  @override
  String get extensionsNoHomeFeedExtensions =>
      'Aucune extension avec le flux principal';

  @override
  String get cancelDownloadTitle => 'Annuler le téléchargement ?';

  @override
  String cancelDownloadContent(String trackName) {
    return 'Cela annulera le téléchargement en cours de « $trackName ».';
  }

  @override
  String get cancelDownloadKeep => 'Conserver';

  @override
  String get queueCancelledTitle => 'Téléchargement annulé';

  @override
  String get queueCancelledMessage =>
      'Ce téléchargement a été annulé. Veuillez réessayer ou le supprimer de la file d\'attente.';

  @override
  String get metadataSaveFailedFfmpeg =>
      'Échec de l\'enregistrement des métadonnées via FFmpeg';

  @override
  String get metadataSaveFailedStorage =>
      'Échec de la réécriture des métadonnées sur le support de stockage';

  @override
  String snackbarFolderPickerFailed(String error) {
    return 'Impossible d\'ouvrir le sélecteur de dossiers : $error';
  }

  @override
  String notifDownloadingTrack(String trackName) {
    return 'Téléchargement de $trackName';
  }

  @override
  String notifFinalizingTrack(String trackName) {
    return 'Finalisation de $trackName';
  }

  @override
  String get notifEmbeddingMetadata => 'Intégration des métadonnées...';

  @override
  String notifAlreadyInLibraryCount(int completed, int total) {
    return 'Déjà dans la bibliothèque ($completed/$total)';
  }

  @override
  String get notifAlreadyInLibrary => 'Déjà dans la bibliothèque';

  @override
  String notifDownloadCompleteCount(int completed, int total) {
    return 'Téléchargement terminé ($completed/$total)';
  }

  @override
  String get notifDownloadComplete => 'Télécharger l\'intégralité';

  @override
  String notifDownloadsFinished(int completed, int failed) {
    return 'Téléchargements terminés ($completed terminé, $failed en échec)';
  }

  @override
  String get notifVerificationRequiredTitle => 'Vérification requise';

  @override
  String get notifVerificationRequiredBody =>
      'Ouvrez l\'application pour terminer la vérification et reprendre les téléchargements';

  @override
  String get notifAllDownloadsComplete =>
      'Tous les téléchargements sont terminés';

  @override
  String notifTracksDownloadedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pistes téléchargées avec succès',
      one: '1 piste téléchargée avec succès',
    );
    return '$_temp0';
  }

  @override
  String notifDownloadsFinishedBody(int completed, int failed) {
    String _temp0 = intl.Intl.pluralLogic(
      completed,
      locale: localeName,
      other: '$completed titres téléchargés',
      one: '1 titre téléchargé',
    );
    String _temp1 = intl.Intl.pluralLogic(
      failed,
      locale: localeName,
      other: '$failed échecs',
      one: '1 échec',
    );
    return '$_temp0, $_temp1';
  }

  @override
  String get notifDownloadsCanceledTitle => 'Téléchargements annulés';

  @override
  String notifDownloadsCanceledBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count téléchargements annulés par l\'utilisateur',
      one: '1 téléchargement annulé par l\'utilisateur',
    );
    return '$_temp0';
  }

  @override
  String get notifScanningLibrary => 'Numérisation de la bibliothèque locale';

  @override
  String notifLibraryScanProgressWithTotal(
    int scanned,
    int total,
    int percentage,
  ) {
    return '$scanned/$total fichiers • $percentage %';
  }

  @override
  String notifLibraryScanProgressNoTotal(int scanned) {
    return '$scanned fichiers analysés';
  }

  @override
  String get notifLibraryScanComplete => 'Analyse de la bibliothèque terminée';

  @override
  String notifLibraryScanCompleteBody(int count) {
    return '$count titres indexés';
  }

  @override
  String notifLibraryScanExcluded(int count) {
    return '$count exclus';
  }

  @override
  String notifLibraryScanErrors(int count) {
    return '$count erreurs';
  }

  @override
  String get notifLibraryScanFailed => 'Échec de l\'analyse de la bibliothèque';

  @override
  String get notifLibraryScanInterruptedBody =>
      'The previous library scan was interrupted. Scan the folder again to continue. Your indexed tracks are still available.';

  @override
  String get notifLibraryScanCancelled =>
      'Annulation de la numérisation de la bibliothèque';

  @override
  String get notifLibraryScanStopped =>
      'L\'analyse a été interrompue avant d\'être terminée.';

  @override
  String get notifLibraryScanPaused =>
      'La numérisation de la bibliothèque est en pause';

  @override
  String notifLibraryScanPausedBody(int count) {
    return '$count fichiers analysés. Rendez-vous dans les paramètres de la bibliothèque locale pour reprendre à partir de là.';
  }

  @override
  String notifDownloadingUpdate(String version) {
    return 'Télécharger Toadplayer v$version';
  }

  @override
  String notifUpdateProgress(String received, String total, int percentage) {
    return '$received / $total Mo • $percentage%';
  }

  @override
  String get notifUpdateReady => 'Prêt pour la mise à jour';

  @override
  String notifUpdateReadyBody(String version) {
    return 'Toadplayer v$version a été téléchargé. Appuyez pour l\'installer.';
  }

  @override
  String get notifUpdateFailed => 'Échec de la mise à jour';

  @override
  String get notifUpdateFailedBody =>
      'Impossible de télécharger la mise à jour. Veuillez réessayer plus tard.';

  @override
  String get searchTracks => 'Titres';

  @override
  String get homeSearchHintDefault =>
      'Collez une URL valide ou effectuez une recherche...';

  @override
  String homeSearchHintProvider(String providerName) {
    return 'Rechercher avec $providerName...';
  }

  @override
  String get homeImportCsvTooltip => 'Importer une playlist (CSV, M3U)';

  @override
  String get homeChangeSearchProviderTooltip =>
      'Changer de moteur de recherche';

  @override
  String get actionPaste => 'Coller';

  @override
  String get tutorialSearchHint => 'Collez ou effectuez une recherche...';

  @override
  String get tutorialDownloadCompletedSemantics => 'Téléchargement terminé';

  @override
  String get tutorialDownloadInProgressSemantics => 'Téléchargement en cours';

  @override
  String get tutorialStartDownloadSemantics => 'Lancer le téléchargement';

  @override
  String get optionsEmbedMetadata => 'Intégrer des métadonnées';

  @override
  String get optionsEmbedMetadataSubtitleOn =>
      'Ajouter des métadonnées, des pochettes et des paroles intégrées aux fichiers';

  @override
  String get optionsEmbedMetadataSubtitleOff =>
      'Désactivé (avancé) : ignorer l\'intégration de toutes les métadonnées';

  @override
  String get trackCoverNoEmbeddedArt =>
      'Aucune pochette d\'album n\'a été trouvée';

  @override
  String get trackCoverReplace => 'Remplacer la pochette';

  @override
  String get trackCoverPick => 'Choisir une pochette';

  @override
  String get trackCoverClearSelected => 'Supprimer la pochette sélectionnée';

  @override
  String get trackCoverCurrent => 'Pochette actuelle';

  @override
  String get trackCoverSelected => 'Pochette choisie';

  @override
  String get trackCoverReplaceNotice =>
      'La pochette sélectionnée remplacera la pochette actuellement intégrée lorsque vous appuierez sur « Enregistrer ».';

  @override
  String get trackCoverResolution => 'Résolution de la couverture';

  @override
  String get trackCoverResolutionHint =>
      'Définit la longueur maximale de l\'image lors de l\'enregistrement. L\'agrandissement n\'apporte pas davantage de détails à l\'image.';

  @override
  String get trackCoverResizeFailed =>
      'L\'image de couverture n\'a pas pu être redimensionnée. Veuillez essayer une autre taille ou une autre image.';

  @override
  String get actionStop => 'Arrêter';

  @override
  String get queueFinalizingDownload => 'Téléchargement en cours';

  @override
  String get queueDownloadNext => 'Télécharger le suivant';

  @override
  String get queueMoveUp => 'Remonter';

  @override
  String get queueMoveDown => 'Descendre';

  @override
  String get editMetadataMusicBrainzButton => 'Récupérer depuis MusicBrainz';

  @override
  String get editMetadataMusicBrainzFilled =>
      'Mise à jour à partir de MusicBrainz';

  @override
  String get editMetadataMusicBrainzNothing =>
      'Aucun résultat trouvé sur MusicBrainz';

  @override
  String get editMetadataMusicBrainzNeedsIsrc => 'Nécessite une balise ISRC';

  @override
  String get nowPlayingRepeatOff => 'Répétition désactivée';

  @override
  String get nowPlayingRepeatAll => 'Tout répéter';

  @override
  String get nowPlayingRepeatOne => 'Répéter une fois';

  @override
  String queueNetworkFailedOffline(int count) {
    return '$count téléchargements ont échoué en mode hors ligne';
  }

  @override
  String get queueDownloadedFileMissing => 'Fichier téléchargé manquant';

  @override
  String get queueCheckingDownloadedFile =>
      'Vérification du fichier téléchargé...';

  @override
  String get queueDownloadCompleted => 'Téléchargement terminé';

  @override
  String get queueRateLimitTitle => 'Débit limité';

  @override
  String get queueRateLimitMessage =>
      'Ce titre est peut-être encore disponible. Patientez quelques minutes, réduisez le nombre de téléchargements simultanés, puis réessayez.';

  @override
  String appearanceSelectAccentColor(String hex) {
    return 'Sélectionnez une couleur d\'accentuation $hex';
  }

  @override
  String get logAutoScrollOn => 'Défilement automatique activé';

  @override
  String get logAutoScrollOff => 'Défilement automatique désactivé';

  @override
  String get logCopyLogs => 'Copier les journaux';

  @override
  String get logClearSearch => 'Effacer la recherche';

  @override
  String get logIssueIspBlockingLabel => 'BLOCAGE PAR LE FAI DÉTECTÉ';

  @override
  String get logIssueIspBlockingDescription =>
      'Il se peut que votre fournisseur d\'accès Internet bloque l\'accès aux services de téléchargement';

  @override
  String get logIssueIspBlockingSuggestion =>
      'Essayez d\'utiliser un VPN ou de modifier vos paramètres DNS pour les remplacer par 1.1.1.1 ou 8.8.8.8';

  @override
  String get logIssueRateLimitedLabel => 'NOMBRE LIMITÉ';

  @override
  String get logIssueRateLimitedDescription =>
      'Trop de requêtes adressées au service';

  @override
  String get logIssueRateLimitedSuggestion =>
      'Attendez quelques minutes avant de réessayer';

  @override
  String get logIssueNetworkErrorLabel => 'ERREUR DE RÉSEAU';

  @override
  String get logIssueNetworkErrorDescription =>
      'Problèmes de connexion détectés';

  @override
  String get logIssueNetworkErrorSuggestion =>
      'Vérifiez votre connexion Internet';

  @override
  String get logIssueTrackNotFoundLabel => 'PISTE INTROUVABLE';

  @override
  String get logIssueTrackNotFoundDescription =>
      'Certains titres n\'ont pas pu être trouvés sur les plateformes de téléchargement';

  @override
  String get logIssueTrackNotFoundSuggestion =>
      'Il se peut que ce morceau ne soit pas disponible en qualité sans perte';

  @override
  String get clickableLookingUpArtist => 'Recherche d\'artiste...';

  @override
  String clickableInformationUnavailable(String type) {
    return 'Informations sur $type non disponibles';
  }

  @override
  String get extensionDetailsTags => 'Balises';

  @override
  String get extensionDetailsInformation => 'Information';

  @override
  String get extensionUtilityFunctions => 'Fonctions utilitaires';

  @override
  String get actionDismiss => 'Ignorer';

  @override
  String get setupChangeFolderTooltip => 'Changer de dossier';

  @override
  String a11yOpenTrackByArtist(String trackName, String artistName) {
    return 'Écouter le morceau $trackName de $artistName';
  }

  @override
  String a11yOpenItem(String itemType, String name) {
    return 'Ouvrir $itemType $name';
  }

  @override
  String a11yOpenItemCount(String title, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'éléments',
      one: 'item',
    );
    return 'Ouvrir $title, $count $_temp0';
  }

  @override
  String a11yOpenAlbumByArtistTrackCount(
    String albumName,
    String artistName,
    int trackCount,
  ) {
    return 'Ouvrir l\'album $albumName de $artistName, $trackCount titres';
  }

  @override
  String a11yTrackByArtist(String trackName, String artistName) {
    return '$trackName de $artistName';
  }

  @override
  String a11ySelectAlbum(String albumName) {
    return 'Sélectionnez l\'album $albumName';
  }

  @override
  String a11yOpenAlbum(String albumName) {
    return 'Ouvrir l\'album $albumName';
  }

  @override
  String get settingsFiles => 'Fichiers & Dossiers';

  @override
  String get settingsFilesSubtitle =>
      'Emplacement de téléchargement, nom de fichier, structure des dossiers';

  @override
  String get settingsMetadata => 'Métadonnées';

  @override
  String get settingsMetadataSubtitle =>
      'Pochettes, balises, ReplayGain, fournisseurs';

  @override
  String get settingsLyrics => 'Paroles';

  @override
  String get settingsLyricsSubtitle =>
      'Intégration, mode, fournisseurs, options linguistiques';

  @override
  String get settingsApp => 'Application';

  @override
  String get settingsAppSubtitle =>
      'Mises à jour, données, dépôt d\'extension, débogage';

  @override
  String get sectionMetadataProviders => 'Fournisseurs';

  @override
  String get sectionDuplicates => 'Doublons';

  @override
  String get sectionLyricsProviderOptions => 'Options du fournisseur';

  @override
  String get metadataProvidersTitle =>
      'Priorité des fournisseurs de métadonnées';

  @override
  String get metadataProvidersSubtitle =>
      'Faites glisser pour définir l\'ordre des sources de recherche et de métadonnées';

  @override
  String get downloadDeduplication => 'Éviter les téléchargements en double';

  @override
  String get downloadDeduplicationEnabled =>
      'Les morceaux déjà téléchargés seront ignorés';

  @override
  String get downloadDeduplicationWithQualityVariants =>
      'Les fichiers existants correspondant à la qualité sélectionnée seront ignorés';

  @override
  String get downloadDeduplicationDisabled =>
      'Tous les morceaux seront téléchargés, quel que soit l\'historique';

  @override
  String get downloadQualityVariants =>
      'Autoriser différentes versions de qualité';

  @override
  String get downloadQualityVariantsDescription =>
      'Conserver toutes les versions de qualité ; n\'ajouter la note de qualité au nom de fichier que si ce nom est déjà utilisé';

  @override
  String get trackOptionDownloadQualityVariant =>
      'Télécharger une autre version de qualité';

  @override
  String get downloadFallbackExtensions => 'Extensions de secours';

  @override
  String get downloadFallbackExtensionsSubtitle =>
      'Choisissez les extensions pouvant servir de solution de secours';

  @override
  String get editMetadataFieldDateHint => 'AAAA-MM-JJ ou AAAA';

  @override
  String get editMetadataFieldTrackTotal => 'Total des pistes';

  @override
  String get editMetadataFieldDiscTotal => 'Total des disques';

  @override
  String get editMetadataFieldComposer => 'Compositeur';

  @override
  String get editMetadataFieldComment => 'Commentaire';

  @override
  String get trackAlbumType => 'Type de publication';

  @override
  String get editMetadataFieldAlbumTypeHint =>
      'Album, single, EP, compilation...';

  @override
  String get editMetadataFieldExplicit => 'Explicite';

  @override
  String get editMetadataFieldExplicitHint =>
      'Signaler ce morceau comme contenant du contenu explicite';

  @override
  String get metadataExplicitValue => 'Explicite';

  @override
  String get editMetadataFieldUpc => 'UPC / Code-barres';

  @override
  String get editMetadataFieldUpcHint =>
      'UPC, EAN ou GTIN sous forme numérique';

  @override
  String get editMetadataAdvanced => 'Avancé';

  @override
  String get libraryFilterMetadataMissingTrackNumber =>
      'Numéro de piste manquant';

  @override
  String get libraryFilterMetadataMissingDiscNumber =>
      'Numéro de disque manquant';

  @override
  String get libraryFilterMetadataMissingArtist => 'Artiste manquant';

  @override
  String get libraryFilterMetadataIncorrectIsrcFormat =>
      'Format ISRC incorrect';

  @override
  String get libraryFilterMetadataMissingIsrc => 'ISRC manquant';

  @override
  String get libraryFilterMetadataMissingLabel => 'Label manquant';

  @override
  String collectionDeletePlaylistsMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'playlists',
      one: 'playlist',
    );
    return 'Supprimer $count $_temp0?';
  }

  @override
  String collectionPlaylistsDeleted(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'playlists',
      one: 'playlist',
    );
    return '$count $_temp0 supprimées';
  }

  @override
  String collectionAddedTracksToPlaylist(int count, String playlistName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'titres',
      one: 'titre',
    );
    return 'Ajout de $count $_temp0 à $playlistName';
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
      other: 'titres',
      one: 'titre',
    );
    return 'Ajout de $count $_temp0 à $playlistName ($alreadyCount titres déjà présents dans la playlist)';
  }

  @override
  String itemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'éléments',
      one: 'élément',
    );
    return '$count $_temp0';
  }

  @override
  String trackReEnrichSuccessWithFailures(
    int successCount,
    int total,
    int failedCount,
  ) {
    return 'Les métadonnées ont été réenrichies avec succès ($successCount/$total) - Échec : $failedCount';
  }

  @override
  String selectionDeleteTracksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'titres',
      one: 'titre',
    );
    return 'Supprimer $count $_temp0';
  }

  @override
  String queueDownloadSpeedStatus(String speed) {
    return 'Téléchargement - $speed Mo/s';
  }

  @override
  String get queueDownloadStarting => 'C\'est parti...';

  @override
  String get queueCheckingDownloadSession =>
      'Vérification de la session de téléchargement...';

  @override
  String get queueResolvingDownloadMetadata =>
      'Récupération des métadonnées du morceau...';

  @override
  String get queueResolvingDownloadStream => 'Préparation du flux audio...';

  @override
  String get queueWaitingForVerification => 'En attente de vérification...';

  @override
  String get queueResumingAfterVerification => 'Reprise après vérification...';

  @override
  String get a11ySelectTrack => 'Sélectionner une piste';

  @override
  String get a11yDeselectTrack => 'Désélectionner la piste';

  @override
  String a11yPlayTrackByArtist(String trackName, String artistName) {
    return 'Écouter $trackName de $artistName';
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
    return 'Nécessite la version v$version+';
  }

  @override
  String get logIssueSummary => 'Résumé du problème';

  @override
  String logTotalErrors(int count) {
    return 'Nombre total d\'erreurs : $count';
  }

  @override
  String logAffectedDomains(String domains) {
    return 'Concerne : $domains';
  }

  @override
  String get libraryScanCancelled => 'Analyse annulée';

  @override
  String get libraryScanCancelledSubtitle =>
      'Vous pouvez relancer l\'analyse dès que vous êtes prêt.';

  @override
  String libraryDownloadsHistoryExcluded(int count) {
    return '$count dans l\'historique des téléchargements (exclu de la liste)';
  }

  @override
  String get downloadNativeWorker => 'Tâche de téléchargement native';

  @override
  String get downloadNativeWorkerSubtitle =>
      'Service d\'arrière-plan Android pour le téléchargement d\'extensions';

  @override
  String get extensionServiceStatus => 'État du service';

  @override
  String get extensionServiceHealth => 'Santé du service';

  @override
  String extensionHealthChecksConfigured(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'vérifications',
      one: 'vérification',
    );
    return '$count $_temp0 configurées';
  }

  @override
  String get extensionOauthConnectHint =>
      'Appuyez sur « Se connecter à Spotify » pour remplir ce champ.';

  @override
  String extensionLastChecked(String time) {
    return 'Dernière vérification à $time';
  }

  @override
  String get extensionRefreshStatus => 'Actualiser l\'état';

  @override
  String get extensionCustomUrlHandling => 'Gestion des URL personnalisées';

  @override
  String get extensionCustomUrlHandlingSubtitle =>
      'Cette extension prend en charge les liens provenant de ces sites';

  @override
  String get extensionCustomUrlHandlingShareHint =>
      'Partagez des liens provenant de ces sites vers Toadplayer et cette extension s\'en chargera.';

  @override
  String extensionSettingsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'paramètres',
      one: 'paramètre',
    );
    return '$count $_temp0';
  }

  @override
  String get extensionHealthOnline => 'En ligne';

  @override
  String get extensionHealthDegraded => 'Dégradé';

  @override
  String get extensionHealthOffline => 'Hors ligne';

  @override
  String get extensionHealthNotConfigured => 'Non configuré';

  @override
  String get extensionHealthUnknown => 'Inconnu';

  @override
  String get extensionHealthRequired => 'requis';

  @override
  String get extensionSettingNotSet => 'Non défini';

  @override
  String get extensionActionFailed => 'L\'action a échoué';

  @override
  String get extensionEnterValue => 'Saisir une valeur';

  @override
  String get extensionHealthServiceOnline => 'Service en ligne';

  @override
  String get extensionHealthServiceDegraded => 'Service perturbé';

  @override
  String get extensionHealthServiceOffline => 'Service hors ligne';

  @override
  String get extensionHealthServiceUnknown => 'État du service inconnu';

  @override
  String get audioAnalysisStereo => 'Stéréo';

  @override
  String get audioAnalysisMono => 'Mono';

  @override
  String trackOpenInService(String serviceName) {
    return 'Ouvrir dans $serviceName';
  }

  @override
  String get trackLyricsEmbeddedSource => 'Intégré';

  @override
  String get unknownAlbum => 'Album inconnu';

  @override
  String get unknownArtist => 'Artiste inconnu';

  @override
  String get permissionAudio => 'Audio';

  @override
  String get permissionStorage => 'Stockage';

  @override
  String get permissionNotification => 'Notification';

  @override
  String get errorInvalidFolderSelected => 'Dossier non valide sélectionné';

  @override
  String get storeAnyVersion => 'N\'importe lequel';

  @override
  String get storeCategoryMetadata => 'Métadonnées';

  @override
  String get storeCategoryDownload => 'Télécharger';

  @override
  String get storeCategoryUtility => 'Utilitaire';

  @override
  String get storeCategoryLyrics => 'Paroles';

  @override
  String get storeCategoryIntegration => 'Intégration';

  @override
  String get artistReleases => 'Sorties';

  @override
  String get editMetadataSelectNone => 'Aucun';

  @override
  String queueRetryAllFailed(int count) {
    return '$count tentatives ont échoué';
  }

  @override
  String get settingsSaveDownloadHistory =>
      'Enregistrer l\'historique des téléchargements';

  @override
  String get settingsSaveDownloadHistorySubtitle =>
      'Conserver les téléchargements terminés dans l\'historique et la bibliothèque';

  @override
  String get dialogDisableHistoryTitle =>
      'Désactiver l\'historique des téléchargements ?';

  @override
  String get dialogDisableHistoryMessage =>
      'L\'historique actuel sera effacé. Les fichiers téléchargés ne seront pas supprimés.';

  @override
  String get dialogDisableAndClear => 'Désactiver et effacer';

  @override
  String get openInOtherServices => 'Ouvrir dans d\'autres services';

  @override
  String get shareSheetNoExtensions => 'Aucun autre service compatible';

  @override
  String get shareSheetNotFound => 'Introuvable';

  @override
  String get shareSheetCopyLink => 'Copier le lien';

  @override
  String shareSheetLinkCopied(Object service) {
    return 'Lien $service copié';
  }

  @override
  String get libraryPlayback => 'Lecture';

  @override
  String get libraryExternalPlayer => 'Lecteur externe';

  @override
  String get libraryExternalPlayerSubtitle =>
      'Recommandé pour l\'écoute, la meilleure qualité, la lecture en continu, l\'égaliseur et la prise en charge d\'un plus grand nombre de formats';

  @override
  String get libraryBuiltInPreviewPlayer => 'Lecteur intégré';

  @override
  String get libraryBuiltInPreviewPlayerSubtitle =>
      'Écoutez votre musique directement dans Toadplayer';

  @override
  String get nowPlayingTitle => 'En cours de lecture';

  @override
  String get nowPlayingNothingPlaying => 'Il n\'y a rien à l\'écran';

  @override
  String get nowPlayingMinimize => 'Réduire';

  @override
  String get nowPlayingUpNext => 'À suivre';

  @override
  String get nowPlayingAudioOutput => 'Sortie audio';

  @override
  String nowPlayingWrittenBy(String writers) {
    return 'Écrit par : $writers';
  }

  @override
  String nowPlayingLyricsProvider(String provider) {
    return 'Paroles : $provider';
  }

  @override
  String get concertGetTickets => 'Acheter des billets';

  @override
  String get concertSetList => 'Liste des morceaux du concert';

  @override
  String get concertSetListButton => 'Liste des morceaux';

  @override
  String get concertAddToCalendar => 'Ajouter au calendrier';

  @override
  String get concertOpenMaps => 'Ouvrir Maps';

  @override
  String get concertDetailsUnavailable =>
      'Les informations concernant le concert ne sont pas disponibles pour le moment.';

  @override
  String get concertCalendarUnavailable =>
      'Impossible d\'ouvrir le calendrier.';

  @override
  String get nowPlayingAudioOutputUnavailable =>
      'Impossible d\'ouvrir les paramètres de sortie audio.';

  @override
  String get nowPlayingPreviousTrack => 'Piste précédente';

  @override
  String get nowPlayingNextTrack => 'Piste suivante';

  @override
  String get nowPlayingDetails => 'Détails';

  @override
  String get nowPlayingSleepTimer => 'Minuterie';

  @override
  String nowPlayingSleepTimerActive(String time) {
    return 'Se termine à $time';
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
  String get nowPlayingSleepTimerOff => 'Désactiver la minuterie';

  @override
  String nowPlayingSleepTimerSet(String duration) {
    return 'Minuterie réglée sur $duration';
  }

  @override
  String get nowPlayingSleepTimerCancelled => 'La minuterie est désactivée';

  @override
  String get nowPlayingOpenInExternalPlayer => 'Ouvrir dans un lecteur externe';

  @override
  String get nowPlayingHideVolume => 'Hide volume';

  @override
  String get nowPlayingShowVolume => 'Show volume';

  @override
  String get nowPlayingTabPlayer => 'Lecteur';

  @override
  String get nowPlayingTabLyrics => 'Paroles';

  @override
  String get nowPlayingNoLyrics => 'Ce fichier ne contient pas de paroles';

  @override
  String get nowPlayingInstrumental => 'Instrumental';

  @override
  String get nowPlayingLyricsLanguageOptions =>
      'Options de langue pour les paroles';

  @override
  String get nowPlayingHidePronunciation => 'Masquer la prononciation';

  @override
  String get nowPlayingShowPronunciation => 'Afficher la prononciation';

  @override
  String get nowPlayingHideTranslation => 'Masquer la traduction';

  @override
  String get nowPlayingShowTranslation => 'Afficher la traduction';

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
  String get nowPlayingLibraryEmpty => 'Votre bibliothèque est vide';

  @override
  String nowPlayingShuffleLibraryFailed(String error) {
    return 'Impossible de lire aléatoirement la bibliothèque : $error';
  }

  @override
  String get nowPlayingShuffleOn => 'Lecture aléatoire activée';

  @override
  String get nowPlayingPlayInOrder => 'Lire dans l\'ordre';

  @override
  String get nowPlayingShuffleLibrary => 'Lecture aléatoire de la bibliothèque';

  @override
  String get nowPlayingQueueEmpty => 'La file d\'attente est vide';

  @override
  String get nowPlayingNoMetadata => 'Aucune métadonnée disponible';

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
      'Impossible d\'ouvrir le lien. Veuillez réessayer.';

  @override
  String trackConvertLosslessOutputWithCap(String quality) {
    return 'Sortie sans perte avec une limite de $quality';
  }

  @override
  String trackConvertConfirmMessageLosslessCapped(
    String sourceFormat,
    String targetFormat,
    String quality,
  ) {
    return 'Convertir du format $sourceFormat au format $targetFormat ($quality) ?\n\nLe fichier de sortie conservera un codec sans perte, mais la profondeur de bits et la fréquence d\'échantillonnage seront limitées. Le fichier d\'origine sera supprimé après la conversion.';
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
      other: 'titres',
      one: 'titre',
    );
    return 'Convertir $count $_temp0 en $format ($quality) ?\n\nLe fichier de sortie conservera un codec sans perte, mais la profondeur de bits et la fréquence d\'échantillonnage seront limitées. Les fichiers d\'origine seront supprimés après la conversion.';
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
      'Proxy de paroles pour Musixmatch, Netease, Apple Music, QQ Music, Spotify, Deezer, YouTube, Kugou et Genius';

  @override
  String get snackbarPlayingNext => 'Prochainement';

  @override
  String get snackbarAddedToQueueGeneric => 'Ajouté à la file d\'attente';

  @override
  String selectionDeletePlaylistsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'playlists',
      one: 'playlist',
    );
    return 'Supprimer $count $_temp0';
  }

  @override
  String get actionShuffle => 'Lecture aléatoire';

  @override
  String get artistShuffleEmpty =>
      'No songs by this artist in your Library yet';

  @override
  String get downloadPrimaryArtistOnlyOn => 'Primaire uniquement : Activé';

  @override
  String get downloadPrimaryArtistOnlyOff => 'Primaire uniquement : Désactivé';

  @override
  String get downloadAlbumArtistMetadataPrimaryOnly =>
      'Métadonnées « Album » et « Artiste » : uniquement les données principales';

  @override
  String get downloadAlbumArtistMetadataFull =>
      'Métadonnées de l\'artiste de l\'album : complètes';

  @override
  String get trackConvertOriginal => 'Original';

  @override
  String get trackConvertOriginalQuality => 'Qualité d\'origine';

  @override
  String get trackConvertLosslessSuffix => 'Sans perte';

  @override
  String get trackConvertDithering => 'Hésitation';

  @override
  String get trackConvertResampler => 'Rééchantillonneur';

  @override
  String get trackConvertDitherNone => 'Aucun';

  @override
  String get trackConvertDitherTriangular => 'TPDF';

  @override
  String get trackConvertDitherTriangularHp => 'HP triangulaire';

  @override
  String get trackConvertResamplerSwr => 'SWR';

  @override
  String get trackConvertResamplerSoxr => 'SoXr';

  @override
  String get updateSeeReleaseNotes =>
      'Pour plus de détails, consultez les notes de mise à jour.';

  @override
  String get unknownTitle => 'Titre inconnu';

  @override
  String get trackPlayNext => 'Suivant';

  @override
  String get trackAddToQueue => 'Ajouter à la file d\'attente';

  @override
  String snackbarExtensionInstalledEnable(String extensionName) {
    return '$extensionName est installée. Activez-la dans Paramètres > Extensions';
  }

  @override
  String snackbarExtensionUpdatedVersion(String extensionName, String version) {
    return '$extensionName a été mis à jour vers la version $version';
  }

  @override
  String snackbarFailedToInstallNamed(String extensionName) {
    return 'Échec de l\'installation de $extensionName';
  }

  @override
  String snackbarFailedToUpdateNamed(String extensionName) {
    return 'Échec de la mise à jour de $extensionName';
  }

  @override
  String get releaseTypeEp => 'EP';

  @override
  String get releaseTypeSingle => 'Single';

  @override
  String get trackCoverOnline => 'Pochette en ligne';

  @override
  String get regionCountryUS => 'États-Unis';

  @override
  String get regionCountryIT => 'Italie';

  @override
  String get regionCountryES => 'Espagne';

  @override
  String get regionCountryGB => 'Royaume-Uni';

  @override
  String get regionCountryFR => 'France';

  @override
  String get regionCountryDE => 'Allemagne';

  @override
  String get regionCountryJP => 'Japon';

  @override
  String get regionCountryKR => 'Corée du Sud';

  @override
  String get regionCountryIN => 'Inde';

  @override
  String get regionCountryID => 'Indonésie';

  @override
  String get regionCountryBR => 'Brésil';

  @override
  String get regionCountryMX => 'Mexique';

  @override
  String get regionCountryAU => 'Australie';

  @override
  String get regionCountryCA => 'Canada';

  @override
  String get regionCountryXK => 'Kosovo';

  @override
  String get extensionVerificationBrowserTitle => 'Navigateur de vérification';

  @override
  String get extensionVerificationBrowserSubtitleExternal =>
      'Ouvrez d\'abord les défis dans le navigateur par défaut';

  @override
  String get extensionVerificationBrowserSubtitleInApp =>
      'Ouvrez d\'abord les défis dans le navigateur intégré à l\'application';

  @override
  String get extensionVerificationBrowserExternal => 'Externe';

  @override
  String get extensionVerificationBrowserInApp => 'Dans l\'application';

  @override
  String extensionVerificationUnavailable(String extension) {
    return 'Aucune page de vérification n\'est disponible pour $extension. Réessayez le téléchargement pour demander un nouveau code de vérification.';
  }

  @override
  String get extensionVerificationHelpTitleManual =>
      'Lancer la vérification manuellement';

  @override
  String get extensionVerificationHelpTitleWaiting =>
      'La vérification est toujours en attente';

  @override
  String get extensionVerificationHelpMessageManual =>
      'Toadplayer n\'a pas pu ouvrir automatiquement le navigateur. Ouvrez ce lien dans votre navigateur ou copiez-le manuellement.';

  @override
  String get extensionVerificationHelpMessageWaiting =>
      'Si le navigateur ne s\'est pas ouvert, ou si la vérification s\'est terminée sans que vous ne soyez redirigé vers Toadplayer, ouvrez à nouveau ce lien ou copiez-le manuellement.';

  @override
  String get extensionVerificationClose => 'Fermer';

  @override
  String get extensionVerificationCopyLink => 'Copier le lien';

  @override
  String get extensionVerificationPasteCallback => 'Paste callback';

  @override
  String get extensionVerificationLinkCopied => 'Lien de vérification copié';

  @override
  String get extensionVerificationOpenBrowser => 'Ouvrir le navigateur';

  @override
  String get settingsSearchHint => 'Paramètres de recherche';

  @override
  String settingsSearchNoResults(String query) {
    return 'Aucun paramètre ne correspond à « $query »';
  }

  @override
  String get libraryFilterMetadataMissingLyrics => 'Paroles manquantes';

  @override
  String get libraryFilterMetadataMissingReplayGain => 'ReplayGain manquant';

  @override
  String get libraryFilterMetadataHasReplayGain => 'Prend en charge ReplayGain';

  @override
  String get libraryFilterIncompleteAlbums => 'Album incomplet';

  @override
  String get libraryAlbumCompletenessUnknown =>
      'Complétude de l\'album inconnue';

  @override
  String libraryAlbumMissingTracks(int present, int expected, int missing) {
    return '$present/$expected tracks · $missing missing';
  }

  @override
  String get trackOptionCopyTrackName => 'Copier le titre de la piste';

  @override
  String get trackOptionCopyArtist => 'Copier l\'artiste';

  @override
  String get trackOptionCopyTrackAndArtist =>
      'Copier le titre et l\'interprète';

  @override
  String trackOptionCopyLink(String service) {
    return 'Copy $service link';
  }

  @override
  String get metadataCopyValue => 'Copier la valeur';

  @override
  String get metadataCopyField => 'Copier le champ et la valeur';

  @override
  String get toadplayerSearch => 'Rechercher';

  @override
  String get toadplayerContinuePlaying => 'Continuer à lire';

  @override
  String get metadataCopyAll => 'Copier toutes les métadonnées';

  @override
  String get optionsEmbeddedCoverSize => 'Dimensions de la pochette intégrée';

  @override
  String get optionsEmbeddedCoverSizeDescription =>
      'Réduire la taille des pochettes téléchargées à distance avant de les intégrer. Les images qui respectent déjà la limite restent inchangées.';

  @override
  String get toadplayerFavorite => 'Favoris';

  @override
  String get toadplayerGoToArtist => 'Aller à la page de l\'artiste';

  @override
  String get toadplayerGetInfo => 'Get Info';

  @override
  String get toadplayerFavorited => 'Ajouté aux favoris';

  @override
  String get autoMixDescription =>
      'Mélangez des morceaux grâce à la synchronisation des rythmes et à l\'ajustement du tempo tout en conservant la hauteur tonale. Utilise un fondu enchaîné lorsque les rythmes ne peuvent pas être synchronisés.';

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
  String get playerCoverStyleDefault => 'Par défaut';

  @override
  String get playerCoverStyleCard => 'Card';

  @override
  String get playerCoverStyleDefaultDescription =>
      'Artwork as a card above the controls';

  @override
  String get playerCoverStyleFullScreen => 'Plein écran';

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
  String get autoMixOn => 'AutoMix activé';

  @override
  String get autoMixOff => 'AutoMix désactivé';

  @override
  String get autoplayOn => 'Lecture automatique activée';

  @override
  String get autoplayOff => 'Lecture automatique désactivée';

  @override
  String get queueAutoplay => 'Autoplay';

  @override
  String get queueAutoMix => 'AutoMix';

  @override
  String get autoplayFromLibrary =>
      'Lecture automatique à partir de votre bibliothèque';

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
  String get autoplayResetLearningConfirm => 'Réinitialiser';

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
  String get profileSetUp => 'Configurez votre profil';

  @override
  String get profileEdit => 'Modifier le nom et la photo';

  @override
  String get backupIncludesProfile =>
      'Comprend le nom et la photo de votre profil';

  @override
  String get profileName => 'Nom';

  @override
  String get profileNameHint => 'Votre nom';

  @override
  String get profileChangePhoto => 'Choisir une photo';

  @override
  String get profileRemovePhoto => 'Supprimer la photo';

  @override
  String get profilePhotoError =>
      'Choisissez une image valide dont la taille est inférieure à 20 Mo.';

  @override
  String get profileSaveError =>
      'Impossible d\'enregistrer votre profil. Veuillez réessayer.';

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
  String get artistUpcomingConcerts => 'Prochains concerts';

  @override
  String get artistAllUpcomingConcerts => 'Tous les concerts à venir';

  @override
  String get artistNoUpcomingConcerts => 'Aucun concert prévu.';

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
  String get listeningRewindShare => 'Partager';

  @override
  String get listeningRewindShareError => 'Could not share your Rewind';

  @override
  String get listeningRewindNext => 'Suivant';

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
  String get listeningRewindSongsLabel => 'Titres';

  @override
  String get listeningRewindArtistsLabel => 'Artistes';

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
  String get discordPresenceDisabled => 'Désactivé';

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
  String get lyricsShareAction => 'Partager';

  @override
  String get lyricsShareError => 'Couldn\'t create the lyrics image';

  @override
  String get lyricsShareBackgroundArtwork => 'Artwork';

  @override
  String get lyricsShareBackgroundColor => 'Cover color';

  @override
  String get lyricsShareBackgroundDark => 'Sombre';

  @override
  String get lyricsShareBackgroundLight => 'Clair';

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
  String get audioInfoQuality => 'Qualité';

  @override
  String get audioInfoHiResLossless => 'Hi-Res Lossless';

  @override
  String get audioInfoLossless => 'Sans perte';

  @override
  String get audioInfoLossy => 'Avec perte';

  @override
  String get audioInfoFormat => 'Format';

  @override
  String get audioInfoCodec => 'Codec';

  @override
  String get audioInfoSampleRate => 'Sample rate';

  @override
  String get audioInfoBitDepth => 'Bit depth';

  @override
  String get audioInfoChannels => 'Chaînes';

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
  String get audioInfoBitrate => 'Débit binaire';

  @override
  String get audioInfoDuration => 'Durée';

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
  String get audioInfoOff => 'Désactivé';

  @override
  String get audioInfoBypassed => 'Bypassed by direct output';

  @override
  String get audioInfoPlayer => 'Lecteur';

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
  String get audioInfoOutputFormat => 'Format de sortie';

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
  String get audioInfoAnyRate => 'N\'importe lequel';

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
  String get appCrashDismiss => 'Ignorer';

  @override
  String get appCrashCopyFailed =>
      'Could not copy the crash report. Please try again.';

  @override
  String get appCrashDismissFailed =>
      'Impossible de fermer le rapport d\'erreur. Veuillez réessayer.';

  @override
  String get optionsEmbeddedCoverSizeOriginal => 'Résolution originale';

  @override
  String desktopShortcutTooltip(String action, String shortcut) {
    return '$action ($shortcut)';
  }

  @override
  String get desktopPlayerIdle => 'Not playing';

  @override
  String get desktopVolumeUp => 'Augmenter le volume';

  @override
  String get desktopVolumeDown => 'Baisser le volume';

  @override
  String desktopTableSortedAscending(String column) {
    return '$column, triée par ordre croissant';
  }

  @override
  String desktopTableSortedDescending(String column) {
    return '$column, sorted descending';
  }

  @override
  String get desktopMenuOpen => 'Ouvrir';

  @override
  String get desktopMenuShowDetails => 'Afficher les détails';

  @override
  String get desktopDropToImport =>
      'Faites-y glisser pour l\'ajouter à votre bibliothèque';

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
      'Faites glisser des fichiers ou des dossiers musicaux pour les ajouter à votre bibliothèque';

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
  String get desktopMenuHelp => 'Aide';

  @override
  String get desktopMenuPlayPause => 'Play/Pause';

  @override
  String get desktopMenuMiniPlayer => 'Mini Player';

  @override
  String get desktopMiniPlayerExpand => 'Show Full Window';

  @override
  String get desktopMenuRefresh => 'Actualiser';

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
  String get settingsKeyboardShortcuts => 'Raccourcis clavier';

  @override
  String get settingsKeyboardShortcutsSubtitle =>
      'Touches de lecture, de navigation et des panneaux';

  @override
  String get desktopShortcutsNavigation => 'Navigation';

  @override
  String get desktopShortcutDismiss => 'Fermer la boîte de dialogue ou la page';

  @override
  String get desktopShortcutForward => 'Forward';

  @override
  String get desktopShortcutToggleSidebar =>
      'Afficher ou masquer la barre latérale';

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
