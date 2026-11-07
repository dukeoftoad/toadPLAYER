// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

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
  String get extensionsUnsecuredStorage =>
      'Використовувати незахищене сховище розширень';

  @override
  String get extensionsUnsecuredStorageDescription =>
      'Запускайте розширення без зв\'язки ключів Linux. Ключ зберігається локально, тому будь-хто з доступом до файлів додатка зможе прочитати облікові дані розширень. Якщо опцію вимкнено, використовується системна зв\'язка ключів.';

  @override
  String get extensionsStorageKeyringRequired =>
      'Для наявних даних розширень потрібен оригінальний ключ. Розблокуйте системну зв\'язку ключів один раз, а потім знову увімкніть незахищене сховище. Ваші дані збережено.';

  @override
  String get extensionsStorageKeyConflict =>
      'Локальний ключ і ключ системної зв\'язки ключів не збігаються. Налаштування сховища не змінилися, обидва ключі збережено.';

  @override
  String get extensionsStorageKeyringUnavailable =>
      'Системна в’язка ключів недоступна або заблокована. Запустіть або розблокуйте її перед переходом на захищене сховище. Ваш локальний ключ збережено.';

  @override
  String linkFileActionOn(String action, String name) {
    return '$action На $name';
  }

  @override
  String linkFileActionsDescription(String name) {
    return 'Зміни застосовуються до музичних файлів на $name. Розпочата робота продовжиться, навіть якщо цей телефон від’єднається.';
  }

  @override
  String linkFileDeleteConfirm(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'музичних файлів',
      many: 'музичних файлів',
      few: 'музичні файли',
      one: 'музичний файл',
    );
    return 'Видалити $count $_temp0 з пристрою $name? Це вилучить файли з пам’яті того комп’ютера.';
  }

  @override
  String get linkFileJobs => 'Зміни у файлах';

  @override
  String linkFileJobsSubtitle(String name) {
    return 'Редагування, конвертація та видалення на $name';
  }

  @override
  String get linkFileJobsEmpty => 'Поки що немає змін у файлах';

  @override
  String get linkFileJobsEmptyMessage =>
      'Тут з’являтимуться зміни, конвертація та видалення пісень комп’ютера, які ви запускаєте з цього телефона.';

  @override
  String get linkDesktopFileJobsSubtitle =>
      'Зміни, надіслані з ваших телефонів';

  @override
  String get linkDesktopFileJobsEmptyMessage =>
      'Тут з’являтимуться зміни, конвертація та видалення, надіслані з ваших телефонів.';

  @override
  String linkFileJobRequestedBy(String name) {
    return 'З пристрою $name';
  }

  @override
  String get linkFileJobsView => 'Перегляд';

  @override
  String get linkFileJobsUnsupported =>
      'Оновіть Toadplayer на комп’ютері, щоб керувати його музичними файлами з цього телефона.';

  @override
  String get linkFileSelectionOneDevice =>
      'Вибирайте пісні лише з одного підключеного комп’ютера за раз (до 100 пісень).';

  @override
  String linkFileJobProgress(int finished, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: 'пісень',
      many: 'пісень',
      few: 'пісень',
      one: 'пісні',
    );
    return '$finished з $total $_temp0';
  }

  @override
  String linkFileJobFailedCount(int count) {
    return '$count Не вдалося';
  }

  @override
  String linkFileJobFinished(String action, String name) {
    return 'Процес «$action» завершено на $name';
  }

  @override
  String get linkFileDeleting => 'Видалення...';

  @override
  String get linkFileReading => 'Зчитування тегів...';

  @override
  String get linkFileSavingCover => 'Збереження обкладинки...';

  @override
  String get linkFileCancelHint => 'Зупинити після цієї пісні';

  @override
  String get linkFileJobCancelled => 'Зупинено';

  @override
  String get linkFileJobQueued => 'У черзі';

  @override
  String get linkFileJobCompleted => 'Завершено';

  @override
  String get linkFileChanged =>
      'Файл змінився після попереднього перегляду. Перегляньте його знову перед збереженням.';

  @override
  String get linkFileOperationFailed =>
      'Не вдалося завершити операцію. Перевірте журнал комп’ютера, щоб дізнатися деталі.';

  @override
  String get trackBpm => 'BPM';

  @override
  String get trackMood => 'За настроєм';

  @override
  String get subsonicAddToLibrary => 'Додати сервер до бібліотеки';

  @override
  String get subsonicLibraryAdded => 'Сервер додано до бібліотеки';

  @override
  String get subsonicLibraryDescription =>
      'Синхронізуйте каталог сервера та обкладинки з бібліотекою. Музика залишається на вашому сервері. Для оновлення каталогу виконайте повторне сканування в налаштуваннях локальної бібліотеки.';

  @override
  String get subsonicAuthentication => 'Автентифікація';

  @override
  String get subsonicToken => 'Хешований токен';

  @override
  String get subsonicPasswordAuth => 'Пароль';

  @override
  String get subsonicApiKey => 'Ключ API';

  @override
  String get subsonicUsername => 'Ім\'я користувача';

  @override
  String get subsonicPassword => 'Пароль';

  @override
  String get subsonicSearch => 'Пошук музики на сервері...';

  @override
  String get subsonicMoreAlbums => 'Більше альбомів';

  @override
  String get subsonicErrorApi =>
      'Сервер не підтримує цю версію API або метод автентифікації. Перевірте налаштування сервера та вибраний спосіб входу.';

  @override
  String get networkDownloadDestination =>
      'Місце збереження мережевих завантажень';

  @override
  String get networkUseForDownloads => 'Завантажити в цю теку';

  @override
  String get networkDownloadSelected => 'Вибране місце для завантаження';

  @override
  String get networkUseLocalDownloads =>
      'Використовуйте локальну теку для завантаження';

  @override
  String get networkDownloadAccessFailed => 'Не вдалося записати в цю теку.';

  @override
  String get networkUploading => 'Завантаження до мережевого сховища';

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
      'Підготуйте пісні на цьому пристрої, а потім завантажте їх на мережевий накопичувач NAS. Тримайте додаток відкритим до завершення завантаження. Повторна спроба використовує вже підготовлене аудіо. Наявні файли буде збережено; нові завантаження з такою ж назвою отримають цифровий суфікс.';

  @override
  String get networkAddToLibrary => 'Додати теку до бібліотеки';

  @override
  String get networkLibraryAdded => 'Теку додано до бібліотеки';

  @override
  String get networkLibraryDescription =>
      'Скануйте цю теку та її підтеки. Музика залишається на вашому сервері, а метадані та обкладинки зберігаються на цьому пристрої. Керуйте бібліотекою або повторно скануйте її в налаштуваннях.';

  @override
  String get networkStorage => 'Мережеве сховище';

  @override
  String get networkErrorUnreachable =>
      'Не вдалося зв\'язатися з сервером. Перевірте, чи має цей телефон доступ до мережі та чи запущено службу спільного доступу до файлів. Для SMB порт 445 має бути доступним.';

  @override
  String get networkErrorTimeout =>
      'Сервер не відповів вчасно. Перевірте з\'єднання та спробуйте ще раз.';

  @override
  String get networkErrorAuthentication =>
      'Сервер відхилив вхід в систему. Перевірте ім\'я користувача, пароль і домен. Залиште поле домену порожнім, якщо ваш сервер його не вимагає.';

  @override
  String get networkErrorPermission =>
      'Цей обліковий запис не має дозволу на відкриття цієї спільної теки або ресурсу. Перевірте його права на читання на сервері.';

  @override
  String get networkErrorLocalPermission =>
      'Доступ до локальної мережі заборонено. Дозвольте доступ до пристроїв поблизу для Toadplayer в налаштуваннях додатка Android, а потім спробуйте знову.';

  @override
  String get networkErrorShare =>
      'Спільний ресурс або теку не знайдено. Для протоколу SMB вказуйте ім\'я спільної теки сервера після його адреси, наприклад smb://server/Music/.';

  @override
  String get networkErrorProtocol =>
      'Цьому серверу та клієнту SMB не вдалося узгодити підтримуваний протокол. Увімкніть SMB2 або SMB3 на сервері. SMB1 не підтримується.';

  @override
  String get networkErrorAddress =>
      'Перевірте адресу сервера. Використовуйте протокол smb://server/share/ для SMB або адресу http:// чи https:// для WebDAV та HTTP.';

  @override
  String get networkConnections => 'Збережені з\'єднання';

  @override
  String get networkServer => 'Сервер';

  @override
  String get networkCredentials => 'Увійти (необов\'язково)';

  @override
  String get networkRefresh => 'Оновити';

  @override
  String get networkStorageDescription =>
      'Під\'єднатися до вашого NAS або музичного сервера та перегляньте його теки. Дані для входу зберігаються надійно на цьому пристрої.';

  @override
  String get networkAddConnection => 'Додати з\'єднання';

  @override
  String get networkEditConnection => 'Редагувати підключення';

  @override
  String get networkConnectionName => 'Ім’я';

  @override
  String get networkAddress => 'Сервер або URL-адреса аудіо';

  @override
  String get networkProtocol => 'Протокол';

  @override
  String get networkUsername => 'Ім’я користувача (необов’язково)';

  @override
  String get networkPassword => 'Пароль (необов\'язково)';

  @override
  String get networkDomain => 'Домен (необов\'язково)';

  @override
  String get networkConnectSave => 'З’єднати та зберегти';

  @override
  String get networkErrorCertificate =>
      'Не вдалося перевірити HTTPS-сертифікат сервера. Відредагуйте це підключення, щоб переглянути сертифікат і додати його до довірених, або перевірте конфігурацію HTTPS на сервері.';

  @override
  String get networkCertificatePrompt =>
      'Цей сервер використовує ненадійний сертифікат HTTPS. Роутери та мережевий накопичувач NAS часто використовують із власним підписом сертифікати. Перевірте адресу сервера та відбиток SHA-256, перш ніж довіряти йому. Довіра поширюється лише на цей сертифікат на цьому сервері; змінений сертифікат потребуватиме повторного підтвердження.';

  @override
  String get networkTrustCertificate => 'Сертифікат безпеки та повторна спроба';

  @override
  String get networkRemoveConnection => 'Скасувати підключення';

  @override
  String get networkNoFiles =>
      'Не знайдено підтримуваних музичних файлів або тек.';

  @override
  String get networkConnectionError =>
      'Не вдалося отримати доступ до мережевого джерела. Перевірте адресу сервера, облікові дані та підключення, а потім повторіть спробу.';

  @override
  String get extensionAccountTitle => 'Обліковий запис розширення';

  @override
  String get extensionAccountInvalidForm =>
      'Розширення повернуло неправильну форму облікового запису.';

  @override
  String get extensionAccountRestartLogin =>
      'Перезапустіть вхід в обліковий запис, щоб продовжити.';

  @override
  String get extensionAccountRequiredValue => 'Введіть значення.';

  @override
  String get extensionAccountInvalidNumber => 'Введіть коректний номер.';

  @override
  String get settingsPlaybackSubtitle =>
      'Плеєр, гучність, автомікшування та аудіовихід';

  @override
  String get sectionPlayer => 'Програвач';

  @override
  String get sectionVolumeAndTransitions => 'Гучність та переходи';

  @override
  String get sectionAudioOutput => 'Аудіо вихід';

  @override
  String get usbBitPerfect => 'Hi-Res та Bit-Perfect аудіо';

  @override
  String get usbBitPerfectDescription =>
      'Зберігає точність джерела на сумісних виходах. Виберіть нижче прямий USB або ексклюзивний AAudio; в іншому випадку для виходу Android USB потрібен Android 14 або пізніша версія. Застосовується з наступного треку, без автомікшування або нормалізації. Системна гучність може не керувати прямим USB.';

  @override
  String get usbHardwareVolume => 'Апаратна гучність ЦАП';

  @override
  String get usbVolumeWarningTitle => 'Перевірте гучність прослуховування';

  @override
  String get usbVolumeWarning =>
      'Пряме відтворення аудіо через USB може бути набагато гучнішим за звичайне, і кнопки гучності телефону можуть не керувати ним. Зменште гучність ЦАП або підсилювача перед початком роботи. Якщо підтримується, Toadplayer встановлює ЦАП максимум на −40 дБ під час підключення; це не гарантує безпечного рівня прослуховування на кожному підсилювачі чи навушниках.';

  @override
  String get usbVolumeAccept => 'Я розумію';

  @override
  String get usbVolumeUnavailable =>
      'Відтворення призупинено, оскільки цей ЦАП не має перевіреного апаратного керування гучністю. Зменште гучність ЦАП або підсилювача, потім за потреби увімкніть вихід з фіксованою гучністю та виберіть доріжку ще раз.';

  @override
  String get usbFixedVolume => 'Дозволити вихід USB з фіксованою гучністю';

  @override
  String get usbFixedVolumeDescription =>
      'Для ЦАП без регулятора гучності, доступного в додатку. Вимкнено для USB-гарнітур без власного регулятора гучності. Діє з наступного треку.';

  @override
  String get usbFixedVolumeWarning =>
      'Додаток не може зменшити гучність на цьому виході. Звук може початися на повній гучності, і повзунок гучності телефону не допоможе. Продовжуйте лише після зменшення гучності на ЦАП або зовнішньому підсилювачі. Не вмикайте цю функцію для гарнітури без власного регулятора гучності.';

  @override
  String get dapExclusive => 'DAP hi-res (ексклюзивно для AAudio)';

  @override
  String get dapExclusiveDescription =>
      'Використовуйте Oboe/AAudio з оригінальною частотою та точністю треку для FLAC/WAV PCM. Потрібен Android 8.1 або пізнішої версії та сумісне обладнання. Ексклюзивний доступ позначено; недоступні формати використовують звичайне відтворення. DSD вимагає драйвера Direct USB. Застосовується з наступного треку.';

  @override
  String get dapExclusiveUnavailable =>
      'Ексклюзивний доступ AAudio недоступний для цього треку та поточного виходу. Використовується звичайне відтворення. Для USB ЦАП є прямий драйвер USB.';

  @override
  String get exclusiveOutputWindows => 'Ексклюзивний режим WASAPI';

  @override
  String get exclusiveOutputMacos => 'Ексклюзивний доступ (режим захоплення)';

  @override
  String get exclusiveOutputLinux => 'Прямий вивід ALSA';

  @override
  String get exclusiveOutputDescriptionWindows =>
      'Обхід системного мікшера Windows для виведення звуку з оригінальною частотою дискретизації та розрядністю кожного треку. Інші додатки не зможуть відтворювати звуки, поки Toadplayer утримує пристрій. У цьому режимі вимкнено AutoMix та попереднє прослуховування. Для точного відтворення bit-perfect установіть гучність на 100%, а також вимкніть еквалайзер і нормалізацію.';

  @override
  String get exclusiveOutputDescriptionMacos =>
      'Захоплює аудіопристрій лише для Toadplayer та перемикає його на частоту дискретизації й розрядність кожного треку без передискретизації в Core Audio. Інші програми не відтворюватимуть звук, поки Toadplayer займає пристрій. Функції AutoMix та перегляд вимкнені. Для виводу bit-perfect залиште гучність на 100% і вимкніть еквалайзер та нормалізацію.';

  @override
  String get exclusiveOutputDescriptionLinux =>
      'Пряме відтворення на апаратний пристрій ALSA в обхід PipeWire або PulseAudio, завдяки чому звук виводиться з оригінальною частотою дискретизації та розрядністю кожного треку. Пристрій має бути вільним: звуковий сервер звільняє неактивну карту за кілька секунд, або ж можна перевести її профіль у стан «Вимкнено». У цьому режимі вимкнено AutoMix та попереднє прослуховування.';

  @override
  String get exclusiveOutputPending =>
      'Займає пристрій, коли відтворюється трек.';

  @override
  String get exclusiveOutputActive => 'Відтворення в ексклюзивному режимі.';

  @override
  String get exclusiveOutputUnavailableWindows =>
      'Не вдалося отримати ексклюзивний доступ, трек грає через мікшер Windows. Закрийте програми, які займають пристрій, або дозвольте монопольне керування у властивостях звуку Windows.';

  @override
  String get exclusiveOutputUnavailableMacos =>
      'Аудіопристрій зайнятий іншою програмою, тому цей трек грає через системний мікшер.';

  @override
  String get exclusiveOutputUnavailableLinux =>
      'Пристрій ALSA зайнятий звуковим сервером, тому трек відтворюється через системний мікшер. Вимкніть профіль карти в налаштуваннях звуку або виберіть інший пристрій.';

  @override
  String get exclusiveOutputDevice => 'Пристрій виводу';

  @override
  String get exclusiveOutputDeviceFirst => 'Основна звукова карта';

  @override
  String get exclusiveOutputNoDevices =>
      'Не знайдено пристроїв відтворення ALSA';

  @override
  String get usbDirect => 'Прямий драйвер USB';

  @override
  String get usbDirectDescription =>
      'Використовуйте ексклюзивно USB-аудіо для FLAC/WAV, DSF/DFF та WavPack DSD з дозволом Android USB. Для нативного DSD потрібен розпізнаний сумісний ЦАП. Інші формати PCM використовують звичайне відтворення. Застосовується з наступного треку.';

  @override
  String get usbDsdOverPcm => 'DSD поверх PCM (DoP)';

  @override
  String get usbDsdOverPcmDescription =>
      'Увімкніть, лише якщо ваш ЦАП явно підтримує DoP. Надсилає DSF/DFF та WavPack DSD всередині поточної PCM, коли власний DSD недоступний. Несумісний пристрій може відтворювати шум; не виключайте для звичайних USB-гарнітур.';

  @override
  String get usbDsdUnsupported =>
      'Цей формат DSD або підключений ЦАП не підтримується. Відтворення зупинено.';

  @override
  String get usbPermissionDenied =>
      'Дозвіл на USB не надано. Використовується звичайне відтворення.';

  @override
  String get usbBitPerfectPending =>
      'Чекайте на наступний трек та сумісний USB-вихід.';

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
      'Не під\'єднаний USB-ЦАП. Використовується звичайний аудіовихід.';

  @override
  String get usbBitPerfectFallback =>
      'Цей пристрій або аудіоформат не підтримує вихід Bit-Perfect. Використовується звичайне відтворення.';

  @override
  String get usbBitPerfectRouteChanged =>
      'Шлях аудіо USB змінився. Відтворення призупинено; виберіть доріжку для повторного підключення.';

  @override
  String get upgradeIntroContinue => 'Продовжити';

  @override
  String get cacheMotionArtwork => 'Рухомі обкладинки Offline';

  @override
  String get cacheMotionArtworkDesc =>
      'Відеоальбоми зберігаються разом із завантаженнями. Після їх видалення ваші музичні файли та статичні обкладинки залишаться.';

  @override
  String get nowPlayingVolume => 'Гучність';

  @override
  String get appearanceStyle => 'Стиль програми';

  @override
  String get appearanceAccentRed => 'Червоний (за замовчуванням)';

  @override
  String get appearanceAccentOrange => 'Помаранчевий';

  @override
  String get appearanceAccentGreen => 'Зелений';

  @override
  String get appearanceAccentTeal => 'Бірюзовий';

  @override
  String get appearanceAccentBlue => 'Блакитний';

  @override
  String get appearanceAccentPurple => 'Фіолетовий';

  @override
  String get appearanceAccentPink => 'Рожевий';

  @override
  String get appearanceGlassClarity => 'Прозорість скла';

  @override
  String get appearanceGlassOutlines => 'Скляні обводи';

  @override
  String get appearanceGlassOutlinesSubtitle =>
      'Показувати декоративні краї навколо скла Toadplayer. Вимкнення цієї функції зберігає розмиття та заломлення.';

  @override
  String get appearanceGlassClaritySubtitle =>
      'Налаштуйте прозорість меню та навігації Toadplayer. Контрастність тексту зберігається.';

  @override
  String get appearanceGlassTinted => 'Тонований';

  @override
  String get appearanceGlassClear => 'Очистити';

  @override
  String get appearanceGlassClearPerformance =>
      'Ефект прозорого скла може споживати більше енергії та уповільнювати старіші пристрої. Зменште прозорість, якщо необхідно.';

  @override
  String appearanceGlassClarityBlurOff(String setting) {
    return 'Скло на цьому пристрої непрозоре. Увімкніть «$setting», щоб налаштувати прозорість.';
  }

  @override
  String appearanceGlassClarityHighContrast(String setting) {
    return 'Система запитує підвищену контрастність, тому скло залишається непрозорим. Увімкніть «$setting», щоб усе одно використовувати ефект скла; контрастність тексту зберігається.';
  }

  @override
  String get appearanceUseSystemFont => 'Використовувати системний шрифт';

  @override
  String get appearanceUseSystemFontSubtitle =>
      'Використовуйте стандартний шрифт вашого пристрою для тексту в додатку.';

  @override
  String get appName => 'Toadplayer';

  @override
  String get navHome => 'Головна';

  @override
  String get navLibrary => 'Бібліотека';

  @override
  String get navSettings => 'Налаштування';

  @override
  String get navStore => 'Репозиторій';

  @override
  String get homeTitle => 'Головна';

  @override
  String get homeEmptyTitle => 'Поки що немає провайдерів послуг пошуку';

  @override
  String get homeEmptySubtitle => 'Встановіть розширення, щоб продовжити.';

  @override
  String get homeRecent => 'Нещодавні';

  @override
  String get searchRecentlySearched => 'Історія пошуку';

  @override
  String get searchLibraryPrompt => 'Пошук у вашій бібліотеці';

  @override
  String get searchBrowse => 'Огляд';

  @override
  String get historyFilterAll => 'Усі';

  @override
  String get historyFilterAlbums => 'Альбоми';

  @override
  String get historyFilterSingles => 'Сингли';

  @override
  String get libraryRecentlyAdded => 'Нещодавно додані';

  @override
  String get libraryDownloads => 'Завантаження';

  @override
  String get libraryNoActiveDownloads => 'Немає активних завантажень';

  @override
  String get librarySearchHint => 'Пошук у вашій бібліотеці';

  @override
  String get libraryEmptyCollection => 'Ваша музика з’явиться тут';

  @override
  String get libraryFolders => 'Теки';

  @override
  String libraryFolderCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count тек',
      many: '$count тек',
      few: '$count теки',
      one: '$count тека',
    );
    return '$_temp0';
  }

  @override
  String get libraryFoldersEmptyTitle => 'Теки не додано';

  @override
  String get libraryFoldersEmptyMessage =>
      'Завантажте пісні або додайте теку з музикою в налаштуваннях, щоб переглядати файли за теками.';

  @override
  String get libraryFolderMissing =>
      'Цієї теки більше немає у вашому списку відтворення';

  @override
  String get libraryFoldersLoadFailed => 'Не вдалося прочитати ваші теки';

  @override
  String get settingsTitle => 'Налаштування';

  @override
  String get settingsDownload => 'Завантаження';

  @override
  String get settingsAppearance => 'Зовнішній вигляд';

  @override
  String get settingsExtensions => 'Розширення';

  @override
  String get settingsAbout => 'Про додаток';

  @override
  String get downloadTitle => 'Завантажити';

  @override
  String get downloadAskQualitySubtitle =>
      'Показувати вікно вибору якості для кожного завантаження';

  @override
  String get downloadFilenameFormat => 'Формат імені файлу';

  @override
  String get downloadSingleFilenameFormat => 'Формат імені одного файлу';

  @override
  String get downloadSingleFilenameFormatDescription =>
      'Шаблон назви файлу для синглів та мініальбомів. Використовує ті самі теги, що й формат альбому.';

  @override
  String get downloadFolderOrganization => 'Організація теки';

  @override
  String get downloadFolderTemplate => 'Налаштування структури тек';

  @override
  String get downloadFolderTemplateDescription =>
      'Використовуйте теги для назв і для підтек. Збереження замінить стандартну структуру альбомів і синглів. Порожні теки отримають назву «Невідомо».';

  @override
  String get folderOrganizationCustom => 'Користувацький шаблон';

  @override
  String get folderTemplateInvalid =>
      'Введіть відносний шлях до теки, використовуючи підтримувані теги. Не можна використовувати порожні теки, а також символи «.» та «..».';

  @override
  String get folderTemplatePreview => 'Приклад шляху до теки';

  @override
  String get folderTemplatePreviewFailed => 'Попередній перегляд недоступний';

  @override
  String get appearanceTitle => 'Зовнішній вигляд';

  @override
  String get appearanceThemeSystem => 'Системна';

  @override
  String get appearanceThemeLight => 'Світла';

  @override
  String get appearanceThemeDark => 'Темна';

  @override
  String get appearanceDynamicColor => 'Динамічний колір';

  @override
  String get appearanceDynamicColorSubtitle =>
      'Використати кольори зі своїх шпалер';

  @override
  String get appearanceHistoryView => 'Історія переглядів';

  @override
  String get appearanceHistoryViewList => 'Список';

  @override
  String get appearanceHistoryViewGrid => 'Сітка';

  @override
  String get optionsPrimaryProvider => 'Основний провайдер';

  @override
  String get optionsPrimaryProviderSubtitle =>
      'Сервіс для пошуку за назвою треку або альбому';

  @override
  String optionsUsingExtension(String extensionName) {
    return 'Використання розширення: $extensionName';
  }

  @override
  String get optionsDefaultSearchTab => 'Вкладка пошуку за замовчуванням';

  @override
  String get optionsDefaultSearchTabSubtitle =>
      'Виберіть, яка вкладка відкриється першою для нових результатів пошуку.';

  @override
  String get optionsAutoFallback => 'Авто. резервний варіант';

  @override
  String get optionsAutoFallbackSubtitle =>
      'Спробувати інші сервіси, якщо завантаження не вдається';

  @override
  String get optionsEmbedLyrics => 'Вбудований текст пісні';

  @override
  String get optionsEmbedLyricsSubtitle =>
      'Зберігайте синхронізовані тексти пісень разом із завантаженими треками';

  @override
  String get optionsReplayGain => 'ReplayGain';

  @override
  String get optionsReplayGainSubtitleOn =>
      'Аналізувати гучність та вбудувати теги ReplayGain (EBU R128)';

  @override
  String get optionsReplayGainSubtitleOff =>
      'Вимкнено: немає тегів нормалізації гучності';

  @override
  String get trackReplayGain => 'Повторне сканування ReplayGain';

  @override
  String get trackReplayGainScanning => 'Аналіз гучності...';

  @override
  String get trackReplayGainSuccess => 'Додано теги ReplayGain';

  @override
  String get trackReplayGainFailed => 'Не вдалося додати теги ReplayGain';

  @override
  String get trackRemoveReplayGain => 'Скинути ReplayGain';

  @override
  String get trackRemoveReplayGainSuccess => 'Теги ReplayGain видалено';

  @override
  String get trackRemoveReplayGainFailed =>
      'Не вдалося видалити теги ReplayGain';

  @override
  String get replayGainRemoving => 'Видалення ReplayGain...';

  @override
  String replayGainRemoveConfirmMessage(int count) {
    return 'Видалити теги ReplayGain для треків та альбомів з $count трек(s)? Аудіодані, обкладинки та інші метадані буде збережено.';
  }

  @override
  String selectionRemoveReplayGainCount(int count) {
    return 'Скинути RG ($count)';
  }

  @override
  String replayGainRemoveBatchSuccess(int success, int total) {
    return 'ReplayGain видалено з $success з $total треків';
  }

  @override
  String selectionReplayGainCount(int count) {
    return 'ReplayGain ($count)';
  }

  @override
  String get replayGainBatchConfirmTitle => 'Додати ReplayGain';

  @override
  String replayGainBatchConfirmMessage(int count) {
    return 'Проаналізувати гучність та записати теги ReplayGain на $count трек(s)?';
  }

  @override
  String get replayGainBatchAnalyzing => 'Аналіз ReplayGain...';

  @override
  String replayGainBatchSuccess(int success, int total) {
    return 'ReplayGain додано до $success з $total треків';
  }

  @override
  String get replayGainUnsupportedDecoder =>
      'Деякі треки не вдалося проаналізувати, оскільки їхній аудіокодек не підтримується декодером ReplayGain. Їхні файли не були змінені.';

  @override
  String get optionsArtistTagMode => 'Режим тегу виконавця';

  @override
  String get metadataSeparators => 'Розділювачі метаданих';

  @override
  String get metadataSeparatorsDescription =>
      'Виберіть, як об’єднувати значення, розділені комою або крапкою з комою, у майбутніх завантаженнях. Для власних роздільників виконавців використовується об’єднаний тег; правило «Тільки головний виконавець» залишається в силі. Імена, що містять & або /, зберігаються.';

  @override
  String get metadataSeparatorSource => 'Зберегти формат оригіналу';

  @override
  String get metadataSeparatorComma => 'Кома ()';

  @override
  String get metadataSeparatorSemicolon => 'Крапка з комою (;)';

  @override
  String get metadataSeparatorSlash => 'Слеш (/)';

  @override
  String get metadataSeparatorCustom => 'Користувацький розділювач';

  @override
  String get metadataSeparatorPreview => 'Перед перегляд';

  @override
  String get metadataSeparatorInvalid =>
      'Використовуйте від 1 до 16 символів без розділів і керівних символів.';

  @override
  String get optionsArtistTagModeDescription =>
      'Виберіть, як будуть записуватися кілька виконавців у вбудовані теги.';

  @override
  String get optionsArtistTagModeJoined => 'Одне об\'єднане значення';

  @override
  String get optionsArtistTagModeJoinedSubtitle =>
      'Для максимальної сумісності програвача напишіть одне значення ARTIST, наприклад, «Виконавець A, Виконавець B».';

  @override
  String get optionsArtistTagModeSplitVorbis => 'Розділені теги для FLAC/Opus';

  @override
  String get optionsArtistTagModeSplitVorbisSubtitle =>
      'Для FLAC та Opus на кожного виконавця додати окремий тег виконавця; MP3 та M4A залишаються об’єднаними.';

  @override
  String get optionsArtistTagModePrimary => 'Тільки основний виконавець';

  @override
  String get optionsArtistTagModePrimarySubtitle =>
      'Вказуйте лише першого виконавця наприклад, «Artist A» у полях «Виконавець» та «Виконавець альбому» для всіх форматів, щоб програвачі показувати лише одного виконавця.';

  @override
  String get optionsExtensionStore => 'Репозиторій розширень';

  @override
  String get optionsExtensionStoreSubtitle =>
      'Показати вкладку «Репозиторій» у навігації';

  @override
  String get optionsCheckUpdates => 'Перевірити наявність оновлень';

  @override
  String get optionsCheckUpdatesSubtitle =>
      'Повідомити, коли буде доступна нова версія';

  @override
  String get optionsUpdateChannel => 'Канал оновлень';

  @override
  String get optionsUpdateChannelStable => 'Тільки стабільні релізи';

  @override
  String get optionsUpdateChannelPreview => 'Отримати попередні релізи';

  @override
  String get optionsUpdateChannelWarning =>
      'Тестовий реліз може містити помилки або неповні функції';

  @override
  String get optionsClearHistory => 'Очистити історію завантажень';

  @override
  String get optionsClearHistorySubtitle =>
      'Видалити всі завантажені треки з історії';

  @override
  String get optionsDetailedLogging => 'Детальне журналювання';

  @override
  String get optionsDetailedLoggingOn => 'Ведеться детальний журнал';

  @override
  String get optionsDetailedLoggingOff => 'Увімкнути для звітів про помилки';

  @override
  String get extensionsTitle => 'Розширення';

  @override
  String get extensionsDisabled => 'Вимкнені';

  @override
  String extensionsVersion(String version) {
    return 'Версія $version';
  }

  @override
  String get extensionsUninstall => 'Видалити';

  @override
  String get storeTitle => 'Репозиторій розширень';

  @override
  String get storeSearch => 'Розширення пошуку...';

  @override
  String get storeInstall => 'Встановити';

  @override
  String get storeInstalled => 'Встановлені';

  @override
  String get storeUpdate => 'Оновлені';

  @override
  String get aboutTitle => 'Про нас';

  @override
  String get aboutContributors => 'Автори';

  @override
  String get aboutMobileDeveloper => 'Розробник мобільної версії';

  @override
  String get aboutLogoArtist =>
      'Талановитий художник, який створив чудовий логотип нашого додатку!';

  @override
  String get aboutTranslators => 'Перекладачі';

  @override
  String get aboutSpecialThanks => 'Особлива подяка';

  @override
  String get aboutLinks => 'Посилання';

  @override
  String get aboutMobileSource => 'Мобільний вихідний код';

  @override
  String get aboutLyricsWebsite => 'Сайт текстів';

  @override
  String get aboutServiceStatus => 'Стан послуг';

  @override
  String get aboutReportIssue => 'Повідомити про проблему';

  @override
  String get aboutReportIssueSubtitle =>
      'Повідомити про будь-які проблеми, з якими ви зіткнулися';

  @override
  String get aboutFeatureRequest => 'Запит на функцію';

  @override
  String get aboutFeatureRequestSubtitle =>
      'Запропонувати нові функції для програми';

  @override
  String get aboutTelegramChannel => 'Телеграм-канал';

  @override
  String get aboutTelegramChannelSubtitle => 'Оголошення та оновлення';

  @override
  String get aboutTelegramChat => 'Telegram Спільнота';

  @override
  String get aboutTelegramChatSubtitle => 'Спілкуватися з іншими користувачами';

  @override
  String get aboutSocial => 'Соціальні мережі';

  @override
  String get aboutApp => 'Додаток';

  @override
  String get aboutVersion => 'Версія';

  @override
  String get aboutBinimumDesc =>
      'Розробник QQDL та HiFi API. Цей проєкт допоміг сформувати підтримку завантаження формату lossless.';

  @override
  String get aboutSachinsenalDesc =>
      'Автор оригінального проєкту HiFi. Основа для інтеграції джерел формату lossless.';

  @override
  String get aboutUnituneDesc =>
      'Розв\'язувач музичних посилань з відкритим кодом від Flaze, що використовується для кросплатформного підбору альтернативних варіантів.';

  @override
  String get aboutMusicBrainzDesc =>
      'Відкрита музична база даних, яку підтримують MetaBrainz та її спільнота; використовується для фіксації перехресних посилань.';

  @override
  String get aboutSquiglyDesc =>
      'Універсальний сервіс посилань на музику від Liam Macmillan, що використовується як кінцевий резервний варіант для кросплатформного визначення цільової сторінки.';

  @override
  String get aboutAppDescription =>
      'Шукайте музичні метадані, керуйте розширеннями та впорядковуйте свою бібліотеку.';

  @override
  String get artistAlbums => 'Альбоми';

  @override
  String get artistSingles => 'Сингли та мініальбом';

  @override
  String get artistCompilations => 'Збірки';

  @override
  String get artistPopular => 'Популярні';

  @override
  String get artistLatestRelease => 'Latest Release';

  @override
  String get artistTopSongs => 'Top Songs';

  @override
  String artistMonthlyListeners(String count) {
    return '$count Слухачів щомісяця';
  }

  @override
  String get trackMetadataService => 'Сервіс';

  @override
  String get trackMetadataPlay => 'Прослухати';

  @override
  String get trackMetadataShare => 'Поділитися';

  @override
  String get trackMetadataDelete => 'Видалити';

  @override
  String get setupGrantPermission => 'Надати дозвіл';

  @override
  String get setupSkip => 'Пропустити поки що';

  @override
  String get setupStorageAccessRequired => 'Потрібен доступ до сховища';

  @override
  String get setupStorageAccessMessageAndroid11 =>
      'Для збереження файлів у вибрану теку завантажень для Android 11+ потрібен дозвіл «Доступ до всіх файлів».';

  @override
  String get setupOpenSettings => 'Відкрити налаштування';

  @override
  String get setupPermissionDeniedMessage =>
      'Дозвіл відхилено. Будь ласка, надайте всі дозволи, щоб продовжити.';

  @override
  String setupPermissionRequired(String permissionType) {
    return '$permissionType Потрібен дозвіл';
  }

  @override
  String setupPermissionRequiredMessage(String permissionType) {
    return '$permissionType Для найкращого досвіду потрібен дозвіл. Ви можете змінити це пізніше в налаштуваннях.';
  }

  @override
  String get setupUseDefaultFolder => 'Використати теку за замовчуванням?';

  @override
  String get setupNoFolderSelected =>
      'Теку не вибрано. Бажаєте використовувати теку «Музика» за замовчуванням?';

  @override
  String get setupUseDefault => 'Використовувати за замовчуванням';

  @override
  String get setupDownloadLocationTitle => 'Розташування завантаження';

  @override
  String get setupDownloadLocationIosMessage =>
      'На iOS завантаження зберігаються в теці «Документи» програми. Ви можете отримати до них доступ через програму «Файли».';

  @override
  String get setupAppDocumentsFolder => 'Тека з документами програми';

  @override
  String get setupAppDocumentsFolderSubtitle =>
      'Рекомендація – доступно через додаток Файли';

  @override
  String get setupChooseFromFiles => 'Вибрати з файлів';

  @override
  String get setupChooseFromFilesSubtitle =>
      'Виберіть iCloud або інше місцеперебування';

  @override
  String get setupIosEmptyFolderWarning =>
      'iOS обмеження: Не можна вибрати порожні теки. Виберіть теку, яка містить принаймні один файл.';

  @override
  String get setupIcloudNotSupported =>
      'iCloud Drive не підтримується. Будь ласка, скористайтеся текою «Документи» програми.';

  @override
  String get setupDownloadInFlac =>
      'Завантажуйте музику у якості Lossless та Hi-Res';

  @override
  String get setupStorageGranted => 'Дозвіл на зберігання надано!';

  @override
  String get setupStorageRequired => 'Потрібен дозвіл на збереження файлів';

  @override
  String get setupStorageDescription =>
      'Toadplayer потребує дозволу на збереження, щоб зберегти завантажені музичні файли.';

  @override
  String get setupNotificationGranted => 'Дозвіл на сповіщення надано!';

  @override
  String get setupNotificationEnable => 'Увімкнути сповіщення';

  @override
  String get setupFolderChoose => 'Вибрати теку для завантаження';

  @override
  String get setupFolderDescription =>
      'Виберіть теку, де буде збережено завантажену музику.';

  @override
  String get setupSelectFolder => 'Вибрати теку';

  @override
  String get setupEnableNotifications => 'Увімкнути сповіщення';

  @override
  String get setupNotificationBackgroundDescription =>
      'Отримуйте сповіщення про прогрес та завершення завантаження. Це допомагає відстежувати завантаження, коли програма працює у фоновому режимі.';

  @override
  String get setupSkipForNow => 'Пропустити поки що';

  @override
  String get setupNearbyEnable => 'Дозволити доступ до пристроїв поблизу';

  @override
  String get setupNearbyDescription =>
      'Toadplayer Link використовує це для пошуку вашого комп’ютера в тій самій мережі, а мережевому сховищу це необхідно для з’єднання з домашнім сервером.';

  @override
  String get setupNearbyGranted => 'Доступ до пристроїв поблизу дозволено!';

  @override
  String get permissionNearbyDevices => 'Пристрої поблизу';

  @override
  String get whatsNewLinkNearbyAllow => 'Дозволити пристрої поблизу';

  @override
  String get whatsNewLinkNearbyGranted => 'Пристрої поблизу дозволено';

  @override
  String get whatsNewNearbyTitle => 'Пристрої поблизу';

  @override
  String get whatsNewNearbyDesc =>
      'Тепер Android запитує дозвіл перед тим, як додаток зможе отримати доступ до інших пристроїв у вашій мережі. Програмі Toadplayer це потрібно для:';

  @override
  String get whatsNewNearbyLinkTitle => 'Пошук вашого комп’ютера';

  @override
  String get whatsNewNearbyLinkBody =>
      'Toadplayer Link шукає ваш комп’ютер у тій самій мережі Wi-Fi та підтримує постійний зв’язок із ним.';

  @override
  String get whatsNewNearbyStorageTitle => 'Мережеве сховище';

  @override
  String get whatsNewNearbyStorageBody =>
      'Відтворюйте музику з NAS або домашнього сервера через SMB чи WebDAV.';

  @override
  String get whatsNewNearbyPrivateTitle => 'Лише власні пристрої';

  @override
  String get whatsNewNearbyPrivateBody =>
      'Toadplayer використовує цей дозвіл лише для зв’язку з пристроями у вашій мережі й ніколи не визначає ваше місцеположення.';

  @override
  String get whatsNewNearbyRefused =>
      'Доступ заборонено. Toadplayer Link та мережеве сховище залишатимуться вимкненими, доки ви не дозволите доступ до пристроїв поблизу для Toadplayer в налаштуваннях Android.';

  @override
  String get setupNext => 'Далі';

  @override
  String get setupGetStarted => 'Почати';

  @override
  String get setupAllowAccessToManageFiles =>
      'Будь ласка, увімкніть опцію «Дозволити доступ для керування всіма файлами» на наступному екрані.';

  @override
  String get setupLanguageTitle => 'Виберіть мову';

  @override
  String get setupLanguageDescription =>
      'Виберіть бажану мову для програми. Ви зможете змінити її пізніше в налаштуваннях.';

  @override
  String get setupLanguageSystemDefault => 'Система за замовчуванням';

  @override
  String get dialogCancel => 'Скасувати';

  @override
  String get dialogSave => 'Зберегти';

  @override
  String get dialogDelete => 'Видалити';

  @override
  String get dialogRetry => 'Повторити спробу';

  @override
  String get dialogClear => 'Очистити';

  @override
  String get dialogDone => 'Готово';

  @override
  String get dialogImport => 'Імпорт';

  @override
  String get dialogDownload => 'Завантажити';

  @override
  String get previewPlay => 'Відтворити попередній';

  @override
  String get previewStop => 'Зупинити попередній';

  @override
  String get previewUnavailable => 'Попередній перегляд недоступний';

  @override
  String get dialogDiscard => 'Відхилити';

  @override
  String get dialogRemove => 'Видалити';

  @override
  String get dialogUninstall => 'Деінсталювати';

  @override
  String get dialogDiscardChanges => 'Відхилити зміни?';

  @override
  String get dialogUnsavedChanges =>
      'У вас є незбережені зміни. Ви хочете їх скасувати?';

  @override
  String get dialogClearAll => 'Очистити все';

  @override
  String get dialogRemoveExtension => 'Вилучити розширення';

  @override
  String get dialogRemoveExtensionMessage =>
      'Ви впевнені, що хочете видалити це розширення? Цю дію неможливо скасувати.';

  @override
  String get dialogUninstallExtension => 'Вилучити розширення?';

  @override
  String dialogUninstallExtensionMessage(String extensionName) {
    return 'Ви впевнені, що хочете видалити $extensionName?';
  }

  @override
  String get dialogClearHistoryTitle => 'Очистити історію';

  @override
  String get dialogClearHistoryMessage =>
      'Ви впевнені, що хочете очистити всю історію завантажень? Цю дію неможливо скасувати.';

  @override
  String get dialogDeleteSelectedTitle => 'Видалити вибране';

  @override
  String dialogDeleteSelectedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'треків',
      one: 'трек',
    );
    return 'Видалити $count $_temp0 з історії?\n\nЦе також видалить файли з пам\'яті.';
  }

  @override
  String get dialogImportPlaylistTitle => 'Імпорт списку відтворення';

  @override
  String dialogImportPlaylistMessage(int count) {
    return 'У файлі списку відтворення знайдено $count треків. Додати їх до черги завантаження?';
  }

  @override
  String csvImportTracks(int count) {
    return '$count Треків з CSV';
  }

  @override
  String get collectionExportM3u => 'Експортувати як M3U8';

  @override
  String collectionExportM3uDone(int exported, int total) {
    return 'Експортовано $exported із $total треків';
  }

  @override
  String get collectionExportM3uNone =>
      'Немає завантажених файлів для експорту';

  @override
  String get collectionExportM3uFailed => 'Експорт не вдався';

  @override
  String get trackOpenOn => 'Відкрити на...';

  @override
  String get trackOpenOnNoLinks =>
      'Для цього треку не знайдено посилань на платформи.';

  @override
  String get libraryReviewDuplicates => 'Переглянути дублікати';

  @override
  String get libraryReviewDuplicatesSubtitle =>
      'Знайти треки, збережені більше одного разу';

  @override
  String get duplicatesTitle => 'Дублікати';

  @override
  String get duplicatesEmpty => 'Не знайдено повторюваних треків.';

  @override
  String get duplicatesKeepBest => 'Залишити краще';

  @override
  String get duplicatesKeepBestAll => 'Зробити найкращим для всіх';

  @override
  String duplicatesKeepBestAllMessage(int count, int groupCount) {
    String _temp0 = intl.Intl.pluralLogic(
      groupCount,
      locale: localeName,
      other: 'треків',
      one: 'треку',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'копій',
      one: 'копію',
    );
    return 'Зберегти найкращу копію $groupCount $_temp0і видалити $count гіршої якості $_temp1?\n\nВидалені файли буде усунуто зі сховища.';
  }

  @override
  String duplicatesKeepBestMessage(int count, String trackName) {
    return 'Видалити копії $count низької якості \"$trackName\"?';
  }

  @override
  String duplicatesDeleteCopyMessage(String trackName) {
    return 'Видалити цю копію \"$trackName\"?';
  }

  @override
  String snackbarAddedToQueue(String trackName) {
    return 'Додано \"$trackName\" до черги';
  }

  @override
  String snackbarAddedTracksToQueue(int count) {
    return 'Додано $count треків до черги';
  }

  @override
  String snackbarAlreadyDownloaded(String trackName) {
    return '\"$trackName\" вже завантажено';
  }

  @override
  String snackbarAlreadyInLibrary(String trackName) {
    return '\"$trackName\" вже є у вашій бібліотеці';
  }

  @override
  String get snackbarHistoryCleared => 'Історія очищена';

  @override
  String snackbarDeletedTracks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'треків',
      one: 'трек',
    );
    return 'Видалено $count $_temp0';
  }

  @override
  String snackbarCannotOpenFile(String error) {
    return 'Не вдається відкрити файл: $error';
  }

  @override
  String get snackbarViewQueue => 'Переглянути чергу';

  @override
  String snackbarUrlCopied(String platform) {
    return '$platform URL-адреса скопійована в буфер обміну';
  }

  @override
  String get snackbarFileNotFound => 'Файл не знайдено';

  @override
  String get snackbarSelectExtFile =>
      'Будь ласка, виберіть файл.toadplayer-ext';

  @override
  String get snackbarProviderPrioritySaved => 'Пріоритет провайдера збережено';

  @override
  String get snackbarMetadataProviderSaved =>
      'Пріоритет постачальника метаданих збережено';

  @override
  String snackbarExtensionInstalled(String extensionName) {
    return 'Розширення $extensionName встановлено.';
  }

  @override
  String snackbarExtensionUpdated(String extensionName) {
    return '$extensionName Оновлено.';
  }

  @override
  String get snackbarFailedToInstall => 'Не вдалося встановити розширення';

  @override
  String get snackbarFailedToUpdate => 'Не вдалося оновити розширення';

  @override
  String get errorRateLimited => 'Обмежений тариф';

  @override
  String get errorRateLimitedMessage =>
      'Забагато запитів. Будь ласка, зачекайте хвилинку, перш ніж шукати знову.';

  @override
  String get errorNoTracksFound => 'Треків не знайдено';

  @override
  String get searchEmptyResultSubtitle => 'Спробуйте інше ключове слово';

  @override
  String get errorUrlNotRecognized => 'Посилання не розпізнано';

  @override
  String get errorUrlNotRecognizedMessage =>
      'Це посилання не підтримується. Переконайтеся, що URL-адреса правильна та встановлено сумісне розширення.';

  @override
  String get errorUrlFetchFailed =>
      'Не вдалося завантажити вміст за цим посиланням. Спробуйте ще раз.';

  @override
  String errorMissingExtensionSource(String item) {
    return 'Не вдається завантажити $item: відсутній вихідний код розширення';
  }

  @override
  String get actionPause => 'Пауза';

  @override
  String get actionResume => 'Відновити';

  @override
  String get actionCancel => 'Скасувати';

  @override
  String get actionSelectAll => 'Вибрати все';

  @override
  String get actionDeselect => 'Скасувати вибір';

  @override
  String selectionSelected(int count) {
    return 'Вибрано $count';
  }

  @override
  String get selectionAllSelected => 'Усі треки вибрано';

  @override
  String get selectionSelectToDelete => 'Виберіть треки для видалення';

  @override
  String progressFetchingMetadata(int current, int total) {
    return 'Отримання метаданих... $current/$total';
  }

  @override
  String get progressReadingCsv => 'Читання CSV-файлу...';

  @override
  String get searchSongs => 'Пісні';

  @override
  String get searchArtists => 'Виконавці';

  @override
  String get searchAlbums => 'Альбоми';

  @override
  String get searchPlaylists => 'Списки відтворення';

  @override
  String get searchShowAll => 'Показати все';

  @override
  String searchShowAllCategory(String category) {
    return 'Показати все: $category';
  }

  @override
  String get searchSortTitle => 'Сортувати результати';

  @override
  String get searchSortDefault => 'За замовчуванням';

  @override
  String get searchSortTitleAZ => 'Назва (A-Z)';

  @override
  String get searchSortTitleZA => 'Назва (Z-A)';

  @override
  String get searchSortArtistAZ => 'Виконавець (A-Z)';

  @override
  String get searchSortArtistZA => 'Виконавець (Z-A)';

  @override
  String get searchSortDurationShort => 'Тривалість (найкоротша)';

  @override
  String get searchSortDurationLong => 'Тривалість (найдовша)';

  @override
  String get searchSortDateOldest => 'Дата випуску (найстаріша)';

  @override
  String get searchSortDateNewest => 'Дата випуску (найновіша)';

  @override
  String get tooltipPlay => 'Відтворити';

  @override
  String get filenameFormat => 'Формат імені файлу';

  @override
  String get filenameShowAdvancedTags => 'Показати розширені теги';

  @override
  String get filenameShowAdvancedTagsDescription =>
      'Увімкнути відформатовані теги для доповнення доріжок і шаблонів дати';

  @override
  String get folderOrganizationNone => 'Жодної організації';

  @override
  String get folderOrganizationByPlaylist => 'За списком відтворення';

  @override
  String get folderOrganizationByPlaylistSubtitle =>
      'Окрема тека для кожного списку відтворення';

  @override
  String get folderOrganizationByArtist => 'За виконавцем';

  @override
  String get folderOrganizationByAlbum => 'За альбомом';

  @override
  String get folderOrganizationByArtistAlbum => 'Виконавець/Альбом';

  @override
  String get folderOrganizationDescription =>
      'Упорядкувати завантажені файли в теці';

  @override
  String get folderOrganizationNoneSubtitle => 'Усі файли в теці завантажень';

  @override
  String get folderOrganizationByArtistSubtitle =>
      'Окрема тека для кожного виконавця';

  @override
  String get folderOrganizationByAlbumSubtitle =>
      'Окрема тека для кожного альбому';

  @override
  String get folderOrganizationByArtistAlbumSubtitle =>
      'Вкладені теки для виконавця та альбому';

  @override
  String get updateAvailable => 'Доступне оновлення';

  @override
  String get updateLater => 'Пізніше';

  @override
  String get updateStartingDownload => 'Початок завантаження...';

  @override
  String get updateDownloadFailed => 'Не вдалося завантажити';

  @override
  String get updateFailedMessage => 'Не вдалося завантажити оновлення';

  @override
  String get updateNewVersionReady => 'Доступна нова версія';

  @override
  String get updateRequiredTitle => 'Потрібне оновлення';

  @override
  String updateRequiredNotice(int count) {
    return 'Ця версія $count релізів і більше не підтримується. Оновіть, щоб користуватися додатком.';
  }

  @override
  String get updateCurrent => 'Поточна';

  @override
  String get updateNew => 'Нова';

  @override
  String get updateDownloading => 'Завантаження...';

  @override
  String get updateWhatsNew => 'Що нового';

  @override
  String get updateDownloadInstall => 'Завантажити та встановити';

  @override
  String get updateDontRemind => 'Не нагадувати';

  @override
  String get updateViewRelease => 'Перейти до релізу';

  @override
  String get updateStartingInstaller => 'Запуск інсталятора...';

  @override
  String get updateMacInstallHint =>
      'Образ диска відкрито у Finder. Закрийте Toadplayer, а потім перетягніть Toadplayer з образу диска теки «Програми» та замініть стару копію.';

  @override
  String get updateQuitApp => 'Вийти з Toadplayer';

  @override
  String get updateReadyToRestart =>
      'Оновлення встановлено. Перезапустіть Toadplayer, щоб застосувати його.';

  @override
  String get updateRestartNow => 'Перезавантажити зараз';

  @override
  String get providerPriorityTitle => 'Пріоритет провайдера';

  @override
  String get providerPriorityDescription =>
      'Перетягніть, щоб змінити порядок провайдерів завантажень. Під час завантаження треків програма використовуватиме провайдерів зверху вниз.';

  @override
  String get providerPriorityInfo =>
      'Якщо трек недоступний у першого провайдера, додаток автоматично спробує наступного.';

  @override
  String get providerPriorityFallbackExtensionsDescription =>
      'Виберіть, які встановлені розширення для завантаження можна використовувати як резервні.';

  @override
  String get providerPriorityFallbackExtensionsHint =>
      'Тут перелічені лише ввімкнені розширення з можливістю завантаження через провайдера послуг.';

  @override
  String get providerExtension => 'Розширення';

  @override
  String get metadataProviderPriorityTitle => 'Пріоритет метаданих';

  @override
  String get metadataProviderPriorityDescription =>
      'Перетягніть, щоб змінити порядок провайдерів метаданих. Додаток шукатиме провайдерів зверху вниз під час пошуку треків та отримання метаданих.';

  @override
  String get metadataProviderPriorityInfo =>
      'Deezer не має обмежень за швидкістю та рекомендований як основний сервіс. Spotify може обмежувати швидкість після великої кількості запитів.';

  @override
  String get logTitle => 'Журнали';

  @override
  String get logCopied => 'Журнали скопійовано в буфер обміну';

  @override
  String get logSearchHint => 'Пошук журналів...';

  @override
  String get logFilterLevel => 'Рівень';

  @override
  String get logFilterSection => 'Фільтр';

  @override
  String get logShareLogs => 'Журнали обміну';

  @override
  String get logClearLogs => 'Очистити журнали';

  @override
  String get logClearLogsTitle => 'Очистити Журнали';

  @override
  String get logClearLogsMessage =>
      'Ви впевнені, що хочете очистити всі журнали?';

  @override
  String get logFilterBySeverity => 'Фільтрувати журнали за рівнем серйозності';

  @override
  String get logNoLogsYet => 'Журналів поки що немає';

  @override
  String get logNoLogsYetSubtitle =>
      'Тут з’являтимуться записи журналу в міру використання програми';

  @override
  String logEntriesFiltered(int count) {
    return 'Записи ($count filtered)';
  }

  @override
  String logEntries(int count) {
    return 'Записи ($count)';
  }

  @override
  String get channelStable => 'Стабільний';

  @override
  String get channelPreview => 'Бета';

  @override
  String get sectionSearchSource => 'Джерело пошуку';

  @override
  String get sectionDownload => 'Завантажити';

  @override
  String get sectionPerformance => 'Продуктивність';

  @override
  String get sectionApp => 'Додаток';

  @override
  String get sectionData => 'Дані';

  @override
  String get sectionDebug => 'Налагодження';

  @override
  String get sectionService => 'Сервіс';

  @override
  String get sectionAudioQuality => 'Якість звуку';

  @override
  String get sectionFileSettings => 'Налаштування файлу';

  @override
  String get sectionLyrics => 'Тексти пісень';

  @override
  String get lyricsKeepScreenOn =>
      'Не вимикати екран під час перегляду тексту пісні';

  @override
  String get lyricsKeepScreenOnSubtitle =>
      'Запобігати вимкненню екрана, коли відкрито текст пісні, зокрема й під час паузи у відтворенні.';

  @override
  String get lyricsMode => 'Режим тексту пісні';

  @override
  String get lyricsModeDescription =>
      'Виберіть як тексти пісень зберігатимуться разом із завантаженнями пісень';

  @override
  String get lyricsModeEmbed => 'Вбудувати у файл';

  @override
  String get lyricsModeEmbedSubtitle =>
      'Тексти пісень зберігаються в метаданих FLAC';

  @override
  String get lyricsModeExternal => 'Зовнішній файл .lrc';

  @override
  String get lyricsModeExternalSubtitle =>
      'Окремий файл .lrc для плеєрів, таких як Samsung Music';

  @override
  String get lyricsModeBoth => 'Обидва';

  @override
  String get lyricsModeBothSubtitle => 'Вбудувати та зберегти файл .lrc';

  @override
  String get sectionColor => 'Колір';

  @override
  String get sectionTheme => 'Тема';

  @override
  String get sectionLayout => 'Макет';

  @override
  String get sectionLanguage => 'Мова';

  @override
  String get appearanceLanguage => 'Мова програми';

  @override
  String get settingsAppearanceSubtitle => 'Тема, кольори, дисплей';

  @override
  String get settingsDownloadSubtitle =>
      'Обслуговування, якість, резервний варіант';

  @override
  String get settingsExtensionsSubtitle =>
      'Керування постачальниками послуг завантаження';

  @override
  String get settingsLogsSubtitle =>
      'Перегляд журналів програми для налагодження';

  @override
  String get loadingSharedLink => 'Завантаження спільного посилання...';

  @override
  String get pressBackAgainToExit =>
      'Натисніть кнопку «Назад» ще раз, щоб вийти';

  @override
  String downloadAllCount(int count) {
    return 'Завантажити все ($count)';
  }

  @override
  String tracksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count треків',
      one: '1 трек',
    );
    return '$_temp0';
  }

  @override
  String get trackCopyFilePath => 'Копіювати шлях до файлу';

  @override
  String get trackRemoveFromDevice => 'Видалити з пристрою';

  @override
  String get trackLoadLyrics => 'Завантажити текст пісні';

  @override
  String get trackMetadata => 'Метадані';

  @override
  String get trackFileInfo => 'Інформація про файл';

  @override
  String get trackLyrics => 'Тексти пісень';

  @override
  String get trackFileNotFound => 'Файл не знайдено';

  @override
  String get trackFileUnavailable =>
      'Файл наразі недоступний. Перевірте доступ до сховища та спробуйте ще раз.';

  @override
  String get trackOpenInDeezer => 'Відкрити в Deezer';

  @override
  String get trackOpenInSpotify => 'Відкрити в Spotify';

  @override
  String get trackTrackName => 'Назва треку';

  @override
  String get trackArtist => 'Артист';

  @override
  String get trackAlbumArtist => 'Виконавець альбому';

  @override
  String get trackAlbum => 'Альбом';

  @override
  String get trackTrackNumber => 'Номер треку';

  @override
  String get trackDiscNumber => 'Номер диска';

  @override
  String get trackDuration => 'Тривалість';

  @override
  String get trackAudioQuality => 'Якість звуку';

  @override
  String get trackReplayGainTrackGain => 'ReplayGain: посилення для треку';

  @override
  String get trackReplayGainTrackPeak => 'Піковий рівень треку ReplayGain';

  @override
  String get trackReplayGainAlbumGain => 'ReplayGain: посилення для альбому';

  @override
  String get trackReplayGainAlbumPeak => 'Піковий рівень альбому ReplayGain';

  @override
  String get libraryQualityLabelFileFormat => 'Формат файлу';

  @override
  String get trackReleaseDate => 'Дата випуску';

  @override
  String get trackGenre => 'Жанр';

  @override
  String get trackLabel => 'Обкладинка';

  @override
  String get trackCopyright => 'Авторське право';

  @override
  String get trackDownloaded => 'Завантажено';

  @override
  String get trackCopyLyrics => 'Скопіювати тексти пісень';

  @override
  String trackLyricsSource(String source) {
    return 'Джерело $source';
  }

  @override
  String get trackLyricsNotAvailable =>
      'Текст пісні для цього треку недоступний';

  @override
  String get trackLyricsNotInFile => 'У цьому файлі не знайдено тексту пісні';

  @override
  String get trackFetchOnlineLyrics => 'Отримати з Інтернету';

  @override
  String get trackLyricsTimeout =>
      'Час очікування запиту минув. Спробуйте ще раз пізніше.';

  @override
  String get trackLyricsLoadFailed => 'Не вдалося завантажити текст пісні';

  @override
  String get trackEmbedLyrics => 'Вбудувати текст пісні';

  @override
  String get trackLyricsEmbedded => 'Текст пісні успішно вбудовано в пісню';

  @override
  String get trackInstrumental => 'Інструментальний трек';

  @override
  String get trackCopiedToClipboard => 'Скопійовано в буфер обміну';

  @override
  String get trackDeleteConfirmTitle => 'Видалити з пристрою?';

  @override
  String get trackDeleteNetworkConfirmMessage =>
      'Це безповоротно видалить файл із мережевого сховища та вилучить його з бібліотеки й історії.';

  @override
  String snackbarDeleteTracksFailed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'треків',
      few: 'треки',
      one: 'трек',
    );
    return 'Не вдалося видалити $count $_temp0. Перевірте доступ до сховища та спробуйте ще раз.';
  }

  @override
  String get trackDeleteConfirmMessage =>
      'Це назавжди видалить завантажений файл і вилучить його з вашої історії.';

  @override
  String get dateToday => 'Сьогодні';

  @override
  String get dateYesterday => 'Вчора';

  @override
  String dateDaysAgo(int count) {
    return '$count Днів тому';
  }

  @override
  String dateWeeksAgo(int count) {
    return '$count Тижнів тому';
  }

  @override
  String dateMonthsAgo(int count) {
    return '$count Місяців тому';
  }

  @override
  String get storeFilterAll => 'Усі';

  @override
  String get storeFilterMetadata => 'Метадані';

  @override
  String get storeFilterDownload => 'Завантажити';

  @override
  String get storeFilterUtility => 'Утиліта';

  @override
  String get storeFilterLyrics => 'Тексти пісень';

  @override
  String get storeFilterIntegration => 'Інтеграція';

  @override
  String get storeClearFilters => 'Очистити фільтри';

  @override
  String get storeAddRepoTitle => 'Додати репозиторій розширень';

  @override
  String get storeAddRepoDescription =>
      'Введіть URL-адресу репозиторію GitHub, яка містить файл registry.json, для перегляду та встановлення розширень.';

  @override
  String get storeRepoUrlLabel => 'URL-адреса репозиторію';

  @override
  String get storeRepoUrlHint => 'https://github.com/user/repo';

  @override
  String get storeAddRepoButton => 'Додати репозиторій';

  @override
  String get storeChangeRepoTooltip => 'Змінити репозиторій';

  @override
  String get storeRepoDialogTitle => 'Репозиторій розширень';

  @override
  String get storeRepoDialogCurrent => 'Поточний репозиторій:';

  @override
  String get storeNewRepoUrlLabel => 'Нова URL-адреса репозиторію';

  @override
  String get storeLoadError => 'Не вдалося завантажити репозиторій';

  @override
  String get storeEmptyNoExtensions => 'Розширень немає';

  @override
  String get storeEmptyNoResults => 'Розширень не знайдено';

  @override
  String get extensionId => 'Ідентифікатор';

  @override
  String get extensionError => 'Помилка';

  @override
  String get extensionCapabilities => 'Можливості';

  @override
  String get extensionMetadataProvider => 'Провайдер метаданих';

  @override
  String get extensionDownloadProvider => 'Провайдер завантажень';

  @override
  String get extensionLyricsProvider => 'Провайдер текстів пісень';

  @override
  String get extensionUrlHandler => 'Обробник URL-адрес';

  @override
  String get extensionQualityOptions => 'Варіанти якості';

  @override
  String get extensionPostProcessingHooks => 'Хуки постобробки';

  @override
  String get extensionPermissions => 'Дозволи';

  @override
  String get extensionSettings => 'Налаштування';

  @override
  String get extensionRemoveButton => 'Видалити розширення';

  @override
  String get extensionUpdated => 'Оновлено';

  @override
  String get extensionMinAppVersion => 'Мінімальна версія програми';

  @override
  String get extensionCustomTrackMatching => 'Підбір користувацьких треків';

  @override
  String get extensionPostProcessing => 'Постобробка';

  @override
  String extensionHooksAvailable(int count) {
    return '$count Доступних хуків()';
  }

  @override
  String extensionPatternsCount(int count) {
    return '$count Шаблон()';
  }

  @override
  String extensionStrategy(String strategy) {
    return 'Стратегія: $strategy';
  }

  @override
  String get extensionsProviderPrioritySection => 'Пріоритет провайдера';

  @override
  String get extensionsInstalledSection => 'Встановлені розширення';

  @override
  String get extensionsNoExtensions => 'Розширень не встановлено';

  @override
  String get extensionsNoExtensionsSubtitle =>
      'Встановіть файли.toadplayer-ext, щоб додати нових провайдерів';

  @override
  String get extensionsInstallButton => 'Встановити розширення';

  @override
  String get extensionsInfoTip =>
      'Розширення можуть додавати нові метадані та завантажувати провайдерів. Встановлюйте розширення лише з перевірених джерел.';

  @override
  String get extensionsInstalledSuccess => 'Розширення успішно встановлено';

  @override
  String extensionsInstalledCount(int count) {
    return '$count Розширення успішно встановлено';
  }

  @override
  String extensionsInstallPartialSuccess(int installed, int attempted) {
    return 'Встановлено $installed із $attempted розширень';
  }

  @override
  String get extensionsDownloadPriority => 'Пріоритет завантаження';

  @override
  String get extensionsDownloadPrioritySubtitle =>
      'Встановити порядок завантаження';

  @override
  String get extensionsFallbackTitle => 'Резервні розширення';

  @override
  String get extensionsFallbackSubtitle =>
      'Виберіть, які встановлені розширення для завантаження можна використовувати як резервні';

  @override
  String get extensionsNoDownloadProvider =>
      'Без розширень із провайдером завантажень';

  @override
  String get extensionsMetadataPriority => 'Пріоритет метаданих';

  @override
  String get extensionsMetadataPrioritySubtitle =>
      'Встановити порядок пошуку та джерел метаданих';

  @override
  String get extensionsNoMetadataProvider =>
      'Без розширень із провайдером метаданих';

  @override
  String get extensionsSearchProvider => 'Провайдер пошуку';

  @override
  String get extensionsNoCustomSearch =>
      'Без розширень із користувацьким пошуком';

  @override
  String get extensionsSearchProviderDescription =>
      'Виберіть, який сервіс використовувати для пошуку треків';

  @override
  String get extensionsCustomSearch => 'Користувацький пошук';

  @override
  String get extensionsErrorLoading => 'Помилка завантаження розширення';

  @override
  String get qualityFlacLossless => 'FLAC Lossless';

  @override
  String get qualityFlacLosslessSubtitle => '16 біт / 44,1 кГц';

  @override
  String get qualityHiResFlac => 'FLAC високої роздільної здатності';

  @override
  String get qualityHiResFlacSubtitle => '24-біт / до 96 кГц';

  @override
  String get qualityHiResFlacMax => 'FLAC Max з високою роздільною здатністю';

  @override
  String get qualityHiResFlacMaxSubtitle => '24-біт / до 192 кГц';

  @override
  String get downloadLossyFormat => 'Формат Lossy';

  @override
  String get downloadAutoConvert =>
      'Автоматично конвертувати після завантаження';

  @override
  String get downloadAutoConvertAllFormatsSubtitle =>
      'Конвертуйте завершені завантаження або обмежте розрядність і частоту дискретизації для FLAC. Оригінал замінюється лише після успішного завершення конвертації.';

  @override
  String get downloadAutoConvertOutputSubtitle =>
      'Виберіть вихідний формат для нових завершених завантажень.';

  @override
  String get downloadAutoConvertFlacSubtitle =>
      'FLAC без втрат Lossless з обмеженням якості. Нижча розрядність та частота дискретизації зберігаються без змін.';

  @override
  String get downloadAutoConvertMaxBitDepth => 'Максимальна розрядність';

  @override
  String get downloadAutoConvertMaxSampleRate =>
      'Максимальна частота дискретизації';

  @override
  String get downloadAutoConvertFlacLimitsSubtitle =>
      'Це верхні межі. Наприклад, джерело з частотою 44.1 кГц залишиться як 44.1 кГц, навіть якщо вибрано 48 кГц. Аудіофайли зі стисненням із втратами lossy зберігаються в оригінальному форматі.';

  @override
  String get downloadAutoConvertSubtitle =>
      'Конвертуйте завершені завантаження у компактніший формат із втратою якості. Оригінал замінюється лише після успішного завершення конвертації.';

  @override
  String get downloadAutoConvertFormat => 'Вихідний формат';

  @override
  String get downloadAutoConvertFormatSubtitle =>
      'Виберіть формат з втратами, що використовуватиметься для щойно завершених завантажень.';

  @override
  String get downloadAutoConvertBitrate => 'Якість передачі';

  @override
  String get downloadAutoConvertBitrateSubtitle =>
      'Вища якість зберігає більше деталей, але створює більші файли.';

  @override
  String get downloadAutoConvertMp3Subtitle =>
      'Найкраща сумісність із програвачами та пристроями';

  @override
  String get downloadAutoConvertM4aSubtitle =>
      'Ефективний звук у форматі AAC у контейнері M4A';

  @override
  String get downloadAutoConvertOpusSubtitle =>
      'Найвища ефективність для сучасних програвачів';

  @override
  String get downloadAskBeforeDownload => 'Запитувати перед завантаженням';

  @override
  String get downloadDirectory => 'Каталог завантажень';

  @override
  String get downloadSeparateSinglesFolder => 'Окрема тека для синглів';

  @override
  String get downloadAlbumFolderStructure => 'Структура альбому в теці';

  @override
  String get albumFolderStructureDescription =>
      'Вибрати як структуруються теки альбому';

  @override
  String get downloadUseAlbumArtistForFolders =>
      'Використовувати виконавця альбому для тек';

  @override
  String get downloadUsePrimaryArtistOnly =>
      'Тільки основний виконавець для тек';

  @override
  String get downloadUsePrimaryArtistOnlyEnabled =>
      'Вибраних виконавців видалити з назви тек (наприклад, Justin Bieber, Quavo → Justin Bieber)';

  @override
  String get downloadUsePrimaryArtistOnlyDisabled =>
      'Повний рядок виконавця, що використовується для назви теки';

  @override
  String get downloadSelectQuality => 'Вибрати якість';

  @override
  String get downloadFrom => 'Завантажити з';

  @override
  String get appearanceAmoledDark => 'Темний AMOLED';

  @override
  String get appearanceAmoledDarkSubtitle => 'Чисто чорний фон';

  @override
  String get appearanceHeroAnimations => 'Анімації головного елемента';

  @override
  String get appearanceHeroAnimationsSubtitle =>
      'Анімація переходу між екранами, наприклад, під час відкриття плеєра';

  @override
  String get appearanceForceBlur => 'Завжди використовуйте ефекти розмиття';

  @override
  String get appearanceForceBlurSubtitle =>
      'Увімкнути розмиття панелі навігації навіть на пристроях за замовчуванням. Це може вплинути на продуктивність.';

  @override
  String get queueClearAll => 'Усі';

  @override
  String get queueClearAllMessage =>
      'Ви впевнені, що хочете очистити всі завантаження?';

  @override
  String get settingsAutoExportFailed =>
      'Автоматичний експорт невдалих завантажень';

  @override
  String get settingsAutoExportFailedSubtitle =>
      'Автоматично зберігати невдалі завантаження у файл TXT';

  @override
  String get settingsDownloadNetwork => 'Мережа для завантаження';

  @override
  String get settingsDownloadNetworkAny => 'Wi-Fi + мобільний інтернет';

  @override
  String get settingsDownloadNetworkWifiOnly => 'Тільки Wi-Fi';

  @override
  String get settingsDownloadNetworkSubtitle =>
      'Вибрати мережу для завантажень. Якщо встановлено значення «Тільки Wi-Fi», завантаження призупиняться через мобільні дані.';

  @override
  String get settingsConcurrentDownloads => 'Кількість одночасних завантажень';

  @override
  String get settingsConcurrentDownloadsSubtitle =>
      'Завантаження кількох треків одночасно відбувається швидше, але деякі провайдери можуть обмежувати швидкість паралельних запитів.';

  @override
  String get concurrentDownloadsOne => '1 трек за один раз';

  @override
  String concurrentDownloadsCount(int count) {
    return 'До $count треків одночасно';
  }

  @override
  String get albumFolderArtistAlbum => 'Артист / Альбом';

  @override
  String get albumFolderArtistAlbumSubtitle =>
      'Альбоми/Ім\'я артиста/Назва Альбому/';

  @override
  String get albumFolderArtistYearAlbum => 'Артист / [Рік] Альбом';

  @override
  String get albumFolderArtistYearAlbumSubtitle =>
      'Альбоми/Ім\'я Виконавця/[2005] Назва альбому/';

  @override
  String get albumFolderAlbumOnly => 'Тільки альбом';

  @override
  String get albumFolderAlbumOnlySubtitle => 'Альбоми/Назва Альбому/';

  @override
  String get albumFolderYearAlbum => '[Рік] Альбом';

  @override
  String get albumFolderYearAlbumSubtitle => 'Альбоми/[2005] Назва Альбому/';

  @override
  String get albumFolderArtistAlbumSingles => 'Виконавець / Альбом + Сингли';

  @override
  String get albumFolderArtistAlbumSinglesSubtitle =>
      'Виконавець/Альбом/ Та Виконавець/Сингли/';

  @override
  String get albumFolderArtistAlbumFlat =>
      'Виконавець / Альбом (сингли без альбомів)';

  @override
  String get albumFolderArtistAlbumFlatSubtitle =>
      'Виконавець/Альбом/ Та Виконавець/пісня.flac';

  @override
  String get downloadedAlbumDeleteSelected => 'Видалити вибране';

  @override
  String downloadedAlbumDeleteMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'треків',
      one: 'трек',
    );
    return 'Видалити $count $_temp0 з цього альбому?\n\nЦе також призведе до видалення файлів зі сховища.';
  }

  @override
  String downloadedAlbumSelectedCount(int count) {
    return 'Вибрано $count';
  }

  @override
  String get downloadedAlbumTapToSelect => 'Натисніть на треки, щоб вибрати';

  @override
  String downloadedAlbumDeleteCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'треків',
      one: 'трек',
    );
    return 'Видалити $count $_temp0';
  }

  @override
  String get downloadedAlbumSelectToDelete => 'Виберіть треки для видалення';

  @override
  String downloadedAlbumDiscHeader(int discNumber) {
    return 'Диск $discNumber';
  }

  @override
  String get recentTypeArtist => 'Артист';

  @override
  String get recentTypeAlbum => 'Альбом';

  @override
  String get recentTypeSong => 'Пісня';

  @override
  String get recentTypePlaylist => 'Список відтворення';

  @override
  String get recentEmpty => 'Поки що немає нещодавніх записів';

  @override
  String get recentClearAllMessage =>
      'Очистити всю нещодавню активність? Історію завантажень і музичні файли не буде видалено.';

  @override
  String get recentShowAllDownloads => 'Показати всі завантаження';

  @override
  String recentPlaylistInfo(String name) {
    return 'Список відтворення: $name';
  }

  @override
  String get discographyDownload => 'Завантажити дискографію';

  @override
  String get discographyDownloadAll => 'Завантажити все';

  @override
  String discographyDownloadAllSubtitle(int count, int albumCount) {
    return '$count Треків з $albumCount релізів';
  }

  @override
  String get discographyAlbumsOnly => 'Тільки альбоми';

  @override
  String discographyAlbumsOnlySubtitle(int count, int albumCount) {
    return '$count Треків з $albumCount альбомів';
  }

  @override
  String get discographySinglesOnly => 'Тільки сингли та мініальбоми';

  @override
  String discographySinglesOnlySubtitle(int count, int albumCount) {
    return '$count Треків з $albumCount синглів';
  }

  @override
  String get discographySelectAlbums => 'Вибрати альбоми...';

  @override
  String get discographySelectAlbumsSubtitle =>
      'Виберіть конкретні альбоми або сингли';

  @override
  String get discographyFetchingTracks => 'Отримання треків...';

  @override
  String discographyFetchingAlbum(int current, int total) {
    return 'Отримання $current з $total...';
  }

  @override
  String get discographyDownloadSelected => 'Завантажити вибране';

  @override
  String discographyAddedToQueue(int count) {
    return 'Додано $count треків до черги';
  }

  @override
  String discographySkippedDownloaded(int added, int skipped) {
    return '$added Додано, $skipped вже завантажено';
  }

  @override
  String get discographyNoAlbums => 'Немає доступних альбомів';

  @override
  String get discographyFailedToFetch => 'Не вдалося отримати деякі альбоми';

  @override
  String get sectionStorageAccess => 'Доступ до сховища';

  @override
  String get allFilesAccess => 'Доступ до всіх файлів';

  @override
  String get allFilesAccessEnabledSubtitle =>
      'Можна записувати в будь-яку теку';

  @override
  String get allFilesAccessDisabledSubtitle =>
      'Обмежено лише теками з медіафайлами';

  @override
  String get allFilesAccessDescription =>
      'Увімкніть цю опцію, якщо під час збереження у власній теці виникають помилки запису. Android 13+ за замовчуванням обмежує доступ до певних каталогів.';

  @override
  String get allFilesAccessDeniedMessage =>
      'У дозволі відмовлено. Будь ласка, увімкніть «Доступ до всіх файлів» вручну в налаштуваннях системи.';

  @override
  String get allFilesAccessDisabledMessage =>
      'У дозволі відмовлено. Будь ласка, увімкніть «Доступ до всіх файлів» вручну в налаштуваннях системи.';

  @override
  String get settingsLocalLibrary => 'Локальна бібліотека';

  @override
  String get settingsLocalLibrarySubtitle =>
      'Сканування музики та виявлення дублікатів';

  @override
  String get settingsCache => 'Сховище та Кеш';

  @override
  String get settingsCacheSubtitle =>
      'Переглянути розмір і очистити кешовані дані';

  @override
  String get libraryTitle => 'Локальна бібліотека';

  @override
  String get libraryScanSettings => 'Налаштування сканування';

  @override
  String get libraryEnableLocalLibrary => 'Увімкнути локальну бібліотеку';

  @override
  String get libraryEnableLocalLibrarySubtitle =>
      'Скануйте та відстежуйте наявну музику';

  @override
  String get libraryFolder => 'Тека бібліотеки';

  @override
  String get libraryFolderHint => 'Натисніть, щоб вибрати теку';

  @override
  String get libraryAddFolder => 'Додати теку бібліотеки';

  @override
  String get libraryAddFolderSubtitle =>
      'Внутрішня пам’ять, SD-карта, SSD або інший зовнішній накопичувач';

  @override
  String get librarySourceOnline => 'Онлайн';

  @override
  String get librarySourceOffline =>
      'Офлайн. Знову приєднайте сховище, щоб відновити ці треки';

  @override
  String get librarySourceDisabled => 'Вимкнути';

  @override
  String librarySourceScanCount(int scanned, int total, String progress) {
    return '$scanned Of $total файлів проскановано ($progress%)';
  }

  @override
  String get libraryExternalStorage => 'Зовнішнє сховище';

  @override
  String get libraryRemoveFolder => 'Видалити теку бібліотеки';

  @override
  String get libraryRemoveFolderMessage =>
      'Видалити цю теку та її індексовані треки зі Toadplayer? Аудіофайли на сховищі не будуть видалені.';

  @override
  String libraryUnreadableFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count не вдалося прочитати файли',
      one: 'не вдалося прочитати 1 файл',
    );
    return '$_temp0';
  }

  @override
  String get libraryUnreadableFilesTitle => 'Нерозпізнані файли';

  @override
  String get libraryUnreadableFilesSubtitle =>
      'Ці файли не додано до бібліотеки. Вони можуть бути пошкоджені, недозавантажені або заблоковані сховищем.';

  @override
  String get libraryUnreadableFilesAction => 'Переглянути файли та причини';

  @override
  String libraryUnreadableFilesMore(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count файлів не вказано у списку',
      one: '+1 файл не додано до списку',
    );
    return '$_temp0';
  }

  @override
  String get libraryShowDuplicateIndicator => 'Показати індикатор дублікатів';

  @override
  String get libraryShowDuplicateIndicatorSubtitle =>
      'Показувати під час пошуку наявних треків';

  @override
  String get libraryAutoScan => 'Автоматичне сканування';

  @override
  String get libraryAutoScanSubtitle =>
      'Автоматичне сканування бібліотеки на наявність нових файлів';

  @override
  String get libraryAutoScanOff => 'Вимкнено';

  @override
  String get libraryAutoScanOnOpen => 'Кожного разу коли додаток відкривається';

  @override
  String get libraryAutoScanDaily => 'Щоденно';

  @override
  String get libraryAutoScanWeekly => 'Щотижнево';

  @override
  String get libraryActions => 'Дії';

  @override
  String get libraryScan => 'Сканувати бібліотеку';

  @override
  String get libraryScanSubtitle => 'Сканувати для аудіофайлів';

  @override
  String get libraryScanSelectFolderFirst => 'Спочатку виберіть теку';

  @override
  String get libraryCleanupMissingFiles => 'Очищення відсутніх файлів';

  @override
  String get libraryCleanupMissingFilesSubtitle =>
      'Видалити записи для файлів, яких більше не існує';

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
  String get libraryClear => 'Очистити бібліотеку';

  @override
  String get libraryClearSubtitle => 'Видалити всі скановані треки';

  @override
  String get libraryClearConfirmTitle => 'Очистити бібліотеку';

  @override
  String get libraryClearConfirmMessage =>
      'Це видалить усі скановані треки з вашої бібліотеки. Ваші фактичні музичні файли не будуть видалені.';

  @override
  String get libraryAbout => 'Про локальну бібліотеку';

  @override
  String get libraryAboutDescription =>
      'Сканує наявну музичну колекцію для виявлення дублікатів під час завантаження. Підтримує формати FLAC, ALAC, M4A, MP3, Opus, OGG, WAV, AIFF та APE. Метадані зчитуються з тегів файлів, якщо вони доступні.';

  @override
  String libraryTracksUnit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'треків',
      one: 'трек',
    );
    return '$_temp0';
  }

  @override
  String libraryFilesUnit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'файлів',
      one: 'файл',
    );
    return '$_temp0';
  }

  @override
  String libraryLastScanned(String time) {
    return 'Останнє сканування: $time';
  }

  @override
  String get libraryLastScannedNever => 'Ніколи';

  @override
  String get libraryScanning => 'Сканування...';

  @override
  String get libraryScanFinalizing => 'Завершення роботи з бібліотекою...';

  @override
  String get libraryScanPaused => 'Сканування призупинено';

  @override
  String libraryScanProgress(String progress, int total) {
    return '$progress% від $total файлів';
  }

  @override
  String get libraryInLibrary => 'У бібліотеці';

  @override
  String libraryRemovedMissingFiles(int count) {
    return 'Видалено $count відсутніх файлів з бібліотеки';
  }

  @override
  String get libraryCleared => 'Бібліотека очищена';

  @override
  String get libraryStorageAccessRequired => 'Потрібен доступ до сховища';

  @override
  String get libraryStorageAccessMessage =>
      'Toadplayer потрібен доступ до сховища для сканування вашої музичної бібліотеки. Надайте дозвіл у налаштуваннях.';

  @override
  String get librarySourceDownloaded => 'Завантажені';

  @override
  String get librarySourceLocal => 'Локальні';

  @override
  String get libraryFilterAll => 'Усі';

  @override
  String get libraryReEnrichAll => 'Оновити метадані всіх треків';

  @override
  String get libraryReEnrichAllSubtitle =>
      'Знайти й заповнити метадані для кожного треку в Бібліотеці, а потім переглянути зміни';

  @override
  String get libraryReEnrichAllEmpty =>
      'Немає треків для оновлення. Треки з мережевих джерел не враховуються.';

  @override
  String get libraryReEnrichAllBusy =>
      'Зачекайте, поки завершиться сканування Бібліотеки, а потім спробуйте знову.';

  @override
  String get libraryFilterDownloaded => 'Завантажені';

  @override
  String get libraryFilterLocal => 'Локальні';

  @override
  String get libraryFilterTitle => 'Фільтри';

  @override
  String get libraryFilterReset => 'Скинути';

  @override
  String get libraryFilterApply => 'Застосувати';

  @override
  String get libraryFilterSource => 'Джерело';

  @override
  String get libraryFilterQuality => 'Якість';

  @override
  String get libraryFilterQualityHiRes => 'Hi-Res (24bit)';

  @override
  String get libraryFilterQualityCD => 'CD (16bit)';

  @override
  String get libraryFilterQualityLossy => 'Lossy';

  @override
  String get libraryFilterFormat => 'Формат';

  @override
  String get libraryFilterMetadata => 'Метадані';

  @override
  String get libraryFilterMetadataComplete => 'Повні метадані';

  @override
  String get libraryFilterMetadataMissingAny => 'Відсутні будь-які метадані';

  @override
  String get libraryFilterMetadataMissingYear => 'Відсутній рік';

  @override
  String get libraryFilterMetadataMissingGenre => 'Відсутній жанр';

  @override
  String get libraryFilterMetadataMissingAlbumArtist =>
      'Відсутній виконавець альбому';

  @override
  String get libraryFilterSort => 'Сортувати';

  @override
  String get libraryFilterSortLatest => 'Найновіші';

  @override
  String get libraryFilterSortOldest => 'Найстаріші';

  @override
  String get libraryFilterSortSizeLargest => 'Розмір (спочатку більші)';

  @override
  String get libraryFilterSortSizeSmallest => 'Розмір (спочатку менші)';

  @override
  String get libraryFilterSortAlbumAsc => 'Альбом (A-Z)';

  @override
  String get libraryFilterSortAlbumDesc => 'Альбом (Z-A)';

  @override
  String get libraryFilterSortGenreAsc => 'Жанр (A-Z)';

  @override
  String get libraryFilterSortGenreDesc => 'Жанр (Z-A)';

  @override
  String get timeJustNow => 'Щойно';

  @override
  String timeMinutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count хвилин тому',
      one: '1 хвилину тому',
    );
    return '$_temp0';
  }

  @override
  String timeHoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count годин тому',
      one: '1 годину тому',
    );
    return '$_temp0';
  }

  @override
  String get tutorialWelcomeTitle => 'Ласкаво просимо до Toadplayer!';

  @override
  String get tutorialWelcomeDesc =>
      'Дізнайтеся, як знаходити музику за допомогою розширень, вибирати потрібну якість і керувати завантаженнями у Toadplayer.';

  @override
  String get tutorialWelcomeTip1 =>
      'Пошук за допомогою встановленого розширення або вставлення посилання на підтримувану музику';

  @override
  String get tutorialWelcomeTip2 =>
      'Оберіть один із варіантів якості аудіо, запропонованих вашим провайдером послуг завантаження';

  @override
  String get tutorialWelcomeTip3 =>
      'Автоматично вбудовуйте метадані, обкладинки, тексти пісень та інформацію про реліз';

  @override
  String get tutorialSearchTitle => 'Пошук музики';

  @override
  String get tutorialSearchDesc =>
      'Виконайте пошук за допомогою вибраного розширення або вставте посилання на музику, що підтримується.';

  @override
  String get tutorialDownloadTitle => 'Завантаження музики';

  @override
  String get tutorialDownloadDesc =>
      'Виберіть доступну якість, розпочніть завантаження та стежте за його перебігом у черзі.';

  @override
  String get tutorialLibraryTitle => 'Ваша бібліотека';

  @override
  String get tutorialLibraryDesc =>
      'Завантажену та локально заскановану музику впорядковано у вашій бібліотеці.';

  @override
  String get tutorialLibraryTip1 =>
      'Керуйте активними, очікуваними та завершеними завантаженнями в черзі бібліотеки';

  @override
  String get tutorialLibraryTip2 =>
      'Торкніться треку, щоб відтворити його за допомогою вбудованого програвача';

  @override
  String get tutorialLibraryTip3 =>
      'Переглядайте треки, альбоми та списки відтворення у списку або в сітках перегляду';

  @override
  String get tutorialExtensionsTitle => 'Розширення';

  @override
  String get tutorialExtensionsDesc =>
      'Розширення додають функції пошуку, завантаження, роботи з метаданими, метаданих і резервних варіантів.';

  @override
  String get tutorialExtensionsTip1 =>
      'Перегляньте вкладку «Репозиторій», щоб знайти корисні розширення';

  @override
  String get tutorialExtensionsTip2 =>
      'Виберіть провайдерів для пошуку, завантаження, метаданих і резервних варіантів';

  @override
  String get tutorialExtensionsTip3 =>
      'Підключайте облікові записи за потреби та підтримуйте розширення в актуальному стані';

  @override
  String get tutorialSettingsTitle => 'Налаштуйте свій досвід';

  @override
  String get tutorialSettingsDesc =>
      'Налаштуйте параметри завантаження, відтворення, роботи з бібліотекою, зовнішнього вигляду та зберігання.';

  @override
  String get tutorialSettingsTip1 =>
      'Змініть місце завантаження та об\'єднання тек';

  @override
  String get tutorialSettingsTip2 =>
      'Налаштуйте параметри якості, паралельної обробки, імен файлів та конвертації';

  @override
  String get tutorialSettingsTip3 =>
      'Налаштуйте тему та зовнішній вигляд програми';

  @override
  String get tutorialReadyMessage =>
      'Ви готові. Виберіть розширення, а потім виконайте пошук або вставте підтримуване посилання.';

  @override
  String whatsNewIntroTitle(String version) {
    return 'Toadplayer $version вже тут';
  }

  @override
  String get whatsNewIntroDesc =>
      'Наше найбільше оновлення! Ось короткий огляд того, що нового.';

  @override
  String get whatsNewLinkTitle => 'Toadplayer Link';

  @override
  String get whatsNewLinkDesc =>
      'Під\'єднайте телефон і комп\'ютер до однієї мережі. Toadplayer Link перебуває на стадії бета-тестування.';

  @override
  String get whatsNewLinkPlayTitle => 'Слухайте на різних пристроях';

  @override
  String get whatsNewLinkPlayBody =>
      'Переглядайте бібліотеку комп\'ютера з телефона, керуйте відтворенням та переходьте з пристрою на пристрій без втрати поточної позиції.';

  @override
  String get whatsNewLinkTransferTitle => 'Двостороннє перенесення пісень';

  @override
  String get whatsNewLinkTransferBody =>
      'Надсилайте пісні на комп\'ютер або зберігайте їх на телефон прямо з меню пісні.';

  @override
  String get whatsNewLinkSyncTitle => 'Завжди в синхроні';

  @override
  String get whatsNewLinkSyncBody =>
      'Колекції та історія прослуховування залишаються однаковими на підключених пристроях.';

  @override
  String get whatsNewHomeTitle => 'Головна Сторінка, що вчиться';

  @override
  String get whatsNewHomeDesc =>
      'Мікси та автовідтворення тепер підлаштовуються під те, як ви насправді слухаєте музику.';

  @override
  String get whatsNewHomeMixesTitle => 'Мікси з вашої бібліотеки';

  @override
  String get whatsNewHomeMixesBody =>
      'Нові мікси, створені на основі ваших власних пісень, зокрема окремий мікс для кожного жанру.';

  @override
  String get whatsNewHomeAutoplayTitle => 'Розумніше автовідтворення';

  @override
  String get whatsNewHomeAutoplayBody =>
      'Автовідтворення підлаштовується під вашу поточну сесію та вчиться на основі улюблених треків, списків відтворення і повторів.';

  @override
  String get whatsNewHomeAnalysisTitle => 'Аналіз пісні';

  @override
  String get whatsNewHomeAnalysisBody =>
      'Toadplayer може аналізувати звучання ваших пісень для точнішого підбору схожої музики. Функція вимкнена, поки ви не увімкнете її в Налаштуваннях.';

  @override
  String get whatsNewPlayerTitle => 'Програвач і тексти пісень';

  @override
  String get whatsNewPlayerDesc =>
      'Плавне відтворення, та тексти пісень усіма мовами.';

  @override
  String get whatsNewPlayerGaplessTitle => 'Відтворення без пауз';

  @override
  String get whatsNewPlayerGaplessBody =>
      'Пісні в альбомах відтворюються безперервно, плавно переходячи від однієї до наступної без пауз.';

  @override
  String get whatsNewPlayerTranslateTitle => 'Переклад тексту пісні';

  @override
  String get whatsNewPlayerTranslateBody =>
      'Перекладайте або романізуйте тексти пісень за допомогою налаштованого вами ШІ-провайдера.';

  @override
  String get whatsNewPlayerTimingTitle => 'Таймінг тексту';

  @override
  String get whatsNewPlayerTimingBody =>
      'Зсувайте синхронізований текст вперед або назад, якщо він розбігається з піснею.';

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
  String get libraryForceFullScan => 'Примусове повне сканування';

  @override
  String get libraryForceFullScanSubtitle =>
      'Пересканувати всі файли, ігноруючи кеш';

  @override
  String get cleanupOrphanedDownloads => 'Очищення застарілих завантажень';

  @override
  String get cleanupOrphanedDownloadsSubtitle =>
      'Видалити записи історії для файлів, яких більше не існує';

  @override
  String cleanupOrphanedDownloadsResult(int count) {
    return 'Видалено $count утрачених записів з історії';
  }

  @override
  String get cleanupOrphanedDownloadsNone => 'Не знайдено утрачених записів';

  @override
  String get cacheTitle => 'Зберігання та кеш';

  @override
  String get cacheSummaryTitle => 'Огляд кешу';

  @override
  String get cacheSummarySubtitle =>
      'Очищення кешу не призведе до видалення завантажених музичних файлів.';

  @override
  String cacheEstimatedTotal(String size) {
    return 'Орієнтовне використання кешу: $size';
  }

  @override
  String get cacheSectionStorage => 'Кешовані дані';

  @override
  String get cacheSectionMaintenance => 'Технічне обслуговування';

  @override
  String get cacheAppDirectory => 'Каталог кешу додатка';

  @override
  String get cacheAppDirectoryDesc =>
      'HTTP-відповіді, дані WebView та інші тимчасові дані додатків.';

  @override
  String get cacheTempDirectory => 'Тимчасовий каталог';

  @override
  String get cacheTempDirectoryDesc =>
      'Тимчасові файли із завантажень та конвертації аудіо.';

  @override
  String get cacheCoverImage => 'Кеш зображень обкладинок';

  @override
  String get cacheCoverImageDesc =>
      'Завантажено обкладинку альбому та треку. Завантаження відбудеться повторно після перегляду.';

  @override
  String get cacheLibraryCover => 'Кеш бібліотеки обкладинок';

  @override
  String get cacheLibraryCoverDesc =>
      'Обкладинку витягнуто з локальних музичних файлів. Буде повторно витягнуто під час наступного сканування.';

  @override
  String get libraryPlaybackNormalization => 'Нормалізація звуку';

  @override
  String get libraryPlaybackNormalizationSubtitle =>
      'Вирівнюйте гучність між треками, використовуючи теги ReplayGain або R128 за їх наявності';

  @override
  String get playbackNormalizationMode => 'Режим підсилення';

  @override
  String get playbackNormalizationModeTrack => 'Трек';

  @override
  String get playbackNormalizationModeAlbum => 'Альбом';

  @override
  String get playbackNormalizationPreamp => 'Попереднє підсилення';

  @override
  String playbackNormalizationPreampValue(String gain, String target) {
    return '$gain DB (Ціль $target LUFS)';
  }

  @override
  String get playbackNormalizationPreampHint =>
      'Нижчі значення звучать тихіше. Нормалізація лише збавляє гучність треків, що запобігає перевантаженню звуку.';

  @override
  String get cacheAudioAnalysis => 'Кеш аудіо аналізу';

  @override
  String get cacheAudioAnalysisDesc =>
      'Збережено спектрограми та результати аналізу. Повторний аналіз буде виконано під час наступного відкриття.';

  @override
  String get cacheExploreFeed => 'Огляд кешу стрічки';

  @override
  String get cacheExploreFeedDesc =>
      'Переглянути вміст вкладки (нові випуски, тренди). Оновиться під час наступного відвідування.';

  @override
  String get cacheTrackLookup => 'Відстеження кешу пошуку';

  @override
  String get cacheTrackLookupDesc =>
      'Пошук ідентифікаторів треків Spotify/Deezer. Очищення може уповільнити наступні кілька пошуків.';

  @override
  String get cacheCleanupUnusedDesc =>
      'Видалити історію втрачених завантажень та записи бібліотеки для відсутніх файлів.';

  @override
  String get cacheNoData => 'Кешованих даних немає';

  @override
  String cacheSizeWithFiles(String size, int count) {
    return '$size У $count файлах';
  }

  @override
  String cacheSizeOnly(String size) {
    return '$size';
  }

  @override
  String cacheEntries(int count) {
    return '$count Записів';
  }

  @override
  String cacheClearSuccess(String target) {
    return 'Очищено: $target';
  }

  @override
  String get cacheClearConfirmTitle => 'Очистити кеш?';

  @override
  String cacheClearConfirmMessage(String target) {
    return 'Це очистить кешовані дані для $target. Завантажені музичні файли не будуть видалені.';
  }

  @override
  String get cacheClearAllConfirmTitle => 'Очистити увесь кеш?';

  @override
  String get cacheClearAllConfirmMessage =>
      'Це очистить усі категорії кешу на цій сторінці. Завантажені музичні файли не будуть видалені.';

  @override
  String get cacheClearAll => 'Очистити весь кеш';

  @override
  String get cacheCleanupUnused => 'Очищення невикористаних даних';

  @override
  String get cacheCleanupUnusedSubtitle =>
      'Видалити історію утрачених завантажень файлів та відсутні записи бібліотеки';

  @override
  String cacheCleanupResult(int downloadCount, int libraryCount) {
    return 'Очищення завершено: $downloadCount утрачених завантажень, $libraryCount відсутніх записів бібліотеки';
  }

  @override
  String get cacheRefreshStats => 'Оновити статистику';

  @override
  String get trackSaveCoverArt => 'Зберегти обкладинку';

  @override
  String get trackSaveLyrics => 'Зберегти текст пісні (.lrc)';

  @override
  String get trackSaveLyricsProgress => 'Збереження тексту пісні...';

  @override
  String get trackReEnrich => 'Оновити інформацію';

  @override
  String get trackReEnrichBatchSubtitle =>
      'Виберіть онлайн оновлення або оновлення вручну, а потім перегляньте всі зміни перед записом';

  @override
  String get trackReEnrichFieldCover => 'Обкладинка';

  @override
  String get trackReEnrichFieldLyrics => 'Тексти пісень';

  @override
  String get trackReEnrichFieldBasicTags => 'Альбом, Виконавець альбому';

  @override
  String get trackReEnrichFieldTrackInfo => 'Номер треку та диска';

  @override
  String get trackReEnrichFieldReleaseInfo => 'Дата та ISRC';

  @override
  String get trackReEnrichFieldExtra => 'Жанр, Обкладинка, Авторське право';

  @override
  String get trackReEnrichSelectAll => 'Вибрати все';

  @override
  String get trackReEnrichModeIsrc => 'Тільки ISRC';

  @override
  String get trackReEnrichModeIsrcSubtitle =>
      'Знайдіть і додайте ідентифікатор запису, не змінюючи інших міток';

  @override
  String get trackReEnrichModeMissing => 'Заповнити відсутні теги';

  @override
  String get trackReEnrichModeMissingSubtitle =>
      'Зберігати наявні значення та заповнювати тільки поля, які є порожніми';

  @override
  String get trackReEnrichModeReplace => 'Оновити вибрані теги';

  @override
  String get trackReEnrichModeReplaceSubtitle =>
      'Виберіть онлайн-оновлення або оновлення вручну, а потім перегляньте всі зміни перед записом';

  @override
  String get trackReEnrichModeManual => 'Установити загальні значення';

  @override
  String get trackReEnrichModeManualSubtitle =>
      'Застосувати одне й те ж значення до кожного обраного маршруту';

  @override
  String get trackReEnrichManualFieldsTitle => 'Значення для застосування';

  @override
  String get trackReEnrichManualHint =>
      'Залиште поле порожнім, щоб зберегти своє поточне значення. Назва маршруту, цифри та ISRC не змінюються.';

  @override
  String get trackReEnrichFieldsTitle => 'Теги для оновлення';

  @override
  String get trackReEnrichReview => 'Переглянути зміни';

  @override
  String get trackReEnrichReviewTitle => 'Переглянути зміни метаданих';

  @override
  String trackReEnrichReviewSubtitle(int changeCount, int trackCount) {
    return '$changeCount Запропоновані зміни в межах $trackCount треків';
  }

  @override
  String get trackReEnrichNoChanges =>
      'Для вибраних треків не виявлено змін у метаданих.';

  @override
  String get trackReEnrichApplyChanges => 'Застосувати зміни';

  @override
  String get trackReEnrichRefreshOnline => 'Оновити з мережі';

  @override
  String get trackEditMetadata => 'Редагувати метадані';

  @override
  String trackCoverSaved(String fileName) {
    return 'Обкладинку збережено до $fileName';
  }

  @override
  String get trackCoverNoSource => 'Джерело обкладинки недоступне';

  @override
  String trackLyricsSaved(String fileName) {
    return 'Текст пісні збережено в $fileName';
  }

  @override
  String get trackReEnrichProgress => 'Повторне оновлення метаданих...';

  @override
  String get trackReEnrichSearching => 'Пошук метаданих в Інтернеті...';

  @override
  String get trackReEnrichPreparing => 'Переглянути зміни метаданих...';

  @override
  String get trackReEnrichSuccess => 'Метадані успішно оновлено';

  @override
  String get trackReEnrichMetadataSaved => 'Метадані збережені';

  @override
  String get trackReEnrichLyricsUpdated => 'Текст оновлено';

  @override
  String get trackReEnrichLyricsPreserved =>
      'Нові тексти пісень не знайдено; наявні тексти пісень зберігаються';

  @override
  String get trackReEnrichLyricsDisabled =>
      'Не оновлені тексти: завантаження текстів у налаштуваннях вимкнено';

  @override
  String get trackReEnrichFfmpegFailed =>
      'Не вдалося вбудувати метадані FFmpeg';

  @override
  String get queueFlacAction => 'Черга FLAC';

  @override
  String queueFlacConfirmMessage(int count) {
    return 'Пошук онлайн-збігів для вибраних треків та додавання завантажень FLAC до черги.\n\nЩо існують файли не будуть змінені або видалені.\n\nАвтоматично додаються до черги лише збіги з високою ймовірністю.\n\n$count Вибрано';
  }

  @override
  String get queueFlacNoReliableMatches =>
      'Не знайдено надійних онлайн-відповідей для вибраного запиту';

  @override
  String queueFlacQueuedWithSkipped(int addedCount, int skippedCount) {
    return 'Додано $addedCount треків до черги, пропущено $skippedCount';
  }

  @override
  String trackSaveFailed(String error) {
    return 'Не вдалося: $error';
  }

  @override
  String get trackConvertFormat => 'Конвертувати формат';

  @override
  String get trackConvertTitle => 'Конвертувати аудіо';

  @override
  String get trackConvertTargetFormat => 'Цільовий формат';

  @override
  String get trackConvertBitrate => 'Бітрейт';

  @override
  String get trackConvertKeepOriginal => 'Зберегти оригінальний файл';

  @override
  String get trackConvertKeepOriginalDescription =>
      'Додати конвертований файл як окремий запис в бібліотеці';

  @override
  String get trackConvertConfirmTitle => 'Підтвердити конверсію';

  @override
  String trackConvertConfirmMessage(
    String sourceFormat,
    String targetFormat,
    String bitrate,
  ) {
    return 'Конвертувати з $sourceFormat в $targetFormat зі швидкістю $bitrate?\n\nОригінальний файл буде видалено після конвертації.';
  }

  @override
  String trackConvertConfirmMessageLossless(
    String sourceFormat,
    String targetFormat,
  ) {
    return 'Конвертувати з $sourceFormat у $targetFormat? (Lossless — без втрати якості)\n\nОригінальний файл буде видалено після конвертації.';
  }

  @override
  String trackConvertConfirmKeepOriginal(
    String sourceFormat,
    String targetFormat,
  ) {
    return 'Конвертувати з $sourceFormat в $targetFormat?\n\nОригінальний файл буде збережений, а конвертований файл буде додано як окремий запис у бібліотеці.';
  }

  @override
  String get trackConvertLosslessHint =>
      'Lossless конвертація — без втрати якості';

  @override
  String get trackConvertConverting => 'Конвертування аудіо...';

  @override
  String trackConvertSuccess(String format) {
    return 'Конвертовано в $format успішно';
  }

  @override
  String get trackConvertFailed => 'Конвертація не вдалася';

  @override
  String get cueSplitTitle => 'Розділений аркуш CUE';

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
    return '$count Треків';
  }

  @override
  String get cueSplitConfirmTitle => 'Розділений альбом CUE';

  @override
  String cueSplitConfirmMessage(String album, int count) {
    return 'Розділити \"$album\" на $count окремих FLAC-файлів?\n\nФайли будуть збережені в одному каталозі.';
  }

  @override
  String cueSplitSplitting(int current, int total) {
    return 'Розділення аркуша CUE... ($current/$total)';
  }

  @override
  String cueSplitSuccess(int count) {
    return 'Розділено на $count треки успішно';
  }

  @override
  String get cueSplitFailed => 'Розділення CUE не вдалося';

  @override
  String get cueSplitNoAudioFile =>
      'Аудіофайл для цього аркуша CUE не знайдено';

  @override
  String get cueSplitButton => 'Розділити на треки';

  @override
  String get actionCreate => 'Створити';

  @override
  String get collectionFoldersTitle => 'Мої теки';

  @override
  String get collectionWishlist => 'Список бажань';

  @override
  String get collectionLoved => 'Вподобані';

  @override
  String get collectionFavoriteArtists => 'Улюблені Виконавці';

  @override
  String get collectionPlaylist => 'Список відтворення';

  @override
  String get collectionAddToPlaylist => 'Додати до списку відтворення';

  @override
  String get collectionCreatePlaylist => 'Створити список треків';

  @override
  String get collectionNoPlaylistsYet => 'Поки що немає списків відтворення';

  @override
  String collectionPlaylistTracks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count треків',
      one: '1 трек',
    );
    return '$_temp0';
  }

  @override
  String collectionArtistCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count виконавці',
      one: '1 виконавець',
    );
    return '$_temp0';
  }

  @override
  String collectionAddedToPlaylist(String playlistName) {
    return 'Додано до \"$playlistName\"';
  }

  @override
  String collectionAlreadyInPlaylist(String playlistName) {
    return 'Вже у списку відтворення \"$playlistName\"';
  }

  @override
  String get collectionPlaylistNameHint => 'Назва списку відтворення';

  @override
  String get collectionPlaylistNameRequired =>
      'Потрібно вказати назву списку відтворення';

  @override
  String get collectionRenamePlaylist => 'Перейменувати список відтворення';

  @override
  String get collectionDeletePlaylist => 'Видалити список відтворення';

  @override
  String get collectionPlaylistRenamed => 'Список відтворення перейменовано';

  @override
  String get collectionWishlistEmptyTitle => 'Список бажань порожній';

  @override
  String get collectionWishlistEmptySubtitle =>
      'Натисніть + на треках, щоб зберегти те, що ви хочете завантажити пізніше';

  @override
  String get collectionLovedEmptyTitle => 'Тека \"Улюблені\" порожня';

  @override
  String get collectionLovedEmptySubtitle =>
      'Натисніть «Подобається» на треках, щоб зберегти у свої улюблені';

  @override
  String get collectionFavoriteArtistsEmptyTitle =>
      'Немає улюблених виконавців';

  @override
  String get collectionFavoriteArtistsEmptySubtitle =>
      'Натисніть на серце на сторінці виконавця, щоб зберегти його тут';

  @override
  String get collectionPlaylistEmptyTitle => 'Список відтворення порожній';

  @override
  String get collectionPlaylistEmptySubtitle =>
      'Тривале натискання + на будь-якій доріжці додасть її сюди';

  @override
  String get collectionRemoveFromPlaylist => 'Видалити зі списку відтворення';

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
  String get collectionRemoveFromFolder => 'Видалити з теки';

  @override
  String collectionAddedToLoved(String trackName) {
    return '\"$trackName\" додано до списку улюблених';
  }

  @override
  String collectionRemovedFromLoved(String trackName) {
    return '\"$trackName\" видалено з уподобань';
  }

  @override
  String collectionAddedToWishlist(String trackName) {
    return '\"$trackName\" додано до списку бажань';
  }

  @override
  String collectionRemovedFromWishlist(String trackName) {
    return '\"$trackName\" видалено зі списку бажань';
  }

  @override
  String collectionAddedToFavoriteArtists(String artistName) {
    return '\"$artistName\" видалено з улюблених Виконавців';
  }

  @override
  String collectionRemovedFromFavoriteArtists(String artistName) {
    return '\"$artistName\" видалено з улюблених Виконавців';
  }

  @override
  String get trackOptionAddToLoved => 'Додати до улюблених';

  @override
  String get trackOptionRemoveFromLoved => 'Видалити з улюблених';

  @override
  String get trackOptionAddToWishlist => 'Додати до списку бажань';

  @override
  String get trackOptionRemoveFromWishlist => 'Видалити зі списку бажань';

  @override
  String get artistOptionAddToFavorites => 'Додати до улюблених Виконавців';

  @override
  String get artistOptionRemoveFromFavorites =>
      'Видалено з улюблених Виконавців';

  @override
  String get collectionPlaylistChangeCover => 'Змінити зображення обкладинки';

  @override
  String get collectionPlaylistRemoveCover => 'Видалити зображення обкладинки';

  @override
  String selectionConvertCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'треків',
      one: 'трек',
    );
    return 'Конвертувати $count $_temp0';
  }

  @override
  String get selectionConvertNoConvertible =>
      'Трансформованих треків не вибрано';

  @override
  String get selectionBatchConvertConfirmTitle => 'Пакетне конвертування';

  @override
  String selectionBatchConvertConfirmMessage(
    int count,
    String format,
    String bitrate,
  ) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'треків',
      one: 'трек',
    );
    return 'Конвертувати $count $_temp0 у $format з $bitrate?\n\nОригінальні файли будуть видалені після конвертації.';
  }

  @override
  String selectionBatchConvertConfirmMessageLossless(int count, String format) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'треків',
      one: 'трек',
    );
    return 'Конвертувати $count $_temp0 у $format? (Lossless — без втрати якості)\n\nОригінальні файли будуть видалені після конвертації.';
  }

  @override
  String selectionBatchConvertConfirmKeepOriginal(int count, String format) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'треків',
      few: 'треки',
      one: 'трек',
    );
    return 'Конвертувати $count $_temp0 у $format?\n\nОригінальні файли буде збережено, а конвертовані — додано як окремі записи до медіатеки.';
  }

  @override
  String selectionBatchConvertSuccess(int success, int total, String format) {
    return 'Конвертовано $success з $total треків у $format';
  }

  @override
  String downloadedAlbumDownloadedCount(int count) {
    return '$count Завантажено';
  }

  @override
  String get downloadUseAlbumArtistForFoldersAlbumSubtitle =>
      'Тека з ім\'ям виконавця альбому';

  @override
  String get downloadUseAlbumArtistForFoldersTrackSubtitle =>
      'Тека з іменем виконавця пісні';

  @override
  String get lyricsProvidersTitle => 'Пріоритет джерела текстів пісень';

  @override
  String get lyricsProvidersDescription =>
      'Увімкнення, вимкнення та зміна порядку джерел текстів пісень. Провайдери перевірятимуть зверху вниз, доки не буде знайдено текст пісні.';

  @override
  String get lyricsProvidersInfoText =>
      'Провайдери текстів пісень із розширень працюють перед вбудованими провайдерами. Принаймні один провайдер має залишатися ввімкненим.';

  @override
  String lyricsProvidersEnabledSection(int count) {
    return 'Увімкнено ($count)';
  }

  @override
  String lyricsProvidersDisabledSection(int count) {
    return 'Вимкнено ($count)';
  }

  @override
  String get lyricsProvidersAtLeastOne =>
      'Принаймні один провайдер має залишатися ввімкненим';

  @override
  String get lyricsProvidersSaved =>
      'Пріоритет провайдера текстів пісень збережено';

  @override
  String get lyricsProvidersDiscardContent =>
      'У вас є незбережені зміни, які буде втрачено.';

  @override
  String get lyricsProviderLrclibDesc =>
      'Синхронізована база даних текстів пісень з відкритим кодом';

  @override
  String get lyricsProviderNeteaseDesc =>
      'NetEase Cloud Music (добре підходить для азійських пісень)';

  @override
  String get lyricsProviderMusixmatchDesc =>
      'Найбільша база даних текстів пісень (багатомовна)';

  @override
  String get lyricsProviderAppleMusicDesc =>
      'Синхронізовані тексти пісень слово за словом (через проксі)';

  @override
  String get lyricsProviderQqMusicDesc =>
      'QQ Music (добре підходить для китайських пісень, прямий API)';

  @override
  String get lyricsProviderLyricsPlusDesc =>
      'Текст пісні для караоке (послідовний показ слів; Apple / Musixmatch / Spotify / QQ, через проксі)';

  @override
  String get lyricsProviderToadLrcDesc =>
      'Синхронізація послівного тексту Apple Music через Toad-LRC';

  @override
  String get lyricsProviderLrcRedDesc =>
      'Порядкові тексти Apple Music, синхронізовані із записом';

  @override
  String get lyricsProviderBetterLyricsDesc =>
      'Синхронний текст популярних пісень в Apple Music';

  @override
  String get lyricsProviderExtensionDesc => 'Провайдер розширень';

  @override
  String get safMigrationTitle => 'Потрібне оновлення сховища';

  @override
  String get safMigrationMessage1 =>
      'Toadplayer тепер використовує Android Storage Access Framework (SAF) для завантажень. Це виправляє помилки «відмовлено в доступі» на Android 10+.';

  @override
  String get safMigrationMessage2 =>
      'Будь ласка, виберіть теку завантажень ще раз, щоб перейти до нової системи зберігання.';

  @override
  String get safMigrationSuccess => 'Тека завантажень оновлено до режиму SAF';

  @override
  String get settingsDonate => 'Підтримати розробника';

  @override
  String get settingsDonateSubtitle => 'Пригостіть розробника кавою';

  @override
  String get settingsBackup => 'Резервування та відновлення';

  @override
  String get settingsBackupSubtitle =>
      'Перемістити вашу бібліотеку, історію та налаштування на новий пристрій';

  @override
  String get backupTitle => 'Резервування та відновлення';

  @override
  String get backupExportSectionTitle => 'Створити резервну копію';

  @override
  String get backupExportSectionDescription =>
      'Збережіть свої налаштування, історію завантажень, вподобані треки, список бажань, улюблених виконавців і список треків в один файл, який можна зберегти або перенести на інший телефон.';

  @override
  String get backupExportButton => 'Створити файл резервної копії';

  @override
  String get backupImportSectionTitle => 'Відновити резервну копію';

  @override
  String get backupImportSectionDescription =>
      'Виберіть файл резервної копії, щоб відновити дані. Це замінить поточні налаштування, історію та бібліотеку на цьому пристрої.';

  @override
  String get backupImportButton => 'Виберіть файл резервної копії';

  @override
  String get backupCreated => 'Резервну копію створено';

  @override
  String get backupCreateFailed => 'Не вдалося створити резервну копію';

  @override
  String get backupRestoreConfirmTitle => 'Відновити цю резервну копію?';

  @override
  String get backupRestoreConfirmButton => 'Відновити';

  @override
  String get backupRestored => 'Резервну копію успішно відновлено';

  @override
  String get backupRestoreFailed => 'Не вдалося відновити резервну копію';

  @override
  String get backupInvalidFile =>
      'Цей файл не є дійсною резервною копією Toadplayer';

  @override
  String get backupRestoreRestartHint =>
      'Перезапустіть програму, щоб переконатися, що всі зміни застосовано.';

  @override
  String get backupContentsTitle => 'Вміст резервної копії';

  @override
  String get backupSettingsOnly => 'Тільки налаштування';

  @override
  String get backupSelectHistory => 'Історія завантажень';

  @override
  String get backupSelectCollections => 'Колекції бібліотек';

  @override
  String get backupSelectCollectionsDescription =>
      'Вподобані треки, список бажань, улюблені виконавці, списки відтворення та обкладинки списку треків.';

  @override
  String get backupSelectExtensions => 'Розширення та їх налаштування';

  @override
  String get backupSelectedExportDescription =>
      'Зберегти вибрані категорії в файл резервної копії. Аудіофайли не включені.';

  @override
  String get backupSelectAtLeastOne =>
      'Виберіть принаймні одну категорію, для створення резервної копії.';

  @override
  String get backupSelectedRestoreMessage =>
      'Буде відновлено лише категорії, перелічені нижче. Категорії, не включені до цієї резервної копії, залишаться без змін. Процес відновлення може замінити наявні дані; скасувати цю дію неможливо.';

  @override
  String get backupContentsSettings => 'Налаштування додатку';

  @override
  String backupContentsHistory(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'елементи',
      one: 'елемент',
    );
    return '$count історію $_temp0';
  }

  @override
  String backupContentsLiked(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'треків',
      one: 'трек',
    );
    return '$count вподобали $_temp0';
  }

  @override
  String backupContentsWishlist(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'треків',
      one: 'трек',
    );
    return '$count список бажань $_temp0';
  }

  @override
  String backupContentsPlaylists(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count списки треків',
      one: '1 список треків',
    );
    return '$_temp0';
  }

  @override
  String backupContentsArtists(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count улюблені виконавці',
      one: '1 улюблений виконавець',
    );
    return '$_temp0';
  }

  @override
  String backupContentsExtensions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count розширення',
      one: '1 розширення',
    );
    return '$_temp0';
  }

  @override
  String get backupIncludeSecrets => 'Додайте облікові дані розширення';

  @override
  String get backupIncludeSecretsDescription =>
      'Токени та ключі API з розширень будуть збережені у файлі резервної копії. Зберігайте цей файл у безпечному місці. Якщо цю опцію вимкнено, вам доведеться ввести їх знову після відновлення.';

  @override
  String backupExtensionsRestoreFailed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'розширень',
      one: 'розширення',
    );
    return '$count $_temp0 не вдалося перевстановити. Встановіть їх вручну з репозиторію.';
  }

  @override
  String get tooltipLoveAll => 'Уподобати всіх';

  @override
  String get tooltipAddToPlaylist => 'Додати до списку відтворення';

  @override
  String snackbarRemovedTracksFromLoved(int count) {
    return 'Видалено $count треків з уподобань';
  }

  @override
  String snackbarAddedTracksToLoved(int count) {
    return 'Додано $count треків до списку \"Улюблені\"';
  }

  @override
  String get dialogDownloadAllTitle => 'Завантажити все';

  @override
  String dialogDownloadAllMessage(int count) {
    return 'Завантажити $count треків?';
  }

  @override
  String get homeSkipAlreadyDownloaded => 'Пропустити вже завантажені пісні';

  @override
  String get homeGoToAlbum => 'Перейти до альбому';

  @override
  String get homeAlbumInfoUnavailable => 'Інформація про альбом недоступна';

  @override
  String get snackbarLoadingCueSheet => 'Завантаження аркуша CUE...';

  @override
  String get snackbarMetadataSaved => 'Метадані успішно збережено';

  @override
  String get snackbarFailedToEmbedLyrics => 'Не вдалося вставити текст пісні';

  @override
  String get snackbarFailedToWriteStorage =>
      'Не вдалося перезаписати у сховище';

  @override
  String snackbarError(String error) {
    return 'Помилка: $error';
  }

  @override
  String get snackbarNoActionDefined =>
      'Для цієї кнопки не визначено жодної дії';

  @override
  String get noTracksFoundForAlbum =>
      'Для цього альбому не знайдено жодних треків';

  @override
  String get downloadLocationSubtitle =>
      'Виберіть місце для збереження завантажених треків';

  @override
  String get storageAutomaticFolder => 'Автоматична тека';

  @override
  String get storageAutomaticDownloadFolder =>
      'Використовує теку Завантаженн/Toadplayer, якщо вона доступна для запису; в іншому разі: сховище застосунку';

  @override
  String get storageSafRecommended => 'Виберіть теку (рекомендовано)';

  @override
  String get storageDownloadFolderHint =>
      'У засобі вибору тек Android відкрийте теку Завантаження і виберіть Toadplayer. Якщо її немає, створіть її за допомогою опції «Нова тека», а потім натисніть «Використовувати цю теку», щоб надати доступ.';

  @override
  String get downloadFolderAccessLostTitle =>
      'Втрачено доступ до теки завантажень';

  @override
  String get downloadFolderAccessLostSubtitle =>
      'Завантаження не вдасться, поки ви не оберете теку';

  @override
  String get downloadFolderReselect => 'Обрати теку повторно';

  @override
  String get downloadErrorSafPermissionLost =>
      'Доступ до SAF недійсний або відкликаний. Будь ласка, переналаштуйте розташування завантаження в налаштуваннях.';

  @override
  String get downloadErrorFolderAccessLost =>
      'Втрачено доступ до теки завантажень. Будь ласка, повторно виберіть теку завантажень у налаштуваннях.';

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
    return 'Використовуйте $artist, $title, $album, $track, $year, $date, $disc як заповнювачі.';
  }

  @override
  String get downloadFilenameInsertTag => 'Натисніть, щоб вставити тег:';

  @override
  String get downloadSeparateSinglesEnabled =>
      'Сингли та мініальбоми, збережені в окремій теці';

  @override
  String get downloadSeparateSinglesDisabled =>
      'Сингли та альбоми, збережені в одній теці';

  @override
  String get downloadArtistNameFilters => 'Фільтри імені виконавця';

  @override
  String get downloadCreatePlaylistSourceFolder =>
      'Вихідна тека списку відтворення';

  @override
  String get downloadCreatePlaylistSourceFolderEnabled =>
      'Для кожного списку відтворення створюється підтека';

  @override
  String get downloadCreatePlaylistSourceFolderDisabled =>
      'Усі треки зберігаються безпосередньо в теці завантажень';

  @override
  String get downloadCreatePlaylistSourceFolderRedundant =>
      'Керується налаштуванням організації тек';

  @override
  String get downloadSongLinkRegion => 'Регіон SongLink';

  @override
  String get downloadNetworkCompatibilityMode => 'Режим сумісності з мережею';

  @override
  String get downloadNetworkCompatibilityModeEnabled =>
      'Дозволено використання застарілих HTTP endpoints; перевірку TLS збережено в увімкненому стані';

  @override
  String get downloadNetworkCompatibilityModeDisabled =>
      'Використовується стандартні налаштування мережі';

  @override
  String get downloadAllowLocalNetwork =>
      'Дозволити доступ до локальної мережі';

  @override
  String get downloadAllowLocalNetworkEnabled =>
      'Дозволено надсилати запити на локальні або приватні адреси (для локального проксі-сервера чи власного DNS)';

  @override
  String get downloadAllowLocalNetworkDisabled =>
      'Локальні/приватні Адреси заблоковано з міркувань безпеки';

  @override
  String get downloadSelectServiceToEnable =>
      'Виберіть провайдера, що пропонує якісні варіанти, щоб увімкнути цю функцію';

  @override
  String get downloadEmbedLyricsDisabled => 'Увімкнути метаданні спочатку';

  @override
  String get downloadNeteaseIncludeTranslation => 'Netease: Включити переклад';

  @override
  String get downloadNeteaseIncludeTranslationEnabled =>
      'Китайські рядки перекладу включені';

  @override
  String get downloadNeteaseIncludeTranslationDisabled =>
      'Тільки оригінальні тексти пісень';

  @override
  String get downloadNeteaseIncludeRomanization =>
      'Netease: Включити романізацію';

  @override
  String get downloadNeteaseIncludeRomanizationEnabled =>
      'Включені лінії романізації';

  @override
  String get downloadNeteaseIncludeRomanizationDisabled => 'Без романізації';

  @override
  String get downloadAppleQqMultiPerson =>
      'Apple / Q: Багатокористувацькі тексти';

  @override
  String get downloadAppleQqMultiPersonEnabled =>
      'Додано позначення виконавців для дуетів і групових треків';

  @override
  String get downloadAppleQqMultiPersonDisabled =>
      'Стандартний текст пісні без позначення виконавців';

  @override
  String get downloadAppleElrcWordSync =>
      'Синхронізація слів eLRC в Apple Music';

  @override
  String get downloadAppleElrcWordSyncEnabled =>
      'Збережено вихідні часові мітки для кожного слова';

  @override
  String get downloadAppleElrcWordSyncDisabled =>
      'Безпечніше показ тексту пісень в Apple Music рядок за рядком';

  @override
  String get downloadMusixmatchLanguage => 'Мова Musixmatch';

  @override
  String get downloadMusixmatchLanguageAuto => 'Автоматично (мова оригіналу)';

  @override
  String get downloadFilterContributing =>
      'Поки що немає постачальників послуг пошуку';

  @override
  String get downloadFilterContributingEnabled =>
      'Виконавців, що брали участь у записі, видалено з назви теки виконавця альбому';

  @override
  String get downloadFilterContributingDisabled =>
      'Використано повний тип даних виконавця альбому';

  @override
  String get downloadProvidersNoneEnabled => 'Немає доступних провайдерів';

  @override
  String get downloadMusixmatchLanguageCode => 'Код мови';

  @override
  String get downloadMusixmatchLanguageHint => 'e.g. en, de, ja';

  @override
  String get downloadMusixmatchLanguageDesc =>
      'Введіть код мови BCP-47 (наприклад, en, de, ja), щоб отримати переклад тексту пісні з Musixmatch.';

  @override
  String get downloadMusixmatchAuto => 'Авто';

  @override
  String get downloadNetworkAnySubtitle =>
      'Використовувати Wi-Fi або мобільні дані';

  @override
  String get downloadNetworkWifiOnlySubtitle =>
      'Завантаження призупиняються під час використання мобільних даних';

  @override
  String get downloadSongLinkRegionDesc =>
      'Регіон, що використовується для визначення посилань на треки через SongLink. Оберіть країну, в якій доступні ваші стрімінгові сервіси.';

  @override
  String get snackbarUnsupportedAudioFormat => 'Непідтримуваний аудіоформат';

  @override
  String get cacheRefresh => 'Оновити';

  @override
  String dialogDownloadPlaylistsMessage(int trackCount, int playlistCount) {
    String _temp0 = intl.Intl.pluralLogic(
      trackCount,
      locale: localeName,
      other: 'треків',
      one: 'трек',
    );
    String _temp1 = intl.Intl.pluralLogic(
      playlistCount,
      locale: localeName,
      other: 'списки треків',
      one: 'список треків',
    );
    return 'Завантажити $trackCount $_temp0 із $playlistCount $_temp1?';
  }

  @override
  String bulkDownloadPlaylistsButton(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'списки треків',
      one: 'список треків',
    );
    return 'Завантажити $count $_temp0';
  }

  @override
  String get bulkDownloadSelectPlaylists =>
      'Вибрати списки відтворення для завантаження';

  @override
  String get snackbarSelectedPlaylistsEmpty =>
      'Вибрані списки відтворення не містять треків';

  @override
  String playlistsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count списків треків',
      one: '1 список треків',
    );
    return '$_temp0';
  }

  @override
  String get editMetadataAutoFill => 'Автоматичне заповнення з онлайн-ресурсів';

  @override
  String get editMetadataAutoFillDesc =>
      'Виберіть розширення метаданих, оберіть поля, а потім перегляньте дані перед застосуванням';

  @override
  String get editMetadataAutoFillSource => 'Джерело метаданих';

  @override
  String get editMetadataAutoFillSourceAutomatic =>
      'Автоматично (пріоритет провайдера)';

  @override
  String get editMetadataAutoFillFind => 'Знайти метадані';

  @override
  String editMetadataAutoFillPreview(String source) {
    return 'Дані з $source';
  }

  @override
  String get editMetadataAutoFillCoverAvailable =>
      'Доступне оформлення обкладинки';

  @override
  String get editMetadataAutoFillApply => 'Застосувати вибрані дані';

  @override
  String editMetadataAutoFillDoneFromSource(int count, String source) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'поля',
      one: 'поле',
    );
    return 'Заповнено $count $_temp0 з $source';
  }

  @override
  String get editMetadataAutoFillSearching => 'Пошук в Інтернеті...';

  @override
  String get editMetadataAutoFillNoResults =>
      'Відповідних метаданих в Інтернеті не знайдено';

  @override
  String get editMetadataAutoFillNoneSelected =>
      'Виберіть принаймні одне поле для автоматичного заповнення';

  @override
  String get editMetadataLyricsSearch => 'Пошук текстів в інтернеті';

  @override
  String get lyricsPickerTitle => 'Виберіть текст пісні';

  @override
  String get lyricsPickerNeedsTitle =>
      'Спершу введіть назву треку та виконавця';

  @override
  String get lyricsPickerNoProviders =>
      'Жоден сервіс текстів пісень не увімкнено. Активуйте їх у розділі Налаштування > Тексти пісень.';

  @override
  String get lyricsPickerWordSynced => 'Синхронізовано за словами';

  @override
  String get lyricsPickerSynced => 'Синхронізовано';

  @override
  String get lyricsPickerPlain => 'Звичайний текст';

  @override
  String get lyricsPickerInstrumental => 'Інструментальний';

  @override
  String get lyricsPickerNotFound => 'Текстів пісень не знайдено';

  @override
  String lyricsPickerLineCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count рядки',
      one: '1 рядок',
    );
    return '$_temp0';
  }

  @override
  String get editMetadataFieldTitle => 'Назва';

  @override
  String get editMetadataFieldArtist => 'Виконавець';

  @override
  String get editMetadataFieldAlbum => 'Альбом';

  @override
  String get editMetadataFieldAlbumArtist => 'Виконавець альбому';

  @override
  String get editMetadataFieldDate => 'Дата';

  @override
  String get editMetadataFieldTrackNum => 'Номер треку';

  @override
  String get editMetadataFieldDiscNum => 'Номер диска';

  @override
  String get editMetadataFieldGenre => 'Жанр';

  @override
  String get editMetadataFieldIsrc => 'ISRC';

  @override
  String get editMetadataFieldLabel => 'Обкладинка';

  @override
  String get editMetadataFieldCopyright => 'Авторське право';

  @override
  String get editMetadataFieldCover => 'Обкладинка';

  @override
  String get editMetadataSelectAll => 'Усі';

  @override
  String get editMetadataSelectEmpty => 'Тільки порожні';

  @override
  String queueDownloadingCount(int count) {
    return 'Завантаження ($count)';
  }

  @override
  String get queueFilteringIndicator => 'Фільтрування...';

  @override
  String queueTrackCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count треків',
      one: '1 трек',
    );
    return '$_temp0';
  }

  @override
  String queueAlbumCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count альбомів',
      one: '1 альбом',
    );
    return '$_temp0';
  }

  @override
  String get queueEmptyAlbums => 'Немає завантажених альбомів';

  @override
  String get queueEmptyAlbumsSubtitle =>
      'Завантажте кілька треків з альбому, щоб переглянути їх тут';

  @override
  String get queueEmptySingles => 'Без окремих завантажень';

  @override
  String get queueEmptySinglesSubtitle =>
      'Завантаження окремих треків з’являться тут';

  @override
  String queuePlaylistCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count списки треків',
      one: '1 список треків',
    );
    return '$_temp0';
  }

  @override
  String get queueEmptyPlaylistsSubtitle =>
      'Створіть списки треків, щоб упорядкувати свої треки';

  @override
  String get libraryDefaultView => 'Вигляд за замовчуванням';

  @override
  String get libraryDefaultViewLastUsed => 'Останнє використання';

  @override
  String get queueEmptyHistory => 'Немає історії завантажень';

  @override
  String get queueEmptyHistorySubtitle => 'Завантажені треки з’являться тут';

  @override
  String get selectionAllPlaylistsSelected => 'Вибрано всі списки відтворення';

  @override
  String get selectionTapPlaylistsToSelect =>
      'Торкніться списків відтворення, щоб вибрати';

  @override
  String get selectionSelectPlaylistsToDelete =>
      'Вибрати списки відтворення для видалення';

  @override
  String get audioAnalysisTitle => 'Аналіз якості звуку';

  @override
  String get audioAnalysisDescription =>
      'Перевірити якість без втрат за допомогою спектрального аналізу';

  @override
  String get audioAnalysisAnalyzing => 'Аналіз аудіо...';

  @override
  String get audioAnalysisSampleRate => 'Частота дискретизації';

  @override
  String get audioAnalysisCodec => 'Кодек';

  @override
  String get audioAnalysisContainer => 'Контейнер';

  @override
  String get audioAnalysisDecodedFormat => 'Декодований формат';

  @override
  String get audioAnalysisBitDepth => 'Глибина бітів';

  @override
  String get audioAnalysisChannels => 'Канали';

  @override
  String get audioAnalysisDuration => 'Тривалість';

  @override
  String get audioAnalysisNyquist => 'Частота Найквіста';

  @override
  String get audioAnalysisFileSize => 'Розмір';

  @override
  String get audioAnalysisDynamicRange => 'Динамічний діапазон';

  @override
  String get audioAnalysisPeak => 'Пік';

  @override
  String get audioAnalysisRms => 'RMS';

  @override
  String get audioAnalysisLufs => 'LUFS';

  @override
  String get audioAnalysisTruePeak => 'Справжній пік';

  @override
  String get audioAnalysisClipping => 'Обрізування';

  @override
  String get audioAnalysisNoClipping => 'Без обрізування';

  @override
  String get audioAnalysisSpectralCutoff => 'Спектральний розріз';

  @override
  String get audioAnalysisCutoffNotDetected => 'Не виявлено';

  @override
  String get audioAnalysisChannelStats => 'Статистика окремих каналів';

  @override
  String get audioAnalysisSamples => 'Семпли';

  @override
  String get audioAnalysisRescan => 'Повторний аналіз';

  @override
  String get audioAnalysisSaveSpectrogram => 'Збереження спектрограми';

  @override
  String audioAnalysisSpectrogramSaved(String fileName) {
    return 'Спектрограму збережено до $fileName';
  }

  @override
  String get downloadRedownloadFakeHiRes =>
      'Повторно завантажити підроблений Hi-Res';

  @override
  String get downloadRedownloadFakeHiResSubtitle =>
      'Вимкнено за замовчуванням. Перевіряйте завантаження у високій якості Hi-Res і замінюйте файл лише за умови збереження всіх аудіосемплів. Зберігайте оригінал, якщо перевірка або обробка не вдалися';

  @override
  String get hiResCheckVerdictFakeCertain => 'Підроблений Hi-Res';

  @override
  String get hiResCheckReasonSampleHold =>
      'Кожен відлік повторюється: підвищення частоти дискретизації шляхом дублювання\n';

  @override
  String get hiResCheckReasonInterpolation =>
      'Проміжні відліки лінійно інтерполюються';

  @override
  String get hiResCheckTitle => 'Автентичність Hi-Res';

  @override
  String get hiResCheckSummary =>
      'Перевірте спектр та активну розрядність на наявність ознак підвищення частоти дискретизації або простір між вмістом елемента та його рамкою/межами.';

  @override
  String get hiResCheckLimitedBandwidth => 'Обмежена пропускна здатність';

  @override
  String get hiResCheckNoEvidence =>
      'Підвищення частоти дискретизації або доповнення не виявлено';

  @override
  String get hiResCheckEstimatedCutoff => 'Орієнтовне обмеження';

  @override
  String get hiResCheckActiveBits => 'Активні / збережені біти';

  @override
  String get hiResCheckBandwidthExplanation =>
      'Нижча межа відсікання може бути обумовлена освоєнням. Саме по собі це не доводить наявність підвищеної частоти дискретизації.';

  @override
  String hiResCheckSampledExplanation(String seconds) {
    return 'На основі $seconds секунд аудіозапису. Цей аналіз не може підтвердити автентичність оригіналу.';
  }

  @override
  String get hiResCheckImagingEvidence =>
      'Спектр містить дзеркальні смуги, характерні для підвищення частоти дискретизації.';

  @override
  String hiResCheckRateEvidence(String cutoff) {
    return 'Різкий спад поблизу $cutoff і виміряний рівень шуму вказують на джерело з нижчою частотою дискретизації.';
  }

  @override
  String hiResCheckSteadyEnergy(String cutoff) {
    return 'Енергія вище рівня відсікання $cutoff в аналізованому сегменті здебільшого стабільна і може бути зумовлена ​​шумом.';
  }

  @override
  String get hiResCheckRun => 'Перевірити';

  @override
  String get hiResCheckChecking => 'Перевірка автентичності Hi-Res...';

  @override
  String get hiResCheckVerdictFake => 'Ймовірно підробка Hi-Res';

  @override
  String get hiResCheckVerdictStandard => 'Стандартна якість, зауважень немає';

  @override
  String get hiResCheckVerdictInconclusive =>
      'Невизначений результат: проаналізований фрагмент занадто тихий або короткий';

  @override
  String get hiResCheckUnsupported =>
      'Можна перевірити лише файли у форматах FLAC і WAV';

  @override
  String hiResCheckFailed(String error) {
    return 'Помилка перевірки Hi-Res: $error';
  }

  @override
  String hiResCheckReasonDepth(int declared, int effective) {
    return 'Заявлено $declared біт, але тільки $effective біти передають дані';
  }

  @override
  String get audioAnalysisRescanning => 'Повторний аналіз аудіо...';

  @override
  String get extensionsHomeFeedProvider =>
      'Провайдер оновлень домашньої стрічки';

  @override
  String get extensionsHomeFeedCountry => 'Країна домашньої сторінки';

  @override
  String get extensionsHomeFeedCountryDescription =>
      'Головні рекомендації без VPN.';

  @override
  String get extensionsHomeFeedDescription =>
      'Виберіть, яке розширення показуватиме домашню стрічку на головному екрані';

  @override
  String get extensionsHomeFeedAuto => 'Авто';

  @override
  String get extensionsHomeFeedAutoSubtitle =>
      'Автоматично вибирати найкращий доступний';

  @override
  String get extensionsHomeFeedOff => 'Вимкнути';

  @override
  String get extensionsHomeFeedOffSubtitle =>
      'Приховати домашню стрічку на головному екрані';

  @override
  String extensionsHomeFeedUse(String extensionName) {
    return 'Використовувати $extensionName головну стрічку';
  }

  @override
  String get extensionsNoHomeFeedExtensions =>
      'Без розширень із домашньою стрічкою';

  @override
  String get cancelDownloadTitle => 'Скасувати завантаження?';

  @override
  String cancelDownloadContent(String trackName) {
    return 'Це скасує активне завантаження треку \"$trackName\".';
  }

  @override
  String get cancelDownloadKeep => 'Зберегти';

  @override
  String get queueCancelledTitle => 'Завантаження скасоване';

  @override
  String get queueCancelledMessage =>
      'Це завантаження було скасовано. Повторіть спробу, або видаліть його з черги.';

  @override
  String get metadataSaveFailedFfmpeg =>
      'Не вдалося зберегти метадані через FFmpeg';

  @override
  String get metadataSaveFailedStorage =>
      'Не вдалося записати метадані назад у сховище';

  @override
  String snackbarFolderPickerFailed(String error) {
    return 'Не вдалося відкрити засіб вибору тек: $error';
  }

  @override
  String notifDownloadingTrack(String trackName) {
    return 'Завантаження $trackName';
  }

  @override
  String notifFinalizingTrack(String trackName) {
    return 'Фіналізація $trackName';
  }

  @override
  String get notifEmbeddingMetadata => 'Вбудовування метаданих...';

  @override
  String notifAlreadyInLibraryCount(int completed, int total) {
    return 'Вже в бібліотеці ($completed/$total)';
  }

  @override
  String get notifAlreadyInLibrary => 'Вже в бібліотеці';

  @override
  String notifDownloadCompleteCount(int completed, int total) {
    return 'Завантаження завершено ($completed/$total)';
  }

  @override
  String get notifDownloadComplete => 'Завантаження завершено';

  @override
  String notifDownloadsFinished(int completed, int failed) {
    return 'Завантаження завершено ($completed завершено, $failed не вдалося)';
  }

  @override
  String get notifVerificationRequiredTitle => 'Потрібна перевірка';

  @override
  String get notifVerificationRequiredBody =>
      'Відкрийте програму, щоб завершити перевірку та відновити завантаження';

  @override
  String get notifAllDownloadsComplete => 'Усі завантаження завершено';

  @override
  String notifTracksDownloadedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count треки успішно завантажено',
      one: '1 трек успішно завантажено',
    );
    return '$_temp0';
  }

  @override
  String notifDownloadsFinishedBody(int completed, int failed) {
    String _temp0 = intl.Intl.pluralLogic(
      completed,
      locale: localeName,
      other: '$completed завантажені треки',
      one: 'завантажено 1 трек',
    );
    String _temp1 = intl.Intl.pluralLogic(
      failed,
      locale: localeName,
      other: '$failed помилка',
      one: '1 помилка',
    );
    return '$_temp0, $_temp1';
  }

  @override
  String get notifDownloadsCanceledTitle => 'Завантаження скасовано';

  @override
  String notifDownloadsCanceledBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count завантаження скасовано',
      one: '1 завантаження скасовано',
    );
    return '$_temp0';
  }

  @override
  String get notifScanningLibrary => 'Сканування локальної бібліотеки';

  @override
  String notifLibraryScanProgressWithTotal(
    int scanned,
    int total,
    int percentage,
  ) {
    return '$scanned/$total файлів • $percentage%';
  }

  @override
  String notifLibraryScanProgressNoTotal(int scanned) {
    return '$scanned Файлів скановано';
  }

  @override
  String get notifLibraryScanComplete => 'Сканування бібліотеки завершено';

  @override
  String notifLibraryScanCompleteBody(int count) {
    return '$count Треків індексовано';
  }

  @override
  String notifLibraryScanExcluded(int count) {
    return '$count Виключені';
  }

  @override
  String notifLibraryScanErrors(int count) {
    return '$count Помилок';
  }

  @override
  String get notifLibraryScanFailed => 'Не вдалося сканувати бібліотеку';

  @override
  String get notifLibraryScanInterruptedBody =>
      'Попереднє сканування бібліотеки було перервано. Скануйте теку знову, щоб продовжити. Індексовані треки все ще доступні.';

  @override
  String get notifLibraryScanCancelled => 'Сканування бібліотеки скасовано';

  @override
  String get notifLibraryScanStopped => 'Сканування зупинено до завершення.';

  @override
  String get notifLibraryScanPaused => 'Сканування бібліотеки призупинено';

  @override
  String notifLibraryScanPausedBody(int count) {
    return '$count Файли проскановано. Відновіть роботу в налаштуваннях локальної бібліотеки, щоб продовжити з цього місця.';
  }

  @override
  String notifDownloadingUpdate(String version) {
    return 'Завантаження Toadplayer v$version';
  }

  @override
  String notifUpdateProgress(String received, String total, int percentage) {
    return '$received / $total МБ • $percentage%';
  }

  @override
  String get notifUpdateReady => 'Оновлення готове';

  @override
  String notifUpdateReadyBody(String version) {
    return 'Toadplayer v$version завантажена. Натисніть щоб установити.';
  }

  @override
  String get notifUpdateFailed => 'Не вдалося оновити';

  @override
  String get notifUpdateFailedBody =>
      'Не вдалося завантажити оновлення. Спробуйте пізніше.';

  @override
  String get searchTracks => 'Треки';

  @override
  String get homeSearchHintDefault =>
      'Вставте підтримувану URL-адресу або виконайте пошук...';

  @override
  String homeSearchHintProvider(String providerName) {
    return 'Пошук за допомогою$providerName...';
  }

  @override
  String get homeImportCsvTooltip =>
      'Імпортувати список відтворення (CSV, M3U)';

  @override
  String get homeChangeSearchProviderTooltip => 'Змінити пошукову систему';

  @override
  String get actionPaste => 'Вставити';

  @override
  String get tutorialSearchHint => 'Вставити або шукати...';

  @override
  String get tutorialDownloadCompletedSemantics => 'Завантаження завершено';

  @override
  String get tutorialDownloadInProgressSemantics => 'Завантаження триває';

  @override
  String get tutorialStartDownloadSemantics => 'Почати завантаження';

  @override
  String get optionsEmbedMetadata => 'Вбудувати метадані';

  @override
  String get optionsEmbedMetadataSubtitleOn =>
      'Записуйте метадані, обкладинки та вбудовані тексти пісень у файли';

  @override
  String get optionsEmbedMetadataSubtitleOff =>
      'Вимкнено (розширений режим): пропустити вбудовування всіх метаданих';

  @override
  String get trackCoverNoEmbeddedArt =>
      'Вбудованих обкладинок альбому не знайдено';

  @override
  String get trackCoverReplace => 'Змінити обкладинку';

  @override
  String get trackCoverPick => 'Виберіть обкладинку';

  @override
  String get trackCoverClearSelected => 'Очистити вибрану обкладинку';

  @override
  String get trackCoverCurrent => 'Поточна обкладинка';

  @override
  String get trackCoverSelected => 'Вибрана обкладинка';

  @override
  String get trackCoverReplaceNotice =>
      'Вибрана обкладинка замінить поточну вбудовану обкладинку, коли ви натиснете «Зберегти».';

  @override
  String get trackCoverResolution => 'Розмір обкладинки';

  @override
  String get trackCoverResolutionHint =>
      'Визначає розмір найдовшого краю під час збереження. Збільшення не додає зображенню деталей.';

  @override
  String get trackCoverResizeFailed =>
      'Не вдалося змінити розмір зображення обкладинки. Будь ласка, спробуйте інший розмір або зображення.';

  @override
  String get actionStop => 'Стоп';

  @override
  String get queueFinalizingDownload => 'Завершення завантаження';

  @override
  String get queueDownloadNext => 'Наступне завантаження';

  @override
  String get queueMoveUp => 'Перемістити вверх';

  @override
  String get queueMoveDown => 'Перемістити вниз';

  @override
  String get editMetadataMusicBrainzButton => 'Отримати з MusicBrainz';

  @override
  String get editMetadataMusicBrainzFilled => 'Оновлено з MusicBrainz';

  @override
  String get editMetadataMusicBrainzNothing =>
      'На MusicBrainz нічого не знайдено';

  @override
  String get editMetadataMusicBrainzNeedsIsrc => 'Потребує коду ISRC';

  @override
  String get nowPlayingRepeatOff => 'Повторення вимкнено';

  @override
  String get nowPlayingRepeatAll => 'Повторити все';

  @override
  String get nowPlayingRepeatOne => 'Повторити один';

  @override
  String queueNetworkFailedOffline(int count) {
    return '$count Завантаження не вдалося виконати в режимі офлайн';
  }

  @override
  String get queueDownloadedFileMissing => 'Завантажений файл відсутній';

  @override
  String get queueCheckingDownloadedFile => 'Перевірка завантаженого файлу...';

  @override
  String get queueDownloadCompleted => 'Завантаження завершено';

  @override
  String get queueRateLimitTitle => 'Обмежено частоту запитів до служби';

  @override
  String get queueRateLimitMessage =>
      'Цей трек усе ще може бути доступним. Зачекайте кілька хвилин, зменште кількість одночасних завантажень і спробуйте знову.';

  @override
  String appearanceSelectAccentColor(String hex) {
    return 'Виберіть акцентний колір $hex';
  }

  @override
  String get logAutoScrollOn => 'Автопрокручування увімкнено';

  @override
  String get logAutoScrollOff => 'Автопрокручування вимкнено';

  @override
  String get logCopyLogs => 'Копіювати журнали';

  @override
  String get logClearSearch => 'Очистити пошук';

  @override
  String get logIssueIspBlockingLabel =>
      'Блокування з боку інтернет-провайдера';

  @override
  String get logIssueIspBlockingDescription =>
      'Ваш інтернет-провайдер може блокувати доступ до сервісів завантаження';

  @override
  String get logIssueIspBlockingSuggestion =>
      'Спробуйте скористатися VPN або змінити DNS на 1.1.1.1 чи 8.8.8.8';

  @override
  String get logIssueRateLimitedLabel => 'Перевищено ліміт запитів';

  @override
  String get logIssueRateLimitedDescription => 'Забагато запитів до служби';

  @override
  String get logIssueRateLimitedSuggestion =>
      'Зачекайте кілька хвилин, перш ніж спробувати знову';

  @override
  String get logIssueNetworkErrorLabel => 'ПОМИЛКА МЕРЕЖІ';

  @override
  String get logIssueNetworkErrorDescription =>
      'Виявлено проблеми зі з’єднанням';

  @override
  String get logIssueNetworkErrorSuggestion =>
      'Перевірте підключення до Інтернету';

  @override
  String get logIssueTrackNotFoundLabel => 'ТРЕК НЕ ЗНАЙДЕНО';

  @override
  String get logIssueTrackNotFoundDescription =>
      'Деякі треки не вдалося знайти на сервісах для завантаження';

  @override
  String get logIssueTrackNotFoundSuggestion =>
      'Трек може бути недоступний у якості lossless';

  @override
  String get clickableLookingUpArtist => 'Пошук виконавця...';

  @override
  String clickableInformationUnavailable(String type) {
    return 'Інформація $type недоступна';
  }

  @override
  String get extensionDetailsTags => 'Теги';

  @override
  String get extensionDetailsInformation => 'Інформація';

  @override
  String get extensionUtilityFunctions => 'Функції Утиліти';

  @override
  String get actionDismiss => 'Відхилити';

  @override
  String get setupChangeFolderTooltip => 'Змінити теку';

  @override
  String a11yOpenTrackByArtist(String trackName, String artistName) {
    return 'Відтворити $trackName від $artistName';
  }

  @override
  String a11yOpenItem(String itemType, String name) {
    return 'Відтворити $itemType $name';
  }

  @override
  String a11yOpenItemCount(String title, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Відтворити $title, $count $_temp0';
  }

  @override
  String a11yOpenAlbumByArtistTrackCount(
    String albumName,
    String artistName,
    int trackCount,
  ) {
    return 'Відкрити альбом $albumName по $artistName, $trackCount треків';
  }

  @override
  String a11yTrackByArtist(String trackName, String artistName) {
    return '$trackName Від $artistName';
  }

  @override
  String a11ySelectAlbum(String albumName) {
    return 'Вибрати альбом $albumName';
  }

  @override
  String a11yOpenAlbum(String albumName) {
    return 'Відкрити альбом $albumName';
  }

  @override
  String get settingsFiles => 'Файли та теки';

  @override
  String get settingsFilesSubtitle =>
      'Місце завантаження, ім\'я файлу, структура тек';

  @override
  String get settingsMetadata => 'Метадані';

  @override
  String get settingsMetadataSubtitle =>
      'Обкладинки, теги, ReplayGain, провайдери';

  @override
  String get settingsLyrics => 'Тексти пісень';

  @override
  String get settingsLyricsSubtitle =>
      'Вбудовувати, режим, провайдери, параметри мови';

  @override
  String get settingsApp => 'Застосунок';

  @override
  String get settingsAppSubtitle =>
      'Оновлення, дані, репозиторій розширень, налагодження';

  @override
  String get sectionMetadataProviders => 'Провайдери';

  @override
  String get sectionDuplicates => 'Дублікати';

  @override
  String get sectionLyricsProviderOptions => 'Параметри провайдера';

  @override
  String get metadataProvidersTitle => 'Пріоритет провайдера метаданих';

  @override
  String get metadataProvidersSubtitle =>
      'Встановити порядок пошуку та джерел метаданих';

  @override
  String get downloadDeduplication => 'Пропустити повторення завантажень';

  @override
  String get downloadDeduplicationEnabled =>
      'Вже завантажені треки буде пропущено';

  @override
  String get downloadDeduplicationWithQualityVariants =>
      'Наявні файли з вибраною якістю буде пропущено';

  @override
  String get downloadDeduplicationDisabled =>
      'Усі треки буде завантажено незалежно від історії';

  @override
  String get downloadQualityVariants => 'Дозволити версії різної якості';

  @override
  String get downloadQualityVariantsDescription =>
      'Зберігайте всі якісні версії; додавайте показник якості до імені файлу лише тоді, коли таке ім’я вже використовується';

  @override
  String get trackOptionDownloadQualityVariant => 'Завантажити іншу якість';

  @override
  String get downloadFallbackExtensions => 'Резервні розширення';

  @override
  String get downloadFallbackExtensionsSubtitle =>
      'Виберіть, які розширення можна використовувати як резервний варіант';

  @override
  String get editMetadataFieldDateHint => 'YYYY-MM-DD або YYYY';

  @override
  String get editMetadataFieldTrackTotal => 'Загальна кількість треків';

  @override
  String get editMetadataFieldDiscTotal => 'Загальна кількість дисків';

  @override
  String get editMetadataFieldComposer => 'Композитор';

  @override
  String get editMetadataFieldComment => 'Коментар';

  @override
  String get trackAlbumType => 'Тип релізу';

  @override
  String get editMetadataFieldAlbumTypeHint =>
      'Альбом, сингл, мініальбом, добірка...';

  @override
  String get editMetadataFieldExplicit => 'Для дорослих';

  @override
  String get editMetadataFieldExplicitHint =>
      'Позначити цей трек як такий, що містить контент для дорослих';

  @override
  String get metadataExplicitValue => 'Для дорослих';

  @override
  String get editMetadataFieldUpc => 'UPC / Штрихкод';

  @override
  String get editMetadataFieldUpcHint => 'Числовий код UPC, EAN або GTIN';

  @override
  String get editMetadataAdvanced => 'Додатково';

  @override
  String get libraryFilterMetadataMissingTrackNumber => 'Відсутній номер треку';

  @override
  String get libraryFilterMetadataMissingDiscNumber => 'Відсутній номер диску';

  @override
  String get libraryFilterMetadataMissingArtist => 'Відсутній виконавець';

  @override
  String get libraryFilterMetadataIncorrectIsrcFormat =>
      'Неправильний формат ISRC';

  @override
  String get libraryFilterMetadataMissingIsrc => 'Відсутній код ISRC';

  @override
  String get libraryFilterMetadataMissingLabel => 'Відсутній ярлик';

  @override
  String collectionDeletePlaylistsMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'списки треків',
      one: 'список треків',
    );
    return 'Видалити $count $_temp0?';
  }

  @override
  String collectionPlaylistsDeleted(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'списки треків',
      one: 'список треків',
    );
    return '$count $_temp0 видалити';
  }

  @override
  String collectionAddedTracksToPlaylist(int count, String playlistName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'треків',
      one: 'трек',
    );
    return 'Додано $count $_temp0 до $playlistName';
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
      other: 'треків',
      one: 'трек',
    );
    return 'Додано $count $_temp0 до $playlistName ($alreadyCount вже є у списку відтворення)';
  }

  @override
  String itemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'елементи',
      one: 'елемент',
    );
    return '$count $_temp0';
  }

  @override
  String trackReEnrichSuccessWithFailures(
    int successCount,
    int total,
    int failedCount,
  ) {
    return 'Метадані успішно оновлено ($successCount/$total) - Помилок: $failedCount';
  }

  @override
  String selectionDeleteTracksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'треків',
      one: 'трек',
    );
    return 'Видалити $count $_temp0';
  }

  @override
  String queueDownloadSpeedStatus(String speed) {
    return 'Завантаження - $speed MB/s';
  }

  @override
  String get queueDownloadStarting => 'Запуск...';

  @override
  String get queueCheckingDownloadSession => 'Перевірка сеансу завантаження...';

  @override
  String get queueResolvingDownloadMetadata => 'Визначення метаданих треку...';

  @override
  String get queueResolvingDownloadStream => 'Підготовка аудіопотоку...';

  @override
  String get queueWaitingForVerification => 'Очікування перевірки...';

  @override
  String get queueResumingAfterVerification => 'Відновлення після перевірки...';

  @override
  String get a11ySelectTrack => 'Вибрати трек';

  @override
  String get a11yDeselectTrack => 'Скасувати вибір треку';

  @override
  String a11yPlayTrackByArtist(String trackName, String artistName) {
    return 'Відтворити $trackName від $artistName';
  }

  @override
  String storeExtensionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'розширень',
      one: 'розширення',
    );
    return '$count $_temp0';
  }

  @override
  String storeRequiresVersion(String version) {
    return 'Потрібна версія v$version або новіша';
  }

  @override
  String get logIssueSummary => 'Короткий опис';

  @override
  String logTotalErrors(int count) {
    return 'Загальна кількість помилок: $count';
  }

  @override
  String logAffectedDomains(String domains) {
    return 'Змінені домени: $domains';
  }

  @override
  String get libraryScanCancelled => 'Сканування скасовано';

  @override
  String get libraryScanCancelledSubtitle =>
      'Ви можете повторити сканування, коли будете готові.';

  @override
  String libraryDownloadsHistoryExcluded(int count) {
    return '$count З історії завантажень (виключено зі списку)';
  }

  @override
  String get downloadNativeWorker => 'Вбудований фоновий процес завантаження';

  @override
  String get downloadNativeWorkerSubtitle =>
      'Фонова служба Android для завантаження розширень';

  @override
  String get extensionServiceStatus => 'Статус служби';

  @override
  String get extensionServiceHealth => 'Стан служби';

  @override
  String extensionHealthChecksConfigured(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'перевірок',
      one: 'перевірка',
    );
    return '$count $_temp0 налаштований';
  }

  @override
  String get extensionOauthConnectHint =>
      'Натисніть «Під\'єднатися до Spotify», щоб заповнити це поле.';

  @override
  String extensionLastChecked(String time) {
    return 'Востаннє перевірено $time';
  }

  @override
  String get extensionRefreshStatus => 'Оновити статус';

  @override
  String get extensionCustomUrlHandling => 'Обробка спеціальних URL-адрес';

  @override
  String get extensionCustomUrlHandlingSubtitle =>
      'Це розширення може обробляти посилання з цих сайтів';

  @override
  String get extensionCustomUrlHandlingShareHint =>
      'Поділіться посиланнями з цих сайтів із Toadplayer, і це розширення їх обробить.';

  @override
  String extensionSettingsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'налаштувань',
      one: 'налаштування',
    );
    return '$count $_temp0';
  }

  @override
  String get extensionHealthOnline => 'Онлайн';

  @override
  String get extensionHealthDegraded => 'Знижена робота';

  @override
  String get extensionHealthOffline => 'Офлайн';

  @override
  String get extensionHealthNotConfigured => 'Не налаштовано';

  @override
  String get extensionHealthUnknown => 'Невідомо';

  @override
  String get extensionHealthRequired => 'обов’язково';

  @override
  String get extensionSettingNotSet => 'Не встановлено';

  @override
  String get extensionActionFailed => 'Дія не вдалася';

  @override
  String get extensionEnterValue => 'Введіть значення';

  @override
  String get extensionHealthServiceOnline => 'Сервіс онлайн';

  @override
  String get extensionHealthServiceDegraded => 'Службу відключено';

  @override
  String get extensionHealthServiceOffline => 'Сервіс офлайн';

  @override
  String get extensionHealthServiceUnknown => 'Невідомий статус служби';

  @override
  String get audioAnalysisStereo => 'Стерео';

  @override
  String get audioAnalysisMono => 'Моно';

  @override
  String trackOpenInService(String serviceName) {
    return 'Відкрити в $serviceName';
  }

  @override
  String get trackLyricsEmbeddedSource => 'Вбудовано';

  @override
  String get unknownAlbum => 'Невідомий альбом';

  @override
  String get unknownArtist => 'Невідомий виконавець';

  @override
  String get permissionAudio => 'Аудіо';

  @override
  String get permissionStorage => 'Пам\'ять';

  @override
  String get permissionNotification => 'Сповіщення';

  @override
  String get errorInvalidFolderSelected => 'Вибрана неправильна тека';

  @override
  String get storeAnyVersion => 'Будь-яке';

  @override
  String get storeCategoryMetadata => 'Метадані';

  @override
  String get storeCategoryDownload => 'Завантажити';

  @override
  String get storeCategoryUtility => 'Утиліта';

  @override
  String get storeCategoryLyrics => 'Тексти пісень';

  @override
  String get storeCategoryIntegration => 'Інтеграція';

  @override
  String get artistReleases => 'Релізи';

  @override
  String get editMetadataSelectNone => 'Нічого';

  @override
  String queueRetryAllFailed(int count) {
    return 'Повторити $count невдалих спроб';
  }

  @override
  String get settingsSaveDownloadHistory => 'Зберігати історію завантажень';

  @override
  String get settingsSaveDownloadHistorySubtitle =>
      'Зберігати завершені завантаження в історії та бібліотеці';

  @override
  String get dialogDisableHistoryTitle => 'Вимкнути історію завантажень?';

  @override
  String get dialogDisableHistoryMessage =>
      'Наявну історію буде очищено. Завантажені файли видалено не буде.';

  @override
  String get dialogDisableAndClear => 'Вимкнути та очистити';

  @override
  String get openInOtherServices => 'Відкрити в інших сервісах';

  @override
  String get shareSheetNoExtensions => 'Немає інших сумісних сервісів';

  @override
  String get shareSheetNotFound => 'Не знайдено';

  @override
  String get shareSheetCopyLink => 'Скопіювати посилання';

  @override
  String shareSheetLinkCopied(Object service) {
    return 'Посилання на $service скопійовано';
  }

  @override
  String get libraryPlayback => 'Відтворення';

  @override
  String get libraryExternalPlayer => 'Зовнішній програвач';

  @override
  String get libraryExternalPlayerSubtitle =>
      'Відкривайте треки в інших музичних застосунках на вашому пристрої';

  @override
  String get libraryBuiltInPreviewPlayer => 'Вбудований програвач';

  @override
  String get libraryBuiltInPreviewPlayerSubtitle =>
      'Відтворюйте свою музику прямо в Toadplayer';

  @override
  String get nowPlayingTitle => 'Зараз відтворюється';

  @override
  String get nowPlayingNothingPlaying => 'Нічого не відтворюється';

  @override
  String get nowPlayingMinimize => 'Згорнути';

  @override
  String get nowPlayingUpNext => 'Далі';

  @override
  String get nowPlayingAudioOutput => 'Аудіовихід';

  @override
  String nowPlayingWrittenBy(String writers) {
    return 'Написано: $writers';
  }

  @override
  String nowPlayingLyricsProvider(String provider) {
    return 'Текст пісні: $provider';
  }

  @override
  String get concertGetTickets => 'Купити квитки';

  @override
  String get concertSetList => 'Список пісень';

  @override
  String get concertSetListButton => 'Перелік композицій';

  @override
  String get concertAddToCalendar => 'Додати в календар';

  @override
  String get concertOpenMaps => 'Відкрити карту';

  @override
  String get concertDetailsUnavailable => 'Деталі концерту наразі недоступні.';

  @override
  String get concertCalendarUnavailable => 'Неможливо відкрити календар.';

  @override
  String get nowPlayingAudioOutputUnavailable =>
      'Не вдалося відкрити налаштування аудіовиходу.';

  @override
  String get nowPlayingPreviousTrack => 'Попередній трек';

  @override
  String get nowPlayingNextTrack => 'Наступний трек';

  @override
  String get nowPlayingDetails => 'Деталі';

  @override
  String get nowPlayingSleepTimer => 'Таймер сну';

  @override
  String nowPlayingSleepTimerActive(String time) {
    return 'Вимкнення в $time';
  }

  @override
  String nowPlayingSleepTimerMinutes(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes хвилин',
      one: '1 хвилина',
    );
    return '$_temp0';
  }

  @override
  String get nowPlayingSleepTimerOff => 'Вимкнути Таймер сну';

  @override
  String nowPlayingSleepTimerSet(String duration) {
    return 'Таймер сну встановлено на $duration';
  }

  @override
  String get nowPlayingSleepTimerCancelled => 'Таймер сну вимкнено';

  @override
  String get nowPlayingOpenInExternalPlayer =>
      'Відкрити в зовнішньому програвачі';

  @override
  String get nowPlayingHideVolume => 'Hide volume';

  @override
  String get nowPlayingShowVolume => 'Show volume';

  @override
  String get nowPlayingTabPlayer => 'Програвач';

  @override
  String get nowPlayingTabLyrics => 'Тексти пісень';

  @override
  String get nowPlayingNoLyrics => 'У цьому файлі не знайдено тексту пісні';

  @override
  String get nowPlayingInstrumental => 'Інструментальний';

  @override
  String get nowPlayingLyricsLanguageOptions =>
      'Мовні параметри текстів пісень';

  @override
  String get nowPlayingHidePronunciation => 'Приховати вимову';

  @override
  String get nowPlayingShowPronunciation => 'Показати вимову';

  @override
  String get nowPlayingHideTranslation => 'Приховати переклад';

  @override
  String get nowPlayingShowTranslation => 'Показати переклад';

  @override
  String get nowPlayingSearchLyricsOnline => 'Пошук онлайн';

  @override
  String get nowPlayingNoLyricsOnline => 'Текст пісні не знайдено в мережі';

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
      other: '$count рядків не вдалося перекласти',
      many: '$count рядків не вдалося перекласти',
      few: '$count рядки не вдалося перекласти',
      one: '$count рядок не вдалося перекласти',
    );
    return '$_temp0';
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
  String get lyricsAiModelHint => 'ID моделі';

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
      other: '$count пісень',
      one: '1 пісня',
      zero: 'Немає збережених перекладів',
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
  String get nowPlayingLibraryEmpty => 'Ваша бібліотека порожня';

  @override
  String nowPlayingShuffleLibraryFailed(String error) {
    return 'Не вдалося перемішати бібліотеку: $error';
  }

  @override
  String get nowPlayingShuffleOn => 'Увімкнути перемішування';

  @override
  String get nowPlayingPlayInOrder => 'Відтворювати по черзі';

  @override
  String get nowPlayingShuffleLibrary => 'Перемішати бібліотеку';

  @override
  String get nowPlayingQueueEmpty => 'Черга порожня';

  @override
  String get nowPlayingNoMetadata => 'Метадані відсутні';

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
      'Не вдалося відкрити посилання. Будь ласка, спробуйте ще раз.';

  @override
  String trackConvertLosslessOutputWithCap(String quality) {
    return 'Вивід Lossless з обмеженням якості $quality';
  }

  @override
  String trackConvertConfirmMessageLosslessCapped(
    String sourceFormat,
    String targetFormat,
    String quality,
  ) {
    return 'Конвертувати з $sourceFormat в $targetFormat ($quality)?\n\nВихідний файл зберігається у форматі lossless, але розрядність і частота дискретизації будуть обмежені. Оригінальний файл буде видалено після конвертації.';
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
      other: 'треків',
      few: 'треки',
      one: 'трек',
    );
    return 'Конвертувати $count $_temp0 у $format ($quality)?\n\nВихідний файл зберігається у форматі lossless, але розрядність і частота дискретизації будуть обмежені. Оригінальний файл буде видалено після конвертації.';
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
      'Проксі для текстів пісень із Musixmatch, Netease, Apple Music, QQ Music, Spotify, Deezer, YouTube, Kugou та Genius';

  @override
  String get snackbarPlayingNext => 'Відтворити далі';

  @override
  String get snackbarAddedToQueueGeneric => 'Додано до черги';

  @override
  String selectionDeletePlaylistsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'списки треків',
      one: 'список треків',
    );
    return 'Видалити $count $_temp0';
  }

  @override
  String get actionShuffle => 'Перемішати';

  @override
  String get artistShuffleEmpty =>
      'No songs by this artist in your Library yet';

  @override
  String get downloadPrimaryArtistOnlyOn => 'Тільки основний: Увімкнено';

  @override
  String get downloadPrimaryArtistOnlyOff => 'Тільки основний: Вимкнено';

  @override
  String get downloadAlbumArtistMetadataPrimaryOnly =>
      'Виконавець альбому: Тільки основний';

  @override
  String get downloadAlbumArtistMetadataFull => 'Виконавець альбому: Повністю';

  @override
  String get trackConvertOriginal => 'Оригінал';

  @override
  String get trackConvertOriginalQuality => 'Якість оригіналу';

  @override
  String get trackConvertLosslessSuffix => 'Lossless';

  @override
  String get trackConvertDithering => 'Згладжування';

  @override
  String get trackConvertResampler => 'Ре семплер';

  @override
  String get trackConvertDitherNone => 'Нічого';

  @override
  String get trackConvertDitherTriangular => 'TPDF';

  @override
  String get trackConvertDitherTriangularHp =>
      'Одиниця вимірювання ширини модуля';

  @override
  String get trackConvertResamplerSwr => 'SWR';

  @override
  String get trackConvertResamplerSoxr => 'SoXr';

  @override
  String get updateSeeReleaseNotes =>
      'Детальнішу інформацію див. у примітках до випуску.';

  @override
  String get unknownTitle => 'Невідома назва';

  @override
  String get trackPlayNext => 'Відтворити далі';

  @override
  String get trackAddToQueue => 'Додати до черги';

  @override
  String snackbarExtensionInstalledEnable(String extensionName) {
    return '$extensionName Встановлено. Увімкніть це в Налаштуваннях> Розширеннях';
  }

  @override
  String snackbarExtensionUpdatedVersion(String extensionName, String version) {
    return '$extensionName Оновлено до v$version';
  }

  @override
  String snackbarFailedToInstallNamed(String extensionName) {
    return 'Не вдалося встановити $extensionName';
  }

  @override
  String snackbarFailedToUpdateNamed(String extensionName) {
    return 'Не вдалося оновити $extensionName';
  }

  @override
  String get releaseTypeEp => 'Мініальбом';

  @override
  String get releaseTypeSingle => 'Сингл';

  @override
  String get trackCoverOnline => 'Онлайн обкладинка';

  @override
  String get regionCountryUS => 'Сполучені Штати Америки';

  @override
  String get regionCountryIT => 'Італія';

  @override
  String get regionCountryES => 'Іспанія';

  @override
  String get regionCountryGB => 'Великобританія';

  @override
  String get regionCountryFR => 'Франція';

  @override
  String get regionCountryDE => 'Німеччина';

  @override
  String get regionCountryJP => 'Японія';

  @override
  String get regionCountryKR => 'Південна Корея';

  @override
  String get regionCountryIN => 'Індія';

  @override
  String get regionCountryID => 'Індонезія';

  @override
  String get regionCountryBR => 'Бразилія';

  @override
  String get regionCountryMX => 'Мексика';

  @override
  String get regionCountryAU => 'Австралія';

  @override
  String get regionCountryCA => 'Канада';

  @override
  String get regionCountryXK => 'Косово';

  @override
  String get extensionVerificationBrowserTitle => 'Браузер для перевірки';

  @override
  String get extensionVerificationBrowserSubtitleExternal =>
      'Відкрити завдання у браузері за замовчуванням';

  @override
  String get extensionVerificationBrowserSubtitleInApp =>
      'Відкрити завдання в додатковому браузері';

  @override
  String get extensionVerificationBrowserExternal => 'Компоненти';

  @override
  String get extensionVerificationBrowserInApp => 'В додатку';

  @override
  String extensionVerificationUnavailable(String extension) {
    return 'Для $extension немає доступної сторінки перевірки. Спробуйте завантажити знову, щоб отримати новий запит на перевірку.';
  }

  @override
  String get extensionVerificationHelpTitleManual =>
      'Відкрити перевірку вручну';

  @override
  String get extensionVerificationHelpTitleWaiting =>
      'Очікується підтвердження';

  @override
  String get extensionVerificationHelpMessageManual =>
      'Toadplayer не вдалося автоматично відкрити браузер. Відкрийте це посилання в браузері або скопіюйте його вручну.';

  @override
  String get extensionVerificationHelpMessageWaiting =>
      'Якщо браузер не відкрився або процес перевірки завершився, але не повернув вас до Toadplayer, відкрийте це посилання знову або скопіюйте його вручну.';

  @override
  String get extensionVerificationClose => 'Закрити';

  @override
  String get extensionVerificationCopyLink => 'Скопіювати посилання';

  @override
  String get extensionVerificationPasteCallback => 'Вставити callback';

  @override
  String get extensionVerificationLinkCopied =>
      'Посилання для підтвердження скопійовано';

  @override
  String get extensionVerificationOpenBrowser => 'Відкрити браузер';

  @override
  String get settingsSearchHint => 'Пошук налаштувань';

  @override
  String settingsSearchNoResults(String query) {
    return 'Жодні налаштування не відповідають запиту «$query»';
  }

  @override
  String get libraryFilterMetadataMissingLyrics => 'Відсутній текст пісні';

  @override
  String get libraryFilterMetadataMissingReplayGain => 'Відсутній ReplayGain';

  @override
  String get libraryFilterMetadataHasReplayGain => 'Вирівнювання гучності';

  @override
  String get libraryFilterIncompleteAlbums => 'Неповні альбоми';

  @override
  String get libraryAlbumCompletenessUnknown => 'Повнота альбому: невідомо';

  @override
  String libraryAlbumMissingTracks(int present, int expected, int missing) {
    return '$present/$expected треки · $missing відсутні';
  }

  @override
  String get trackOptionCopyTrackName => 'Копіювати назву треку';

  @override
  String get trackOptionCopyArtist => 'Копіювати виконавця';

  @override
  String get trackOptionCopyTrackAndArtist => 'Копіювання пісні та виконавця';

  @override
  String trackOptionCopyLink(String service) {
    return 'Copy $service link';
  }

  @override
  String get metadataCopyValue => 'Копіювати значення';

  @override
  String get metadataCopyField => 'Копіювати поле та значення';

  @override
  String get toadplayerSearch => 'Пошук';

  @override
  String get toadplayerContinuePlaying => 'Продовжити відтворювання';

  @override
  String get metadataCopyAll => 'Копіювати всі метадані';

  @override
  String get optionsEmbeddedCoverSize => 'Розмір вбудованої обкладинки';

  @override
  String get optionsEmbeddedCoverSizeDescription =>
      'Зменшуйте розмір віддалено завантажених обкладинок перед їх вбудовуванням. Зображення, що вже відповідають обмеженням, залишаються без змін.';

  @override
  String get toadplayerFavorite => 'Обране';

  @override
  String get toadplayerGoToArtist => 'Перейти до виконавця';

  @override
  String get toadplayerGetInfo => 'Get Info';

  @override
  String get toadplayerFavorited => 'Додано до обраного';

  @override
  String get autoMixDescription =>
      'Поєднуйте композиції за допомогою синхронізації ритму та зміни темпу зі збереженням висоти тону. Використовує плавний перехід crossfade, якщо синхронізація ритму неможлива.';

  @override
  String get gaplessPlayback => 'Gapless playback';

  @override
  String get gaplessPlaybackDescription =>
      'Start the next song the moment one ends, without silence between them. AutoMix replaces it while on.';

  @override
  String get playerCoverStyle => 'Обкладинка';

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
  String get playerCoverStyleDefault => 'За замовчуванням';

  @override
  String get playerCoverStyleCard => 'Card';

  @override
  String get playerCoverStyleDefaultDescription =>
      'Обкладинка над кнопками керування';

  @override
  String get playerCoverStyleFullScreen => 'На весь екран';

  @override
  String get playerCoverStyleFullScreenDescription =>
      'Обкладинка заповнює верх програвача та розмивається. Анімована обкладинка у Toadplayer завжди на весь екран';

  @override
  String get musicHaptics => 'Музичний відгук';

  @override
  String get musicHapticsDescription =>
      'Вібрація в такт завантажених та локальних пісень';

  @override
  String get musicHapticsSensitivity => 'Рівень чутливості';

  @override
  String get musicHapticsStrength => 'Рівень потужності';

  @override
  String get autoMixOn => 'Автомікс увімкнено';

  @override
  String get autoMixOff => 'Автомікс вимкнено';

  @override
  String get autoplayOn => 'Автовідтворення увімкнено';

  @override
  String get autoplayOff => 'Автовідтворення вимкнено';

  @override
  String get queueAutoplay => 'Autoplay';

  @override
  String get queueAutoMix => 'AutoMix';

  @override
  String get autoplayFromLibrary => 'Автовідтворення з вашої бібліотеки';

  @override
  String get autoplayDescription =>
      'Продовжувати відтворення схожих пісень із вашої бібліотеки, коли черга закінчиться.';

  @override
  String get autoplayPersonalization => 'Персоналізований автозапуск';

  @override
  String get autoplayPersonalizationDescription =>
      'Навчайтеся на основі пісень, які ви слухаєте та пропускаєте, приватно на цьому пристрої. Вимкнення цієї функції зупинить навчання та відновить звичайне автовідтворення.';

  @override
  String get autoplayResetLearning => 'Скинути налаштування рекомендацій';

  @override
  String get autoplayResetLearningConfirmTitle =>
      'Скинути налаштування рекомендацій?';

  @override
  String get autoplayResetLearningConfirmMessage =>
      'Автовідтворення скидає історію ваших прослуховувань і пропускає треки. Цю дію не можна скасувати.';

  @override
  String get autoplayResetLearningConfirm => 'Скинути';

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
  String get profileTitle => 'Профіль';

  @override
  String get profileSetUp => 'Налаштуйте свій профіль';

  @override
  String get profileEdit => 'Редагувати ім\'я та фотографію';

  @override
  String get backupIncludesProfile =>
      'Включає ім\'я та фотографію вашого профілю';

  @override
  String get profileName => 'Ім’я';

  @override
  String get profileNameHint => 'Ваше ім\'я';

  @override
  String get profileChangePhoto => 'Вибрати фото';

  @override
  String get profileRemovePhoto => 'Видалити фото';

  @override
  String get profilePhotoError => 'Виберіть коректне зображення менш як 20 Mb.';

  @override
  String get profileSaveError =>
      'Не вдалося зберегти ваш профіль. Будь ласка, спробуйте ще раз.';

  @override
  String get homeGreetingMorning1 => 'Доброго ранку';

  @override
  String get homeGreetingMorning2 => 'Прокидайся і співай';

  @override
  String get homeGreetingMorning3 => 'Почати спочатку';

  @override
  String get homeGreetingAfternoon1 => 'Доброго дня';

  @override
  String get homeGreetingAfternoon2 => 'Денний ритм';

  @override
  String get homeGreetingAfternoon3 => 'Не збавляй обертів';

  @override
  String get homeGreetingEvening1 => 'Доброго вечора';

  @override
  String get homeGreetingEvening2 => 'Час відпочити';

  @override
  String get homeGreetingEvening3 => 'Золотий час';

  @override
  String get homeGreetingNight1 => 'Доброї ночі';

  @override
  String get homeGreetingNight2 => 'Нічний сеанс';

  @override
  String get homeGreetingNight3 => 'Режим тиші';

  @override
  String homeGreetingNamed(String greeting, String name) {
    return '$greeting, $name';
  }

  @override
  String get homeTaglineListening => 'Що слухаємо?';

  @override
  String get homeTaglineLink => 'Маєте посилання? Вставте його в пошук';

  @override
  String get homeTaglineDiscover => 'Шукайте наступний улюблений альбом';

  @override
  String get homeContinueListening => 'Продовжити відтворення';

  @override
  String get homeRecentlyPlayed => 'Recently Played';

  @override
  String get homeRecentlyAdded => 'Нещодавно додані';

  @override
  String get homeOnRepeat => 'На повторі';

  @override
  String get homeShortcuts => 'Швидкі команди';

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
  String get artistUpcomingConcerts => 'Майбутні концерти';

  @override
  String get artistAllUpcomingConcerts => 'Всі майбутні концерти';

  @override
  String get artistNoUpcomingConcerts => 'Немає майбутніх концертів.';

  @override
  String get motionArtwork => 'Анімована обкладинка';

  @override
  String get listeningStats => 'Статистика прослуховувань';

  @override
  String get listeningStatsRecord => 'Запис прослуховувань';

  @override
  String get listeningStatsDescription =>
      'Зберігається лише на цьому пристрої, починаючи відтепер. Враховується лише вбудований програвач; паузи, буферизація та перемотування не додають часу прослуховування. Прослуховування зараховується після 30 секунд.';

  @override
  String get listeningStatsEmpty =>
      'Увімкніть музику у вбудованому програвачі, щоб розпочати підсумок вашого прослуховування. Попередні прослуховування відновити неможливо.';

  @override
  String listeningStatsDays(int days) {
    return '$days Дні';
  }

  @override
  String listeningStatsMinutes(int minutes) {
    return '$minutes Хв';
  }

  @override
  String listeningStatsTotals(int plays, int tracks, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      plays,
      locale: localeName,
      other: '$plays відтворень',
      one: '1 відтворення',
    );
    String _temp1 = intl.Intl.pluralLogic(
      tracks,
      locale: localeName,
      other: '$tracks треків',
      one: '1 трек',
    );
    String _temp2 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days активних днів',
      one: '1 активний день',
    );
    return '$_temp0 · $_temp1 · $_temp2';
  }

  @override
  String get listeningStatsPreviousYear => 'Попередній рік';

  @override
  String get listeningStatsNextYear => 'Наступний рік';

  @override
  String get listeningStatsActivity => 'Останні дні прослуховування · хвилини';

  @override
  String get listeningStatsTopArtists => 'Топ виконавці';

  @override
  String get listeningStatsTopTracks => 'Найкращі треки';

  @override
  String get listeningStatsLoadError =>
      'Не вдалося завантажити статистику прослуховувань';

  @override
  String get listeningStatsClear => 'Очистити статистику прослуховувань';

  @override
  String get listeningStatsClearError =>
      'Не вдалося очистити статистику прослуховування. Будь ласка, спробуйте ще раз.';

  @override
  String get listeningStatsClearDescription =>
      'Видалити всю статистику прослуховувань на цьому пристрої? Ваша музика та списки треків збережуться.';

  @override
  String get libraryArtistsEmpty =>
      'Виконавці з’являться тут, щойно ви завантажите музику або проскануєте локальну бібліотеку.';

  @override
  String get listeningRewind => 'Перемотати назад';

  @override
  String get listeningRewindDescription => 'Найцікавіше за останні місяці';

  @override
  String get listeningRewindChoosePeriod => 'Оберіть період';

  @override
  String listeningRewindLastWeeks(int weeks) {
    return 'Останні $weeks тижні';
  }

  @override
  String listeningRewindLastMonths(int months) {
    return 'За останній $months місяці';
  }

  @override
  String listeningRewindThisYear(int year) {
    return 'За весь $year рік';
  }

  @override
  String get listeningRewindIntroTitle => 'Ваш підсумок';

  @override
  String listeningRewindIntroBody(String start, String end) {
    return 'Огляд того, що ви відтворювали з $start по $end.';
  }

  @override
  String get listeningRewindMinutesTitle => 'Ви слухали';

  @override
  String listeningRewindMinutesUnit(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '# хвилини',
      many: '# хвилин',
      few: '# хвилини',
      one: '# хвилина',
    );
    return '$_temp0';
  }

  @override
  String listeningRewindHours(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: 'Це приблизно $hours годин музики',
      one: 'Це приблизно 1 година музики',
    );
    return '$_temp0';
  }

  @override
  String listeningRewindMore(int percent) {
    return 'На $percent% більше, ніж за попередній період';
  }

  @override
  String listeningRewindLess(int percent) {
    return 'На $percent% менше, ніж за попередній період';
  }

  @override
  String get listeningRewindSame =>
      'Приблизно так само, як за попередній період';

  @override
  String get listeningRewindTopArtistTitle => 'Ваш найкращий виконавець';

  @override
  String listeningRewindArtistShare(int percent) {
    return '$percent% від вашого часу прослуховування';
  }

  @override
  String get listeningRewindArtistsTitle => 'Чергування виконавців';

  @override
  String get listeningRewindTopTrackTitle => 'Ваш найкраща пісня';

  @override
  String listeningRewindPlays(int plays) {
    String _temp0 = intl.Intl.pluralLogic(
      plays,
      locale: localeName,
      other: '$plays відтворювань',
      one: '1 відтворювався',
    );
    return '$_temp0';
  }

  @override
  String get listeningRewindTracksTitle => 'Часто прослуховувані';

  @override
  String get listeningRewindTopAlbumTitle => 'Твій улюблений альбом';

  @override
  String get listeningRewindNewArtistsTitle => 'Нові відкриття';

  @override
  String listeningRewindNewArtistsBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Знайдено $count нов. виконавця ці ців',
      one: 'Знайдено 1 нового виконавця',
    );
    return '$_temp0';
  }

  @override
  String get listeningRewindRhythmTitle => 'Темп прослуховування';

  @override
  String get listeningRewindPeakDay => 'Найактивніший день';

  @override
  String get listeningRewindFavoriteDay => 'Улюблений день';

  @override
  String get listeningRewindStreak => 'Рекордна серія';

  @override
  String listeningRewindStreakDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days днів підряд',
      one: '1 день',
    );
    return '$_temp0';
  }

  @override
  String get listeningRewindReplayTitle => 'Не міг відірватися';

  @override
  String listeningRewindReplayBody(int plays, String date) {
    return 'Ви відтворили це $plays раз $date';
  }

  @override
  String get listeningRewindOutroTitle => 'Твій підсумок';

  @override
  String get listeningRewindOutroBody =>
      'Слухай далі! Твій наступний Спогад уже готується.';

  @override
  String get listeningRewindEmpty =>
      'За цей період ви прослухали замало треків. Запустіть щось у вбудованому програвачі та завітайте сюди згодом.';

  @override
  String get listeningRewindLoadError => 'Не вдалося завантажити ваш Спогад';

  @override
  String listeningRewindSlide(int index, int count) {
    return 'Слайд $index із $count';
  }

  @override
  String get listeningRewindShare => 'Поділитися';

  @override
  String get listeningRewindShareError =>
      'Помилка під час поширення вашого Спогаду';

  @override
  String get listeningRewindNext => 'Далі';

  @override
  String get listeningRewindPrevious => 'Назад';

  @override
  String get listeningRewindMonthlyReady =>
      'Ваш підсумок за останні 4 тижні готовий до перегляду';

  @override
  String listeningRewindYearTitle(String year) {
    return 'Ваш $year в музиці';
  }

  @override
  String get listeningRewindYearEyebrow => 'Підсумки року';

  @override
  String get listeningRewindYearBanner =>
      'Твої найкращі виконавці, пісні та моменти року';

  @override
  String get listeningRewindYearIntroBody =>
      'Усе, що ви слухали цього року: від першої пісні до найактивнішого місяця.';

  @override
  String get listeningRewindNumbersTitle => 'Підсумки року в цифрах';

  @override
  String get listeningRewindSongsLabel => 'Пісні';

  @override
  String get listeningRewindArtistsLabel => 'Виконавці';

  @override
  String get listeningRewindAlbumsLabel => 'Альбоми';

  @override
  String get listeningRewindDaysLabel => 'Дні з музикою';

  @override
  String listeningRewindDaysShare(int percent) {
    return 'З музикою $percent% ваших днів';
  }

  @override
  String get listeningRewindMonthsTitle => 'Помісячно';

  @override
  String get listeningRewindBiggestMonthLabel => 'Піковий місяць';

  @override
  String listeningRewindBiggestMonth(String month) {
    return 'Ваш піковий місяць: $month';
  }

  @override
  String get listeningRewindMonthlyArtistsTitle => 'Виконавець місяця';

  @override
  String get listeningRewindLoyalTitle => 'Завжди поруч';

  @override
  String listeningRewindLoyalBody(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'З вами протягом $days різних днів',
      one: 'Разом із вами 1 день',
    );
    return '$_temp0';
  }

  @override
  String get listeningRewindFirstSongTitle => 'З чого почався твій рік';

  @override
  String listeningRewindFirstSongBody(String date) {
    return 'Пісня, яку ви найбільше слухали в перший день, $date';
  }

  @override
  String listeningRewindYearOutroTitle(String year) {
    return 'Це був ваш $year';
  }

  @override
  String get listeningRewindYearOutroBody => 'Ще один рік чудової музики.';

  @override
  String get weeklyReleases => 'Нові релізи';

  @override
  String get weeklyReleasesDescription =>
      'Нещодавні альбоми та сингли від ваших улюблених виконавців, надані встановленими розширеннями метаданих.';

  @override
  String get weeklyReleasesEmpty =>
      'Не знайдено жодного релізу за цей час. Додайте своїх улюблених артистів або спробуйте збільшити період пошуку.';

  @override
  String get weeklyReleasesUnavailable =>
      'Не вдалося перевірити деяких виконавців, тому їхні збережені результати залишено. Провайдери можуть не надавати каталоги виконавців або точні дати релізів.';

  @override
  String get weeklyReleasesLoadError =>
      'Не вдалося перевірити нові релізи. Потягніть, щоб оновити.';

  @override
  String get motionArtworkDescription =>
      'Анімовані обкладинки надаються провайдерами метаданих. Вимкніть, щоб використовувати статичні зображення та економити заряд батареї.';

  @override
  String get libraryLoading => 'Завантаження бібліотеки…';

  @override
  String get libraryLoadFailed =>
      'Не вдалося завантажити бібліотеку. Спробуйте знову завантажити збережені теки та індекс треків.';

  @override
  String get discordPresenceDescription =>
      'Показуйте назву, виконавця, альбом і прогрес відтворення музики, яка грає у вбудованому програвачі у вашому профілі Discord. Локальні аудіофайли та обкладинки ніколи не завантажуються [в мережу]. Очищається, коли відтворення призупиняється або зупиняється.';

  @override
  String get discordPresenceDisabled => 'Вимкнено';

  @override
  String get discordPresenceLink => 'Прив’язати обліковий запис Discord';

  @override
  String get discordPresenceConnecting => 'Підключення до Discord…';

  @override
  String get discordPresenceReady => 'Готовий, коли грає музика';

  @override
  String get discordPresenceActive => 'Поширити поточний трек';

  @override
  String get discordPresenceUnavailable =>
      'Discord зараз недоступний. Спробуємо під\'єднатися знову під час відтворення.';

  @override
  String get discordPresenceBuildUnavailable =>
      'Discord SDK недоступний у цій версії програми.';

  @override
  String get discordPresenceAndroidHelp =>
      'Встановіть Discord і увійдіть у свій обліковий запис на цьому телефоні. Дозвольте поширення статусу активності в Discord. Зовнішні програвачі не підтримуються.';

  @override
  String get discordPresenceIosHelp =>
      'Прив’яжіть свій обліковий запис через Discord і дозвольте поширення статусів активності. Якщо не вдалося пройти авторизацію, торкніться, щоб спробувати знову.';

  @override
  String get discordPresenceDesktopHelp =>
      'Переконайтеся, що додаток Discord запущено й виконано вхід на цьому комп’ютері, а в налаштуваннях Discord дозволено показувати статус активності.';

  @override
  String get discordPresenceDisconnect =>
      'Від’єднати та видалити обліковий запис';

  @override
  String get autoMixSettingsTitle => 'Поєднання переходів';

  @override
  String get autoMixAutomaticDuration => 'Автоматична тривалість';

  @override
  String get autoMixDuration => 'Тривалість змішування';

  @override
  String get autoMixEffect => 'Ефект переходу';

  @override
  String get autoMixEffectAuto => 'Авто';

  @override
  String get autoMixEffectCrossfade => 'Плавний перехід';

  @override
  String get autoMixEffectMuffled => 'Приглушений';

  @override
  String get autoMixEffectEcho => 'Ехо';

  @override
  String get autoMixEffectPitch => 'Висота';

  @override
  String get autoMixEffectCustom => 'Власний';

  @override
  String get autoMixEffectsHelp =>
      'Ефекти застосовуються до завершальної частини попередньої композиції під час зведення. Для коротких композицій використовується коротший інтервал накладання.';

  @override
  String get autoMixSpeed => 'Швидкість';

  @override
  String get autoMixPitch => 'Висота тону (в півтонах)';

  @override
  String get autoMixEcho => 'Ехо';

  @override
  String get autoMixLowPass => 'Заглушений фільтр';

  @override
  String get autoMixMixing => 'Змішування';

  @override
  String get autoMixCrossfading => 'Плавний перехід';

  @override
  String get playbackAutomation => 'Автовідтворення';

  @override
  String get playbackPauseOnMute => 'Ставити на паузу, коли звук вимкнено';

  @override
  String get snackbarPlaybackMuted =>
      'Гучність мультимедіа дорівнює нулю. Відтворення зупинено. Натисніть «Відтворити» знову, щоб продовжити.';

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
      'Призупиняти при нульовій гучності медіа та відновлювати при її збільшенні. Ручні паузи зберігаються. Тільки стандартний аудіовихід.';

  @override
  String get playbackOnHeadphonesConnected =>
      'Відтворювати після підключення навушників';

  @override
  String get playbackOnHeadphonesConnectedDescription =>
      'Відновлювати відтворення поточної пісні під час підключення дротових або Bluetooth-навушників. Відключення призупиняє відтворення. Тільки для вбудованого програвача.';

  @override
  String get appearanceCustomFont => 'Користувацький шрифт';

  @override
  String get appearanceCustomFontSubtitle =>
      'Імпорт файлу TTF або OTF (до 10 МБ). Перевизначає шрифт теми та системи.';

  @override
  String get appearanceCustomFontInvalid =>
      'Не вдалося завантажити цей шрифт. Виберіть дійсний файл формату TTF або OTF розміром до 10 МБ.';

  @override
  String get appearanceCustomFontReset => 'Використовуйте шрифт теми';

  @override
  String get equalizerTitle => 'Еквалайзер';

  @override
  String get equalizerDescription =>
      '5–31 Смуговий, Тембр, Передпідсилювач / Динаміка';

  @override
  String get equalizerEnable => 'Увімкнути еквалайзер';

  @override
  String get equalizerBands => 'Смуги';

  @override
  String get equalizerTone => 'Тембр і Стерео';

  @override
  String get equalizerPreamp => 'Передпідсилювач';

  @override
  String get equalizerBass => 'Низькі частоти';

  @override
  String get equalizerTreble => 'Високі частоти';

  @override
  String get equalizerBalance => 'Баланс';

  @override
  String get equalizerDynamics => 'Динаміка';

  @override
  String get equalizerHeadroom => 'Автозапас за рівнем';

  @override
  String get equalizerHeadroomDescription =>
      'Зменшує вхідне підсилення, щоб уникнути перевантаження при підсиленні частот.';

  @override
  String get equalizerLimiter => 'Піковий обмежувач';

  @override
  String get equalizerLimiterDescription =>
      'Обмежуйте піки до −0.5 dBFS для захисту від перевантаження.';

  @override
  String get equalizerCompressor => 'Компресор';

  @override
  String get equalizerCompressorDescription =>
      'Зменшує різницю між тихими та гучними звуками.';

  @override
  String get equalizerThreshold => 'Поріг';

  @override
  String get equalizerRatio => 'Стиснення';

  @override
  String get equalizerAttack => 'Атака';

  @override
  String get equalizerRelease => 'Відновлення';

  @override
  String get equalizerPresets => 'Шаблони';

  @override
  String get equalizerSavePreset => 'Зберегти шаблон';

  @override
  String get equalizerPresetName => 'Назва шаблону';

  @override
  String get equalizerImport => 'Імпортувати шаблон';

  @override
  String get equalizerExport => 'Поділитися шаблоном';

  @override
  String get equalizerImportInvalid =>
      'Виберіть коректний файл шаблона еквалайзера Toadplayer (JSON, до 64 KB).';

  @override
  String get equalizerSaved => 'Шаблон збережено';

  @override
  String get equalizerResetTitle => 'Скинути еквалайзер?';

  @override
  String get equalizerResetDescription =>
      'Повернення до плоскої кривої, стандартного тембру та динаміки. Збережені шаблони залишаться.';

  @override
  String get equalizerBypass =>
      'Режими Bit-perfect, Direct USB та ексклюзивний вивід Hi-Res обходять еквалайзер. Вимкніть Bit-perfect, щоб увімкнути еквалайзер. Зовнішні програвачі керують власними ефектами.';

  @override
  String get equalizerCurve => 'Крива EQ (розрахункова)';

  @override
  String get equalizerCurveDescription =>
      'Крива зображає підсилення смуг; точний результат залежить від рушія відтворення.';

  @override
  String get equalizerEffectivePreamp => 'Вхідне підсилення після автозапасу';

  @override
  String get equalizerDeletePreset => 'Видалити шаблон';

  @override
  String get equalizerCustom => 'Власний';

  @override
  String get equalizerManagePresets => 'Керування шаблонами';

  @override
  String get lyricsShareTitle => 'Поділитися текстом пісні';

  @override
  String lyricsShareSelectHint(int count) {
    return 'Виберіть до $count рядків';
  }

  @override
  String lyricsShareLimit(int count) {
    return 'Ви можете поділитися до $count рядків';
  }

  @override
  String get lyricsShareAction => 'Поділитися';

  @override
  String get lyricsShareError =>
      'Не вдалося створити зображення з текстом пісні';

  @override
  String get lyricsShareBackgroundArtwork => 'Обкладинка';

  @override
  String get lyricsShareBackgroundColor => 'Колір обкладинки';

  @override
  String get lyricsShareBackgroundDark => 'Темна';

  @override
  String get lyricsShareBackgroundLight => 'Світла';

  @override
  String get audioInfoTitle => 'Інформація про аудіо';

  @override
  String get audioInfoSource => 'Вихідний файл';

  @override
  String get audioInfoSignal => 'Сигнал';

  @override
  String get audioInfoLoudness => 'Гучність';

  @override
  String get audioInfoProcessing => 'Обробка даних';

  @override
  String get audioInfoOutput => 'Вивід';

  @override
  String get audioInfoAnalysis => 'Аналіз спектра та рівня';

  @override
  String get audioInfoQuality => 'Якість';

  @override
  String get audioInfoHiResLossless => 'Hi-Res Lossless';

  @override
  String get audioInfoLossless => 'Lossless';

  @override
  String get audioInfoLossy => 'Lossy';

  @override
  String get audioInfoFormat => 'Формат';

  @override
  String get audioInfoCodec => 'Кодек';

  @override
  String get audioInfoSampleRate => 'Частота дискретизації';

  @override
  String get audioInfoBitDepth => 'Розрядність';

  @override
  String get audioInfoChannels => 'Канали';

  @override
  String audioInfoChannelCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count канали',
      two: 'Стерео',
      one: 'Моно',
    );
    return '$_temp0';
  }

  @override
  String get audioInfoBitrate => 'Швидкість потоку';

  @override
  String get audioInfoDuration => 'Тривалість';

  @override
  String get audioInfoFileSize => 'Розмір файлу';

  @override
  String get audioInfoCompression => 'Компресія';

  @override
  String audioInfoCompressionValue(String percent) {
    return '$percent% від початкового розміру';
  }

  @override
  String get audioInfoLocation => 'Розташування';

  @override
  String get audioInfoLocationLocal => 'Пам’ять пристрою';

  @override
  String get audioInfoLocationShared => 'Загальна тека';

  @override
  String get audioInfoLocationNetwork => 'Мережеве сховище';

  @override
  String audioInfoLocationLink(String device) {
    return '$device via Toadplayer Link';
  }

  @override
  String get audioInfoPcmRate => 'Швидкість нестиснених даних';

  @override
  String get audioInfoFrequencyRange => 'Частотний діапазон';

  @override
  String audioInfoFrequencyRangeValue(String frequency) {
    return 'До $frequency (Nyquist)';
  }

  @override
  String get audioInfoDynamicRange => 'Теоретичний динамічний діапазон';

  @override
  String get audioInfoTrackGain => 'Підсилення треку';

  @override
  String get audioInfoTrackPeak => 'Пік треку';

  @override
  String get audioInfoAlbumGain => 'Підсилення альбому';

  @override
  String get audioInfoAlbumPeak => 'Пік альбому';

  @override
  String get audioInfoNoGainTags => 'Теги ReplayGain відсутні';

  @override
  String audioInfoApplied(String gain) {
    return 'Застосовано: $gain';
  }

  @override
  String get audioInfoOn => 'Увімкнути';

  @override
  String get audioInfoOff => 'Вимкнути';

  @override
  String get audioInfoBypassed => 'В обхід через прямий вивід';

  @override
  String get audioInfoPlayer => 'Програвач';

  @override
  String get audioInfoPlayerValue => 'Вбудований програвач Toadplayer';

  @override
  String get audioInfoSignalPath => 'Шлях сигналу';

  @override
  String get audioInfoPathSystem => 'Системний мікшер';

  @override
  String get audioInfoPathDirect => 'Direct USB, в обхід системного мікшера';

  @override
  String get audioInfoPathExclusive =>
      'Ексклюзивний вивід, в обхід системного мікшера';

  @override
  String get audioInfoDecoder => 'Декодер';

  @override
  String get audioInfoHardware => 'Апаратне забезпечення';

  @override
  String get audioInfoSoftware => 'Програмне забезпечення';

  @override
  String audioInfoBands(int count) {
    return '$count Смуг';
  }

  @override
  String get audioInfoTempo => 'Темп';

  @override
  String get audioInfoResampling => 'Передискретизація';

  @override
  String get audioInfoResamplingNone => 'Немає, частоти збігаються';

  @override
  String get audioInfoBitPerfect => 'Bit-perfect';

  @override
  String get audioInfoBitPerfectActive => 'Так, семпли без змін';

  @override
  String get audioInfoBitPerfectNo => 'Ні, змішано системою';

  @override
  String get audioInfoBitPerfectUnverified => 'Not verified';

  @override
  String get audioInfoBitPerfectProcessed => 'No, audio processing is active';

  @override
  String get audioInfoDevice => 'Пристрій';

  @override
  String audioInfoDeviceType(String type) {
    String _temp0 = intl.Intl.selectLogic(type, {
      'speaker': 'Динамік смартфона',
      'earpiece': 'Розмовний динамік',
      'wired_headphones': 'Дротові навушники',
      'wired_headset': 'Дротова гарнітура',
      'line': 'Лінійний вихід',
      'bluetooth': 'Bluetooth',
      'bluetooth_le': 'Bluetooth LE Audio',
      'usb': 'USB аудіо',
      'usb_headset': 'USB гарнітура',
      'hdmi': 'HDMI',
      'dock': 'Док-станція',
      'cast': 'Трансляція',
      'hearing_aid': 'Слуховий апарат',
      'airplay': 'AirPlay',
      'car': 'Автомобільна аудіосистема',
      'other': 'Інше',
    });
    return '$_temp0';
  }

  @override
  String get audioInfoOutputRate => 'Вихідна частота дискретизації';

  @override
  String get audioInfoOutputFormat => 'Вихідний формат';

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
  String get audioInfoDeviceRates => 'Частоти дискретизації пристрою';

  @override
  String get audioInfoDeviceFormats => 'Формати пристрою';

  @override
  String get audioInfoAnyRate => 'Усі';

  @override
  String get audioInfoBuffer => 'Буфер мікшера';

  @override
  String get audioInfoLatency => 'Вихідна затримка';

  @override
  String get audioInfoLowLatency => 'Аудіо з низькою затримкою';

  @override
  String get audioInfoProAudio => 'Професійне аудіо';

  @override
  String get audioInfoSupported => 'Підтримується';

  @override
  String get audioInfoNotSupported => 'Не підтримується';

  @override
  String get audioInfoSpatial => 'Просторовий звук';

  @override
  String get audioInfoHeadTracking => 'Відстеження рухів голови';

  @override
  String get audioInfoUnavailable => 'Недоступно';

  @override
  String get audioInfoFixedVolume => 'Керується пристроєм';

  @override
  String get audioInfoCopy => 'Копіювати звіт';

  @override
  String get audioInfoCopied => 'Інформацію про аудіо скопійовано';

  @override
  String get lyricsTextSize => 'Розмір тексту пісні';

  @override
  String get lyricsTextPreview =>
      'Слідкуйте за кожним рядком своєї улюбленої пісні';

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
  String get appCrashTitle => 'Застосунок завершив роботу з помилкою';

  @override
  String get appAnrTitle => 'Попередній запуск програми завершився збоєм';

  @override
  String get appAnrMessage =>
      'Створено діагностичний звіт. Ви можете скопіювати його та надіслати розробнику, щоб допомогти в усуненні помилки.';

  @override
  String get appCrashMessage =>
      'Звіт про збій збережено. Скопіюйте його та надішліть розробнику, щоб допомогти у розв\'язання проблеми.';

  @override
  String get appCrashDetails => 'Переглянути помилку та журнал';

  @override
  String get appCrashCopy => 'Скопіювати звіт для розробника';

  @override
  String get appCrashDismiss => 'Відхилити';

  @override
  String get appCrashCopyFailed =>
      'Не вдалося скопіювати звіт про збій. Будь ласка, спробуйте ще раз.';

  @override
  String get appCrashDismissFailed =>
      'Не вдалося закрити звіт про збій. Будь ласка, спробуйте ще раз.';

  @override
  String get optionsEmbeddedCoverSizeOriginal => 'Вихідна роздільна здатність';

  @override
  String desktopShortcutTooltip(String action, String shortcut) {
    return '$action ($shortcut)';
  }

  @override
  String get desktopPlayerIdle => 'Не відтворюється';

  @override
  String get desktopVolumeUp => 'Збільшити гучність';

  @override
  String get desktopVolumeDown => 'Зменшити гучність';

  @override
  String desktopTableSortedAscending(String column) {
    return '$column Від найдавніших';
  }

  @override
  String desktopTableSortedDescending(String column) {
    return '$column Від найновіших';
  }

  @override
  String get desktopMenuOpen => 'Відкрити';

  @override
  String get desktopMenuShowDetails => 'Показати деталі';

  @override
  String get desktopDropToImport =>
      'Перетягніть сюди, щоб додати до бібліотеки';

  @override
  String desktopDropImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'тек',
      one: 'теку',
    );
    return 'Додати $count $_temp0 до вашої бібліотеки';
  }

  @override
  String get desktopDropNothingToImport =>
      'Перетягніть сюди музичні файли або теки, щоб додати їх до бібліотеки';

  @override
  String get desktopAllPlaylists => 'Усі списки відтворення';

  @override
  String get desktopMenuSettings => 'Налаштування…';

  @override
  String get desktopMenuFile => 'Файл';

  @override
  String get desktopMenuEdit => 'Редагувати';

  @override
  String get desktopMenuView => 'Перегляд';

  @override
  String get desktopWindowMode => 'Віконний режим';

  @override
  String get desktopWindowed => 'Віконний';

  @override
  String get desktopWindowFullscreen => 'На весь екран';

  @override
  String get desktopWindowBorderless => 'Без рамок';

  @override
  String get desktopExitFullscreen => 'Вийти з повноекранного режиму';

  @override
  String get desktopMinimizeWindow => 'Згорнути вікно';

  @override
  String get desktopZoomWindow => 'Розгорнути вікно';

  @override
  String get desktopWindowModeUnavailable =>
      'Не вдалося змінити віконний режим. Зачекайте, поки завершиться анімація вікна, і спробуйте ще раз.';

  @override
  String get desktopMenuControls => 'Керування';

  @override
  String get desktopMenuWindow => 'У вікні';

  @override
  String get desktopMenuHelp => 'Допомога';

  @override
  String get desktopMenuPlayPause => 'Відтворення/Пауза';

  @override
  String get desktopMenuMiniPlayer => 'Міні програвач';

  @override
  String get desktopMiniPlayerExpand => 'Показати у повному вікні';

  @override
  String get desktopMenuRefresh => 'Оновити';

  @override
  String get desktopMenuProjectPage => 'Сторінка проєкту';

  @override
  String get desktopDownloadsShowAll => 'Показати все';

  @override
  String get desktopDownloadsQueued => 'Очікування';

  @override
  String get desktopDownloadsCancel => 'Скасувати завантаження';

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
  String get desktopScrollBack => 'Прокрутити назад';

  @override
  String get desktopScrollForward => 'Прокрутити вперед';

  @override
  String get settingsKeyboardShortcuts => 'Комбінації клавіш';

  @override
  String get settingsKeyboardShortcutsSubtitle =>
      'Клавіші для відтворення, навігації та панелей';

  @override
  String get desktopShortcutsNavigation => 'Навігація';

  @override
  String get desktopShortcutDismiss => 'Закрити діалогове вікно або сторінку';

  @override
  String get desktopShortcutForward => 'Forward';

  @override
  String get desktopShortcutToggleSidebar =>
      'Показати або сховати бічну панель';

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
