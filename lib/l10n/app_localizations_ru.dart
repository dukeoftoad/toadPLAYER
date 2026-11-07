// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

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
  String get trackMood => 'Настроение';

  @override
  String get subsonicAddToLibrary => 'Добавить сервер в Библиотеку';

  @override
  String get subsonicLibraryAdded => 'Сервер добавлен в Библиотеку';

  @override
  String get subsonicLibraryDescription =>
      'Синхронизировать серверный каталог и обложки в Библиотеке. Музыка остаётся на Вашем сервере. Пересканируйте его в настройках Локальной Библиотеки для обновления каталога.';

  @override
  String get subsonicAuthentication => 'Аутентификация';

  @override
  String get subsonicToken => 'Salted token';

  @override
  String get subsonicPasswordAuth => 'Пароль';

  @override
  String get subsonicApiKey => 'API ключ';

  @override
  String get subsonicUsername => 'Имя пользователя';

  @override
  String get subsonicPassword => 'Пароль';

  @override
  String get subsonicSearch => 'Найти музыку с сервера...';

  @override
  String get subsonicMoreAlbums => 'Больше альбомов';

  @override
  String get subsonicErrorApi =>
      'Сервер не поддерживает эту версию API или метод аутентификации. Проверьте настройки сервера и выбранный метод входа.';

  @override
  String get networkDownloadDestination => 'Network download destination';

  @override
  String get networkUseForDownloads => 'Сохранять в эту папку';

  @override
  String get networkDownloadSelected => 'Выбранное место для загрузки';

  @override
  String get networkUseLocalDownloads =>
      'Использовать локальную папку для загрузки';

  @override
  String get networkDownloadAccessFailed => 'Невозможно записать в эту папку.';

  @override
  String get networkUploading => 'Отправка в сетевое хранилище';

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
  String get networkAddToLibrary => 'Добавить папку в медиатеку';

  @override
  String get networkLibraryAdded => 'Папка добавлена в Библиотеку';

  @override
  String get networkLibraryDescription =>
      'Scan this folder and its subfolders. Music stays on your server; metadata and artwork are saved on this device. Manage or rescan it in Local Library settings.';

  @override
  String get networkStorage => 'Сетевое хранилище';

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
  String get networkConnections => 'Сохранённые подключения';

  @override
  String get networkServer => 'Сервер';

  @override
  String get networkCredentials => 'Войти (необязательно)';

  @override
  String get networkRefresh => 'Обновить';

  @override
  String get networkStorageDescription =>
      'Подключите ваш NAS или музыкальный сервер и просматривайте его папки. Ваши данные о входе безопасно хранятся на этом устройстве.';

  @override
  String get networkAddConnection => 'Добавить соединение';

  @override
  String get networkEditConnection => 'Редактировать соединение';

  @override
  String get networkConnectionName => 'Имя';

  @override
  String get networkAddress => 'URL сервера или аудио';

  @override
  String get networkProtocol => 'Протокол';

  @override
  String get networkUsername => 'Имя пользователя (необязательно)';

  @override
  String get networkPassword => 'Пароль (необязательно)';

  @override
  String get networkDomain => 'Домен (необязательно)';

  @override
  String get networkConnectSave => 'Подключиться и сохранить';

  @override
  String get networkErrorCertificate =>
      'The server\'s HTTPS certificate could not be verified. Edit this connection to review and trust its certificate, or check the server\'s HTTPS configuration.';

  @override
  String get networkCertificatePrompt =>
      'This server uses an untrusted HTTPS certificate. Routers and NAS devices often use self-signed certificates. Verify the server address and SHA-256 fingerprint before trusting it. Trust applies only to this certificate on this server; a changed certificate requires approval again.';

  @override
  String get networkTrustCertificate => 'Trust certificate and retry';

  @override
  String get networkRemoveConnection => 'Удалить подключение';

  @override
  String get networkNoFiles => 'No supported music files or folders found.';

  @override
  String get networkConnectionError =>
      'Could not access the network source. Check the server address, credentials, and connection, then retry.';

  @override
  String get extensionAccountTitle => 'Аккаунт расширения';

  @override
  String get extensionAccountInvalidForm =>
      'The extension returned an invalid account form.';

  @override
  String get extensionAccountRestartLogin =>
      'Restart account login to continue.';

  @override
  String get extensionAccountRequiredValue => 'Введите значение.';

  @override
  String get extensionAccountInvalidNumber => 'Введите корректное значение.';

  @override
  String get settingsPlaybackSubtitle =>
      'Плеер, громкость, автомикс и аудиовыход';

  @override
  String get sectionPlayer => 'Плеер';

  @override
  String get sectionVolumeAndTransitions => 'Громкость и переходы';

  @override
  String get sectionAudioOutput => 'Выход аудио';

  @override
  String get usbBitPerfect => 'Hi-Res и Bit-perfect аудио';

  @override
  String get usbBitPerfectDescription =>
      'Сохранение исходной точности для поддерживаемых выходов. Ниже выберите прямой USB-выход или эксклюзивный режим AAudio; в противном случае для вывода USB требуется Android 14 или новее. Параметр применяется со следующего трека без учета AutoMix и нормализации. Системная громкость может не регулировать прямой вывод USB.';

  @override
  String get usbHardwareVolume => 'Аппаратная громкость ЦАПа';

  @override
  String get usbVolumeWarningTitle => 'Проверьте уровень громкости';

  @override
  String get usbVolumeWarning =>
      'Прямое воспроизведение через USB-аудио может быть намного громче стандартного, а аппаратные кнопки громкости могут его не регулировать. Снизьте громкость на вашем ЦАП или усилителе до начала воспроизведения. Когда устройство поддерживается, Toadplayer при подключении выставляет на ЦАП уровень не выше −40 дБ, но это не гарантирует безопасную громкость на каждом усилителе или наушниках.';

  @override
  String get usbVolumeAccept => 'Я понимаю';

  @override
  String get usbVolumeUnavailable =>
      'Воспроизведение приостановлено, так как у данного ЦАП не обнаружено проверенного аппаратного управления громкостью. Уменьшите громкость на ЦАП или усилителе, при необходимости включите вывод с фиксированной громкостью и выберите трек заново.';

  @override
  String get usbFixedVolume =>
      'Разрешить вывод по USB с фиксированной громкостью';

  @override
  String get usbFixedVolumeDescription =>
      'Предназначено для ЦАП, у которых приложение не имеет доступа к управлению громкостью. Не используйте для USB-гарнитур без собственной регулировки громкости. Вступает в силу со следующего трека.';

  @override
  String get usbFixedVolumeWarning =>
      'Приложению недоступно снижение громкости на этом аудиовыходе. Звук может быть на максимальной мощности, а регулятор громкости смартфона не поможет. Продолжайте лишь после того, как убавите громкость на ЦАП или внешнем усилителе. Не активируйте для наушников/гарнитур без встроенного регулятора громкости.';

  @override
  String get dapExclusive => 'DAP Hi-Res (эксклюзив AAudio)';

  @override
  String get dapExclusiveDescription =>
      'Используйте Oboe/AAudio с исходной частотой дискретизации и точностью трека для форматов FLAC/WAV PCM. Требуется Android 8.1 или более поздней версии и совместимое оборудование. Эксклюзивный доступ проверен; для недоступных форматов используется обычное воспроизведение. Для DSD требуется драйвер прямого USB-подключения. Применяется со следующего трека.';

  @override
  String get dapExclusiveUnavailable =>
      'Эксклюзивный режим AAudio недоступен для данного трека и выбранного аудиовыхода. Применяется стандартное воспроизведение. При использовании USB-ЦАП попробуйте задействовать прямой USB-драйвер.';

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
  String get usbDirect => 'Прямой USB драйвер';

  @override
  String get usbDirectDescription =>
      'Использовать эксклюзивный вывод звука по USB для FLAC/WAV, DSF/DFF и WavPack DSD с разрешением Android USB. Для нативного DSD требуется распознанный совместимый ЦАП. Остальные форматы PCM воспроизводятся стандартным способом. Применяется со следующего трека.';

  @override
  String get usbDsdOverPcm => 'DSD через PCM (DoP)';

  @override
  String get usbDsdOverPcmDescription =>
      'Включайте только в том случае, если ваш ЦАП явно поддерживает DoP. Передает DSF/DFF и WavPack DSD внутри контейнера PCM, когда нативный DSD недоступен. Несовместимое устройство может воспроизводить шум; оставляйте выключенным для обычных USB-гарнитур.';

  @override
  String get usbDsdUnsupported =>
      'Этот формат DSD или подключенный ЦАП не поддерживается. Воспроизведение остановлено.';

  @override
  String get usbPermissionDenied =>
      'Разрешение на USB не получено. Используется обычное воспроизведение.';

  @override
  String get usbBitPerfectPending =>
      'Ожидание следующего трека и совместимого USB-выхода.';

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
      'USB ЦАП не подключен. Используется обычный аудиовыход.';

  @override
  String get usbBitPerfectFallback =>
      'Это устройство или аудиоформат не поддерживает вывод bit-perfect. Используется обычное воспроизведение.';

  @override
  String get usbBitPerfectRouteChanged =>
      'Маршрут USB-аудио изменился. Воспроизведение приостановлено; выберите трек для повторного подключения.';

  @override
  String get upgradeIntroContinue => 'Далее';

  @override
  String get cacheMotionArtwork => 'Офлайн обложки с анимацией';

  @override
  String get cacheMotionArtworkDesc =>
      'Видео из альбомов сохраняются вместе с загруженными файлами. При их удалении музыкальные файлы и статичные обложки остаются.';

  @override
  String get nowPlayingVolume => 'Громкость';

  @override
  String get appearanceStyle => 'Стиль приложения';

  @override
  String get appearanceAccentRed => 'Красный (по умолчанию)';

  @override
  String get appearanceAccentOrange => 'Оранжевый';

  @override
  String get appearanceAccentGreen => 'Зелёный';

  @override
  String get appearanceAccentTeal => 'Морской';

  @override
  String get appearanceAccentBlue => 'Синий';

  @override
  String get appearanceAccentPurple => 'Фиолетовый';

  @override
  String get appearanceAccentPink => 'Розовый';

  @override
  String get appearanceGlassClarity => 'Прозрачность стекла';

  @override
  String get appearanceGlassOutlines => 'Контур стекла';

  @override
  String get appearanceGlassOutlinesSubtitle =>
      'Show decorative edges around Toadplayer glass. Turning this off keeps blur and refraction.';

  @override
  String get appearanceGlassClaritySubtitle =>
      'Adjust transparency in Toadplayer menus and navigation. Text contrast is preserved.';

  @override
  String get appearanceGlassTinted => 'Тонированное';

  @override
  String get appearanceGlassClear => 'Очистить';

  @override
  String get appearanceGlassClearPerformance =>
      'Очень чистое стекло может использовать больше энергии и может работать менее гладко на старых устройствах. Уменьшите прозрачность при необходимости.';

  @override
  String appearanceGlassClarityBlurOff(String setting) {
    return 'Glass is opaque on this device. Turn on “$setting” to adjust clarity.';
  }

  @override
  String appearanceGlassClarityHighContrast(String setting) {
    return 'Your system requests increased contrast, so glass stays opaque. Turn on “$setting” to use glass anyway; text contrast is preserved.';
  }

  @override
  String get appearanceUseSystemFont => 'Использовать системный шрифт';

  @override
  String get appearanceUseSystemFontSubtitle =>
      'Использовать системный шрифт вашего устройства для текста приложения.';

  @override
  String get appName => 'Toadplayer';

  @override
  String get navHome => 'Главная';

  @override
  String get navLibrary => 'Медиатека';

  @override
  String get navSettings => 'Настройки';

  @override
  String get navStore => 'Репозиторий';

  @override
  String get homeTitle => 'Главная';

  @override
  String get homeEmptyTitle => 'Нет поставщиков поиска';

  @override
  String get homeEmptySubtitle => 'Установите расширение, чтобы продолжить.';

  @override
  String get homeRecent => 'Недавние';

  @override
  String get searchRecentlySearched => 'История поиска';

  @override
  String get searchLibraryPrompt => 'Search Your Library';

  @override
  String get searchBrowse => 'Искать';

  @override
  String get historyFilterAll => 'Все';

  @override
  String get historyFilterAlbums => 'Альбомы';

  @override
  String get historyFilterSingles => 'Синглы';

  @override
  String get libraryRecentlyAdded => 'Недавно добавленные';

  @override
  String get libraryDownloads => 'Загрузки';

  @override
  String get libraryNoActiveDownloads => 'Нет активных загрузок';

  @override
  String get librarySearchHint => 'Поиск в вашей медиатеке';

  @override
  String get libraryEmptyCollection => 'Ваша музыка появится здесь';

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
  String get settingsTitle => 'Настройки';

  @override
  String get settingsDownload => 'Скачивание';

  @override
  String get settingsAppearance => 'Внешний вид';

  @override
  String get settingsExtensions => 'Расширения';

  @override
  String get settingsAbout => 'О программе';

  @override
  String get downloadTitle => 'Скачать';

  @override
  String get downloadAskQualitySubtitle =>
      'Показывать выбор качества для каждого скачивания';

  @override
  String get downloadFilenameFormat => 'Формат имени файла';

  @override
  String get downloadSingleFilenameFormat => 'Формат имени файла';

  @override
  String get downloadSingleFilenameFormatDescription =>
      'Формат имени файла для синглов и EP. Используются те же теги, что и для альбомов.';

  @override
  String get downloadFolderOrganization => 'Организация папок';

  @override
  String get downloadFolderTemplate => 'Custom Folder Structure';

  @override
  String get downloadFolderTemplateDescription =>
      'Use naming tags and / for subfolders. Saving replaces the preset album and singles layout. Empty folder names use Unknown.';

  @override
  String get folderOrganizationCustom => 'Свой шаблон';

  @override
  String get folderTemplateInvalid =>
      'Enter a relative folder path with supported tags. Empty folders, . and .. are not allowed.';

  @override
  String get folderTemplatePreview => 'Example folder path';

  @override
  String get folderTemplatePreviewFailed => 'Предпросмотр недоступен';

  @override
  String get appearanceTitle => 'Внешний вид';

  @override
  String get appearanceThemeSystem => 'Системная';

  @override
  String get appearanceThemeLight => 'Светлая';

  @override
  String get appearanceThemeDark => 'Тёмная';

  @override
  String get appearanceDynamicColor => 'Динамический цвет';

  @override
  String get appearanceDynamicColorSubtitle =>
      'Использовать цвета из ваших обоев';

  @override
  String get appearanceHistoryView => 'Отображение истории';

  @override
  String get appearanceHistoryViewList => 'Список';

  @override
  String get appearanceHistoryViewGrid => 'Сетка';

  @override
  String get optionsPrimaryProvider => 'Основной провайдер';

  @override
  String get optionsPrimaryProviderSubtitle =>
      'Сервис для поиска по названию трека или альбома';

  @override
  String optionsUsingExtension(String extensionName) {
    return 'Используется расширение: $extensionName';
  }

  @override
  String get optionsDefaultSearchTab => 'Вкладка поиска по умолчанию';

  @override
  String get optionsDefaultSearchTabSubtitle =>
      'Выберите, какая вкладка открывает новые результаты поиска.';

  @override
  String get optionsAutoFallback => 'Автоматический переход';

  @override
  String get optionsAutoFallbackSubtitle =>
      'Попробовать другие сервисы при сбое загрузки';

  @override
  String get optionsEmbedLyrics => 'Вписать текст песни';

  @override
  String get optionsEmbedLyricsSubtitle =>
      'Сохранять синхронизированный текст песни рядом с загруженным треком';

  @override
  String get optionsReplayGain => 'ReplayGain';

  @override
  String get optionsReplayGainSubtitleOn =>
      'Сканировать громкость и вставить теги ReplayGain (EBU R128)';

  @override
  String get optionsReplayGainSubtitleOff =>
      'Выключено: нет тегов нормализации громкости';

  @override
  String get trackReplayGain => 'Пересканировать ReplayGain';

  @override
  String get trackReplayGainScanning => 'Анализ громкости...';

  @override
  String get trackReplayGainSuccess => 'Добавлены теги ReplayGain';

  @override
  String get trackReplayGainFailed => 'Не удалось добавить теги ReplayGain';

  @override
  String get trackRemoveReplayGain => 'Удалить ReplayGain';

  @override
  String get trackRemoveReplayGainSuccess => 'Теги ReplayGain удалены';

  @override
  String get trackRemoveReplayGainFailed =>
      'Не удалось удалить теги ReplayGain';

  @override
  String get replayGainRemoving => 'Удаление ReplayGain...';

  @override
  String replayGainRemoveConfirmMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count треков',
      one: '$count трека',
    );
    return 'Удалить теги ReplayGain трека и альбома для $_temp0? Аудио, обложки и другие метаданные будут сохранены.';
  }

  @override
  String selectionRemoveReplayGainCount(int count) {
    return 'Удалить RG ($count)';
  }

  @override
  String replayGainRemoveBatchSuccess(int success, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: '$total треков',
      many: '$total треков',
      few: '$total треков',
      one: '$total трека',
    );
    return 'ReplayGain удален из $success из $_temp0';
  }

  @override
  String selectionReplayGainCount(int count) {
    return 'ReplayGain ($count)';
  }

  @override
  String get replayGainBatchConfirmTitle => 'Добавить ReplayGain';

  @override
  String replayGainBatchConfirmMessage(int count) {
    return 'Проанализировать громкость и записать ReplayGain теги на $count трек(-а)?';
  }

  @override
  String get replayGainBatchAnalyzing => 'Анализ ReplayGain...';

  @override
  String replayGainBatchSuccess(int success, int total) {
    return 'ReplayGain добавлен к $success треков $total';
  }

  @override
  String get replayGainUnsupportedDecoder =>
      'Некоторые треки не могут быть проанализированы, так как их аудио кодек не поддерживается декодером ReplayGain, их файлы не были изменены.';

  @override
  String get optionsArtistTagMode => 'Режим тега исполнителя';

  @override
  String get metadataSeparators => 'Разделители метаданных';

  @override
  String get metadataSeparatorsDescription =>
      'Выберите способ объединения значений, разделённых запятыми или точкой с запятой, при последующих загрузках. Для пользовательских разделителей исполнителей используется объединённый тег; по-прежнему применяется только основной исполнитель. Имена с & или / сохраняются.';

  @override
  String get metadataSeparatorSource => 'Сохранить исходное форматирование';

  @override
  String get metadataSeparatorComma => 'Запятая (,)';

  @override
  String get metadataSeparatorSemicolon => 'Точка с запятой (;)';

  @override
  String get metadataSeparatorSlash => 'Слэш (/)';

  @override
  String get metadataSeparatorCustom => 'Свой разделитель';

  @override
  String get metadataSeparatorPreview => 'Предпросмотр';

  @override
  String get metadataSeparatorInvalid =>
      'Используйте 1-16 символов без управляющих символов и разделителей строк.';

  @override
  String get optionsArtistTagModeDescription =>
      'Выберите, как несколько исполнителей записываются встроенные теги.';

  @override
  String get optionsArtistTagModeJoined => 'Объединять в одну строку';

  @override
  String get optionsArtistTagModeJoinedSubtitle =>
      'Записывать исполнителей через запятую для максимальной совместимости с плеерами.';

  @override
  String get optionsArtistTagModeSplitVorbis => 'Разделить теги для FLAC/Opus';

  @override
  String get optionsArtistTagModeSplitVorbisSubtitle =>
      'Один тег на исполнителя для FLAC/Opus; Для MP3/M4A — один общий.';

  @override
  String get optionsArtistTagModePrimary => 'Primary artist only';

  @override
  String get optionsArtistTagModePrimarySubtitle =>
      'Write only the first artist, like \"Artist A\", to Artist and Album Artist in every format, so players list one artist.';

  @override
  String get optionsExtensionStore => 'Репозиторий расширений';

  @override
  String get optionsExtensionStoreSubtitle =>
      'Показывать вкладку репозитория в навигации';

  @override
  String get optionsCheckUpdates => 'Проверить обновления';

  @override
  String get optionsCheckUpdatesSubtitle => 'Уведомлять о наличии новой версии';

  @override
  String get optionsUpdateChannel => 'Канал обновлений';

  @override
  String get optionsUpdateChannelStable => 'Только стабильные релизы';

  @override
  String get optionsUpdateChannelPreview => 'Предварительные версии';

  @override
  String get optionsUpdateChannelWarning =>
      'Предварительная версия может содержать ошибки или неполные функции';

  @override
  String get optionsClearHistory => 'Очистить историю загрузок';

  @override
  String get optionsClearHistorySubtitle =>
      'Удалить все скачанные треки из истории';

  @override
  String get optionsDetailedLogging => 'Подробный лог';

  @override
  String get optionsDetailedLoggingOn => 'Ведутся подробные логи';

  @override
  String get optionsDetailedLoggingOff => 'Включить для отчётов об ошибках';

  @override
  String get extensionsTitle => 'Расширения';

  @override
  String get extensionsDisabled => 'Выключено';

  @override
  String extensionsVersion(String version) {
    return 'Версия $version';
  }

  @override
  String get extensionsUninstall => 'Удалить';

  @override
  String get storeTitle => 'Репозиторий расширений';

  @override
  String get storeSearch => 'Поиск расширений...';

  @override
  String get storeInstall => 'Установить';

  @override
  String get storeInstalled => 'Установлено';

  @override
  String get storeUpdate => 'Обновить';

  @override
  String get aboutTitle => 'О программе';

  @override
  String get aboutContributors => 'Участники';

  @override
  String get aboutMobileDeveloper => 'Разработчик мобильной версии';

  @override
  String get aboutLogoArtist =>
      'Талантливый художник, который создал наш красивый логотип приложения!';

  @override
  String get aboutTranslators => 'Переводчики';

  @override
  String get aboutSpecialThanks => 'Особая благодарность';

  @override
  String get aboutLinks => 'Ссылки';

  @override
  String get aboutMobileSource => 'Исходный код мобильной версии';

  @override
  String get aboutLyricsWebsite => 'Lyrics website';

  @override
  String get aboutServiceStatus => 'Статус сервиса';

  @override
  String get aboutReportIssue => 'Сообщить о проблеме';

  @override
  String get aboutReportIssueSubtitle => 'Сообщите о возникших проблемах';

  @override
  String get aboutFeatureRequest => 'Предложить новую функцию';

  @override
  String get aboutFeatureRequestSubtitle =>
      'Предложить новые функции для приложения';

  @override
  String get aboutTelegramChannel => 'Telegram канал';

  @override
  String get aboutTelegramChannelSubtitle => 'Объявления и обновления';

  @override
  String get aboutTelegramChat => 'Сообщество в Telegram';

  @override
  String get aboutTelegramChatSubtitle => 'Чат с другими пользователями';

  @override
  String get aboutSocial => 'Соцсети';

  @override
  String get aboutApp => 'Приложение';

  @override
  String get aboutVersion => 'Версия';

  @override
  String get aboutBinimumDesc =>
      'Создатель QQDL и HiFi API. Этот проект помог реализовать поддержку скачивания музыки в lossless-качестве.';

  @override
  String get aboutSachinsenalDesc =>
      'Создатель оригинального проекта HiFi. Заложил основу для интеграции lossless-источников.';

  @override
  String get aboutUnituneDesc =>
      'Открытый распознаватель музыкальных ссылок от Flaze, используемый для резервного кроссплатформенного определения.';

  @override
  String get aboutMusicBrainzDesc =>
      'Открытая музыкальная база данных, поддерживаемая MetaBrainz и сообществом. Используется для определения перекрестных ссылок.';

  @override
  String get aboutSquiglyDesc =>
      'Универсальный сервис музыкальных ссылок от Лиама Макмиллана, используемый в качестве последнего резервного кроссплатформенного распознавателя.';

  @override
  String get aboutAppDescription =>
      'Поиск метаданных, управление расширениями и организация медиатеки.';

  @override
  String get artistAlbums => 'Альбомы';

  @override
  String get artistSingles => 'Синглы и EP';

  @override
  String get artistCompilations => 'Сборники';

  @override
  String get artistPopular => 'Популярное';

  @override
  String get artistLatestRelease => 'Latest Release';

  @override
  String get artistTopSongs => 'Top Songs';

  @override
  String artistMonthlyListeners(String count) {
    return '$count слушателей в месяц';
  }

  @override
  String get trackMetadataService => 'Сервис';

  @override
  String get trackMetadataPlay => 'Воспроизвести';

  @override
  String get trackMetadataShare => 'Поделиться';

  @override
  String get trackMetadataDelete => 'Удалить';

  @override
  String get setupGrantPermission => 'Предоставить разрешение';

  @override
  String get setupSkip => 'Пропустить';

  @override
  String get setupStorageAccessRequired => 'Требуется доступ к хранилищу';

  @override
  String get setupStorageAccessMessageAndroid11 =>
      'Для Android 11+ требуется разрешение \"Доступ ко всем файлам\" для сохранения файлов в выбранную вами папку загрузки.';

  @override
  String get setupOpenSettings => 'Открыть настройки';

  @override
  String get setupPermissionDeniedMessage =>
      'В разрешении отказано. Пожалуйста, предоставьте все разрешения для продолжения.';

  @override
  String setupPermissionRequired(String permissionType) {
    return 'Требуется разрешение $permissionType';
  }

  @override
  String setupPermissionRequiredMessage(String permissionType) {
    return 'Для оптимальной работы требуется разрешение $permissionType. Вы можете изменить это позже в настройках.';
  }

  @override
  String get setupUseDefaultFolder => 'Использовать папку по умолчанию?';

  @override
  String get setupNoFolderSelected =>
      'Папка не выбрана. Хотите использовать папку Музыка по умолчанию?';

  @override
  String get setupUseDefault => 'По умолчанию';

  @override
  String get setupDownloadLocationTitle => 'Папка для скачивания';

  @override
  String get setupDownloadLocationIosMessage =>
      'В iOS загрузки сохраняются в папке Документы приложения. Вы можете получить к ним доступ через приложение Файлы.';

  @override
  String get setupAppDocumentsFolder => 'Папка Документы приложения';

  @override
  String get setupAppDocumentsFolderSubtitle =>
      'Рекомендуется - доступ через Файлы';

  @override
  String get setupChooseFromFiles => 'Выбрать из файлов';

  @override
  String get setupChooseFromFilesSubtitle =>
      'Выберите iCloud или другое местоположение';

  @override
  String get setupIosEmptyFolderWarning =>
      'Ограничение iOS: пустые папки не могут быть выбраны. Выберите папку, содержащую хотя бы один файл.';

  @override
  String get setupIcloudNotSupported =>
      'iCloud Drive не поддерживается. Пожалуйста, используйте папку Документы.';

  @override
  String get setupDownloadInFlac =>
      'Скачивайте музыку в Lossless и Hi-Res качестве';

  @override
  String get setupStorageGranted => 'Доступ к хранилищу предоставлен!';

  @override
  String get setupStorageRequired => 'Требуется доступ к хранилищу';

  @override
  String get setupStorageDescription =>
      'Toadplayer требуется разрешение на хранение для сохранения скачанных файлов.';

  @override
  String get setupNotificationGranted =>
      'Разрешение на уведомление предоставлено!';

  @override
  String get setupNotificationEnable => 'Включить уведомления';

  @override
  String get setupFolderChoose => 'Выбрать папку для скачивания';

  @override
  String get setupFolderDescription =>
      'Выберите папку, в которой будет сохраняться скачанная музыка.';

  @override
  String get setupSelectFolder => 'Выбрать папку';

  @override
  String get setupEnableNotifications => 'Включить уведомления';

  @override
  String get setupNotificationBackgroundDescription =>
      'Получайте уведомления о ходе и завершении загрузки. Это поможет вам отслеживать загрузки, когда приложение находится в фоновом режиме.';

  @override
  String get setupSkipForNow => 'Пропустить';

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
  String get setupNext => 'Далее';

  @override
  String get setupGetStarted => 'Приступить к работе';

  @override
  String get setupAllowAccessToManageFiles =>
      'Пожалуйста, включите \"Разрешить доступ для управления всеми файлами\" на следующем экране.';

  @override
  String get setupLanguageTitle => 'Выберите язык';

  @override
  String get setupLanguageDescription =>
      'Выберите язык для приложения. Вы можете изменить его позже в настройках.';

  @override
  String get setupLanguageSystemDefault => 'Системные настройки';

  @override
  String get dialogCancel => 'Отмена';

  @override
  String get dialogSave => 'Сохранить';

  @override
  String get dialogDelete => 'Удалить';

  @override
  String get dialogRetry => 'Повторить';

  @override
  String get dialogClear => 'Очистить';

  @override
  String get dialogDone => 'Готово';

  @override
  String get dialogImport => 'Импорт';

  @override
  String get dialogDownload => 'Скачать';

  @override
  String get previewPlay => 'Предпросмотр проигрывания';

  @override
  String get previewStop => 'Остановить предпросмотр';

  @override
  String get previewUnavailable => 'Предпросмотр недоступен';

  @override
  String get dialogDiscard => 'Отменить';

  @override
  String get dialogRemove => 'Убрать';

  @override
  String get dialogUninstall => 'Удалить';

  @override
  String get dialogDiscardChanges => 'Отменить изменения?';

  @override
  String get dialogUnsavedChanges =>
      'Есть несохраненные изменения. Отменить их?';

  @override
  String get dialogClearAll => 'Очистить всё';

  @override
  String get dialogRemoveExtension => 'Удалить расширение';

  @override
  String get dialogRemoveExtensionMessage =>
      'Вы уверены, что хотите удалить это расширение? Это действие не может быть отменено.';

  @override
  String get dialogUninstallExtension => 'Удалить расширение?';

  @override
  String dialogUninstallExtensionMessage(String extensionName) {
    return 'Вы уверены, что хотите удалить $extensionName?';
  }

  @override
  String get dialogClearHistoryTitle => 'Очистить историю';

  @override
  String get dialogClearHistoryMessage =>
      'Вы уверены, что хотите удалить всю историю загрузок? Это действие необратимо.';

  @override
  String get dialogDeleteSelectedTitle => 'Удалить выбранные';

  @override
  String dialogDeleteSelectedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'треков',
      one: 'трек',
      many: 'треков',
      few: 'трека',
    );
    return 'Удалить $count $_temp0 из истории?\n\nЭто также удалит файлы из хранилища.';
  }

  @override
  String get dialogImportPlaylistTitle => 'Импорт плейлиста';

  @override
  String dialogImportPlaylistMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count треков',
      many: '$count треков',
      few: '$count трека',
      one: '$count трек',
    );
    return 'В файле плейлиста найдено $_temp0. Добавить их в очередь загрузки?';
  }

  @override
  String csvImportTracks(int count) {
    return '$count трек(-ов) из CSV';
  }

  @override
  String get collectionExportM3u => 'Экспорт в M3U8';

  @override
  String collectionExportM3uDone(int exported, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: '$total треков',
      many: '$total треков',
      few: '$total треков',
      one: '$total трека',
    );
    return 'Экспортировано $exported из $_temp0';
  }

  @override
  String get collectionExportM3uNone => 'Нет загруженных файлов для экспорта';

  @override
  String get collectionExportM3uFailed => 'Ошибка экспорта';

  @override
  String get trackOpenOn => 'Открыть на...';

  @override
  String get trackOpenOnNoLinks => 'Для этого трека ссылки не найдены.';

  @override
  String get libraryReviewDuplicates => 'Проверка дубликатов';

  @override
  String get libraryReviewDuplicatesSubtitle =>
      'Поиск треков, сохраненных более одного раза';

  @override
  String get duplicatesTitle => 'Дубликаты';

  @override
  String get duplicatesEmpty => 'Дублированные треки не найдены.';

  @override
  String get duplicatesKeepBest => 'Оставить лучшее';

  @override
  String get duplicatesKeepBestAll => 'Оставить лучшее качество';

  @override
  String duplicatesKeepBestAllMessage(int count, int groupCount) {
    String _temp0 = intl.Intl.pluralLogic(
      groupCount,
      locale: localeName,
      other: 'треков',
      few: 'треков',
      one: 'трека',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'копий',
      few: 'копии',
      one: 'копию',
    );
    return 'Сохранить лучшую копию из $groupCount $_temp0 и удалить $count $_temp1 более низкого качества?\n\nУдалённые файлы будут стерты из хранилища.';
  }

  @override
  String duplicatesKeepBestMessage(int count, String trackName) {
    return 'Удалить $count копий $trackName низкого качества?';
  }

  @override
  String duplicatesDeleteCopyMessage(String trackName) {
    return 'Удалить эту копию \"$trackName\"?';
  }

  @override
  String snackbarAddedToQueue(String trackName) {
    return '\"$trackName\" добавлен в очередь';
  }

  @override
  String snackbarAddedTracksToQueue(int count) {
    return 'Добавлено $count треков в очередь';
  }

  @override
  String snackbarAlreadyDownloaded(String trackName) {
    return '\"$trackName\" уже скачан';
  }

  @override
  String snackbarAlreadyInLibrary(String trackName) {
    return '\"$trackName\" уже есть в вашей медиатеке';
  }

  @override
  String get snackbarHistoryCleared => 'История очищена';

  @override
  String snackbarDeletedTracks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'треков',
      one: 'трек',
      many: 'треков',
      few: 'трека',
    );
    return 'Удалено $count $_temp0';
  }

  @override
  String snackbarCannotOpenFile(String error) {
    return 'Невозможно открыть файл: $error';
  }

  @override
  String get snackbarViewQueue => 'Просмотр очереди';

  @override
  String snackbarUrlCopied(String platform) {
    return '$platform ссылка скопирована в буфер обмена';
  }

  @override
  String get snackbarFileNotFound => 'Файл не найден';

  @override
  String get snackbarSelectExtFile =>
      'Пожалуйста, выберите .toadplayer-ext-файл';

  @override
  String get snackbarProviderPrioritySaved => 'Приоритет провайдера сохранён';

  @override
  String get snackbarMetadataProviderSaved =>
      'Приоритет провайдера метаданных сохранён';

  @override
  String snackbarExtensionInstalled(String extensionName) {
    return '$extensionName установлено.';
  }

  @override
  String snackbarExtensionUpdated(String extensionName) {
    return '$extensionName обновлён.';
  }

  @override
  String get snackbarFailedToInstall => 'Не удалось установить расширение';

  @override
  String get snackbarFailedToUpdate => 'Не удалось обновить расширение';

  @override
  String get errorRateLimited => 'Превышение запросов';

  @override
  String get errorRateLimitedMessage =>
      'Слишком много запросов. Пожалуйста, подождите минуту перед повторным поиском.';

  @override
  String get errorNoTracksFound => 'Треки не найдены';

  @override
  String get searchEmptyResultSubtitle => 'Попробуйте другое ключевое слово';

  @override
  String get errorUrlNotRecognized => 'Ссылка не распознана';

  @override
  String get errorUrlNotRecognizedMessage =>
      'Эта ссылка не поддерживается. Убедитесь, что URL-адрес указан правильно и установлено совместимое расширение.';

  @override
  String get errorUrlFetchFailed =>
      'Не удалось загрузить контент по этой ссылке. Пожалуйста, попробуйте еще раз.';

  @override
  String errorMissingExtensionSource(String item) {
    return 'Невозможно загрузить $item: отсутствует источник расширения';
  }

  @override
  String get actionPause => 'Пауза';

  @override
  String get actionResume => 'Возобновить';

  @override
  String get actionCancel => 'Отмена';

  @override
  String get actionSelectAll => 'Выбрать все';

  @override
  String get actionDeselect => 'Снять выделение';

  @override
  String selectionSelected(int count) {
    return '$count выбрано';
  }

  @override
  String get selectionAllSelected => 'Все треки выбраны';

  @override
  String get selectionSelectToDelete => 'Выберите треки для удаления';

  @override
  String progressFetchingMetadata(int current, int total) {
    return 'Получение метаданных... $current/$total';
  }

  @override
  String get progressReadingCsv => 'Чтение CSV...';

  @override
  String get searchSongs => 'Песни';

  @override
  String get searchArtists => 'Исполнители';

  @override
  String get searchAlbums => 'Альбомы';

  @override
  String get searchPlaylists => 'Плейлисты';

  @override
  String get searchShowAll => 'Show all';

  @override
  String searchShowAllCategory(String category) {
    return 'Show all $category';
  }

  @override
  String get searchSortTitle => 'Упорядочить результаты';

  @override
  String get searchSortDefault => 'По умолчанию';

  @override
  String get searchSortTitleAZ => 'Название (А-Я)';

  @override
  String get searchSortTitleZA => 'Название (Я-А)';

  @override
  String get searchSortArtistAZ => 'Исполнитель (А-Я)';

  @override
  String get searchSortArtistZA => 'Исполнитель (Я-А)';

  @override
  String get searchSortDurationShort => 'Продолжительность (наименьшая)';

  @override
  String get searchSortDurationLong => 'Продолжительность (наибольшая)';

  @override
  String get searchSortDateOldest => 'Дата релиза (старейшая)';

  @override
  String get searchSortDateNewest => 'Дата релиза (новейшая)';

  @override
  String get tooltipPlay => 'Воспроизвести';

  @override
  String get filenameFormat => 'Формат имени файла';

  @override
  String get filenameShowAdvancedTags => 'Показать расширенные теги';

  @override
  String get filenameShowAdvancedTagsDescription =>
      'Включить форматированные теги для отслеживания заполнения и шаблонов дат';

  @override
  String get folderOrganizationNone => 'Без организации';

  @override
  String get folderOrganizationByPlaylist => 'По плейлисту';

  @override
  String get folderOrganizationByPlaylistSubtitle =>
      'Отдельная папка для каждого плейлиста';

  @override
  String get folderOrganizationByArtist => 'По исполнителю';

  @override
  String get folderOrganizationByAlbum => 'По альбому';

  @override
  String get folderOrganizationByArtistAlbum => 'Исполнитель/Альбом';

  @override
  String get folderOrganizationDescription =>
      'Сортировать скачанные файлы по папкам';

  @override
  String get folderOrganizationNoneSubtitle => 'Все файлы в папке загрузок';

  @override
  String get folderOrganizationByArtistSubtitle =>
      'Отдельная папка для каждого исполнителя';

  @override
  String get folderOrganizationByAlbumSubtitle =>
      'Отдельная папка для каждого альбома';

  @override
  String get folderOrganizationByArtistAlbumSubtitle =>
      'Вложенные папки для исполнителей и альбомов';

  @override
  String get updateAvailable => 'Доступно обновление';

  @override
  String get updateLater => 'Позже';

  @override
  String get updateStartingDownload => 'Загрузка началась...';

  @override
  String get updateDownloadFailed => 'Не удалось скачать';

  @override
  String get updateFailedMessage => 'Сбой загрузки обновления';

  @override
  String get updateNewVersionReady => 'Доступна новая версия';

  @override
  String get updateRequiredTitle => 'Требуется обновление';

  @override
  String updateRequiredNotice(int count) {
    return 'Эта версия $count больше не поддерживается. Обновите, чтобы продолжить использовать приложение.';
  }

  @override
  String get updateCurrent => 'Текущая';

  @override
  String get updateNew => 'Новая';

  @override
  String get updateDownloading => 'Скачивание...';

  @override
  String get updateWhatsNew => 'Что нового';

  @override
  String get updateDownloadInstall => 'Скачать и установить';

  @override
  String get updateDontRemind => 'Не напоминать';

  @override
  String get updateViewRelease => 'View Release';

  @override
  String get updateStartingInstaller => 'Запуск установщика...';

  @override
  String get updateMacInstallHint =>
      'The disk image is open in Finder. Quit Toadplayer, then drag Toadplayer from the disk image to Applications and replace the old copy.';

  @override
  String get updateQuitApp => 'Quit Toadplayer';

  @override
  String get updateReadyToRestart =>
      'Обновление установлено. Перезапустите Toadplayer чтобы им воспользоваться.';

  @override
  String get updateRestartNow => 'Перезапустить сейчас';

  @override
  String get providerPriorityTitle => 'Приоритет провайдера';

  @override
  String get providerPriorityDescription =>
      'Перетаскивайте, чтобы изменить порядок провайдеров загрузки. Приложение будет пробовать провайдеров сверху вниз при загрузке треков.';

  @override
  String get providerPriorityInfo =>
      'Если трек не доступен у первого провайдера, приложение автоматически попробует следующий.';

  @override
  String get providerPriorityFallbackExtensionsDescription =>
      'Выберите, какие из установленных расширений использовать как резервные.';

  @override
  String get providerPriorityFallbackExtensionsHint =>
      'Здесь перечислены только включенные расширения с возможностями поставщика загрузок.';

  @override
  String get providerExtension => 'Расширение';

  @override
  String get metadataProviderPriorityTitle => 'Приоритет метаданных';

  @override
  String get metadataProviderPriorityDescription =>
      'Перетаскивайте, чтобы изменить порядок провайдеров метаданных. Приложение будет пробовать провайдеров сверху вниз при поиске треков и извлечении метаданных.';

  @override
  String get metadataProviderPriorityInfo =>
      'Deezer не имеет ограничений по скорости и рекомендуется в качестве основного. Spotify может ограничивать скорость после большого количества запросов.';

  @override
  String get logTitle => 'Логи';

  @override
  String get logCopied => 'Логи скопированы в буфер обмена';

  @override
  String get logSearchHint => 'Поиск логов...';

  @override
  String get logFilterLevel => 'Уровень';

  @override
  String get logFilterSection => 'Фильтр';

  @override
  String get logShareLogs => 'Поделиться логами';

  @override
  String get logClearLogs => 'Очистить логи';

  @override
  String get logClearLogsTitle => 'Очистить логи';

  @override
  String get logClearLogsMessage => 'Вы уверены, что хотите очистить все логи?';

  @override
  String get logFilterBySeverity => 'Фильтровать логи по серьезности';

  @override
  String get logNoLogsYet => 'Логов нет';

  @override
  String get logNoLogsYetSubtitle =>
      'Логи появятся здесь по мере использования приложения';

  @override
  String logEntriesFiltered(int count) {
    return 'Записи ($count фильтровано)';
  }

  @override
  String logEntries(int count) {
    return 'Записи ($count)';
  }

  @override
  String get channelStable => 'Стабильный';

  @override
  String get channelPreview => 'Предварительный';

  @override
  String get sectionSearchSource => 'Поиск источника';

  @override
  String get sectionDownload => 'Скачивание';

  @override
  String get sectionPerformance => 'Производительность';

  @override
  String get sectionApp => 'Приложение';

  @override
  String get sectionData => 'Данные';

  @override
  String get sectionDebug => 'Отладка';

  @override
  String get sectionService => 'Сервис';

  @override
  String get sectionAudioQuality => 'Качество аудио';

  @override
  String get sectionFileSettings => 'Настройки файла';

  @override
  String get sectionLyrics => 'Тексты песен';

  @override
  String get lyricsKeepScreenOn => 'Keep screen on while viewing lyrics';

  @override
  String get lyricsKeepScreenOnSubtitle =>
      'Запретить отключение экрана при открытом тексте песни, даже когда воспроизведение на паузе.';

  @override
  String get lyricsMode => 'Режим текстов песен';

  @override
  String get lyricsModeDescription =>
      'Выберите как сохранить тексты песен при скачивании';

  @override
  String get lyricsModeEmbed => 'Вписать в файл';

  @override
  String get lyricsModeEmbedSubtitle => 'Встроить текст в метаданные FLAC';

  @override
  String get lyricsModeExternal => 'Внешний файл .lrc';

  @override
  String get lyricsModeExternalSubtitle =>
      'Отдельный файл .lrc для плееров, таких, как Samsung Music';

  @override
  String get lyricsModeBoth => 'Оба варианта';

  @override
  String get lyricsModeBothSubtitle => 'Вписать и сохранить .lrc файл';

  @override
  String get sectionColor => 'Цвет';

  @override
  String get sectionTheme => 'Тема';

  @override
  String get sectionLayout => 'Разметка';

  @override
  String get sectionLanguage => 'Язык';

  @override
  String get appearanceLanguage => 'Язык приложения';

  @override
  String get settingsAppearanceSubtitle => 'Тема, цвета, дисплей';

  @override
  String get settingsDownloadSubtitle => 'Сервис, качество, откат';

  @override
  String get settingsExtensionsSubtitle => 'Управление провайдерами скачивания';

  @override
  String get settingsLogsSubtitle => 'Просмотреть логи для отладки';

  @override
  String get loadingSharedLink => 'Загрузка общедоступной ссылки...';

  @override
  String get pressBackAgainToExit => 'Нажмите «Назад» ещё раз, чтобы выйти';

  @override
  String downloadAllCount(int count) {
    return 'Скачать все ($count)';
  }

  @override
  String tracksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count треков',
      one: '1 трек',
      many: '$count треков',
      few: '$count трека',
    );
    return '$_temp0';
  }

  @override
  String get trackCopyFilePath => 'Скопировать путь к файлу';

  @override
  String get trackRemoveFromDevice => 'Удалить с устройства';

  @override
  String get trackLoadLyrics => 'Загрузить текст песни';

  @override
  String get trackMetadata => 'Метаданные';

  @override
  String get trackFileInfo => 'Информация о файле';

  @override
  String get trackLyrics => 'Текст песни';

  @override
  String get trackFileNotFound => 'Файл не найден';

  @override
  String get trackFileUnavailable =>
      'File is currently unavailable. Check storage access and try again.';

  @override
  String get trackOpenInDeezer => 'Открыть в Deezer';

  @override
  String get trackOpenInSpotify => 'Открыть в Spotify';

  @override
  String get trackTrackName => 'Название';

  @override
  String get trackArtist => 'Исполнитель';

  @override
  String get trackAlbumArtist => 'Исполнитель альбома';

  @override
  String get trackAlbum => 'Альбом';

  @override
  String get trackTrackNumber => 'Номер трека';

  @override
  String get trackDiscNumber => 'Номер диска';

  @override
  String get trackDuration => 'Продолжительность';

  @override
  String get trackAudioQuality => 'Качество записи';

  @override
  String get trackReplayGainTrackGain => 'ReplayGain Усилие трека';

  @override
  String get trackReplayGainTrackPeak => 'ReplayGain Пик трека';

  @override
  String get trackReplayGainAlbumGain => 'ReplayGain Усилие трека';

  @override
  String get trackReplayGainAlbumPeak => 'ReplayGain Пик альбома';

  @override
  String get libraryQualityLabelFileFormat => 'Формат файла';

  @override
  String get trackReleaseDate => 'Дата выхода';

  @override
  String get trackGenre => 'Жанр';

  @override
  String get trackLabel => 'Заголовок';

  @override
  String get trackCopyright => 'Авторские права';

  @override
  String get trackDownloaded => 'Скачано';

  @override
  String get trackCopyLyrics => 'Копировать текст';

  @override
  String trackLyricsSource(String source) {
    return 'Источник: $source';
  }

  @override
  String get trackLyricsNotAvailable =>
      'Текст песни недоступен для этого трека';

  @override
  String get trackLyricsNotInFile => 'В этом файле не найдено текстов песен';

  @override
  String get trackFetchOnlineLyrics => 'Поиск в сети';

  @override
  String get trackLyricsTimeout =>
      'Время ожидания запроса истекло. Повторите попытку позже.';

  @override
  String get trackLyricsLoadFailed => 'Не удалось загрузить текст песни';

  @override
  String get trackEmbedLyrics => 'Вписать текст песни';

  @override
  String get trackLyricsEmbedded => 'Текст успешно добавлен';

  @override
  String get trackInstrumental => 'Инструментальный трек';

  @override
  String get trackCopiedToClipboard => 'Скопировано в буфер обмена';

  @override
  String get trackDeleteConfirmTitle => 'Удалить с устройства?';

  @override
  String get trackDeleteNetworkConfirmMessage =>
      'Это навсегда удалит файл из Вашего сетевого хранилища и удалит его из библиотеки и истории.';

  @override
  String snackbarDeleteTracksFailed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'трека(-ов)',
      one: 'трек',
    );
    return 'Не удалось удалить $count $_temp0. Проверьте доступ к хранилищу и попробуйте снова.';
  }

  @override
  String get trackDeleteConfirmMessage =>
      'Это приведет к окончательному удалению загруженного файла и его удалению из истории.';

  @override
  String get dateToday => 'Сегодня';

  @override
  String get dateYesterday => 'Вчера';

  @override
  String dateDaysAgo(int count) {
    return '$count дней назад';
  }

  @override
  String dateWeeksAgo(int count) {
    return '$count недель назад';
  }

  @override
  String dateMonthsAgo(int count) {
    return '$count месяцев назад';
  }

  @override
  String get storeFilterAll => 'Все';

  @override
  String get storeFilterMetadata => 'Метаданные';

  @override
  String get storeFilterDownload => 'Скачивание';

  @override
  String get storeFilterUtility => 'Утилиты';

  @override
  String get storeFilterLyrics => 'Тексты песен';

  @override
  String get storeFilterIntegration => 'Интеграция';

  @override
  String get storeClearFilters => 'Очистить фильтры';

  @override
  String get storeAddRepoTitle => 'Добавить репозиторий расширения';

  @override
  String get storeAddRepoDescription =>
      'Введите URL-адрес репозитория GitHub, который содержит файл registry.json для просмотра и установки расширений.';

  @override
  String get storeRepoUrlLabel => 'Ссылка на репозиторий';

  @override
  String get storeRepoUrlHint => 'https://github.com/user/repo';

  @override
  String get storeAddRepoButton => 'Добавить репозиторий';

  @override
  String get storeChangeRepoTooltip => 'Изменить репозиторий';

  @override
  String get storeRepoDialogTitle => 'Репозиторий расширения';

  @override
  String get storeRepoDialogCurrent => 'Текущий репозиторий:';

  @override
  String get storeNewRepoUrlLabel => 'Новый URL репозитория';

  @override
  String get storeLoadError => 'Не удалось загрузить репозиторий';

  @override
  String get storeEmptyNoExtensions => 'Нет доступных расширений';

  @override
  String get storeEmptyNoResults => 'Расширения не найдены';

  @override
  String get extensionId => 'ID';

  @override
  String get extensionError => 'Ошибка';

  @override
  String get extensionCapabilities => 'Возможности';

  @override
  String get extensionMetadataProvider => 'Провайдер метаданных';

  @override
  String get extensionDownloadProvider => 'Провайдер скачивания';

  @override
  String get extensionLyricsProvider => 'Провайдер текстов';

  @override
  String get extensionUrlHandler => 'URL-обработчик';

  @override
  String get extensionQualityOptions => 'Параметры качества';

  @override
  String get extensionPostProcessingHooks => 'Хуки постобработки';

  @override
  String get extensionPermissions => 'Разрешения';

  @override
  String get extensionSettings => 'Настройки';

  @override
  String get extensionRemoveButton => 'Удалить расширение';

  @override
  String get extensionUpdated => 'Обновлено';

  @override
  String get extensionMinAppVersion => 'Мин. версия приложения';

  @override
  String get extensionCustomTrackMatching =>
      'Соответствие пользовательских треков';

  @override
  String get extensionPostProcessing => 'Постобработка';

  @override
  String extensionHooksAvailable(int count) {
    return 'Доступно $count хуков(ов)';
  }

  @override
  String extensionPatternsCount(int count) {
    return '$count шаблон(ов)';
  }

  @override
  String extensionStrategy(String strategy) {
    return 'Стратегия: $strategy';
  }

  @override
  String get extensionsProviderPrioritySection => 'Приоритет провайдера';

  @override
  String get extensionsInstalledSection => 'Установленные расширения';

  @override
  String get extensionsNoExtensions => 'Нет установленных расширений';

  @override
  String get extensionsNoExtensionsSubtitle =>
      'Установите .toadplayer-ext файлы для добавления новых провайдеров';

  @override
  String get extensionsInstallButton => 'Установить расширение';

  @override
  String get extensionsInfoTip =>
      'Расширения могут добавлять новые метаданные и провайдеров загрузки. Устанавливайте только расширения из надежных источников.';

  @override
  String get extensionsInstalledSuccess => 'Расширение успешно установлено';

  @override
  String extensionsInstalledCount(int count) {
    return '$count расширений успешно установлено';
  }

  @override
  String extensionsInstallPartialSuccess(int installed, int attempted) {
    return 'Установлено $installed из $attempted расширений';
  }

  @override
  String get extensionsDownloadPriority => 'Приоритет скачивания';

  @override
  String get extensionsDownloadPrioritySubtitle =>
      'Установка порядок сервисов скачивания';

  @override
  String get extensionsFallbackTitle => 'Резервные расширения';

  @override
  String get extensionsFallbackSubtitle =>
      'Выберите, какие из установленных расширений использовать как резервные';

  @override
  String get extensionsNoDownloadProvider =>
      'Нет расширений с провайдером загрузки';

  @override
  String get extensionsMetadataPriority => 'Приоритет метаданных';

  @override
  String get extensionsMetadataPrioritySubtitle =>
      'Установка порядка поиска и источника метаданных';

  @override
  String get extensionsNoMetadataProvider =>
      'Нет расширений с провайдером метаданных';

  @override
  String get extensionsSearchProvider => 'Провайдер поиска';

  @override
  String get extensionsNoCustomSearch =>
      'Нет расширений с пользовательским поиском';

  @override
  String get extensionsSearchProviderDescription =>
      'Выберите, какой сервис использовать для поиска треков';

  @override
  String get extensionsCustomSearch => 'Пользовательский поиск';

  @override
  String get extensionsErrorLoading => 'Ошибка загрузки расширения';

  @override
  String get qualityFlacLossless => 'FLAC Lossless';

  @override
  String get qualityFlacLosslessSubtitle => '16-бит / 44.1 кГц';

  @override
  String get qualityHiResFlac => 'Hi-Res FLAC';

  @override
  String get qualityHiResFlacSubtitle => '24-бит / до 96кГц';

  @override
  String get qualityHiResFlacMax => 'Hi-Res FLAC Макс.';

  @override
  String get qualityHiResFlacMaxSubtitle => '24-бит / до 192кГц';

  @override
  String get downloadLossyFormat => 'Формат с потерями';

  @override
  String get downloadAutoConvert => 'Автоконвертация после загрузки';

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
      'Конвертировать завершенные загрузки в меньший формат с потерями. Оригинал будет заменён только после успешной конвертации.';

  @override
  String get downloadAutoConvertFormat => 'Выходной формат';

  @override
  String get downloadAutoConvertFormatSubtitle =>
      'Выберите формат с потерями для новых завершённых загрузок.';

  @override
  String get downloadAutoConvertBitrate => 'Качество выхода';

  @override
  String get downloadAutoConvertBitrateSubtitle =>
      'Выше битрейт — больше деталей, но и размер файла будет выше.';

  @override
  String get downloadAutoConvertMp3Subtitle =>
      'Наилучшая совместимость между плеерами и устройствами';

  @override
  String get downloadAutoConvertM4aSubtitle =>
      'Эффективность AAC аудио в M4A контейнере';

  @override
  String get downloadAutoConvertOpusSubtitle =>
      'Лучшая эффективность для современных плееров';

  @override
  String get downloadAskBeforeDownload => 'Спрашивать перед скачиванием';

  @override
  String get downloadDirectory => 'Папка для скачивания';

  @override
  String get downloadSeparateSinglesFolder => 'Отдельная папка для синглов';

  @override
  String get downloadAlbumFolderStructure => 'Структура папок альбома';

  @override
  String get albumFolderStructureDescription =>
      'Выберите, как структурировать папки альбомов';

  @override
  String get downloadUseAlbumArtistForFolders =>
      'Использовать исполнителя альбома для папок';

  @override
  String get downloadUsePrimaryArtistOnly =>
      'Основной исполнитель только для папок';

  @override
  String get downloadUsePrimaryArtistOnlyEnabled =>
      'Список исполнителей, чьи работы были удалены из названия папки (например, Джастин Бибер, Quavo → Джастин Бибер)';

  @override
  String get downloadUsePrimaryArtistOnlyDisabled =>
      'Полная строка исполнителя, используемая для имени папки';

  @override
  String get downloadSelectQuality => 'Выбор качества';

  @override
  String get downloadFrom => 'Скачивать из';

  @override
  String get appearanceAmoledDark => 'AMOLED';

  @override
  String get appearanceAmoledDarkSubtitle => 'Глубокий чёрный фон';

  @override
  String get appearanceHeroAnimations => 'Hero-анимации';

  @override
  String get appearanceHeroAnimationsSubtitle =>
      'Переходы между экранами, например, при открытии плеера';

  @override
  String get appearanceForceBlur => 'Всегда использовать эффект размытия';

  @override
  String get appearanceForceBlurSubtitle =>
      'Включить размытие панели навигации даже на устройствах, где по умолчанию эта функция отключена. Может негативно повлиять на производительность.';

  @override
  String get queueClearAll => 'Очистить всё';

  @override
  String get queueClearAllMessage =>
      'Вы уверены, что хотите очистить все загрузки?';

  @override
  String get settingsAutoExportFailed => 'Автоэкспорт неудачных загрузок';

  @override
  String get settingsAutoExportFailedSubtitle =>
      'Автоматическое сохранение неудачных загрузок в TXT файл';

  @override
  String get settingsDownloadNetwork => 'Сеть для скачивания';

  @override
  String get settingsDownloadNetworkAny => 'WiFi и Мобильная сеть';

  @override
  String get settingsDownloadNetworkWifiOnly => 'Только WiFi';

  @override
  String get settingsDownloadNetworkSubtitle =>
      'Выберите, какую сеть использовать для скачивания. Когда установлено значение только WiFi — скачивания через мобильную сеть будут приостановлены.';

  @override
  String get settingsConcurrentDownloads => 'Одновременные загрузки';

  @override
  String get settingsConcurrentDownloadsSubtitle =>
      'Скачивание нескольких треков одновременно происходит быстрее, но некоторые провайдеры могут ограничивать скорость параллельных запросов.';

  @override
  String get concurrentDownloadsOne => '1 трек за раз';

  @override
  String concurrentDownloadsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'треков',
      one: 'трек',
    );
    return 'До $count $_temp0 одновременно';
  }

  @override
  String get albumFolderArtistAlbum => 'Исполнитель / Альбом';

  @override
  String get albumFolderArtistAlbumSubtitle =>
      'Альбомы/Исполнитель/Название Альбома/';

  @override
  String get albumFolderArtistYearAlbum => 'Исполнитель / [Год] Альбом';

  @override
  String get albumFolderArtistYearAlbumSubtitle =>
      'Альбомы/Исполнитель/[2005] Название Альбома/';

  @override
  String get albumFolderAlbumOnly => 'Только альбом';

  @override
  String get albumFolderAlbumOnlySubtitle => 'Альбомы/Название Альбома/';

  @override
  String get albumFolderYearAlbum => '[Год] Альбом';

  @override
  String get albumFolderYearAlbumSubtitle =>
      'Альбомы/[2005] Название Альбома /';

  @override
  String get albumFolderArtistAlbumSingles => 'Исполнитель / Альбом + Синглы';

  @override
  String get albumFolderArtistAlbumSinglesSubtitle =>
      'Исполнитель/Альбом и Исполнитель/Сингл/';

  @override
  String get albumFolderArtistAlbumFlat => 'Исполнитель / Альбом (синглы)';

  @override
  String get albumFolderArtistAlbumFlatSubtitle =>
      'Исполнитель/Альбом/ и Исполнитель/песня.flac';

  @override
  String get downloadedAlbumDeleteSelected => 'Удалить выбранные';

  @override
  String downloadedAlbumDeleteMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'треков',
      few: 'трека',
      one: 'трек',
    );
    return 'Удалить $count $_temp0 из этого альбома?\n\nЭто также приведёт к удалению файлов из хранилища.';
  }

  @override
  String downloadedAlbumSelectedCount(int count) {
    return '$count выбрано';
  }

  @override
  String get downloadedAlbumTapToSelect => 'Нажмите на треки для выбора';

  @override
  String downloadedAlbumDeleteCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'треков',
      few: 'трека',
      one: 'трек',
    );
    return 'Удалить $count $_temp0';
  }

  @override
  String get downloadedAlbumSelectToDelete => 'Выберите треки для удаления';

  @override
  String downloadedAlbumDiscHeader(int discNumber) {
    return 'Диск $discNumber';
  }

  @override
  String get recentTypeArtist => 'Исполнитель';

  @override
  String get recentTypeAlbum => 'Альбом';

  @override
  String get recentTypeSong => 'Песня';

  @override
  String get recentTypePlaylist => 'Плейлист';

  @override
  String get recentEmpty => 'Нет недавних элементов';

  @override
  String get recentClearAllMessage =>
      'Очистить все недавние действия? История загрузок и музыкальные файлы не будут удалены.';

  @override
  String get recentShowAllDownloads => 'Показать все загрузки';

  @override
  String recentPlaylistInfo(String name) {
    return 'Плейлист: $name';
  }

  @override
  String get discographyDownload => 'Скачать дискографию';

  @override
  String get discographyDownloadAll => 'Скачать всё';

  @override
  String discographyDownloadAllSubtitle(int count, int albumCount) {
    return '$count треков из $albumCount релизов';
  }

  @override
  String get discographyAlbumsOnly => 'Только альбомы';

  @override
  String discographyAlbumsOnlySubtitle(int count, int albumCount) {
    return '$count треков из $albumCount альбомов';
  }

  @override
  String get discographySinglesOnly => 'Только синглы и EP';

  @override
  String discographySinglesOnlySubtitle(int count, int albumCount) {
    return '$count треков из $albumCount синглов';
  }

  @override
  String get discographySelectAlbums => 'Выбрать альбомы...';

  @override
  String get discographySelectAlbumsSubtitle =>
      'Выберите конкретные альбомы или синглы';

  @override
  String get discographyFetchingTracks => 'Получение треков...';

  @override
  String discographyFetchingAlbum(int current, int total) {
    return 'Получение $current из $total...';
  }

  @override
  String get discographyDownloadSelected => 'Скачать выбранное';

  @override
  String discographyAddedToQueue(int count) {
    return 'Добавлено $count треков в очередь';
  }

  @override
  String discographySkippedDownloaded(int added, int skipped) {
    return '$added добавлено, $skipped уже скачано';
  }

  @override
  String get discographyNoAlbums => 'Нет доступных альбомов';

  @override
  String get discographyFailedToFetch =>
      'Не удалось получить некоторые альбомы';

  @override
  String get sectionStorageAccess => 'Доступ к хранилищу';

  @override
  String get allFilesAccess => 'Доступ ко всем файлам';

  @override
  String get allFilesAccessEnabledSubtitle => 'Можно записать в любую папку';

  @override
  String get allFilesAccessDisabledSubtitle =>
      'Ограничено только папками медиа';

  @override
  String get allFilesAccessDescription =>
      'Включите, если вы сталкиваетесь с ошибками записи при сохранении в пользовательские папки. Android 13+ по умолчанию ограничивает доступ к определенным папкам.';

  @override
  String get allFilesAccessDeniedMessage =>
      'В разрешении отказано. Пожалуйста, включите функцию «Доступ ко всем файлам» в настройках системы.';

  @override
  String get allFilesAccessDisabledMessage =>
      'Доступ ко всем файлам отключен. Приложение будет использовать ограниченный доступ к хранилищу.';

  @override
  String get settingsLocalLibrary => 'Локальная медиатека';

  @override
  String get settingsLocalLibrarySubtitle =>
      'Сканировать и обнаружить дубликаты';

  @override
  String get settingsCache => 'Хранилище и кэш';

  @override
  String get settingsCacheSubtitle => 'Просмотреть размер и очистить кэш';

  @override
  String get libraryTitle => 'Локальная медиатека';

  @override
  String get libraryScanSettings => 'Настройки сканирования';

  @override
  String get libraryEnableLocalLibrary => 'Включить локальную медиатеку';

  @override
  String get libraryEnableLocalLibrarySubtitle =>
      'Сканировать и отслеживать вашу существующую музыку';

  @override
  String get libraryFolder => 'Папка медиатеки';

  @override
  String get libraryFolderHint => 'Нажмите, чтобы выбрать папку';

  @override
  String get libraryAddFolder => 'Добавить папку медиатеки';

  @override
  String get libraryAddFolderSubtitle =>
      'Внутреннее хранилище, SD-карта, SSD или другой внешний диск';

  @override
  String get librarySourceOnline => 'Онлайн';

  @override
  String get librarySourceOffline =>
      'Офлайн. Подключите накопитель, чтобы восстановить доступ к этим трекам';

  @override
  String get librarySourceDisabled => 'Отключено';

  @override
  String librarySourceScanCount(int scanned, int total, String progress) {
    return '$scanned из $total сканированных файлов ($progress%)';
  }

  @override
  String get libraryExternalStorage => 'Внешнее хранилище';

  @override
  String get libraryRemoveFolder => 'Удалить папку медиатеки';

  @override
  String get libraryRemoveFolderMessage =>
      'Удалить эту папку и проиндексированные треки из Toadplayer? Аудио файлы на накопителе не будут удалены.';

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
  String get libraryUnreadableFilesTitle => 'Нечитаемые файлы';

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
  String get libraryShowDuplicateIndicator => 'Показать индикатор дубликатов';

  @override
  String get libraryShowDuplicateIndicatorSubtitle =>
      'Показать при поиске существующих треков';

  @override
  String get libraryAutoScan => 'Автосканирование';

  @override
  String get libraryAutoScanSubtitle =>
      'Автоматически сканировать медиатеку на новые файлы';

  @override
  String get libraryAutoScanOff => 'Выкл';

  @override
  String get libraryAutoScanOnOpen => 'Каждое открытие приложения';

  @override
  String get libraryAutoScanDaily => 'Ежедневно';

  @override
  String get libraryAutoScanWeekly => 'Еженедельно';

  @override
  String get libraryActions => 'Действия';

  @override
  String get libraryScan => 'Сканировать медиатеку';

  @override
  String get libraryScanSubtitle => 'Сканировать аудио файлы';

  @override
  String get libraryScanSelectFolderFirst => 'Сначала выберите папку';

  @override
  String get libraryCleanupMissingFiles => 'Очистка отсутствующих файлов';

  @override
  String get libraryCleanupMissingFilesSubtitle =>
      'Удалить записи для файлов, которых больше не существует';

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
  String get libraryClear => 'Очистить медиатеку';

  @override
  String get libraryClearSubtitle => 'Удалить все сканированные треки';

  @override
  String get libraryClearConfirmTitle => 'Очистить медиатеку';

  @override
  String get libraryClearConfirmMessage =>
      'Это удалит все сканированные треки из вашей медиатеки. Ваши фактические файлы не будут удалены.';

  @override
  String get libraryAbout => 'О локальной медиатеке';

  @override
  String get libraryAboutDescription =>
      'Сканирует существующую коллекцию музыки для обнаружения дубликатов при загрузке. Поддерживает форматы FLAC, M4A, MP3, Opus и OGG. Метаданные читаются из тегов файлов, если доступны.';

  @override
  String libraryTracksUnit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'треков',
      few: 'трека',
      one: 'трек',
    );
    return '$_temp0';
  }

  @override
  String libraryFilesUnit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'файлов',
      few: 'файла',
      one: 'файл',
    );
    return '$_temp0';
  }

  @override
  String libraryLastScanned(String time) {
    return 'Последнее сканирование: $time';
  }

  @override
  String get libraryLastScannedNever => 'Никогда';

  @override
  String get libraryScanning => 'Сканирование...';

  @override
  String get libraryScanFinalizing => 'Завершение работы с библиотекой...';

  @override
  String get libraryScanPaused => 'Сканирование приостановлено';

  @override
  String libraryScanProgress(String progress, int total) {
    return '$progress% из $total файлов';
  }

  @override
  String get libraryInLibrary => 'В медиатеке';

  @override
  String libraryRemovedMissingFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'отсутствующих файлов',
      many: 'отсутствующих файлов',
      few: 'трека',
      one: 'отсутствующий файл',
    );
    return 'Удалено $count $_temp0 в медиатеке';
  }

  @override
  String get libraryCleared => 'Медиатека очищена';

  @override
  String get libraryStorageAccessRequired => 'Требуется доступ к хранилищу';

  @override
  String get libraryStorageAccessMessage =>
      'Toadplayer требуется доступ к хранилищу для сканирования вашей медиатеки. Пожалуйста, предоставьте разрешение в настройках.';

  @override
  String get librarySourceDownloaded => 'Скачанные';

  @override
  String get librarySourceLocal => 'Локальные';

  @override
  String get libraryFilterAll => 'Все';

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
  String get libraryFilterDownloaded => 'Скачанные';

  @override
  String get libraryFilterLocal => 'Локальные';

  @override
  String get libraryFilterTitle => 'Фильтры';

  @override
  String get libraryFilterReset => 'Сброс';

  @override
  String get libraryFilterApply => 'Применить';

  @override
  String get libraryFilterSource => 'Источник';

  @override
  String get libraryFilterQuality => 'Качество';

  @override
  String get libraryFilterQualityHiRes => 'Hi-Res (24 бит)';

  @override
  String get libraryFilterQualityCD => 'CD (16 бит)';

  @override
  String get libraryFilterQualityLossy => 'С потерями';

  @override
  String get libraryFilterFormat => 'Формат';

  @override
  String get libraryFilterMetadata => 'Метаданные';

  @override
  String get libraryFilterMetadataComplete => 'Полные метаданные';

  @override
  String get libraryFilterMetadataMissingAny => 'Не хватает метаданных';

  @override
  String get libraryFilterMetadataMissingYear => 'Отсутствует год';

  @override
  String get libraryFilterMetadataMissingGenre => 'Отсутствует жанр';

  @override
  String get libraryFilterMetadataMissingAlbumArtist =>
      'Отсутствует исполнитель альбома';

  @override
  String get libraryFilterSort => 'Сортировка';

  @override
  String get libraryFilterSortLatest => 'Последние';

  @override
  String get libraryFilterSortOldest => 'Старые';

  @override
  String get libraryFilterSortSizeLargest => 'Size (Largest first)';

  @override
  String get libraryFilterSortSizeSmallest => 'Size (Smallest first)';

  @override
  String get libraryFilterSortAlbumAsc => 'Альбом (А-Я)';

  @override
  String get libraryFilterSortAlbumDesc => 'Альбом (Я-А)';

  @override
  String get libraryFilterSortGenreAsc => 'Жанр (А-Я)';

  @override
  String get libraryFilterSortGenreDesc => 'Жанр (Я-А)';

  @override
  String get timeJustNow => 'Только что';

  @override
  String timeMinutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count минут назад',
      few: '$count минуты назад',
      one: '$count минуту назад',
    );
    return '$_temp0';
  }

  @override
  String timeHoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count часов назад',
      few: '$count часа назад',
      one: '$count час назад',
    );
    return '$_temp0';
  }

  @override
  String get tutorialWelcomeTitle => 'Добро пожаловать в Toadplayer!';

  @override
  String get tutorialWelcomeDesc =>
      'Узнайте, как находить музыку с помощью расширений, выбирать желаемое качество и управлять загрузками в Toadplayer.';

  @override
  String get tutorialWelcomeTip1 =>
      'Воспользуйтесь установленным расширением для поиска или вставьте прямую ссылку на музыкальный контент';

  @override
  String get tutorialWelcomeTip2 =>
      'Выберите одно из предложенных поставщиком загрузки значений качества звука';

  @override
  String get tutorialWelcomeTip3 =>
      'Автоматически вставлять метаданные, обложку, тексты песен и информацию о релизе';

  @override
  String get tutorialSearchTitle => 'Поиск музыки';

  @override
  String get tutorialSearchDesc =>
      'Выполните поиск с помощью выбранного расширения или вставьте ссылку на музыкальный файл, поддерживаемый сервисом.';

  @override
  String get tutorialDownloadTitle => 'Скачивание музыки';

  @override
  String get tutorialDownloadDesc =>
      'Выберите доступное качество, запустите загрузку и следите за её ходом в очереди.';

  @override
  String get tutorialLibraryTitle => 'Ваша медиатека';

  @override
  String get tutorialLibraryDesc =>
      'Загруженная и отсканированная локально музыка систематизируется в вашей медиатеке.';

  @override
  String get tutorialLibraryTip1 =>
      'Управление активными, ожидающими и завершёнными загрузками из очереди медиатеки';

  @override
  String get tutorialLibraryTip2 =>
      'Нажмите на трек, чтобы воспроизвести его с помощью встроенного проигрывателя';

  @override
  String get tutorialLibraryTip3 =>
      'Просматривайте треки, альбомы и плейлисты в виде списка или сетки';

  @override
  String get tutorialExtensionsTitle => 'Расширения';

  @override
  String get tutorialExtensionsDesc =>
      'Расширения добавляют функции поиска, загрузки, метаданных, текстов песен и другие интеграции.';

  @override
  String get tutorialExtensionsTip1 =>
      'Перейдите на вкладку «Репозиторий», чтобы найти полезные расширения';

  @override
  String get tutorialExtensionsTip2 =>
      'Выберите провайдеров для поиска, загрузки, метаданных и опций';

  @override
  String get tutorialExtensionsTip3 =>
      'При необходимости связывайте учетные записи и обновляйте расширения';

  @override
  String get tutorialSettingsTitle => 'Настройте приложение под себя';

  @override
  String get tutorialSettingsDesc =>
      'Настройте параметры загрузки, воспроизведения, работы медиатеки, внешнего вида и хранения.';

  @override
  String get tutorialSettingsTip1 =>
      'Изменить местоположение и организацию папок для скачивания';

  @override
  String get tutorialSettingsTip2 =>
      'Настройка качества, параллельных потоков, имён файлов и параметров конвертации';

  @override
  String get tutorialSettingsTip3 => 'Настроить тему и внешний вид приложения';

  @override
  String get tutorialReadyMessage =>
      'Всё готово. Выберите расширения, а затем введите поисковый запрос или вставьте поддерживаемую ссылку.';

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
  String get libraryForceFullScan => 'Полное сканирование';

  @override
  String get libraryForceFullScanSubtitle =>
      'Пересканировать все файлы, игнорировать кэш';

  @override
  String get cleanupOrphanedDownloads => 'Очистка отложенных скачиваний';

  @override
  String get cleanupOrphanedDownloadsSubtitle =>
      'Удалить историю записи для файлов, которых больше не существует';

  @override
  String cleanupOrphanedDownloadsResult(int count) {
    return 'Удалено $count утерянных записей из истории';
  }

  @override
  String get cleanupOrphanedDownloadsNone => 'Записей без описания не найдено';

  @override
  String get cacheTitle => 'Хранилище и кэш';

  @override
  String get cacheSummaryTitle => 'Просмотр кэша';

  @override
  String get cacheSummarySubtitle =>
      'Очистка кэша не приведет к удалению загруженных музыкальных файлов.';

  @override
  String cacheEstimatedTotal(String size) {
    return 'Приблизительное использование кэша: $size';
  }

  @override
  String get cacheSectionStorage => 'Кэшированные данные';

  @override
  String get cacheSectionMaintenance => 'Обслуживание';

  @override
  String get cacheAppDirectory => 'Папка кэша приложения';

  @override
  String get cacheAppDirectoryDesc =>
      'HTTP-ответы, данные WebView и другие временные данные приложения.';

  @override
  String get cacheTempDirectory => 'Временная директория';

  @override
  String get cacheTempDirectoryDesc =>
      'Временные файлы из загрузок и аудио конвертации.';

  @override
  String get cacheCoverImage => 'Кэш обложек';

  @override
  String get cacheCoverImageDesc =>
      'Скачанный альбом и трек обложки. Будет заново скачан после просмотра.';

  @override
  String get cacheLibraryCover => 'Кэш обложек медиатеки';

  @override
  String get cacheLibraryCoverDesc =>
      'Обложка извлечена из локальных музыкальных файлов. Будет повторно извлечено при следующем сканировании.';

  @override
  String get libraryPlaybackNormalization => 'Нормализация громкости';

  @override
  String get libraryPlaybackNormalizationSubtitle =>
      'Выравнивайте уровень громкости между треками с помощью тегов ReplayGain или R128, если они имеются';

  @override
  String get playbackNormalizationMode => 'Режим усиления';

  @override
  String get playbackNormalizationModeTrack => 'Трек';

  @override
  String get playbackNormalizationModeAlbum => 'Альбом';

  @override
  String get playbackNormalizationPreamp => 'Предусиление';

  @override
  String playbackNormalizationPreampValue(String gain, String target) {
    return '$gain dB (target $target LUFS)';
  }

  @override
  String get playbackNormalizationPreampHint =>
      'Ниже значение — тише звук. Нормализация только понижает громкость треков, из-за чего искажения исключаются.';

  @override
  String get cacheAudioAnalysis => 'Кэш аудиоанализа';

  @override
  String get cacheAudioAnalysisDesc =>
      'Сохраненные спектрограммы и результаты анализа. Будут проанализированы повторно при следующем открытии.';

  @override
  String get cacheExploreFeed => 'Просмотреть кэш ленты';

  @override
  String get cacheExploreFeedDesc =>
      'Изучите содержимое вкладки (новые релизы, тренды). Они обновятся при следующем посещении.';

  @override
  String get cacheTrackLookup => 'Отслеживать кэш поиска';

  @override
  String get cacheTrackLookupDesc =>
      'Поиск ID трека в Spotify/Deezer. Очистка может замедлить следующие несколько поисков.';

  @override
  String get cacheCleanupUnusedDesc =>
      'Удалить записи из истории загрузок и медиатеки, которые остались без файлов.';

  @override
  String get cacheNoData => 'Нет кэшированных данных';

  @override
  String cacheSizeWithFiles(String size, int count) {
    return '$size в $count файлах';
  }

  @override
  String cacheSizeOnly(String size) {
    return '$size';
  }

  @override
  String cacheEntries(int count) {
    return '$count записей';
  }

  @override
  String cacheClearSuccess(String target) {
    return 'Очищено: $target';
  }

  @override
  String get cacheClearConfirmTitle => 'Очистить кэш?';

  @override
  String cacheClearConfirmMessage(String target) {
    return 'Это очистит кэш для $target. Загруженные музыкальные файлы не будут удалены.';
  }

  @override
  String get cacheClearAllConfirmTitle => 'Очистить весь кэш?';

  @override
  String get cacheClearAllConfirmMessage =>
      'Это очистит все категории кэша на этой странице. Скачанные музыкальные файлы не будут удалены.';

  @override
  String get cacheClearAll => 'Очистить весь кэш';

  @override
  String get cacheCleanupUnused => 'Очистка неиспользуемых данных';

  @override
  String get cacheCleanupUnusedSubtitle =>
      'Удалить историю загрузок, оставшихся без просмотра, и отсутствующие записи в медиатеке';

  @override
  String cacheCleanupResult(int downloadCount, int libraryCount) {
    return 'Очистка завершена: $downloadCount потерянных загрузок, $libraryCount отсутствующих записей в медиатеке';
  }

  @override
  String get cacheRefreshStats => 'Обновить статистику';

  @override
  String get trackSaveCoverArt => 'Сохранить обложку';

  @override
  String get trackSaveLyrics => 'Сохранить текст (.lrc)';

  @override
  String get trackSaveLyricsProgress => 'Сохранение текста...';

  @override
  String get trackReEnrich => 'Обновить';

  @override
  String get trackReEnrichBatchSubtitle =>
      'Выберите обновление через Интернет или вручную, а затем проверьте все изменения перед записью';

  @override
  String get trackReEnrichFieldCover => 'Обложка';

  @override
  String get trackReEnrichFieldLyrics => 'Текст песни';

  @override
  String get trackReEnrichFieldBasicTags => 'Альбом, Исполнитель альбома';

  @override
  String get trackReEnrichFieldTrackInfo => 'Номер трека и диска';

  @override
  String get trackReEnrichFieldReleaseInfo => 'Дата и ISRC';

  @override
  String get trackReEnrichFieldExtra => 'Жанр, Название, Авторские права';

  @override
  String get trackReEnrichSelectAll => 'Выбрать всё';

  @override
  String get trackReEnrichModeIsrc => 'Только ISRC';

  @override
  String get trackReEnrichModeIsrcSubtitle =>
      'Найти и добавить идентификатор записи, не меняя другие теги';

  @override
  String get trackReEnrichModeMissing => 'Заполнить недостающие теги';

  @override
  String get trackReEnrichModeMissingSubtitle =>
      'Оставить существующие значения и заполнять только пустые поля';

  @override
  String get trackReEnrichModeReplace => 'Обновить выбранные теги';

  @override
  String get trackReEnrichModeReplaceSubtitle =>
      'Выберите, какие из существующих значений могут быть заменены онлайн-метаданными';

  @override
  String get trackReEnrichModeManual => 'Установка общих значений';

  @override
  String get trackReEnrichModeManualSubtitle =>
      'Применить эти же значения ко всем выбранным трекам';

  @override
  String get trackReEnrichManualFieldsTitle => 'Значения для применения';

  @override
  String get trackReEnrichManualHint =>
      'Оставьте поле пустым, чтобы сохранить его текущее значение. Названия треков, номера и ISRC-коды останутся без изменений.';

  @override
  String get trackReEnrichFieldsTitle => 'Теги для обновления';

  @override
  String get trackReEnrichReview => 'Просмотр изменений';

  @override
  String get trackReEnrichReviewTitle => 'Проверка изменений метаданных';

  @override
  String trackReEnrichReviewSubtitle(int changeCount, int trackCount) {
    String _temp0 = intl.Intl.pluralLogic(
      changeCount,
      locale: localeName,
      other: '$changeCount изменений',
      few: '$changeCount изменения',
      one: '$changeCount изменение',
    );
    String _temp1 = intl.Intl.pluralLogic(
      trackCount,
      locale: localeName,
      other: '$trackCount треков',
      few: '$trackCount треков',
      one: '$trackCount трека',
    );
    return 'Предложено $_temp0 для $_temp1';
  }

  @override
  String get trackReEnrichNoChanges =>
      'Для выбранных треков изменений в метаданных не найдено.';

  @override
  String get trackReEnrichApplyChanges => 'Применить изменения';

  @override
  String get trackReEnrichRefreshOnline => 'Обновить из сети';

  @override
  String get trackEditMetadata => 'Редактировать метаданные';

  @override
  String trackCoverSaved(String fileName) {
    return 'Обложка сохранена в $fileName';
  }

  @override
  String get trackCoverNoSource => 'Нет доступных источников обложки';

  @override
  String trackLyricsSaved(String fileName) {
    return 'Текст песни сохранен в $fileName';
  }

  @override
  String get trackReEnrichProgress => 'Обновление метаданных...';

  @override
  String get trackReEnrichSearching => 'Поиск метаданных в сети...';

  @override
  String get trackReEnrichPreparing => 'Подготовка изменений метаданных...';

  @override
  String get trackReEnrichSuccess => 'Метаданные успешно обновлены';

  @override
  String get trackReEnrichMetadataSaved => 'Метаданные сохранены';

  @override
  String get trackReEnrichLyricsUpdated => 'Текст обновлён';

  @override
  String get trackReEnrichLyricsPreserved =>
      'Новые тексты не найдены; старые сохранены';

  @override
  String get trackReEnrichLyricsDisabled =>
      'Текст песни не обновлён: загрузка текстов отключена в настройках';

  @override
  String get trackReEnrichFfmpegFailed =>
      'Ошибка встраивания метаданных FFmpeg';

  @override
  String get queueFlacAction => 'Очередь FLAC';

  @override
  String queueFlacConfirmMessage(int count) {
    return 'Поиск сетевых совпадений для выбранных треков и добавление FLAC в очередь скачивания.\n\nСуществующие файлы не изменяются и не удаляются.\n\nВ очередь автоматически попадают только точные совпадения.\n\nВыбрано: $count';
  }

  @override
  String get queueFlacNoReliableMatches =>
      'Не найдено надежных онлайн совпадений из выбранных';

  @override
  String queueFlacQueuedWithSkipped(int addedCount, int skippedCount) {
    String _temp0 = intl.Intl.pluralLogic(
      addedCount,
      locale: localeName,
      other: '$addedCount треков',
      few: '$addedCount трека',
      one: '$addedCount трек',
    );
    String _temp1 = intl.Intl.pluralLogic(
      skippedCount,
      locale: localeName,
      other: '$skippedCount треков',
      few: '$skippedCount трека',
      one: '$skippedCount трек',
    );
    return 'Добавлено $_temp0 в очередь, пропущено $_temp1';
  }

  @override
  String trackSaveFailed(String error) {
    return 'Ошибка: $error';
  }

  @override
  String get trackConvertFormat => 'Переконвертировать формат';

  @override
  String get trackConvertTitle => 'Конвертировать аудио';

  @override
  String get trackConvertTargetFormat => 'Целевой формат';

  @override
  String get trackConvertBitrate => 'Битрейт';

  @override
  String get trackConvertKeepOriginal => 'Оставить исходный файл';

  @override
  String get trackConvertKeepOriginalDescription =>
      'Добавить сконвертированный файл как отдельный трек в медиатеку';

  @override
  String get trackConvertConfirmTitle => 'Подтвердить конвертацию';

  @override
  String trackConvertConfirmMessage(
    String sourceFormat,
    String targetFormat,
    String bitrate,
  ) {
    return 'Конвертировать из $sourceFormat в $targetFormat $bitrate?\n\nОригинальный файл будет удален после конвертации.';
  }

  @override
  String trackConvertConfirmMessageLossless(
    String sourceFormat,
    String targetFormat,
  ) {
    return 'Конвертировать $sourceFormat  в $targetFormat? (Lossless — Без потери качества)\n\nОригинальные файлы будут удалены после конвертации.';
  }

  @override
  String trackConvertConfirmKeepOriginal(
    String sourceFormat,
    String targetFormat,
  ) {
    return 'Конвертировать из $sourceFormat в $targetFormat?\n\nОригинальный файл сохранится, а сконвертированный добавится в медиатеку как отдельный трек.';
  }

  @override
  String get trackConvertLosslessHint => 'Конвертация без потери качества';

  @override
  String get trackConvertConverting => 'Конвертация аудио...';

  @override
  String trackConvertSuccess(String format) {
    return 'Успешно конвертировано в $format';
  }

  @override
  String get trackConvertFailed => 'Ошибка конвертации';

  @override
  String get cueSplitTitle => 'Разделить CUE Sheet';

  @override
  String cueSplitAlbum(String album) {
    return 'Альбом: $album';
  }

  @override
  String cueSplitArtist(String artist) {
    return 'Артист: $artist';
  }

  @override
  String cueSplitTrackCount(int count) {
    return '$count треков';
  }

  @override
  String get cueSplitConfirmTitle => 'Разделенный CUE-альбом';

  @override
  String cueSplitConfirmMessage(String album, int count) {
    return 'Разбить \"$album\" на $count отдельных FLAC-файлов?';
  }

  @override
  String cueSplitSplitting(int current, int total) {
    return 'Разделение CUE sheet... ($current/$total)';
  }

  @override
  String cueSplitSuccess(int count) {
    return 'Успешно разделено на $count треков';
  }

  @override
  String get cueSplitFailed => 'Разделение CUE не удалось';

  @override
  String get cueSplitNoAudioFile => 'Аудиофайл для этого CUE sheet не найден';

  @override
  String get cueSplitButton => 'Разделить на Треки';

  @override
  String get actionCreate => 'Создать';

  @override
  String get collectionFoldersTitle => 'Мои папки';

  @override
  String get collectionWishlist => 'Список желаемого';

  @override
  String get collectionLoved => 'Любимые';

  @override
  String get collectionFavoriteArtists => 'Избранный исполнитель';

  @override
  String get collectionPlaylist => 'Плейлист';

  @override
  String get collectionAddToPlaylist => 'Добавить в плейлист';

  @override
  String get collectionCreatePlaylist => 'Создать плейлист';

  @override
  String get collectionNoPlaylistsYet => 'Плейлисты отсутствуют';

  @override
  String collectionPlaylistTracks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count треков',
      few: '$count трека',
      one: '$count трек',
    );
    return '$_temp0';
  }

  @override
  String collectionArtistCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count исполнителей',
      few: '$count исполнителя',
      one: '$count исполнитель',
    );
    return '$_temp0';
  }

  @override
  String collectionAddedToPlaylist(String playlistName) {
    return 'Добавлено в \"$playlistName\"';
  }

  @override
  String collectionAlreadyInPlaylist(String playlistName) {
    return 'Уже в \"$playlistName\"';
  }

  @override
  String get collectionPlaylistNameHint => 'Название плейлиста';

  @override
  String get collectionPlaylistNameRequired => 'Имя плейлиста обязательно';

  @override
  String get collectionRenamePlaylist => 'Переименовать плейлист';

  @override
  String get collectionDeletePlaylist => 'Удалить плейлист';

  @override
  String get collectionPlaylistRenamed => 'Плейлист переименован';

  @override
  String get collectionWishlistEmptyTitle => 'Список желаний пуст';

  @override
  String get collectionWishlistEmptySubtitle =>
      'Нажмите + на треках, чтобы сохранить то, что вы хотите скачать позже';

  @override
  String get collectionLovedEmptyTitle => 'Папка Любимые пуста';

  @override
  String get collectionLovedEmptySubtitle =>
      'Нажмите \"любовь\" на треках, чтобы сохранить ваши избранные';

  @override
  String get collectionFavoriteArtistsEmptyTitle =>
      'Нет избранных исполнителей';

  @override
  String get collectionFavoriteArtistsEmptySubtitle =>
      'Нажмите на сердце на странице исполнителя, чтобы сохранить его здесь';

  @override
  String get collectionPlaylistEmptyTitle => 'Плейлист пуст';

  @override
  String get collectionPlaylistEmptySubtitle =>
      'Удерживайте + на любом треке, чтобы добавить его сюда';

  @override
  String get collectionRemoveFromPlaylist => 'Удалить из плейлиста';

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
  String get collectionRemoveFromFolder => 'Убрать из папки';

  @override
  String collectionAddedToLoved(String trackName) {
    return '\"$trackName\" добавлен в Любимые';
  }

  @override
  String collectionRemovedFromLoved(String trackName) {
    return '\"$trackName\" удалено из Любимых';
  }

  @override
  String collectionAddedToWishlist(String trackName) {
    return '\"$trackName\" добавлен в список желаний';
  }

  @override
  String collectionRemovedFromWishlist(String trackName) {
    return '\"$trackName\" удалён из списка желаний';
  }

  @override
  String collectionAddedToFavoriteArtists(String artistName) {
    return '\"$artistName\" добавлен в избранные исполнители';
  }

  @override
  String collectionRemovedFromFavoriteArtists(String artistName) {
    return '\"$artistName\" удалено из избранных исполнителей';
  }

  @override
  String get trackOptionAddToLoved => 'Добавить в Любимое';

  @override
  String get trackOptionRemoveFromLoved => 'Исключить из Любимых';

  @override
  String get trackOptionAddToWishlist => 'Добавить в список желаний';

  @override
  String get trackOptionRemoveFromWishlist => 'Удалить из списка желаний';

  @override
  String get artistOptionAddToFavorites => 'Добавить в избранные исполнители';

  @override
  String get artistOptionRemoveFromFavorites =>
      'Удалить из избранных исполнителей';

  @override
  String get collectionPlaylistChangeCover => 'Изменить обложку';

  @override
  String get collectionPlaylistRemoveCover => 'Удалить обложку';

  @override
  String selectionConvertCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'треков',
      one: 'трек',
      many: 'треков',
      few: 'трека',
    );
    return 'Конвертировать $count $_temp0';
  }

  @override
  String get selectionConvertNoConvertible => 'Не выбраны конвертируемые треки';

  @override
  String get selectionBatchConvertConfirmTitle => 'Пакетная конвертация';

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
    return 'Преобразовать $count $_temp0 в $format с $bitrate?';
  }

  @override
  String selectionBatchConvertConfirmMessageLossless(int count, String format) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    return 'Конвертировать $count $_temp0 в $format? (Без потери качества)\n\nОригинальные файлы будут удалены после конвертации.';
  }

  @override
  String selectionBatchConvertConfirmKeepOriginal(int count, String format) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'треков',
      one: 'трек',
      many: 'треков',
      few: 'трека',
    );
    return 'Конвертировать $count $_temp0 в $format?\n\nОригинальные файлы будут храниться и преобразовываться как отдельные элементы медиатеки.';
  }

  @override
  String selectionBatchConvertSuccess(int success, int total, String format) {
    return 'Конвертировано $success треков $total в $format';
  }

  @override
  String downloadedAlbumDownloadedCount(int count) {
    return '$count скачано';
  }

  @override
  String get downloadUseAlbumArtistForFoldersAlbumSubtitle =>
      'Папка названная в честь тега Альбома Артиста';

  @override
  String get downloadUseAlbumArtistForFoldersTrackSubtitle =>
      'Папка названная в честь тега Трека Артиста';

  @override
  String get lyricsProvidersTitle => 'Приоритет к поставщику текста песни';

  @override
  String get lyricsProvidersDescription =>
      'Включайте, выключайте, переупорядочивайте источники текстов. Поставщики связаны сверху вниз пока проводится поиск текста.';

  @override
  String get lyricsProvidersInfoText =>
      'Сторонние источники текстов проверяются раньше встроенных. Необходимо оставить включённым хотя бы один источник.';

  @override
  String lyricsProvidersEnabledSection(int count) {
    return 'Включено ($count)';
  }

  @override
  String lyricsProvidersDisabledSection(int count) {
    return 'Выключено ($count)';
  }

  @override
  String get lyricsProvidersAtLeastOne =>
      'По крайней мере один провайдер должен оставаться включенным';

  @override
  String get lyricsProvidersSaved =>
      'Приоритетный провайдер текстов песен сохранен';

  @override
  String get lyricsProvidersDiscardContent =>
      'У вас есть несохранённые изменения, которые будут потеряны.';

  @override
  String get lyricsProviderLrclibDesc =>
      'База данных синхронизированных текстов песен с открытым исходным кодом';

  @override
  String get lyricsProviderNeteaseDesc =>
      'NetEase Cloud Music (хорош для азиатских песен)';

  @override
  String get lyricsProviderMusixmatchDesc =>
      'Крупнейшая база данных текстов песен (мультиязычная)';

  @override
  String get lyricsProviderAppleMusicDesc =>
      'Синхронизация текстов по словам (через прокси)';

  @override
  String get lyricsProviderQqMusicDesc =>
      'QQ Музыка (хорошо подходит для китайских песен, прямой API)';

  @override
  String get lyricsProviderLyricsPlusDesc =>
      'Послойные караоке-тексты (Apple/Musixmatch/Spotify/QQ, через прокси)';

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
  String get lyricsProviderExtensionDesc => 'Поставщик расширений';

  @override
  String get safMigrationTitle => 'Требуется обновление хранилища';

  @override
  String get safMigrationMessage1 =>
      'Теперь Toadplayer использует Android Storage Access Framework (SAF) для загрузки файлов. Это устраняет ошибки «доступ запрещен» на устройствах с Android 10 и выше.';

  @override
  String get safMigrationMessage2 =>
      'Пожалуйста, выберите папку для загрузки заново, чтобы перейти на новую систему хранения.';

  @override
  String get safMigrationSuccess => 'Папка загрузок обновлена в SAF режим';

  @override
  String get settingsDonate => 'Поддержка разработки';

  @override
  String get settingsDonateSubtitle => 'Купить разработчику кофе';

  @override
  String get settingsBackup => 'Резервирование и восстановление';

  @override
  String get settingsBackupSubtitle =>
      'Переместить свою медиатеку, историю и настройки на новое устройство';

  @override
  String get backupTitle => 'Резервирование и восстановление';

  @override
  String get backupExportSectionTitle => 'Создать резервную копию';

  @override
  String get backupExportSectionDescription =>
      'Сохраните свои настройки, историю загрузок, понравившиеся треки, список желаний, любимых исполнителей и плейлисты в одном файле, который можно сохранить или перенести на другой телефон.';

  @override
  String get backupExportButton => 'Создать файл резервной копии';

  @override
  String get backupImportSectionTitle => 'Восстановить резервную копию';

  @override
  String get backupImportSectionDescription =>
      'Выберите файл резервной копии для восстановления данных. Это заменит текущие настройки, историю и медиатеку на этом устройстве.';

  @override
  String get backupImportButton => 'Выберите файл резервной копии';

  @override
  String get backupCreated => 'Резервная копия создана';

  @override
  String get backupCreateFailed => 'Не удалось создать резервную копию';

  @override
  String get backupRestoreConfirmTitle => 'Восстановить эту резервную копию?';

  @override
  String get backupRestoreConfirmButton => 'Восстановить';

  @override
  String get backupRestored => 'Резервная копия успешно восстановлена';

  @override
  String get backupRestoreFailed => 'Не удалось восстановить резервную копию';

  @override
  String get backupInvalidFile =>
      'Этот файл не является резервной копией Toadplayer';

  @override
  String get backupRestoreRestartHint =>
      'Перезапустите приложение, чтобы убедиться, что все изменения применяются.';

  @override
  String get backupContentsTitle => 'Содержимое резервной копии';

  @override
  String get backupSettingsOnly => 'Только настройки';

  @override
  String get backupSelectHistory => 'История загрузок';

  @override
  String get backupSelectCollections => 'Коллекции медиатеки';

  @override
  String get backupSelectCollectionsDescription =>
      'Любимые треки, список желаний, любимые исполнители, плейлисты и обложки плейлистов.';

  @override
  String get backupSelectExtensions => 'Расширения и их настройки';

  @override
  String get backupSelectedExportDescription =>
      'Сохранить выбранные категории в файл резервной копии. Аудио файлы не включены.';

  @override
  String get backupSelectAtLeastOne =>
      'Выберите хотя бы одну категорию для создания резервной копии.';

  @override
  String get backupSelectedRestoreMessage =>
      'Будут восстановлены только перечисленные ниже категории. Категории, не вошедшие в эту резервную копию, останутся без изменений. Восстановление может перезаписать существующие данные, это действие нельзя отменить.';

  @override
  String get backupContentsSettings => 'Настройки приложения';

  @override
  String backupContentsHistory(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'элементов истории',
      few: 'элемента истории',
      one: 'элемент истории',
    );
    return '$count $_temp0';
  }

  @override
  String backupContentsLiked(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'понравившихся треков',
      few: 'понравившихся трека',
      one: 'понравившийся трек',
    );
    return '$count $_temp0';
  }

  @override
  String backupContentsWishlist(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'треков из списка желаний',
      few: 'трека из списка желаний',
      one: 'трек из списка желаний',
    );
    return '$count $_temp0';
  }

  @override
  String backupContentsPlaylists(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count плейлистов',
      few: '$count плейлиста',
      one: '$count плейлист',
    );
    return '$_temp0';
  }

  @override
  String backupContentsArtists(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count любимых исполнителей',
      few: '$count любимых исполнителя',
      one: '$count любимый исполнитель',
    );
    return '$_temp0';
  }

  @override
  String backupContentsExtensions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count расширений',
      few: '$count расширения',
      one: '$count расширение',
    );
    return '$_temp0';
  }

  @override
  String get backupIncludeSecrets => 'Включать учётные данные расширений';

  @override
  String get backupIncludeSecretsDescription =>
      'Токены и API-ключи из расширений будут сохранены в файл резервной копии. Храните этот файл в конфиденциальном месте. Если функция отключена, вам придётся ввести их заново после восстановления.';

  @override
  String backupExtensionsRestoreFailed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'расширений',
      few: 'расширения',
      one: 'расширение',
    );
    return 'Не удалось переустановить $count $_temp0. Установите их вручную из репозитория.';
  }

  @override
  String get tooltipLoveAll => 'Лайкнуть всё';

  @override
  String get tooltipAddToPlaylist => 'Добавить в плейлист';

  @override
  String snackbarRemovedTracksFromLoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count треков',
      few: '$count трека',
      one: '$count трек',
    );
    return 'Удалено $_temp0 из Любимых';
  }

  @override
  String snackbarAddedTracksToLoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count треков',
      few: '$count трека',
      one: '$count трек',
    );
    return 'Добавлено $_temp0 в Любимые';
  }

  @override
  String get dialogDownloadAllTitle => 'Скачать всё';

  @override
  String dialogDownloadAllMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count треков',
      few: '$count трека',
      one: '$count трек',
    );
    return 'Загрузить $_temp0?';
  }

  @override
  String get homeSkipAlreadyDownloaded => 'Пропустить уже загруженные треки';

  @override
  String get homeGoToAlbum => 'Перейти к альбому';

  @override
  String get homeAlbumInfoUnavailable => 'Информация об альбоме недоступна';

  @override
  String get snackbarLoadingCueSheet => 'Загрузка CUE разметки...';

  @override
  String get snackbarMetadataSaved => 'Метаданные успешно сохранены';

  @override
  String get snackbarFailedToEmbedLyrics => 'Не удалось встроить текст';

  @override
  String get snackbarFailedToWriteStorage => 'Не удалось записать в хранилище';

  @override
  String snackbarError(String error) {
    return 'Ошибка: $error';
  }

  @override
  String get snackbarNoActionDefined => 'Для этой кнопки не задано действие';

  @override
  String get noTracksFoundForAlbum => 'Трек-лист для этого альбома не найден';

  @override
  String get downloadLocationSubtitle =>
      'Выберите, где сохранять загруженные треки';

  @override
  String get storageAutomaticFolder => 'Автоматическая папка';

  @override
  String get storageAutomaticDownloadFolder =>
      'Использует папку «Download/Toadplayer», если она доступна для записи, в противном случае используется хранилище приложения';

  @override
  String get storageSafRecommended => 'Выбрать папку (Рекомендуется)';

  @override
  String get storageDownloadFolderHint =>
      'В окне выбора папок Android откройте папку «Загрузки» и выберите Toadplayer. Если этой папки нет, создайте её, нажав «Новая папка», а затем нажмите «Использовать эту папку», чтобы предоставить доступ.';

  @override
  String get downloadFolderAccessLostTitle => 'Доступ к папке загрузок потерян';

  @override
  String get downloadFolderAccessLostSubtitle =>
      'Загрузка не будет выполнена, пока вы не выберете папку повторно';

  @override
  String get downloadFolderReselect => 'Выбрать папку заново';

  @override
  String get downloadErrorSafPermissionLost =>
      'Разрешения SAF недействительны или аннулированы. Пожалуйста, измените расположение загрузки в настройках.';

  @override
  String get downloadErrorFolderAccessLost =>
      'Доступ к папке потерян. Пожалуйста, выберите папку для скачивания заново в Настройках.';

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
    return 'Использовать $artist, $title, $album, $track, $year, $date, $disc в качестве заполнителей.';
  }

  @override
  String get downloadFilenameInsertTag => 'Нажмите для вставки тега:';

  @override
  String get downloadSeparateSinglesEnabled =>
      'Синглы и EP будут в отдельной папке';

  @override
  String get downloadSeparateSinglesDisabled =>
      'Синглы и альбомы будут в одной папке';

  @override
  String get downloadArtistNameFilters => 'Фильтры по имени исполнителя';

  @override
  String get downloadCreatePlaylistSourceFolder => 'Папка-источник плейлиста';

  @override
  String get downloadCreatePlaylistSourceFolderEnabled =>
      'Для каждого плейлиста создается подпапка';

  @override
  String get downloadCreatePlaylistSourceFolderDisabled =>
      'Все треки будут сохранены непосредственно в папку для загрузки';

  @override
  String get downloadCreatePlaylistSourceFolderRedundant =>
      'Обрабатывается настройками организации папок';

  @override
  String get downloadSongLinkRegion => 'Регион SongLink';

  @override
  String get downloadNetworkCompatibilityMode => 'Режим сетевой совместимости';

  @override
  String get downloadNetworkCompatibilityModeEnabled =>
      'Разрешить устаревшие HTTP-адреса; проверка TLS по-прежнему включена';

  @override
  String get downloadNetworkCompatibilityModeDisabled =>
      'Использование стандартных параметров сети';

  @override
  String get downloadAllowLocalNetwork => 'Разрешить доступ к локальной сети';

  @override
  String get downloadAllowLocalNetworkEnabled =>
      'Разрешить запросы на локальные или частные адреса (для локального прокси или пользовательского DNS)';

  @override
  String get downloadAllowLocalNetworkDisabled =>
      'Локальные/приватные адреса заблокированы для безопасности';

  @override
  String get downloadSelectServiceToEnable =>
      'Выберите провайдера с параметрами качества, чтобы включить эту функцию';

  @override
  String get downloadEmbedLyricsDisabled =>
      'Сначала включите встраивание метаданных';

  @override
  String get downloadNeteaseIncludeTranslation => 'Netease: включение перевода';

  @override
  String get downloadNeteaseIncludeTranslationEnabled =>
      'Китайские строки перевода включены';

  @override
  String get downloadNeteaseIncludeTranslationDisabled =>
      'Только оригинал текста';

  @override
  String get downloadNeteaseIncludeRomanization =>
      'NetEase: транскрипция латиницей';

  @override
  String get downloadNeteaseIncludeRomanizationEnabled =>
      'Строки транскрипции включены';

  @override
  String get downloadNeteaseIncludeRomanizationDisabled => 'Без транскрипции';

  @override
  String get downloadAppleQqMultiPerson =>
      'Apple / QQ: разделение текста по исполнителям';

  @override
  String get downloadAppleQqMultiPersonEnabled =>
      'Имена исполнителей включены для дуэтов и групповых треков';

  @override
  String get downloadAppleQqMultiPersonDisabled =>
      'Стандартные тексты песен без имён исполнителей';

  @override
  String get downloadAppleElrcWordSync => 'Apple Music eLRC синхронизация слов';

  @override
  String get downloadAppleElrcWordSyncEnabled =>
      'Сохраняются исходные метки времени для каждого слова';

  @override
  String get downloadAppleElrcWordSyncDisabled =>
      'Более стабильные построчные тексты Apple Music';

  @override
  String get downloadMusixmatchLanguage => 'Язык Musixmatch';

  @override
  String get downloadMusixmatchLanguageAuto => 'Авто (оригинальный язык)';

  @override
  String get downloadFilterContributing => 'Фильтр приглашённых исполнителей';

  @override
  String get downloadFilterContributingEnabled =>
      'Приглашённые исполнители исключаются из названия папки исполнителя альбома';

  @override
  String get downloadFilterContributingDisabled =>
      'Используется полное имя исполнителя альбома';

  @override
  String get downloadProvidersNoneEnabled => 'Нет включенных провайдеров';

  @override
  String get downloadMusixmatchLanguageCode => 'Код языка';

  @override
  String get downloadMusixmatchLanguageHint => 'например: en, de, ja';

  @override
  String get downloadMusixmatchLanguageDesc =>
      'Введите код языка BCP-47 (например, ru, de, ja) для запроса текстов песен с Musixmatch.';

  @override
  String get downloadMusixmatchAuto => 'Авто';

  @override
  String get downloadNetworkAnySubtitle =>
      'Использовать Wi-Fi или мобильные данные';

  @override
  String get downloadNetworkWifiOnlySubtitle =>
      'Пауза загрузки на мобильных данных';

  @override
  String get downloadSongLinkRegionDesc =>
      'Регион, используемый при разрешении ссылок на треки через SongLink. Выберите страну, в которой доступны ваши стриминговые сервисы.';

  @override
  String get snackbarUnsupportedAudioFormat => 'Неподдерживаемый аудио формат';

  @override
  String get cacheRefresh => 'Обновить';

  @override
  String dialogDownloadPlaylistsMessage(int trackCount, int playlistCount) {
    String _temp0 = intl.Intl.pluralLogic(
      trackCount,
      locale: localeName,
      other: 'треков',
      few: 'трека',
      one: 'трек',
    );
    String _temp1 = intl.Intl.pluralLogic(
      playlistCount,
      locale: localeName,
      other: 'плейлистов',
      few: 'плейлистов',
      one: 'плейлиста',
    );
    return 'Скачать $trackCount $_temp0 из $playlistCount $_temp1?';
  }

  @override
  String bulkDownloadPlaylistsButton(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'плейлистов',
      few: 'плейлиста',
      one: 'плейлист',
    );
    return 'Скачать $count $_temp0';
  }

  @override
  String get bulkDownloadSelectPlaylists => 'Выберите плейлисты для загрузки';

  @override
  String get snackbarSelectedPlaylistsEmpty =>
      'У выбранных плейлистов нет треков';

  @override
  String playlistsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count плейлистов',
      few: '$count плейлиста',
      one: '$count плейлист',
    );
    return '$_temp0';
  }

  @override
  String get editMetadataAutoFill => 'Автозаполнение из сети';

  @override
  String get editMetadataAutoFillDesc =>
      'Выберите расширение метаданных, выберите поля, а затем проверьте их перед применением';

  @override
  String get editMetadataAutoFillSource => 'Источник метаданных';

  @override
  String get editMetadataAutoFillSourceAutomatic =>
      'Автоматически (приоритет провайдера)';

  @override
  String get editMetadataAutoFillFind => 'Найти метаданные';

  @override
  String editMetadataAutoFillPreview(String source) {
    return 'Данные из $source';
  }

  @override
  String get editMetadataAutoFillCoverAvailable => 'Обложка доступна';

  @override
  String get editMetadataAutoFillApply => 'Применить выбранные данные';

  @override
  String editMetadataAutoFillDoneFromSource(int count, String source) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'полей',
      few: 'поля',
      one: 'поле',
    );
    return 'Заполнено $count $_temp0 из $source';
  }

  @override
  String get editMetadataAutoFillSearching => 'Поиск в сети...';

  @override
  String get editMetadataAutoFillNoResults =>
      'Подходящие метаданные не найдены';

  @override
  String get editMetadataAutoFillNoneSelected =>
      'Выберите хотя бы одно поле для автозаполнения';

  @override
  String get editMetadataLyricsSearch => 'Найти текст в Интернете';

  @override
  String get lyricsPickerTitle => 'Выберите текст';

  @override
  String get lyricsPickerNeedsTitle => 'Сперва введите название и артиста';

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
  String get lyricsPickerInstrumental => 'Инструментальный';

  @override
  String get lyricsPickerNotFound => 'Текст песни не найден';

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
  String get editMetadataFieldTitle => 'Название';

  @override
  String get editMetadataFieldArtist => 'Исполнитель';

  @override
  String get editMetadataFieldAlbum => 'Альбом';

  @override
  String get editMetadataFieldAlbumArtist => 'Исполнитель альбома';

  @override
  String get editMetadataFieldDate => 'Дата';

  @override
  String get editMetadataFieldTrackNum => 'Трек #';

  @override
  String get editMetadataFieldDiscNum => 'Диск #';

  @override
  String get editMetadataFieldGenre => 'Жанр';

  @override
  String get editMetadataFieldIsrc => 'ISRC';

  @override
  String get editMetadataFieldLabel => 'Заголовок';

  @override
  String get editMetadataFieldCopyright => 'Авторские права';

  @override
  String get editMetadataFieldCover => 'Обложка';

  @override
  String get editMetadataSelectAll => 'Все';

  @override
  String get editMetadataSelectEmpty => 'Только пустые';

  @override
  String queueDownloadingCount(int count) {
    return 'Скачивание ($count)';
  }

  @override
  String get queueFilteringIndicator => 'Фильтрация...';

  @override
  String queueTrackCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count треков',
      few: '$count трека',
      one: '$count трек',
    );
    return '$_temp0';
  }

  @override
  String queueAlbumCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count альбомов',
      few: '$count альбома',
      one: '$count альбом',
    );
    return '$_temp0';
  }

  @override
  String get queueEmptyAlbums => 'Нет скачанных альбомов';

  @override
  String get queueEmptyAlbumsSubtitle =>
      'Скачайте треки из альбома, чтобы увидеть их здесь';

  @override
  String get queueEmptySingles => 'Нет скачанных синглов';

  @override
  String get queueEmptySinglesSubtitle =>
      'Здесь будут отображаться загрузки отдельных треков';

  @override
  String queuePlaylistCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count плейлистов',
      few: '$count плейлиста',
      one: '$count плейлист',
    );
    return '$_temp0';
  }

  @override
  String get queueEmptyPlaylistsSubtitle =>
      'Создайте плейлист для организации ваших треков';

  @override
  String get libraryDefaultView => 'Вид по умолчанию';

  @override
  String get libraryDefaultViewLastUsed => 'Последнее использованное';

  @override
  String get queueEmptyHistory => 'Нет истории скачиваний';

  @override
  String get queueEmptyHistorySubtitle => 'Скачанные треки появятся здесь';

  @override
  String get selectionAllPlaylistsSelected => 'Выбраны все плейлисты';

  @override
  String get selectionTapPlaylistsToSelect => 'Нажмите на плейлисты для выбора';

  @override
  String get selectionSelectPlaylistsToDelete =>
      'Выберите плейлисты для удаления';

  @override
  String get audioAnalysisTitle => 'Анализ качества аудио';

  @override
  String get audioAnalysisDescription =>
      'Проверка на Lossless качество с помощью анализа спектра';

  @override
  String get audioAnalysisAnalyzing => 'Анализ аудио...';

  @override
  String get audioAnalysisSampleRate => 'Частота дискретизации';

  @override
  String get audioAnalysisCodec => 'Codec';

  @override
  String get audioAnalysisContainer => 'Контейнер';

  @override
  String get audioAnalysisDecodedFormat => 'Декодированный формат';

  @override
  String get audioAnalysisBitDepth => 'Разрядность';

  @override
  String get audioAnalysisChannels => 'Каналы';

  @override
  String get audioAnalysisDuration => 'Продолжительность';

  @override
  String get audioAnalysisNyquist => 'Nyquist';

  @override
  String get audioAnalysisFileSize => 'Размер';

  @override
  String get audioAnalysisDynamicRange => 'Динамический диапазон';

  @override
  String get audioAnalysisPeak => 'Пик';

  @override
  String get audioAnalysisRms => 'RMS';

  @override
  String get audioAnalysisLufs => 'LUFS';

  @override
  String get audioAnalysisTruePeak => 'Реальный пик';

  @override
  String get audioAnalysisClipping => 'Клиппинг';

  @override
  String get audioAnalysisNoClipping => 'Нет клиппинга';

  @override
  String get audioAnalysisSpectralCutoff => 'Спектральный срез';

  @override
  String get audioAnalysisCutoffNotDetected => 'Не обнаружено';

  @override
  String get audioAnalysisChannelStats => 'Статистика по каналам';

  @override
  String get audioAnalysisSamples => 'Сэмплы';

  @override
  String get audioAnalysisRescan => 'Переанализировать';

  @override
  String get audioAnalysisSaveSpectrogram => 'Сохранить спектрограмму';

  @override
  String audioAnalysisSpectrogramSaved(String fileName) {
    return 'Spectrogram saved to $fileName';
  }

  @override
  String get downloadRedownloadFakeHiRes => 'Перекачать поддельный Hi-Res';

  @override
  String get downloadRedownloadFakeHiResSubtitle =>
      'По умолчанию отключено. Установите флажок «Загрузки в высоком разрешении» и заменяйте файлы только в том случае, если сохранены все аудиосэмплы. Сохраняйте исходный файл, если проверка или обработка завершились неудачно';

  @override
  String get hiResCheckVerdictFakeCertain => 'Фейковый Hi-Res';

  @override
  String get hiResCheckReasonSampleHold =>
      'Каждый сэмпл повторяется: повышение частоты дискретизации путем дублирования';

  @override
  String get hiResCheckReasonInterpolation =>
      'Промежуточные семплы интерполированы линейно';

  @override
  String get hiResCheckTitle => 'Hi-Res проверка';

  @override
  String get hiResCheckSummary =>
      'Проверяет спектр и глубину активных битов на наличие признаков повышения частоты дискретизации или добавления заполняющих битов.';

  @override
  String get hiResCheckLimitedBandwidth => 'Ограниченный диапазон частот';

  @override
  String get hiResCheckNoEvidence =>
      'Не обнаружено ни апсэмплинга, ни добавления \"заполняющих нулей\"';

  @override
  String get hiResCheckEstimatedCutoff => 'Примерная частота среза';

  @override
  String get hiResCheckActiveBits => 'Активные / сохранённые биты';

  @override
  String get hiResCheckBandwidthExplanation =>
      'Низкая частота среза может быть результатом мастеринга. Сама по себе она не доказывает апсемплинг.';

  @override
  String hiResCheckSampledExplanation(String seconds) {
    return 'Основано на $seconds секундах звука. Этот анализ не может определить изначальный мастеринг.';
  }

  @override
  String get hiResCheckImagingEvidence =>
      'Спектр содержит зеркальные полосы, характерные для апсемплинга.';

  @override
  String hiResCheckRateEvidence(String cutoff) {
    return 'Крутой срез в районе $cutoff и измеренный уровень шума свидетельствуют об исходнике с меньшей частотой.';
  }

  @override
  String hiResCheckSteadyEnergy(String cutoff) {
    return 'Энергия выше $cutoff в проанализированном сегменте преимущественно стабильна и может являться шумом.';
  }

  @override
  String get hiResCheckRun => 'Проверка';

  @override
  String get hiResCheckChecking => 'Проверка подлинности Hi-Res...';

  @override
  String get hiResCheckVerdictFake => 'Вероятно поддельный Hi-Res';

  @override
  String get hiResCheckVerdictStandard =>
      'Стандартное разрешение, ничего примечательного';

  @override
  String get hiResCheckVerdictInconclusive =>
      'Недостаточно данных: проанализированный сегмент слишком тихий или короткий';

  @override
  String get hiResCheckUnsupported =>
      'Только файлы FLAC и WAV могут быть проверены';

  @override
  String hiResCheckFailed(String error) {
    return 'Hi-Res проверка не удалась: $error';
  }

  @override
  String hiResCheckReasonDepth(int declared, int effective) {
    return 'Формат $declared-бит, но фактически используется $effective бит';
  }

  @override
  String get audioAnalysisRescanning => 'Переанализ аудио...';

  @override
  String get extensionsHomeFeedProvider => 'Провайдер домашней ленты';

  @override
  String get extensionsHomeFeedCountry => 'Home feed country';

  @override
  String get extensionsHomeFeedCountryDescription =>
      'Choose a country\'s Home recommendations without a VPN.';

  @override
  String get extensionsHomeFeedDescription =>
      'Выберите расширение, предоставляющее ленту на главном экране';

  @override
  String get extensionsHomeFeedAuto => 'Авто';

  @override
  String get extensionsHomeFeedAutoSubtitle =>
      'Автоматический выбор лучшего из доступных';

  @override
  String get extensionsHomeFeedOff => 'Выкл';

  @override
  String get extensionsHomeFeedOffSubtitle =>
      'Не показывать домашнюю ленту на главном экране';

  @override
  String extensionsHomeFeedUse(String extensionName) {
    return 'Использовать домашнюю ленту $extensionName';
  }

  @override
  String get extensionsNoHomeFeedExtensions =>
      'Нет расширений с домашней лентой';

  @override
  String get cancelDownloadTitle => 'Отменить скачивание?';

  @override
  String cancelDownloadContent(String trackName) {
    return 'Это отменит активную загрузку для \"$trackName\".';
  }

  @override
  String get cancelDownloadKeep => 'Удерживать';

  @override
  String get queueCancelledTitle => 'Загрузка отменена';

  @override
  String get queueCancelledMessage =>
      'Загрузка была отменена. Повторите попытку или удалите её из очереди.';

  @override
  String get metadataSaveFailedFfmpeg =>
      'Не удалось сохранить метаданные через FFmpeg';

  @override
  String get metadataSaveFailedStorage =>
      'Не удалось записать метаданные обратно в хранилище';

  @override
  String snackbarFolderPickerFailed(String error) {
    return 'Не удалось открыть выбор папок: $error';
  }

  @override
  String notifDownloadingTrack(String trackName) {
    return 'Загрузка $trackName';
  }

  @override
  String notifFinalizingTrack(String trackName) {
    return 'Завершение работы с $trackName';
  }

  @override
  String get notifEmbeddingMetadata => 'Встраивание метаданных...';

  @override
  String notifAlreadyInLibraryCount(int completed, int total) {
    return '$completed Уже в библиотеке ($completed/$total)';
  }

  @override
  String get notifAlreadyInLibrary => 'Уже в медиатеке';

  @override
  String notifDownloadCompleteCount(int completed, int total) {
    return 'Загрузка завершена ($completed/$total)';
  }

  @override
  String get notifDownloadComplete => 'Скачивание завершено';

  @override
  String notifDownloadsFinished(int completed, int failed) {
    return 'Загрузка завершена ($completed завершено, $failed не удалось)';
  }

  @override
  String get notifVerificationRequiredTitle => 'Требуется верификация';

  @override
  String get notifVerificationRequiredBody =>
      'Откройте приложение, чтобы завершить проверку и возобновить загрузку';

  @override
  String get notifAllDownloadsComplete => 'Все загрузки завершены';

  @override
  String notifTracksDownloadedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count треков успешно скачано',
      few: '$count трека успешно скачано',
      one: '$count трек успешно скачан',
    );
    return '$_temp0';
  }

  @override
  String notifDownloadsFinishedBody(int completed, int failed) {
    String _temp0 = intl.Intl.pluralLogic(
      completed,
      locale: localeName,
      other: '$completed треков скачано',
      few: '$completed трека скачано',
      one: '$completed трек скачан',
    );
    String _temp1 = intl.Intl.pluralLogic(
      failed,
      locale: localeName,
      other: '$failed с ошибками',
      few: '$failed с ошибками',
      one: '$failed с ошибкой',
    );
    return '$_temp0, $_temp1';
  }

  @override
  String get notifDownloadsCanceledTitle => 'Загрузка отменена';

  @override
  String notifDownloadsCanceledBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count загрузок отменены пользователем',
      few: '$count загрузки отменены пользователем',
      one: '$count загрузка отменена пользователем',
    );
    return '$_temp0';
  }

  @override
  String get notifScanningLibrary => 'Сканирование локальной медиатеки';

  @override
  String notifLibraryScanProgressWithTotal(
    int scanned,
    int total,
    int percentage,
  ) {
    return '$scanned/$total файлов • $percentage%';
  }

  @override
  String notifLibraryScanProgressNoTotal(int scanned) {
    return '$scanned файлов отсканировано';
  }

  @override
  String get notifLibraryScanComplete => 'Сканирование медиатеки завершено';

  @override
  String notifLibraryScanCompleteBody(int count) {
    return '$count треков индексировано';
  }

  @override
  String notifLibraryScanExcluded(int count) {
    return '$count исключено';
  }

  @override
  String notifLibraryScanErrors(int count) {
    return '$count ошибок';
  }

  @override
  String get notifLibraryScanFailed => 'Ошибка сканирования медиатеки';

  @override
  String get notifLibraryScanInterruptedBody =>
      'The previous library scan was interrupted. Scan the folder again to continue. Your indexed tracks are still available.';

  @override
  String get notifLibraryScanCancelled => 'Сканирование медиатеки отменено';

  @override
  String get notifLibraryScanStopped =>
      'Сканирование остановлено перед завершением.';

  @override
  String get notifLibraryScanPaused => 'Сканирование библиотеки приостановлено';

  @override
  String notifLibraryScanPausedBody(int count) {
    return '$count files scanned. Resume in Local Library settings to continue from here.';
  }

  @override
  String notifDownloadingUpdate(String version) {
    return 'Скачивание Toadplayer v$version';
  }

  @override
  String notifUpdateProgress(String received, String total, int percentage) {
    return '$received / $total МБ • $percentage%';
  }

  @override
  String get notifUpdateReady => 'Обновление готово';

  @override
  String notifUpdateReadyBody(String version) {
    return 'Toadplayer v$version скачана. Нажмите, чтобы установить.';
  }

  @override
  String get notifUpdateFailed => 'Ошибка обновления';

  @override
  String get notifUpdateFailedBody =>
      'Не удалось скачать обновление. Попробуйте позже.';

  @override
  String get searchTracks => 'Треки';

  @override
  String get homeSearchHintDefault => 'Вставьте URL или найдите...';

  @override
  String homeSearchHintProvider(String providerName) {
    return 'Поиск с$providerName...';
  }

  @override
  String get homeImportCsvTooltip => 'Импорт плейлистов (CSV, M3U)';

  @override
  String get homeChangeSearchProviderTooltip => 'Изменить поставщика поиска';

  @override
  String get actionPaste => 'Вставить';

  @override
  String get tutorialSearchHint => 'Вставьте или найдите...';

  @override
  String get tutorialDownloadCompletedSemantics => 'Загрузка завершена';

  @override
  String get tutorialDownloadInProgressSemantics => 'Идёт загрузка';

  @override
  String get tutorialStartDownloadSemantics => 'Начать загрузку';

  @override
  String get optionsEmbedMetadata => 'Встроить метаданные';

  @override
  String get optionsEmbedMetadataSubtitleOn =>
      'Записывать метаданные, обложки и тексты песен в файлы';

  @override
  String get optionsEmbedMetadataSubtitleOff =>
      'Отключено (расширенный режим): пропустить запись всех метаданных';

  @override
  String get trackCoverNoEmbeddedArt => 'Не найдено встроенных обложек альбома';

  @override
  String get trackCoverReplace => 'Заменить обложку';

  @override
  String get trackCoverPick => 'Выбрать обложку';

  @override
  String get trackCoverClearSelected => 'Очистить выбранную обложку';

  @override
  String get trackCoverCurrent => 'Текущая обложка';

  @override
  String get trackCoverSelected => 'Выбранная обложка';

  @override
  String get trackCoverReplaceNotice =>
      'Выбранная обложка заменит текущую встроенную при нажатии \"Сохранить\".';

  @override
  String get trackCoverResolution => 'Разрешение обложки';

  @override
  String get trackCoverResolutionHint =>
      'Задает длину самой большой стороны при сохранении. Увеличение размера не улучшает детализацию изображения.';

  @override
  String get trackCoverResizeFailed =>
      'Не удалось изменить размер обложки. Пожалуйста, попробуйте другой размер или изображение.';

  @override
  String get actionStop => 'Стоп';

  @override
  String get queueFinalizingDownload => 'Завершение загрузки';

  @override
  String get queueDownloadNext => 'Загрузить следующим';

  @override
  String get queueMoveUp => 'Переместить вверх';

  @override
  String get queueMoveDown => 'Переместить вниз';

  @override
  String get editMetadataMusicBrainzButton => 'Извлечь из MusicBrainz';

  @override
  String get editMetadataMusicBrainzFilled => 'Обновлено из MusicBrainz';

  @override
  String get editMetadataMusicBrainzNothing =>
      'На MusicBrainz ничего не найдено';

  @override
  String get editMetadataMusicBrainzNeedsIsrc => 'Требуется ISRC тег';

  @override
  String get nowPlayingRepeatOff => 'Повтор выключен';

  @override
  String get nowPlayingRepeatAll => 'Повторять всё';

  @override
  String get nowPlayingRepeatOne => 'Повтор трека';

  @override
  String queueNetworkFailedOffline(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count треков',
      few: '$count трека',
      one: '$count трек',
    );
    return '$_temp0 из истории загрузок (исключено из списка)';
  }

  @override
  String get queueDownloadedFileMissing => 'Загруженный файл отсутствует';

  @override
  String get queueCheckingDownloadedFile => 'Проверка загруженного файла...';

  @override
  String get queueDownloadCompleted => 'Загрузка завершена';

  @override
  String get queueRateLimitTitle => 'Уровень обслуживания ограничен';

  @override
  String get queueRateLimitMessage =>
      'Этот трек все еще может быть доступен. Подождите несколько минут, уменьшите параллельные загрузки, а затем повторите попытку.';

  @override
  String appearanceSelectAccentColor(String hex) {
    return 'Выберите цвет акцента $hex';
  }

  @override
  String get logAutoScrollOn => 'Автопрокрутка ВКЛ';

  @override
  String get logAutoScrollOff => 'Автопрокрутка ВЫКЛ';

  @override
  String get logCopyLogs => 'Скопировать логи';

  @override
  String get logClearSearch => 'Очистить поиск';

  @override
  String get logIssueIspBlockingLabel =>
      'ОБНАРУЖЕНА БЛОКИРОВКА ИНТЕРНЕТ ПРОВАЙДЕРОМ';

  @override
  String get logIssueIspBlockingDescription =>
      'Ваш провайдер может блокировать доступ к сервисам скачивания';

  @override
  String get logIssueIspBlockingSuggestion =>
      'Попробуйте с VPN либо смените DNS на 1.1.1.1 или 8.8.8.8';

  @override
  String get logIssueRateLimitedLabel => 'ЛИМИТ ЗАПРОСОВ';

  @override
  String get logIssueRateLimitedDescription =>
      'Слишком много запросов к сервису';

  @override
  String get logIssueRateLimitedSuggestion =>
      'Подождите несколько минут, прежде чем повторить попытку';

  @override
  String get logIssueNetworkErrorLabel => 'ОШИБКА СЕТИ';

  @override
  String get logIssueNetworkErrorDescription =>
      'Обнаружены проблемы с подключением';

  @override
  String get logIssueNetworkErrorSuggestion =>
      'Проверьте подключение к Интернету';

  @override
  String get logIssueTrackNotFoundLabel => 'ТРЕК НЕ НАЙДЕН';

  @override
  String get logIssueTrackNotFoundDescription =>
      'Некоторые треки не найдены в сервисах загрузки';

  @override
  String get logIssueTrackNotFoundSuggestion =>
      'Трек может быть недоступен в lossless формате';

  @override
  String get clickableLookingUpArtist => 'Поиск исполнителя...';

  @override
  String clickableInformationUnavailable(String type) {
    return 'Информация о $type недоступна';
  }

  @override
  String get extensionDetailsTags => 'Теги';

  @override
  String get extensionDetailsInformation => 'Инофрмация';

  @override
  String get extensionUtilityFunctions => 'Утилиты';

  @override
  String get actionDismiss => 'Отклонить';

  @override
  String get setupChangeFolderTooltip => 'Сменить папку';

  @override
  String a11yOpenTrackByArtist(String trackName, String artistName) {
    return 'Открыть трек $trackName от $artistName';
  }

  @override
  String a11yOpenItem(String itemType, String name) {
    return 'Открыть $itemType $name';
  }

  @override
  String a11yOpenItemCount(String title, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'элементов',
      few: 'элемента',
      one: 'элемент',
    );
    return 'Открыть $title, $count $_temp0';
  }

  @override
  String a11yOpenAlbumByArtistTrackCount(
    String albumName,
    String artistName,
    int trackCount,
  ) {
    String _temp0 = intl.Intl.pluralLogic(
      trackCount,
      locale: localeName,
      other: 'треков',
      few: 'трека',
      one: 'трек',
    );
    return 'Открыть альбом $albumName от $artistName, $trackCount $_temp0';
  }

  @override
  String a11yTrackByArtist(String trackName, String artistName) {
    return '$trackName от $artistName';
  }

  @override
  String a11ySelectAlbum(String albumName) {
    return 'Выбрать альбом $albumName';
  }

  @override
  String a11yOpenAlbum(String albumName) {
    return 'Открыть альбом $albumName';
  }

  @override
  String get settingsFiles => 'Файлы и папки';

  @override
  String get settingsFilesSubtitle =>
      'Расположение загрузок, имя файла и структура папок';

  @override
  String get settingsMetadata => 'Метаданные';

  @override
  String get settingsMetadataSubtitle =>
      'Обложки, теги, ReplayGain, провайдеры';

  @override
  String get settingsLyrics => 'Тексты песен';

  @override
  String get settingsLyricsSubtitle =>
      'Внедрение, режим, провайдеры, языковые параметры';

  @override
  String get settingsApp => 'Приложение';

  @override
  String get settingsAppSubtitle =>
      'Обновления, данные, репозиторий расширений и отладка';

  @override
  String get sectionMetadataProviders => 'Провайдеры';

  @override
  String get sectionDuplicates => 'Дубликаты';

  @override
  String get sectionLyricsProviderOptions => 'Параметры провайдера';

  @override
  String get metadataProvidersTitle => 'Приоритет провайдера метаданных';

  @override
  String get metadataProvidersSubtitle =>
      'Перетащите для задания порядка поиска и источника метаданных';

  @override
  String get downloadDeduplication => 'Пропустить дублирование загрузок';

  @override
  String get downloadDeduplicationEnabled =>
      'Уже загруженные треки будут пропущены';

  @override
  String get downloadDeduplicationWithQualityVariants =>
      'Существующие файлы в выбранном качестве будут пропущены';

  @override
  String get downloadDeduplicationDisabled =>
      'Все треки будут загружены независимо от истории';

  @override
  String get downloadQualityVariants =>
      'Разрешить скачивание версий в другом качестве';

  @override
  String get downloadQualityVariantsDescription =>
      'Сохранять все версии качества; добавлять показатель качества к имени файла только тогда, когда имя уже занято';

  @override
  String get trackOptionDownloadQualityVariant => 'Скачать в другом качестве';

  @override
  String get downloadFallbackExtensions => 'Резервные расширения';

  @override
  String get downloadFallbackExtensionsSubtitle =>
      'Выберите, какие расширения будут использоваться как резервные';

  @override
  String get editMetadataFieldDateHint => 'ГГГГ-ММ-ДД либо ГГГГ';

  @override
  String get editMetadataFieldTrackTotal => 'Всего треков';

  @override
  String get editMetadataFieldDiscTotal => 'Всего дисков';

  @override
  String get editMetadataFieldComposer => 'Композитор';

  @override
  String get editMetadataFieldComment => 'Комментарий';

  @override
  String get trackAlbumType => 'Тип Релиза';

  @override
  String get editMetadataFieldAlbumTypeHint => 'Альбом, сингл, EP, сборник...';

  @override
  String get editMetadataFieldExplicit => 'Explicit';

  @override
  String get editMetadataFieldExplicitHint =>
      'Пометить этот трек как содержащий откровенное содержимое(Explicit)';

  @override
  String get metadataExplicitValue => 'Explicit';

  @override
  String get editMetadataFieldUpc => 'UPC / Штрихкод';

  @override
  String get editMetadataFieldUpcHint => 'Числовой UPC, EAN, или GTIN';

  @override
  String get editMetadataAdvanced => 'Расширенные';

  @override
  String get libraryFilterMetadataMissingTrackNumber =>
      'Отсутствует номер трека';

  @override
  String get libraryFilterMetadataMissingDiscNumber =>
      'Отсутствует номер диска';

  @override
  String get libraryFilterMetadataMissingArtist => 'Отсутствует исполнитель';

  @override
  String get libraryFilterMetadataIncorrectIsrcFormat =>
      'Некорректный формат ISRC';

  @override
  String get libraryFilterMetadataMissingIsrc => 'Отсутствует ISRC';

  @override
  String get libraryFilterMetadataMissingLabel => 'Без лейбла';

  @override
  String collectionDeletePlaylistsMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'плейлистов',
      few: 'плейлиста',
      one: 'плейлист',
    );
    return 'Удалить $count $_temp0?';
  }

  @override
  String collectionPlaylistsDeleted(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'плейлистов',
      few: 'плейлиста',
      one: 'плейлист',
    );
    return '$count $_temp0';
  }

  @override
  String collectionAddedTracksToPlaylist(int count, String playlistName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'треков',
      few: 'трека',
      one: 'трек',
    );
    return 'Добавлено $count $_temp0 в $playlistName';
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
      other: 'треков',
      few: 'трека',
      one: 'трек',
    );
    return 'Добавлено: $count $_temp0 в $playlistName ($alreadyCount уже в плейлисте)';
  }

  @override
  String itemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'элементов',
      few: 'элемента',
      one: 'элемент',
    );
    return '$count $_temp0';
  }

  @override
  String trackReEnrichSuccessWithFailures(
    int successCount,
    int total,
    int failedCount,
  ) {
    return 'Метаданные успешно дополнены ($successCount/$total). Ошибок: $failedCount';
  }

  @override
  String selectionDeleteTracksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'треков',
      few: 'трека',
      one: 'трек',
    );
    return 'Удалить $count $_temp0';
  }

  @override
  String queueDownloadSpeedStatus(String speed) {
    return 'Загрузка - $speed МБ/с';
  }

  @override
  String get queueDownloadStarting => 'Запуск...';

  @override
  String get queueCheckingDownloadSession => 'Проверка сеанса загрузки...';

  @override
  String get queueResolvingDownloadMetadata =>
      'Определение метаданных трека...';

  @override
  String get queueResolvingDownloadStream => 'Подготовка аудиопотока...';

  @override
  String get queueWaitingForVerification => 'Ожидание верификации...';

  @override
  String get queueResumingAfterVerification =>
      'Продолжение после верификации...';

  @override
  String get a11ySelectTrack => 'Выбрать трек';

  @override
  String get a11yDeselectTrack => 'Отменить выбор трека';

  @override
  String a11yPlayTrackByArtist(String trackName, String artistName) {
    return 'Играть $trackName от $artistName';
  }

  @override
  String storeExtensionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'расширений',
      few: 'расширения',
      one: 'расширение',
    );
    return '$count $_temp0';
  }

  @override
  String storeRequiresVersion(String version) {
    return 'Требуется v$version+';
  }

  @override
  String get logIssueSummary => 'Краткое описание проблемы';

  @override
  String logTotalErrors(int count) {
    return 'Всего ошибок: $count';
  }

  @override
  String logAffectedDomains(String domains) {
    return 'Затронуто: $domains';
  }

  @override
  String get libraryScanCancelled => 'Сканирование отменено';

  @override
  String get libraryScanCancelledSubtitle =>
      'Вы можете повторить сканирование, когда будете готовы.';

  @override
  String libraryDownloadsHistoryExcluded(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count треков',
      few: '$count трека',
      one: '$count трек',
    );
    return '$_temp0 из истории загрузок (исключено из списка)';
  }

  @override
  String get downloadNativeWorker => 'Нативный загрузчик';

  @override
  String get downloadNativeWorkerSubtitle =>
      'Фоновая служба Android для загрузки расширений';

  @override
  String get extensionServiceStatus => 'Состояние сервисов';

  @override
  String get extensionServiceHealth => 'Состояние сервиса';

  @override
  String extensionHealthChecksConfigured(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'проверок',
      few: 'проверки',
      one: 'проверка',
    );
    return 'Настроено $count $_temp0';
  }

  @override
  String get extensionOauthConnectHint =>
      'Нажмите Подключиться к Spotify для заполнения этого поля.';

  @override
  String extensionLastChecked(String time) {
    return 'Последняя проверка $time';
  }

  @override
  String get extensionRefreshStatus => 'Обновить статус';

  @override
  String get extensionCustomUrlHandling => 'Обработка пользовательских URL';

  @override
  String get extensionCustomUrlHandlingSubtitle =>
      'Это расширение поддерживает ссылки с этих сайтов';

  @override
  String get extensionCustomUrlHandlingShareHint =>
      'Отправляйте ссылки с этих сайтов в Toadplayer, и это расширение обработает их.';

  @override
  String extensionSettingsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'настроек',
      few: 'настройки',
      one: 'настройка',
    );
    return '$count $_temp0';
  }

  @override
  String get extensionHealthOnline => 'Онлайн';

  @override
  String get extensionHealthDegraded => 'Деградация';

  @override
  String get extensionHealthOffline => 'Оффлайн';

  @override
  String get extensionHealthNotConfigured => 'Не настроено';

  @override
  String get extensionHealthUnknown => 'Неизвестно';

  @override
  String get extensionHealthRequired => 'обязательно';

  @override
  String get extensionSettingNotSet => 'Не задано';

  @override
  String get extensionActionFailed => 'Не удалось выполнить действие';

  @override
  String get extensionEnterValue => 'Введите значение';

  @override
  String get extensionHealthServiceOnline => 'Сервис онлайн';

  @override
  String get extensionHealthServiceDegraded => 'Сервис деградировал';

  @override
  String get extensionHealthServiceOffline => 'Служба оффлайн';

  @override
  String get extensionHealthServiceUnknown => 'Состояние сервиса неизвестно';

  @override
  String get audioAnalysisStereo => 'Стерео';

  @override
  String get audioAnalysisMono => 'Моно';

  @override
  String trackOpenInService(String serviceName) {
    return 'Открыть в $serviceName';
  }

  @override
  String get trackLyricsEmbeddedSource => 'Встроенный';

  @override
  String get unknownAlbum => 'Неизвестный альбом';

  @override
  String get unknownArtist => 'Неизвестный исполнитель';

  @override
  String get permissionAudio => 'Аудио';

  @override
  String get permissionStorage => 'Хранилище';

  @override
  String get permissionNotification => 'Уведомление';

  @override
  String get errorInvalidFolderSelected => 'Выбрана неверная папка';

  @override
  String get storeAnyVersion => 'Любая';

  @override
  String get storeCategoryMetadata => 'Метаданные';

  @override
  String get storeCategoryDownload => 'Скачивание';

  @override
  String get storeCategoryUtility => 'Утилиты';

  @override
  String get storeCategoryLyrics => 'Тексты песен';

  @override
  String get storeCategoryIntegration => 'Интеграция';

  @override
  String get artistReleases => 'Релизы';

  @override
  String get editMetadataSelectNone => 'Ничего';

  @override
  String queueRetryAllFailed(int count) {
    return 'Попытка $count неудачна';
  }

  @override
  String get settingsSaveDownloadHistory => 'Сохранить историю загрузок';

  @override
  String get settingsSaveDownloadHistorySubtitle =>
      'Сохранять завершённые загрузки в истории и медиатеке';

  @override
  String get dialogDisableHistoryTitle => 'Отключить историю загрузок?';

  @override
  String get dialogDisableHistoryMessage =>
      'Существующая история будет очищена. Загруженные файлы не будут удалены.';

  @override
  String get dialogDisableAndClear => 'Выключить и очистить';

  @override
  String get openInOtherServices => 'Открыть в других сервисах';

  @override
  String get shareSheetNoExtensions => 'Нет других совместимых сервисов';

  @override
  String get shareSheetNotFound => 'Не найдено';

  @override
  String get shareSheetCopyLink => 'Копировать ссылку';

  @override
  String shareSheetLinkCopied(Object service) {
    return '$service ссылка скопирована';
  }

  @override
  String get libraryPlayback => 'Воспроизведение';

  @override
  String get libraryExternalPlayer => 'Внешний плеер';

  @override
  String get libraryExternalPlayerSubtitle =>
      'Рекомендуется для прослушивания, лучшее качество, воспроизведение без пауз, эквалайзер и поддержка более широкого спектра форматов';

  @override
  String get libraryBuiltInPreviewPlayer => 'Встроенный плеер';

  @override
  String get libraryBuiltInPreviewPlayerSubtitle =>
      'Слушайте музыку прямо в Toadplayer';

  @override
  String get nowPlayingTitle => 'Сейчас играет';

  @override
  String get nowPlayingNothingPlaying => 'Ничего не играет';

  @override
  String get nowPlayingMinimize => 'Свернуть';

  @override
  String get nowPlayingUpNext => 'Далее';

  @override
  String get nowPlayingAudioOutput => 'Аудиовыход';

  @override
  String nowPlayingWrittenBy(String writers) {
    return 'Автор(ы): $writers';
  }

  @override
  String nowPlayingLyricsProvider(String provider) {
    return 'Провайдер текста:$provider';
  }

  @override
  String get concertGetTickets => 'Получить билеты';

  @override
  String get concertSetList => 'Список Концертов';

  @override
  String get concertSetListButton => 'Сет-лист';

  @override
  String get concertAddToCalendar => 'Добавить в календарь';

  @override
  String get concertOpenMaps => 'Открыть карты';

  @override
  String get concertDetailsUnavailable =>
      'Детали концерта в настоящее время недоступны.';

  @override
  String get concertCalendarUnavailable => 'Невозможно открыть календарь.';

  @override
  String get nowPlayingAudioOutputUnavailable =>
      'Невозможно открыть настройки аудиовыхода.';

  @override
  String get nowPlayingPreviousTrack => 'Предыдущий трек';

  @override
  String get nowPlayingNextTrack => 'Следующий трек';

  @override
  String get nowPlayingDetails => 'Подробности';

  @override
  String get nowPlayingSleepTimer => 'Таймер сна';

  @override
  String nowPlayingSleepTimerActive(String time) {
    return 'Заканчивается в $time';
  }

  @override
  String nowPlayingSleepTimerMinutes(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes минут',
      few: '$minutes минуты',
      one: '$minutes минута',
    );
    return '$_temp0';
  }

  @override
  String get nowPlayingSleepTimerOff => 'Отключить таймер сна';

  @override
  String nowPlayingSleepTimerSet(String duration) {
    return 'Таймер сна установлен на $duration';
  }

  @override
  String get nowPlayingSleepTimerCancelled => 'Таймер сна отключен';

  @override
  String get nowPlayingOpenInExternalPlayer => 'Открыть во внешнем плеере';

  @override
  String get nowPlayingHideVolume => 'Hide volume';

  @override
  String get nowPlayingShowVolume => 'Show volume';

  @override
  String get nowPlayingTabPlayer => 'Плеер';

  @override
  String get nowPlayingTabLyrics => 'Текст песни';

  @override
  String get nowPlayingNoLyrics => 'В файле нет текста';

  @override
  String get nowPlayingInstrumental => 'Инструментальный';

  @override
  String get nowPlayingLyricsLanguageOptions => 'Параметры языка текстов песен';

  @override
  String get nowPlayingHidePronunciation => 'Скрыть произношение';

  @override
  String get nowPlayingShowPronunciation => 'Показать произношение';

  @override
  String get nowPlayingHideTranslation => 'Скрыть перевод';

  @override
  String get nowPlayingShowTranslation => 'Показать перевод';

  @override
  String get nowPlayingSearchLyricsOnline => 'Искать в Интернете';

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
  String get nowPlayingLibraryEmpty => 'Ваша медиатека пуста';

  @override
  String nowPlayingShuffleLibraryFailed(String error) {
    return 'Не удалось перемешать медиатеку: $error';
  }

  @override
  String get nowPlayingShuffleOn => 'Перемешивание вкл';

  @override
  String get nowPlayingPlayInOrder => 'Играть в очереди';

  @override
  String get nowPlayingShuffleLibrary => 'Перемешать медиатеку';

  @override
  String get nowPlayingQueueEmpty => 'Очередь пуста';

  @override
  String get nowPlayingNoMetadata => 'Метаданные не доступны';

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
      'Не удалось открыть ссылку. Пожалуйста, попробуйте еще раз.';

  @override
  String trackConvertLosslessOutputWithCap(String quality) {
    return 'Lossless-вывод с ограничением $quality';
  }

  @override
  String trackConvertConfirmMessageLosslessCapped(
    String sourceFormat,
    String targetFormat,
    String quality,
  ) {
    return 'Конвертировать из $sourceFormat в $targetFormat ($quality)?\n\nАудио останется в lossless-формате, но битрейт/разрядность и частота дискретизации будут ограничены. Оригинал будет удален после завершения конвертации.';
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
      other: 'треков',
      few: 'трека',
      one: 'трек',
    );
    return 'Конвертировать $count $_temp0 в $format ($quality)?\n\nРезультат останется в кодеке lossless, но разрядность и частота дискретизации будут ограничены. Исходные файлы будут удалены после конвертации.';
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
      'Прокси на тексты песен Musixmatch, Netease, Apple Music, QQ Music, Spotify, Deezer, YouTube, Kugou и Genius';

  @override
  String get snackbarPlayingNext => 'Следующий';

  @override
  String get snackbarAddedToQueueGeneric => 'Добавлено в очередь';

  @override
  String selectionDeletePlaylistsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'плейлистов',
      few: 'плейлиста',
      one: 'плейлист',
    );
    return 'Удалить $count $_temp0';
  }

  @override
  String get actionShuffle => 'Перемешать';

  @override
  String get artistShuffleEmpty =>
      'No songs by this artist in your Library yet';

  @override
  String get downloadPrimaryArtistOnlyOn => 'Только основной: вкл';

  @override
  String get downloadPrimaryArtistOnlyOff => 'Только основной: выкл';

  @override
  String get downloadAlbumArtistMetadataPrimaryOnly =>
      'Метаданные исполнителя альбома: только основные';

  @override
  String get downloadAlbumArtistMetadataFull =>
      'Метаданные исполнителя альбома: Полные';

  @override
  String get trackConvertOriginal => 'Оригинал';

  @override
  String get trackConvertOriginalQuality => 'Исходное качество';

  @override
  String get trackConvertLosslessSuffix => 'Lossless';

  @override
  String get trackConvertDithering => 'Дизеринг';

  @override
  String get trackConvertResampler => 'Ресемплер';

  @override
  String get trackConvertDitherNone => 'Нет';

  @override
  String get trackConvertDitherTriangular => 'TPDF';

  @override
  String get trackConvertDitherTriangularHp => 'Треугольный с фильтром ВЧ';

  @override
  String get trackConvertResamplerSwr => 'SWR';

  @override
  String get trackConvertResamplerSoxr => 'SoXr';

  @override
  String get updateSeeReleaseNotes =>
      'Смотрите примечания к релизу для подробностей.';

  @override
  String get unknownTitle => 'Неизвестное название';

  @override
  String get trackPlayNext => 'Играть далее';

  @override
  String get trackAddToQueue => 'Добавить в очередь';

  @override
  String snackbarExtensionInstalledEnable(String extensionName) {
    return '$extensionName установлен. Включите его в Настройки > Расширения';
  }

  @override
  String snackbarExtensionUpdatedVersion(String extensionName, String version) {
    return '$extensionName обновлён до v$version';
  }

  @override
  String snackbarFailedToInstallNamed(String extensionName) {
    return 'Не удалось установить $extensionName';
  }

  @override
  String snackbarFailedToUpdateNamed(String extensionName) {
    return 'Не удалось обновить $extensionName';
  }

  @override
  String get releaseTypeEp => 'EP';

  @override
  String get releaseTypeSingle => 'Сингл';

  @override
  String get trackCoverOnline => 'Обложка из сети';

  @override
  String get regionCountryUS => 'США';

  @override
  String get regionCountryIT => 'Италия';

  @override
  String get regionCountryES => 'Испания';

  @override
  String get regionCountryGB => 'Великобритания';

  @override
  String get regionCountryFR => 'Франция';

  @override
  String get regionCountryDE => 'Германия';

  @override
  String get regionCountryJP => 'Япония';

  @override
  String get regionCountryKR => 'Южная Корея';

  @override
  String get regionCountryIN => 'Индия';

  @override
  String get regionCountryID => 'Индонезия';

  @override
  String get regionCountryBR => 'Бразилия';

  @override
  String get regionCountryMX => 'Мексика';

  @override
  String get regionCountryAU => 'Австралия';

  @override
  String get regionCountryCA => 'Канада';

  @override
  String get regionCountryXK => 'Косово';

  @override
  String get extensionVerificationBrowserTitle => 'Браузер для верификаций';

  @override
  String get extensionVerificationBrowserSubtitleExternal =>
      'Открывать верификацию в браузере по умолчанию';

  @override
  String get extensionVerificationBrowserSubtitleInApp =>
      'Открывать верификацию во внутреннем браузере';

  @override
  String get extensionVerificationBrowserExternal => 'Внешний';

  @override
  String get extensionVerificationBrowserInApp => 'В приложении';

  @override
  String extensionVerificationUnavailable(String extension) {
    return 'Для $extension нет доступной страницы подтверждения. Повторите загрузку, чтобы запросить новую задачу.';
  }

  @override
  String get extensionVerificationHelpTitleManual =>
      'Открыть верификацию вручную';

  @override
  String get extensionVerificationHelpTitleWaiting => 'Ожидание верификации';

  @override
  String get extensionVerificationHelpMessageManual =>
      'Toadplayer не смог автоматически открыть браузер. Откройте эту ссылку в браузере или скопируйте её вручную.';

  @override
  String get extensionVerificationHelpMessageWaiting =>
      'Если окно браузера не открылось либо проверка завершилась, но приложение Toadplayer не открылось автоматически, перейдите по ссылке повторно или скопируйте её вручную.';

  @override
  String get extensionVerificationClose => 'Закрыть';

  @override
  String get extensionVerificationCopyLink => 'Копировать';

  @override
  String get extensionVerificationPasteCallback => 'Paste callback';

  @override
  String get extensionVerificationLinkCopied =>
      'Ссылка на верификацию скопирована';

  @override
  String get extensionVerificationOpenBrowser => 'Открыть браузер';

  @override
  String get settingsSearchHint => 'Найти настройки';

  @override
  String settingsSearchNoResults(String query) {
    return 'Нет настроек, соответствующих \"$query\"';
  }

  @override
  String get libraryFilterMetadataMissingLyrics => 'Текст отсутствует';

  @override
  String get libraryFilterMetadataMissingReplayGain => 'Отсутствует ReplayGain';

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
  String get trackOptionCopyTrackName => 'Копировать название трека';

  @override
  String get trackOptionCopyArtist => 'Копировать исполнителя';

  @override
  String get trackOptionCopyTrackAndArtist => 'Копировать трек и исполнителя';

  @override
  String trackOptionCopyLink(String service) {
    return 'Copy $service link';
  }

  @override
  String get metadataCopyValue => 'Копировать значение';

  @override
  String get metadataCopyField => 'Копировать поле и значение';

  @override
  String get toadplayerSearch => 'Поиск';

  @override
  String get toadplayerContinuePlaying => 'Продолжить воспроизведение';

  @override
  String get metadataCopyAll => 'Скопировать все метаданные';

  @override
  String get optionsEmbeddedCoverSize => 'Размер встраиваемой обложки';

  @override
  String get optionsEmbeddedCoverSizeDescription =>
      'Масштабировать загруженные обложки перед записью. Обложки, уже соответствующие лимиту, не изменяются.';

  @override
  String get toadplayerFavorite => 'В избранное';

  @override
  String get toadplayerGoToArtist => 'Перейти к исполнителю';

  @override
  String get toadplayerGetInfo => 'Get Info';

  @override
  String get toadplayerFavorited => 'Избранное';

  @override
  String get autoMixDescription =>
      'Плавный переход с подгонкой темпа и сохранением тональности. При невозможности синхронизации битов применяется кроссфейд.';

  @override
  String get gaplessPlayback => 'Gapless playback';

  @override
  String get gaplessPlaybackDescription =>
      'Start the next song the moment one ends, without silence between them. AutoMix replaces it while on.';

  @override
  String get playerCoverStyle => 'Обложка';

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
  String get playerCoverStyleDefault => 'По умолчанию';

  @override
  String get playerCoverStyleCard => 'Card';

  @override
  String get playerCoverStyleDefaultDescription =>
      'Artwork as a card above the controls';

  @override
  String get playerCoverStyleFullScreen => 'Полноэкранный';

  @override
  String get playerCoverStyleFullScreenDescription =>
      'Artwork fills the top of the player and fades into a blur. Motion artwork is always full screen in Toadplayer';

  @override
  String get musicHaptics => 'Music haptics';

  @override
  String get musicHapticsDescription =>
      'Вибрировать в ритм скачанных и локальных песен';

  @override
  String get musicHapticsSensitivity => 'Sensitivity';

  @override
  String get musicHapticsStrength => 'Strength';

  @override
  String get autoMixOn => 'Автомикс вкл';

  @override
  String get autoMixOff => 'Автомикс выкл';

  @override
  String get autoplayOn => 'Автовоспроизведение вкл';

  @override
  String get autoplayOff => 'Автовоспроизведение выкл';

  @override
  String get queueAutoplay => 'Autoplay';

  @override
  String get queueAutoMix => 'AutoMix';

  @override
  String get autoplayFromLibrary => 'Автовоспроизведение из вашей медиатеки';

  @override
  String get autoplayDescription =>
      'Continue with related songs from your Library when the queue ends.';

  @override
  String get autoplayPersonalization => 'Умное автовоспроизведение';

  @override
  String get autoplayPersonalizationDescription =>
      'Учиться на песнях, которые вы слушаете и пропускаете, приватно на этом устройстве. При выключении перестаёт учиться и возвращает обычное автовоспроизведение.';

  @override
  String get autoplayResetLearning => 'Сбросить обучение рекомендаций';

  @override
  String get autoplayResetLearningConfirmTitle =>
      'Сбросить обучение рекомендаций?';

  @override
  String get autoplayResetLearningConfirmMessage =>
      'Автовоспроизведение забудет все ваши предпочтения в музыке. Это действие необратимо.';

  @override
  String get autoplayResetLearningConfirm => 'Сбросить';

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
  String get profileTitle => 'Профиль';

  @override
  String get profileSetUp => 'Настройте свой профиль';

  @override
  String get profileEdit => 'Изменить имя и фото';

  @override
  String get backupIncludesProfile => 'Включает в себя имя профиля и фото';

  @override
  String get profileName => 'Имя';

  @override
  String get profileNameHint => 'Ваше имя';

  @override
  String get profileChangePhoto => 'Выбрать фото';

  @override
  String get profileRemovePhoto => 'Удалить фото';

  @override
  String get profilePhotoError => 'Выберите изображение размером менее 20 МБ.';

  @override
  String get profileSaveError =>
      'Не удалось сохранить ваш профиль. Пожалуйста, попробуйте еще раз.';

  @override
  String get homeGreetingMorning1 => 'Доброе утро';

  @override
  String get homeGreetingMorning2 => 'Проснись и пой';

  @override
  String get homeGreetingMorning3 => 'Свежий старт';

  @override
  String get homeGreetingAfternoon1 => 'Добрый день';

  @override
  String get homeGreetingAfternoon2 => 'Дневной грув';

  @override
  String get homeGreetingAfternoon3 => 'Поддерживай вайб';

  @override
  String get homeGreetingEvening1 => 'Добрый вечер';

  @override
  String get homeGreetingEvening2 => 'Время отдохнуть';

  @override
  String get homeGreetingEvening3 => 'Золотой час';

  @override
  String get homeGreetingNight1 => 'Доброй ночи';

  @override
  String get homeGreetingNight2 => 'Ночная сессия';

  @override
  String get homeGreetingNight3 => 'Тихий час';

  @override
  String homeGreetingNamed(String greeting, String name) {
    return '$greeting, $name';
  }

  @override
  String get homeTaglineListening => 'Что слушаем?';

  @override
  String get homeTaglineLink => 'Есть ссылка? Закинь её в поиск';

  @override
  String get homeTaglineDiscover => 'Найди свой новый любимый альбом';

  @override
  String get homeContinueListening => 'Продолжить слушать';

  @override
  String get homeRecentlyPlayed => 'Recently Played';

  @override
  String get homeRecentlyAdded => 'Недавно добавлено';

  @override
  String get homeOnRepeat => 'На репите';

  @override
  String get homeShortcuts => 'Ярлыки';

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
  String get artistUpcomingConcerts => 'Предстоящие концерты';

  @override
  String get artistAllUpcomingConcerts => 'Все предстоящие концерты';

  @override
  String get artistNoUpcomingConcerts => 'Нет предстоящих концертов.';

  @override
  String get motionArtwork => 'Анимированная обложка';

  @override
  String get listeningStats => 'Статистика прослушивания';

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
    return '$days дней';
  }

  @override
  String listeningStatsMinutes(int minutes) {
    return '$minutes минут';
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
  String get listeningStatsPreviousYear => 'Прошлый год';

  @override
  String get listeningStatsNextYear => 'Следующий год';

  @override
  String get listeningStatsActivity => 'Recent listening days · minutes';

  @override
  String get listeningStatsTopArtists => 'Топ исполнителей';

  @override
  String get listeningStatsTopTracks => 'Топ треки';

  @override
  String get listeningStatsLoadError => 'Could not load listening statistics';

  @override
  String get listeningStatsClear => 'Очистить статистику прослушивания';

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
  String get listeningRewindChoosePeriod => 'Выберите период';

  @override
  String listeningRewindLastWeeks(int weeks) {
    return 'Последние $weeks недель(-и)';
  }

  @override
  String listeningRewindLastMonths(int months) {
    return 'Последние $months месяца(-ев)';
  }

  @override
  String listeningRewindThisYear(int year) {
    return 'За $year год';
  }

  @override
  String get listeningRewindIntroTitle => 'Ваш Rewind';

  @override
  String listeningRewindIntroBody(String start, String end) {
    return 'Взгляд на то, что вы слушали в период с $start по $end.';
  }

  @override
  String get listeningRewindMinutesTitle => 'Вы слушали';

  @override
  String listeningRewindMinutesUnit(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: 'минут(ы)',
      one: 'минута',
    );
    return '$_temp0';
  }

  @override
  String listeningRewindHours(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: 'Это около $hours часов музыки',
      one: 'Это около часа музыки',
    );
    return '$_temp0';
  }

  @override
  String listeningRewindMore(int percent) {
    return 'На $percent% больше, чем раньше';
  }

  @override
  String listeningRewindLess(int percent) {
    return 'На $percent% меньше, чем раньше';
  }

  @override
  String get listeningRewindSame => 'Примерно как раньше';

  @override
  String get listeningRewindTopArtistTitle => 'Твой любимый артист';

  @override
  String listeningRewindArtistShare(int percent) {
    return '$percent% твоего времени прослушивания';
  }

  @override
  String get listeningRewindArtistsTitle => 'Artists on rotation';

  @override
  String get listeningRewindTopTrackTitle => 'Твоя любимая песня';

  @override
  String listeningRewindPlays(int plays) {
    String _temp0 = intl.Intl.pluralLogic(
      plays,
      locale: localeName,
      other: '$plays воспроизведений',
      one: '1 воспроизведение',
    );
    return '$_temp0';
  }

  @override
  String get listeningRewindTracksTitle => 'Песни на репите';

  @override
  String get listeningRewindTopAlbumTitle =>
      'Альбом, к которому ты всегда возвращался';

  @override
  String get listeningRewindNewArtistsTitle => 'Новые открытия';

  @override
  String listeningRewindNewArtistsBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Вы нашли $count новых артистов',
      one: 'Вы нашли 1 нового артиста',
    );
    return '$_temp0';
  }

  @override
  String get listeningRewindRhythmTitle => 'Ваш ритм прослушивания';

  @override
  String get listeningRewindPeakDay => 'Наибольший день';

  @override
  String get listeningRewindFavoriteDay => 'Любимый день';

  @override
  String get listeningRewindStreak => 'Длиннейшая серия';

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
  String get listeningRewindReplayTitle => 'Не можете остановиться';

  @override
  String listeningRewindReplayBody(int plays, String date) {
    return 'You played it $plays times on $date';
  }

  @override
  String get listeningRewindOutroTitle => 'Это ваш Rewind';

  @override
  String get listeningRewindOutroBody =>
      'Keep listening. Your next Rewind is already taking shape.';

  @override
  String get listeningRewindEmpty =>
      'Not enough listening in this period yet. Play some music with the built-in player and come back later.';

  @override
  String get listeningRewindLoadError => 'Не получилось загрузить Ваш Rewind';

  @override
  String listeningRewindSlide(int index, int count) {
    return 'Slide $index of $count';
  }

  @override
  String get listeningRewindShare => 'Поделиться';

  @override
  String get listeningRewindShareError =>
      'Не получилось поделиться Вашим Rewind';

  @override
  String get listeningRewindNext => 'Далее';

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
  String get listeningRewindSongsLabel => 'Песни';

  @override
  String get listeningRewindArtistsLabel => 'Исполнители';

  @override
  String get listeningRewindAlbumsLabel => 'Альбомы';

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
  String get weeklyReleases => 'Новые релизы';

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
  String get discordPresenceDisabled => 'Отключено';

  @override
  String get discordPresenceLink => 'Подключить аккаунт Discord';

  @override
  String get discordPresenceConnecting => 'Подключение к Discord…';

  @override
  String get discordPresenceReady => 'Ready when music plays';

  @override
  String get discordPresenceActive => 'Sharing current track';

  @override
  String get discordPresenceUnavailable =>
      'Discord недоступен. Повторите попытку во время воспроизведения.';

  @override
  String get discordPresenceBuildUnavailable =>
      'Discord SDK недоступен в этой сборке.';

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
  String get autoMixEffect => 'Эффект перехода';

  @override
  String get autoMixEffectAuto => 'Авто';

  @override
  String get autoMixEffectCrossfade => 'Плавный переход';

  @override
  String get autoMixEffectMuffled => 'Muffled';

  @override
  String get autoMixEffectEcho => 'Эхо';

  @override
  String get autoMixEffectPitch => 'Тон';

  @override
  String get autoMixEffectCustom => 'Custom';

  @override
  String get autoMixEffectsHelp =>
      'Effects apply to the end of the outgoing song during the mix. Short songs use a shorter overlap.';

  @override
  String get autoMixSpeed => 'Скорость';

  @override
  String get autoMixPitch => 'Тон (полутона)';

  @override
  String get autoMixEcho => 'Эхо';

  @override
  String get autoMixLowPass => 'Muffled filter';

  @override
  String get autoMixMixing => 'Микширование';

  @override
  String get autoMixCrossfading => 'Плавный переход';

  @override
  String get playbackAutomation => 'Автовоспроизведение';

  @override
  String get playbackPauseOnMute => 'Пауза при отключении звука';

  @override
  String get snackbarPlaybackMuted =>
      'Громкость равна нулю. Воспроизведение приостановлено. Нажмите ещё раз, чтобы продолжить.';

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
      'Пауза на нулевой громкости и продолжение при её повышении. Ручные паузы остаются нетронутыми. Только для стандартного аудиовыхода.';

  @override
  String get playbackOnHeadphonesConnected =>
      'Играть при подключении наушников';

  @override
  String get playbackOnHeadphonesConnectedDescription =>
      'Resume the current song when wired or Bluetooth headphones connect. Disconnecting pauses playback. Built-in player only.';

  @override
  String get appearanceCustomFont => 'Пользовательский шрифт';

  @override
  String get appearanceCustomFontSubtitle =>
      'Import a TTF or OTF file (up to 10 MB). Overrides the theme and system font.';

  @override
  String get appearanceCustomFontInvalid =>
      'Could not load this font. Choose a valid TTF or OTF file up to 10 MB.';

  @override
  String get appearanceCustomFontReset => 'Use theme font';

  @override
  String get equalizerTitle => 'Эквалайзер';

  @override
  String get equalizerDescription =>
      '5–31 bands, tone controls, preamp and dynamics';

  @override
  String get equalizerEnable => 'Включить эквалайзер';

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
  String get lyricsShareAction => 'Поделиться';

  @override
  String get lyricsShareError => 'Couldn\'t create the lyrics image';

  @override
  String get lyricsShareBackgroundArtwork => 'Artwork';

  @override
  String get lyricsShareBackgroundColor => 'Cover color';

  @override
  String get lyricsShareBackgroundDark => 'Тёмная';

  @override
  String get lyricsShareBackgroundLight => 'Светлая';

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
  String get audioInfoQuality => 'Качество';

  @override
  String get audioInfoHiResLossless => 'Hi-Res Lossless';

  @override
  String get audioInfoLossless => 'Lossless';

  @override
  String get audioInfoLossy => 'С потерями';

  @override
  String get audioInfoFormat => 'Формат';

  @override
  String get audioInfoCodec => 'Codec';

  @override
  String get audioInfoSampleRate => 'Sample rate';

  @override
  String get audioInfoBitDepth => 'Bit depth';

  @override
  String get audioInfoChannels => 'Каналы';

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
  String get audioInfoBitrate => 'Битрейт';

  @override
  String get audioInfoDuration => 'Продолжительность';

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
  String get audioInfoLocationNetwork => 'Сетевое хранилище';

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
  String get audioInfoOff => 'Выкл';

  @override
  String get audioInfoBypassed => 'Bypassed by direct output';

  @override
  String get audioInfoPlayer => 'Плеер';

  @override
  String get audioInfoPlayerValue => 'Встроенный плеер Toadplayer';

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
  String get audioInfoOutputFormat => 'Выходной формат';

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
  String get audioInfoAnyRate => 'Любая';

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
  String get appCrashDismiss => 'Отклонить';

  @override
  String get appCrashCopyFailed =>
      'Could not copy the crash report. Please try again.';

  @override
  String get appCrashDismissFailed =>
      'Could not dismiss the crash report. Please try again.';

  @override
  String get optionsEmbeddedCoverSizeOriginal => 'Оригинальное разрешение';

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
  String get desktopWindowFullscreen => 'Полноэкранный';

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
  String get desktopMenuRefresh => 'Обновить';

  @override
  String get desktopMenuProjectPage => 'Project page';

  @override
  String get desktopDownloadsShowAll => 'Show all';

  @override
  String get desktopDownloadsQueued => 'Waiting';

  @override
  String get desktopDownloadsCancel => 'Отменить скачивание';

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
      'Кнопки для воспроизведения, навигации и панелей';

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
