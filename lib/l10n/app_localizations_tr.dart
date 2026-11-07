// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

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
      'Güvenli olmayan uzantı depolaması kullan';

  @override
  String get extensionsUnsecuredStorageDescription =>
      'Uzantıları Linux anahtarlığı olmadan çalıştırın. Anahtar yerel olarak kaydedilir, bu nedenle uygulama dosyalarınıza erişimi olan herkes uzantı kimlik bilgilerini okuyabilir. Kapalı seçeneği sistem anahtarlığını kullanır.';

  @override
  String get extensionsStorageKeyringRequired =>
      'Mevcut uzantı verileri özgün anahtarını gerektiriyor. Sistem anahtarlığının kilidini bir kez açın, ardından güvenli olmayan depolamayı yeniden etkinleştirin. Verileriniz korundu.';

  @override
  String get extensionsStorageKeyConflict =>
      'Yerel ve sistem anahtarlığı anahtarları farklı. Depolama değiştirilmedi ve her iki anahtar da korundu.';

  @override
  String get extensionsStorageKeyringUnavailable =>
      'Sistem anahtarlığı kullanılamıyor veya kilitli. Güvenli depolamaya geçmeden önce başlatın veya kilidini açın. Yerel anahtarınız korundu.';

  @override
  String linkFileActionOn(String action, String name) {
    return '$name üzerinde $action';
  }

  @override
  String linkFileActionsDescription(String name) {
    return 'Değişiklikler $name üzerindeki müzik dosyalarına uygulanır. Bu telefon bağlantıyı keserse kabul edilen işlem devam eder.';
  }

  @override
  String linkFileDeleteConfirm(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'müzik dosyası',
      one: 'müzik dosyası',
    );
    return '$name üzerinden $count $_temp0 silinsin mi? Bu, dosyaları o bilgisayarın depolamasından kaldırır.';
  }

  @override
  String get linkFileJobs => 'Dosya değişiklikleri';

  @override
  String linkFileJobsSubtitle(String name) {
    return '$name üzerindeki düzenlemeler, dönüştürmeler ve silmeler';
  }

  @override
  String get linkFileJobsEmpty => 'Henüz dosya değişikliği yok';

  @override
  String get linkFileJobsEmptyMessage =>
      'Bu telefondan bilgisayardaki şarkılarda başlattığınız düzenlemeler, dönüştürmeler ve silmeler burada görünür.';

  @override
  String get linkDesktopFileJobsSubtitle =>
      'Telefonlarınızdan istenen değişiklikler';

  @override
  String get linkDesktopFileJobsEmptyMessage =>
      'Telefonlarınızdan istenen düzenlemeler, dönüştürmeler ve silmeler burada görünür.';

  @override
  String linkFileJobRequestedBy(String name) {
    return '$name tarafından';
  }

  @override
  String get linkFileJobsView => 'Görüntüle';

  @override
  String get linkFileJobsUnsupported =>
      'Müzik dosyalarını bu telefondan yönetmek için bilgisayarınızda Toadplayer\'yi güncelleyin.';

  @override
  String get linkFileSelectionOneDevice =>
      'Şarkıları aynı anda tek bir bağlı bilgisayardan seçin (en fazla 100 şarkı).';

  @override
  String linkFileJobProgress(int finished, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: 'şarkı',
      one: 'şarkı',
    );
    return '$finished / $total $_temp0';
  }

  @override
  String linkFileJobFailedCount(int count) {
    return '$count başarısız';
  }

  @override
  String linkFileJobFinished(String action, String name) {
    return '$name üzerinde $action tamamlandı';
  }

  @override
  String get linkFileDeleting => 'Siliniyor...';

  @override
  String get linkFileReading => 'Etiketler okunuyor...';

  @override
  String get linkFileSavingCover => 'Albüm kapağı kaydediliyor...';

  @override
  String get linkFileCancelHint => 'Geçerli şarkıdan sonra durdur';

  @override
  String get linkFileJobCancelled => 'Durduruldu';

  @override
  String get linkFileJobQueued => 'Sırada';

  @override
  String get linkFileJobCompleted => 'Tamamlandı';

  @override
  String get linkFileChanged =>
      'Dosya önizlemeden bu yana değişti. Kaydetmeden önce tekrar önizleyin.';

  @override
  String get linkFileOperationFailed =>
      'İşlem tamamlanamadı. Ayrıntılar için bilgisayarın günlüklerini kontrol edin.';

  @override
  String get trackBpm => 'BPM';

  @override
  String get trackMood => 'Ruh hali';

  @override
  String get subsonicAddToLibrary => 'Sunucuyu Kitaplığa ekle';

  @override
  String get subsonicLibraryAdded => 'Sunucu Kitaplığa eklendi';

  @override
  String get subsonicLibraryDescription =>
      'Sunucu kataloğunu ve kapak resimlerini Kitaplık ile eşitleyin. Müzik sunucunuzda kalır. Kataloğu güncellemek için Yerel Kitaplık ayarlarından yeniden tarayın.';

  @override
  String get subsonicAuthentication => 'Kimlik doğrulama';

  @override
  String get subsonicToken => 'Tuzlanmış token';

  @override
  String get subsonicPasswordAuth => 'Parola';

  @override
  String get subsonicApiKey => 'API anahtarı';

  @override
  String get subsonicUsername => 'Kullanıcı adı';

  @override
  String get subsonicPassword => 'Parola';

  @override
  String get subsonicSearch => 'Sunucu müziğinde ara...';

  @override
  String get subsonicMoreAlbums => 'Daha fazla albüm';

  @override
  String get subsonicErrorApi =>
      'Sunucu bu API sürümünü veya kimlik doğrulama yöntemini desteklemiyor. Sunucu ayarlarını ve seçilen oturum açma yöntemini kontrol edin.';

  @override
  String get networkDownloadDestination => 'Ağ indirme hedefi';

  @override
  String get networkUseForDownloads => 'Bu klasöre indir';

  @override
  String get networkDownloadSelected => 'Seçili indirme hedefi';

  @override
  String get networkUseLocalDownloads => 'Yerel indirme klasörünü kullan';

  @override
  String get networkDownloadAccessFailed => 'Bu klasöre yazılamadı.';

  @override
  String get networkUploading => 'Ağ depolamasına yükleniyor';

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
      'Şarkıları bu cihazda hazırlayın, ardından NAS\'ınıza yükleyin. Yükleme bitene kadar uygulamayı açık tutun. Yeniden deneme, hazırlanan sesi yeniden kullanır. Mevcut dosyalar korunur; aynı ada sahip yeni indirmeler numaralı bir son ek alır.';

  @override
  String get networkAddToLibrary => 'Klasörü Kitaplığa ekle';

  @override
  String get networkLibraryAdded => 'Klasör Kitaplığa eklendi';

  @override
  String get networkLibraryDescription =>
      'Bu klasörü ve alt klasörlerini tarayın. Müzik sunucunuzda kalır; meta veriler ve kapak resimleri bu cihaza kaydedilir. Yerel Kitaplık ayarlarından yönetebilir veya yeniden tarayabilirsiniz.';

  @override
  String get networkStorage => 'Ağ depolaması';

  @override
  String get networkErrorUnreachable =>
      'Sunucuya ulaşılamadı. Bu telefonun ağa erişebildiğinden ve dosya paylaşım hizmetinin çalıştığından emin olun. SMB için 445 numaralı bağlantı noktası erişilebilir olmalıdır.';

  @override
  String get networkErrorTimeout =>
      'Sunucu zamanında yanıt vermedi. Bağlantıyı kontrol edip tekrar deneyin.';

  @override
  String get networkErrorAuthentication =>
      'Sunucu oturum açmayı reddetti. Kullanıcı adını, parolayı ve etki alanını kontrol edin. Sunucunuz gerektirmedikçe etki alanını boş bırakın.';

  @override
  String get networkErrorPermission =>
      'Bu hesabın bu paylaşımı veya klasörü açma izni yok. Sunucudaki okuma izinlerini kontrol edin.';

  @override
  String get networkErrorLocalPermission =>
      'Yerel ağ erişimine izin verilmiyor. Android uygulama ayarlarından Toadplayer için Yakındaki cihazlar iznini verin, ardından tekrar deneyin.';

  @override
  String get networkErrorShare =>
      'Paylaşım veya klasör bulunamadı. SMB için adresin ardından sunucunun paylaşılan klasör adını kullanın: örneğin smb://sunucu/Music/.';

  @override
  String get networkErrorProtocol =>
      'Sunucu ile bu SMB istemcisi desteklenen bir protokol üzerinde anlaşamadı. Sunucuda SMB2 veya SMB3\'ü etkinleştirin. SMB1 desteklenmez.';

  @override
  String get networkErrorAddress =>
      'Sunucu adresini kontrol edin. SMB için smb://sunucu/paylasim/ veya WebDAV ve HTTP için http:// ya da https:// adresi kullanın.';

  @override
  String get networkConnections => 'Kayıtlı bağlantılar';

  @override
  String get networkServer => 'Sunucu';

  @override
  String get networkCredentials => 'Oturum aç (isteğe bağlı)';

  @override
  String get networkRefresh => 'Yenile';

  @override
  String get networkStorageDescription =>
      'NAS\'ınıza veya müzik sunucunuza bağlanın ve klasörlerine göz atın. Oturum açma bilgileriniz bu cihazda güvenle saklanır.';

  @override
  String get networkAddConnection => 'Bağlantı ekle';

  @override
  String get networkEditConnection => 'Bağlantıyı düzenle';

  @override
  String get networkConnectionName => 'Ad';

  @override
  String get networkAddress => 'Sunucu veya ses URL\'si';

  @override
  String get networkProtocol => 'Protokol';

  @override
  String get networkUsername => 'Kullanıcı adı (isteğe bağlı)';

  @override
  String get networkPassword => 'Parola (isteğe bağlı)';

  @override
  String get networkDomain => 'Etki alanı (isteğe bağlı)';

  @override
  String get networkConnectSave => 'Bağlan ve kaydet';

  @override
  String get networkErrorCertificate =>
      'Sunucunun HTTPS sertifikası doğrulanamadı. Sertifikayı incelemek ve güvenmek için bu bağlantıyı düzenleyin ya da sunucunun HTTPS yapılandırmasını kontrol edin.';

  @override
  String get networkCertificatePrompt =>
      'Bu sunucu güvenilmeyen bir HTTPS sertifikası kullanıyor. Yönlendiriciler ve NAS cihazları genellikle kendinden imzalı sertifikalar kullanır. Güvenmeden önce sunucu adresini ve SHA-256 parmak izini doğrulayın. Güven yalnızca bu sunucudaki bu sertifika için geçerlidir; sertifika değişirse yeniden onay gerekir.';

  @override
  String get networkTrustCertificate => 'Sertifikaya güven ve yeniden dene';

  @override
  String get networkRemoveConnection => 'Bağlantıyı kaldır';

  @override
  String get networkNoFiles =>
      'Desteklenen müzik dosyası veya klasörü bulunamadı.';

  @override
  String get networkConnectionError =>
      'Ağ kaynağına erişilemedi. Sunucu adresini, kimlik bilgilerini ve bağlantıyı kontrol edip yeniden deneyin.';

  @override
  String get extensionAccountTitle => 'Eklenti hesabı';

  @override
  String get extensionAccountInvalidForm =>
      'Eklenti geçersiz bir hesap formu döndürdü.';

  @override
  String get extensionAccountRestartLogin =>
      'Devam etmek için hesap oturumunu yeniden başlatın.';

  @override
  String get extensionAccountRequiredValue => 'Bir değer girin.';

  @override
  String get extensionAccountInvalidNumber => 'Geçerli bir sayı girin.';

  @override
  String get settingsPlaybackSubtitle =>
      'Oynatıcı, ses düzeyi, AutoMix ve ses çıkışı';

  @override
  String get sectionPlayer => 'Oynatıcı';

  @override
  String get sectionVolumeAndTransitions => 'Ses düzeyi ve geçişler';

  @override
  String get sectionAudioOutput => 'Ses çıkışı';

  @override
  String get usbBitPerfect => 'Hi-Res ve bit-perfect ses';

  @override
  String get usbBitPerfectDescription =>
      'Uyumlu çıkışlarda kaynağın hassasiyetini korur. Aşağıdan doğrudan USB veya AAudio özel modunu seçin; aksi halde Android USB çıkışı Android 14 veya üstünü gerektirir. AutoMix ve normalizasyon olmadan bir sonraki parçadan itibaren uygulanır. Sistem ses düzeyi doğrudan USB\'yi kontrol etmeyebilir.';

  @override
  String get usbHardwareVolume => 'DAC donanım ses düzeyi';

  @override
  String get usbVolumeWarningTitle => 'Dinleme ses düzeyinizi kontrol edin';

  @override
  String get usbVolumeWarning =>
      'Doğrudan USB sesi normal oynatmadan çok daha yüksek olabilir ve telefonun ses düğmeleri bunu denetlemeyebilir. Başlamadan önce DAC veya amplifikatör sesini kısın. Desteklendiğinde Toadplayer, bağlantı sırasında DAC\'ı en fazla −40 dB\'ye ayarlar; bu, her amplifikatörde veya kulaklıkta güvenli bir dinleme seviyesi garanti etmez.';

  @override
  String get usbVolumeAccept => 'Anladım';

  @override
  String get usbVolumeUnavailable =>
      'Bu DAC\'te doğrulanmış donanım ses kontrolü olmadığı için oynatma duraklatıldı. DAC veya amplifikatör sesini düşürün, gerekirse sabit ses düzeyli çıkışı etkinleştirin ve parçayı yeniden seçin.';

  @override
  String get usbFixedVolume => 'Sabit ses düzeyli USB çıkışına izin ver';

  @override
  String get usbFixedVolumeDescription =>
      'Uygulamanın erişebildiği ses kontrolü olmayan DAC\'ler için. Kendi ses kontrolü olmayan USB kulaklıklarda kapalı bırakın. Bir sonraki parçadan itibaren uygulanır.';

  @override
  String get usbFixedVolumeWarning =>
      'Uygulama bu çıkışın sesini düşüremez. Ses tam düzeyde başlayabilir ve telefonun ses kaydırıcısı işe yaramaz. Yalnızca DAC veya harici amplifikatörünüzde sesi düşürdükten sonra devam edin. Kendi ses kontrolü olmayan bir kulaklık için bunu etkinleştirmeyin.';

  @override
  String get dapExclusive => 'DAP hi-res (AAudio özel)';

  @override
  String get dapExclusiveDescription =>
      'FLAC/WAV PCM için parçanın orijinal hızında ve hassasiyetinde Oboe/AAudio kullanır. Android 8.1 veya üstü ve uyumlu donanım gerektirir. Özel erişim kontrol edilir; kullanılamayan formatlar normal oynatmayı kullanır. DSD, doğrudan USB sürücüsü gerektirir. Bir sonraki parçadan itibaren uygulanır.';

  @override
  String get dapExclusiveUnavailable =>
      'Bu parça ve mevcut çıkış için AAudio özel erişimi kullanılamıyor. Normal oynatma kullanılıyor. USB DAC için doğrudan USB sürücüsünü deneyin.';

  @override
  String get exclusiveOutputWindows => 'WASAPI özel modu';

  @override
  String get exclusiveOutputMacos => 'Özel erişim (hog modu)';

  @override
  String get exclusiveOutputLinux => 'Doğrudan ALSA çıkışı';

  @override
  String get exclusiveOutputDescriptionWindows =>
      'Çıkışın her parçanın örnekleme hızını ve bit derinliğini izlemesi için Windows mikserini atlayın. Toadplayer aygıtı tutarken diğer uygulamalar ses çalamaz. Bu modda AutoMix ve önizlemeler kapalıdır. Bit-perfect çıkış için sesi %100\'de tutun ve ekolayzer ile normalizasyonu kapatın.';

  @override
  String get exclusiveOutputDescriptionMacos =>
      'Çıkış aygıtını yalnızca Toadplayer için tutun ve her parçanın örnekleme hızına ve bit derinliğine geçirin; böylece Core Audio yeniden örnekleme yapmaz. Toadplayer aygıtı tutarken diğer uygulamalar ses çalamaz. Bu modda AutoMix ve önizlemeler kapalıdır. Bit-perfect çıkış için sesi %100\'de tutun ve ekolayzer ile normalizasyonu kapatın.';

  @override
  String get exclusiveOutputDescriptionLinux =>
      'PipeWire veya PulseAudio\'yu atlayarak doğrudan bir ALSA donanım aygıtına çalın; böylece çıkış her parçanın örnekleme hızını ve bit derinliğini izler. Aygıt boşta olmalıdır: ses sunucusu boştaki kartı birkaç saniye sonra bırakır veya profilini Kapalı olarak ayarlayın. Bu modda AutoMix ve önizlemeler kapalıdır.';

  @override
  String get exclusiveOutputPending => 'Bir parça çalındığında aygıtı alır.';

  @override
  String get exclusiveOutputActive => 'Özel modda çalıyor.';

  @override
  String get exclusiveOutputUnavailableWindows =>
      'Aygıt özel erişimi reddetti, bu nedenle bu parça Windows mikseri üzerinden çalıyor. Aygıtı kullanan diğer uygulamaları kapatın veya aygıtın Windows ses özelliklerinde özel denetime izin verin.';

  @override
  String get exclusiveOutputUnavailableMacos =>
      'Başka bir uygulama çıkış aygıtını tutuyor, bu nedenle bu parça sistem mikseri üzerinden çalıyor.';

  @override
  String get exclusiveOutputUnavailableLinux =>
      'ALSA aygıtı meşgul; genellikle ses sunucusu tarafından tutuluyor, bu nedenle bu parça onun üzerinden çalıyor. Ses ayarlarında kartın profilini Kapalı olarak ayarlayın veya başka bir aygıt seçin.';

  @override
  String get exclusiveOutputDevice => 'Çıkış aygıtı';

  @override
  String get exclusiveOutputDeviceFirst => 'İlk ses kartı';

  @override
  String get exclusiveOutputNoDevices => 'ALSA oynatma aygıtı bulunamadı';

  @override
  String get usbDirect => 'Doğrudan USB sürücüsü';

  @override
  String get usbDirectDescription =>
      'Android USB izniyle FLAC/WAV, DSF/DFF ve WavPack DSD için özel USB sesi kullanır. Yerel DSD, tanınan uyumlu bir DAC gerektirir. Diğer PCM formatları normal oynatmayı kullanır. Bir sonraki parçadan itibaren uygulanır.';

  @override
  String get usbDsdOverPcm => 'DSD over PCM (DoP)';

  @override
  String get usbDsdOverPcmDescription =>
      'Yalnızca DAC\'iniz DoP\'yi açıkça destekliyorsa etkinleştirin. Yerel DSD kullanılamadığında DSF/DFF ve WavPack DSD\'yi bir PCM taşıyıcısı içinde gönderir. Uyumsuz bir cihaz gürültü çalabilir; sıradan USB kulaklıklar için kapalı bırakın.';

  @override
  String get usbDsdUnsupported =>
      'Bu DSD formatı veya bağlı DAC desteklenmiyor. Oynatma durduruldu.';

  @override
  String get usbPermissionDenied =>
      'USB izni verilmedi. Normal oynatma kullanılıyor.';

  @override
  String get usbBitPerfectPending =>
      'Sonraki parça ve uyumlu bir USB çıkışı bekleniyor.';

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
      'Bağlı USB DAC yok. Normal ses çıkışı kullanılıyor.';

  @override
  String get usbBitPerfectFallback =>
      'Bu cihaz veya ses formatı bit-perfect çıkışı desteklemiyor. Normal oynatma kullanılıyor.';

  @override
  String get usbBitPerfectRouteChanged =>
      'USB ses yolu değişti. Oynatma duraklatıldı; yeniden bağlanmak için bir parça seçin.';

  @override
  String get upgradeIntroContinue => 'Devam et';

  @override
  String get cacheMotionArtwork => 'Çevrimdışı hareketli kapaklar';

  @override
  String get cacheMotionArtworkDesc =>
      'İndirmelerle birlikte kaydedilen albüm videoları. Kaldırıldığında müzik dosyalarınız ve sabit kapaklar korunur.';

  @override
  String get nowPlayingVolume => 'Ses';

  @override
  String get appearanceStyle => 'Uygulama stili';

  @override
  String get appearanceAccentRed => 'Kırmızı (varsayılan)';

  @override
  String get appearanceAccentOrange => 'Turuncu';

  @override
  String get appearanceAccentGreen => 'Yeşil';

  @override
  String get appearanceAccentTeal => 'Turkuaz';

  @override
  String get appearanceAccentBlue => 'Mavi';

  @override
  String get appearanceAccentPurple => 'Mor';

  @override
  String get appearanceAccentPink => 'Pembe';

  @override
  String get appearanceGlassClarity => 'Cam netliği';

  @override
  String get appearanceGlassOutlines => 'Cam kenarlıkları';

  @override
  String get appearanceGlassOutlinesSubtitle =>
      'Toadplayer camı çevresinde dekoratif kenarlıklar gösterir. Kapatıldığında bulanıklık ve kırılma korunur.';

  @override
  String get appearanceGlassClaritySubtitle =>
      'Toadplayer menülerinde ve gezinmede saydamlığı ayarlayın. Metin kontrastı korunur.';

  @override
  String get appearanceGlassTinted => 'Renkli';

  @override
  String get appearanceGlassClear => 'Şeffaf';

  @override
  String get appearanceGlassClearPerformance =>
      'Çok şeffaf cam, eski cihazlarda daha fazla güç tüketebilir ve daha az akıcı hissettirebilir. Gerekirse netliği düşürün.';

  @override
  String appearanceGlassClarityBlurOff(String setting) {
    return 'Bu cihazda cam opak. Netliği ayarlamak için \"$setting\" seçeneğini açın.';
  }

  @override
  String appearanceGlassClarityHighContrast(String setting) {
    return 'Sisteminiz daha yüksek kontrast istiyor, bu nedenle cam opak kalıyor. Yine de cam kullanmak için \"$setting\" seçeneğini açın; metin kontrastı korunur.';
  }

  @override
  String get appearanceUseSystemFont => 'Sistem yazı tipini kullan';

  @override
  String get appearanceUseSystemFontSubtitle =>
      'Uygulama metinleri için cihazınızın varsayılan yazı tipini kullanın.';

  @override
  String get appName => 'Toadplayer';

  @override
  String get navHome => 'Ana sayfa';

  @override
  String get navLibrary => 'Kitaplığın';

  @override
  String get navSettings => 'Ayarlar';

  @override
  String get navStore => 'Depo';

  @override
  String get homeTitle => 'Ana sayfa';

  @override
  String get homeEmptyTitle => 'Henüz arama sağlayıcısı yok';

  @override
  String get homeEmptySubtitle => 'Devam etmek için bir eklenti yükleyin.';

  @override
  String get homeRecent => 'En son';

  @override
  String get searchRecentlySearched => 'Son Arananlar';

  @override
  String get searchLibraryPrompt => 'Kitaplığınızda Arayın';

  @override
  String get searchBrowse => 'Gözat';

  @override
  String get historyFilterAll => 'Tümü';

  @override
  String get historyFilterAlbums => 'Albümler';

  @override
  String get historyFilterSingles => 'Single\'lar';

  @override
  String get libraryRecentlyAdded => 'Son eklenenler';

  @override
  String get libraryDownloads => 'İndirilenler';

  @override
  String get libraryNoActiveDownloads => 'Etkin indirme yok';

  @override
  String get librarySearchHint => 'Kitaplığınızda ara';

  @override
  String get libraryEmptyCollection => 'Müzikleriniz burada görünecek';

  @override
  String get libraryFolders => 'Klasörler';

  @override
  String libraryFolderCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count klasör',
      one: '1 klasör',
    );
    return '$_temp0';
  }

  @override
  String get libraryFoldersEmptyTitle => 'Henüz klasör yok';

  @override
  String get libraryFoldersEmptyMessage =>
      'Klasörlere göre göz atmak için şarkı indirin veya Yerel Kitaplık ayarlarından bir müzik klasörü ekleyin.';

  @override
  String get libraryFolderMissing => 'Bu klasör artık kitaplığınızda değil';

  @override
  String get libraryFoldersLoadFailed => 'Klasörleriniz okunamadı';

  @override
  String get settingsTitle => 'Ayarlar';

  @override
  String get settingsDownload => 'İndirme';

  @override
  String get settingsAppearance => 'Görünüm';

  @override
  String get settingsExtensions => 'Eklentiler';

  @override
  String get settingsAbout => 'Hakkında';

  @override
  String get downloadTitle => 'İndirme';

  @override
  String get downloadAskQualitySubtitle =>
      'Her indirmeden önce kalite seçim ekranını göster';

  @override
  String get downloadFilenameFormat => 'Dosya adı formatı';

  @override
  String get downloadSingleFilenameFormat => 'Single Dosya Adı Formatı';

  @override
  String get downloadSingleFilenameFormatDescription =>
      'Single ve EP\'ler için dosya adı örneği. Albüm formatıyla aynı etiketleri kullanır.';

  @override
  String get downloadFolderOrganization => 'Dosya Organizasyonu';

  @override
  String get downloadFolderTemplate => 'Özel Klasör Yapısı';

  @override
  String get downloadFolderTemplateDescription =>
      'Alt klasörler için adlandırma etiketleri ve / kullanın. Kaydetmek, hazır albüm ve tekliler düzeninin yerini alır. Boş klasör adlarında Unknown kullanılır.';

  @override
  String get folderOrganizationCustom => 'Özel şablon';

  @override
  String get folderTemplateInvalid =>
      'Desteklenen etiketlerle göreli bir klasör yolu girin. Boş klasörler, . ve .. kullanılamaz.';

  @override
  String get folderTemplatePreview => 'Örnek klasör yolu';

  @override
  String get folderTemplatePreviewFailed => 'Ön izleme mevcut değil';

  @override
  String get appearanceTitle => 'Görünüm';

  @override
  String get appearanceThemeSystem => 'Sistem';

  @override
  String get appearanceThemeLight => 'Açık';

  @override
  String get appearanceThemeDark => 'Koyu';

  @override
  String get appearanceDynamicColor => 'Dinamik Renk';

  @override
  String get appearanceDynamicColorSubtitle =>
      'Duvar kağıdının renklerini kullan';

  @override
  String get appearanceHistoryView => 'Geçmiş Düzeni';

  @override
  String get appearanceHistoryViewList => 'Liste';

  @override
  String get appearanceHistoryViewGrid => 'Izgara';

  @override
  String get optionsPrimaryProvider => 'Ana Kaynek';

  @override
  String get optionsPrimaryProviderSubtitle =>
      'Parça veya albüm adına göre arama yapmak için kullanılan hizmet';

  @override
  String optionsUsingExtension(String extensionName) {
    return 'Kullanılan eklenti: $extensionName';
  }

  @override
  String get optionsDefaultSearchTab => 'Varsayılan Arama Sekmesi';

  @override
  String get optionsDefaultSearchTabSubtitle =>
      'Yeni arama sonuçları için hangi sekmenin önce açılacağını seçin.';

  @override
  String get optionsAutoFallback => 'Diğerlerini dene';

  @override
  String get optionsAutoFallbackSubtitle =>
      'İndirme başarısız olursa diğer hizmetleri dene';

  @override
  String get optionsEmbedLyrics => 'Şarkı Sözlerini Göm';

  @override
  String get optionsEmbedLyricsSubtitle =>
      'İndirdiğiniz parçaların yanına senkronize edilmiş şarkı sözlerini kaydedin';

  @override
  String get optionsReplayGain => 'ReplayGain';

  @override
  String get optionsReplayGainSubtitleOn =>
      'Ses yüksekliğini tara ve ReplayGain etiketlerini göm (EBU R128)';

  @override
  String get optionsReplayGainSubtitleOff =>
      'Devre dışı: Ses normalleştirme etiketi yok';

  @override
  String get trackReplayGain => 'ReplayGain\'i yeniden tara';

  @override
  String get trackReplayGainScanning => 'Ses yüksekliği analiz ediliyor...';

  @override
  String get trackReplayGainSuccess => 'ReplayGain etiketleri eklendi';

  @override
  String get trackReplayGainFailed => 'ReplayGain etiketleri eklenemedi';

  @override
  String get trackRemoveReplayGain => 'ReplayGain\'i kaldır';

  @override
  String get trackRemoveReplayGainSuccess => 'ReplayGain etiketleri kaldırıldı';

  @override
  String get trackRemoveReplayGainFailed =>
      'ReplayGain etiketleri kaldırılamadı';

  @override
  String get replayGainRemoving => 'ReplayGain kaldırılıyor...';

  @override
  String replayGainRemoveConfirmMessage(int count) {
    return '$count parçadan parça ve albüm ReplayGain etiketleri kaldırılsın mı? Ses, kapak resmi ve diğer meta veriler korunur.';
  }

  @override
  String selectionRemoveReplayGainCount(int count) {
    return 'RG\'yi kaldır ($count)';
  }

  @override
  String replayGainRemoveBatchSuccess(int success, int total) {
    return '$total parçanın $success tanesinden ReplayGain kaldırıldı';
  }

  @override
  String selectionReplayGainCount(int count) {
    return 'ReplayGain ($count)';
  }

  @override
  String get replayGainBatchConfirmTitle => 'ReplayGain ekle';

  @override
  String replayGainBatchConfirmMessage(int count) {
    return 'Ses yüksekliği analiz edilsin ve $count parçaya ReplayGain etiketleri yazılsın mı?';
  }

  @override
  String get replayGainBatchAnalyzing => 'ReplayGain analiz ediliyor...';

  @override
  String replayGainBatchSuccess(int success, int total) {
    return '$total parçanın $success tanesine ReplayGain eklendi';
  }

  @override
  String get replayGainUnsupportedDecoder =>
      'Bazı parçalar, ses kodekleri ReplayGain çözücüsü tarafından desteklenmediği için analiz edilemedi. Dosyaları değiştirilmedi.';

  @override
  String get optionsArtistTagMode => 'Sanatçı Etiketi Modu';

  @override
  String get metadataSeparators => 'Meta veri ayırıcıları';

  @override
  String get metadataSeparatorsDescription =>
      'Virgül veya noktalı virgülle ayrılmış değerlerin gelecekteki indirmelerde nasıl birleştirileceğini seçin. Özel sanatçı ayırıcıları birleşik etiket kullanır; Yalnızca birincil sanatçı seçeneği yine de geçerlidir. & veya / içeren adlar korunur.';

  @override
  String get metadataSeparatorSource => 'Kaynak biçimlendirmesini koru';

  @override
  String get metadataSeparatorComma => 'Virgül (,)';

  @override
  String get metadataSeparatorSemicolon => 'Noktalı virgül (;)';

  @override
  String get metadataSeparatorSlash => 'Eğik çizgi (/)';

  @override
  String get metadataSeparatorCustom => 'Özel ayırıcı';

  @override
  String get metadataSeparatorPreview => 'Önizleme';

  @override
  String get metadataSeparatorInvalid =>
      'Satır sonu veya kontrol karakteri içermeyen 1–16 karakter kullanın.';

  @override
  String get optionsArtistTagModeDescription =>
      'Birden fazla sanatçının gömülü etiketlere nasıl yazılacağını seçin.';

  @override
  String get optionsArtistTagModeJoined => 'Birleşik tek değer';

  @override
  String get optionsArtistTagModeJoinedSubtitle =>
      'Maksimum oynatıcı uyumluluğu için \'Sanatçı A, Sanatçı B\' şeklinde tek bir SANATÇI değeri yazın.';

  @override
  String get optionsArtistTagModeSplitVorbis =>
      'FLAC/Opus için ayrılmış etiketler';

  @override
  String get optionsArtistTagModeSplitVorbisSubtitle =>
      'FLAC ve Opus için her sanatçıya ayrı bir etiket yazın; MP3 ve M4A birleşik kalır.';

  @override
  String get optionsArtistTagModePrimary => 'Yalnızca birincil sanatçı';

  @override
  String get optionsArtistTagModePrimarySubtitle =>
      'Her formatta Sanatçı ve Albüm Sanatçısı alanlarına yalnızca ilk sanatçıyı (örneğin \"Sanatçı A\") yazın; böylece oynatıcılar tek sanatçı listeler.';

  @override
  String get optionsExtensionStore => 'Eklenti Deposu';

  @override
  String get optionsExtensionStoreSubtitle =>
      'Gezinme menüsünde Depo sekmesini göster';

  @override
  String get optionsCheckUpdates => 'Güncelleştirmeleri Denetle';

  @override
  String get optionsCheckUpdatesSubtitle => 'Yeni sürüm çıktığında bildir';

  @override
  String get optionsUpdateChannel => 'Güncelleme Kanalı';

  @override
  String get optionsUpdateChannelStable => 'Sadece stabil sürümler';

  @override
  String get optionsUpdateChannelPreview => 'Önizleme sürümlerini al';

  @override
  String get optionsUpdateChannelWarning =>
      'Önizleme sürümleri hatalar veya tamamlanmamış özellikler içerebilir';

  @override
  String get optionsClearHistory => 'İndirme Geçmişini Temizle';

  @override
  String get optionsClearHistorySubtitle =>
      'İndirilen bütün şarkıları geçmişten temizle';

  @override
  String get optionsDetailedLogging => 'Detaylı Günlükleme';

  @override
  String get optionsDetailedLoggingOn => 'Detaylı günlük kayıt ediliyor';

  @override
  String get optionsDetailedLoggingOff => 'Hata bildirmek için aç';

  @override
  String get extensionsTitle => 'Eklentiler';

  @override
  String get extensionsDisabled => 'Devre Dışı';

  @override
  String extensionsVersion(String version) {
    return 'Versiyon $version';
  }

  @override
  String get extensionsUninstall => 'Kaldır';

  @override
  String get storeTitle => 'Uzantı Deposu';

  @override
  String get storeSearch => 'Eklenti ara...';

  @override
  String get storeInstall => 'Kur';

  @override
  String get storeInstalled => 'Kuruldu';

  @override
  String get storeUpdate => 'Güncelle';

  @override
  String get aboutTitle => 'Hakkında';

  @override
  String get aboutContributors => 'Katkıda Bulunanlar';

  @override
  String get aboutMobileDeveloper => 'Mobil versiyon geliştiricisi';

  @override
  String get aboutLogoArtist =>
      'Uygulama logomuzu yaratmış yetenekli sanatçımız!';

  @override
  String get aboutTranslators => 'Çevirmenler';

  @override
  String get aboutSpecialThanks => 'Özel teşekkür';

  @override
  String get aboutLinks => 'Linkler';

  @override
  String get aboutMobileSource => 'Mobil kaynak kodu';

  @override
  String get aboutLyricsWebsite => 'Şarkı sözleri web sitesi';

  @override
  String get aboutServiceStatus => 'Hizmet durumu';

  @override
  String get aboutReportIssue => 'Sorun bildir';

  @override
  String get aboutReportIssueSubtitle =>
      'Karşılaştığın herhangi bir problemi bildir';

  @override
  String get aboutFeatureRequest => 'Özellik isteği';

  @override
  String get aboutFeatureRequestSubtitle =>
      'Uygulama için yeni özellikler isteyin';

  @override
  String get aboutTelegramChannel => 'Telegram Kanalı';

  @override
  String get aboutTelegramChannelSubtitle => 'Duyurular ve güncellemeler';

  @override
  String get aboutTelegramChat => 'Telegram Grubu';

  @override
  String get aboutTelegramChatSubtitle => 'Diğer kullanıcılarla sohbet et';

  @override
  String get aboutSocial => 'Sosyal ağlar';

  @override
  String get aboutApp => 'Uygulama';

  @override
  String get aboutVersion => 'Versiyon';

  @override
  String get aboutBinimumDesc =>
      'QQDL ve HiFi API\'nin yaratıcısı. Bu proje, kayıpsız indirme desteğinin şekillenmesine katkıda bulundu.';

  @override
  String get aboutSachinsenalDesc =>
      'Orijinal HiFi projesinin yaratıcısı. Kayıpsız kaynak entegrasyonuna temel oluşturdu.';

  @override
  String get aboutUnituneDesc =>
      'Flaze tarafından geliştirilen, platformlar arası yedek eşleştirme için kullanılan açık kaynak müzik bağlantısı çözümleyicisi.';

  @override
  String get aboutMusicBrainzDesc =>
      'MetaBrainz ve topluluğu tarafından sürdürülen, kayıt çapraz referansları için kullanılan açık müzik veritabanı.';

  @override
  String get aboutSquiglyDesc =>
      'Liam Macmillan tarafından geliştirilen, son platformlar arası çözümleyici yedeği olarak kullanılan evrensel müzik bağlantısı hizmeti.';

  @override
  String get aboutAppDescription =>
      'Müzik meta verilerini arayın, uzantıları yönetin ve kütüphanenizi düzenleyin.';

  @override
  String get artistAlbums => 'Albümler';

  @override
  String get artistSingles => 'Single\'lar ve EP\'ler';

  @override
  String get artistCompilations => 'Derlemeler';

  @override
  String get artistPopular => 'Popüler';

  @override
  String get artistLatestRelease => 'Latest Release';

  @override
  String get artistTopSongs => 'Top Songs';

  @override
  String artistMonthlyListeners(String count) {
    return 'Aylık $count dinleyici';
  }

  @override
  String get trackMetadataService => 'Hizmet';

  @override
  String get trackMetadataPlay => 'Oynat';

  @override
  String get trackMetadataShare => 'Paylaş';

  @override
  String get trackMetadataDelete => 'Sil';

  @override
  String get setupGrantPermission => 'İzin Ver';

  @override
  String get setupSkip => 'Şimdilik atla';

  @override
  String get setupStorageAccessRequired => 'Depolama Erişimi Gerekli';

  @override
  String get setupStorageAccessMessageAndroid11 =>
      'Android 11 ve sonrasında şarkıların seçili klasörünüze kaydedilebilmesi için \"Bütün dosyalara eriş\" iznine ihtiyaç var.';

  @override
  String get setupOpenSettings => 'Ayarları Aç';

  @override
  String get setupPermissionDeniedMessage =>
      'İzin reddedildi. Devam etmek için lütfen bütün izinleri verin.';

  @override
  String setupPermissionRequired(String permissionType) {
    return '$permissionType İzni Zorunlu';
  }

  @override
  String setupPermissionRequiredMessage(String permissionType) {
    return 'En iyi deneyim için $permissionType izni zorunludur. Bunu ayarlardan daha sonra değiştirebilirsiniz.';
  }

  @override
  String get setupUseDefaultFolder => 'Varsayılan Klasörü Kullan?';

  @override
  String get setupNoFolderSelected =>
      'Klasör seçilmedi. Varsayılan \"Music\" klasörünü kullanmak ister misiniz?';

  @override
  String get setupUseDefault => 'Varsayılanı Kullan';

  @override
  String get setupDownloadLocationTitle => 'İndirme Konumu';

  @override
  String get setupDownloadLocationIosMessage =>
      'iOS\'ta indirilenler uygulamanın \"Documents\" dosyasına kaydedilir. Onlara Dosyalar uygulamasından erişebilirsiniz.';

  @override
  String get setupAppDocumentsFolder => 'Uygulama Belgeler Klasörü';

  @override
  String get setupAppDocumentsFolderSubtitle =>
      'Tavsiye edilen - Dosyalar uygulamasından erişilebilir';

  @override
  String get setupChooseFromFiles => 'Dosyalar\'dan Seç';

  @override
  String get setupChooseFromFilesSubtitle => 'iCloud veya başka konum seç';

  @override
  String get setupIosEmptyFolderWarning =>
      'iOS\'un sınırlaması: Boş klasörler seçilemiyor. İçinde en az bir dosya bulunan bir klasör seçin.';

  @override
  String get setupIcloudNotSupported =>
      'iCloud Drive desteklenmiyor. Lütfen uygulama Belgeler klasörünü kullanın.';

  @override
  String get setupDownloadInFlac =>
      'Müzikleri kayıpsız ve Hi-Res kalitede indirin';

  @override
  String get setupStorageGranted => 'Depolama İzni Verildi!';

  @override
  String get setupStorageRequired => 'Depolama İzni Gerekli';

  @override
  String get setupStorageDescription =>
      'Toadplayer\'nin şarkılarınızı kaydetmek için depolama iznine ihtiyacı var.';

  @override
  String get setupNotificationGranted => 'Bildirim İzni Verildi!';

  @override
  String get setupNotificationEnable => 'Bildirimleri Etkinleştir';

  @override
  String get setupFolderChoose => 'İndirilecek Klasörü Seç';

  @override
  String get setupFolderDescription =>
      'İndirdiğin şarkıların kaydedileceği klasörü seç.';

  @override
  String get setupSelectFolder => 'Klasör Seç';

  @override
  String get setupEnableNotifications => 'Bildirimleri Etkinleştir';

  @override
  String get setupNotificationBackgroundDescription =>
      'İndirmelerin durumu hakkında bildirim al. Bunu açmak uygulama arka plandayken indirmelerinizi takip etmenizi sağlar.';

  @override
  String get setupSkipForNow => 'Şimdilik atla';

  @override
  String get setupNearbyEnable => 'Yakındaki Cihazlara İzin Ver';

  @override
  String get setupNearbyDescription =>
      'Toadplayer Link bunu aynı ağdaki bilgisayarınızı bulmak için, ağ depolaması ise evdeki bir sunucuya ulaşmak için kullanır.';

  @override
  String get setupNearbyGranted => 'Yakındaki Cihazlara İzin Verildi!';

  @override
  String get permissionNearbyDevices => 'Yakındaki cihazlar';

  @override
  String get whatsNewLinkNearbyAllow => 'Yakındaki cihazlara izin ver';

  @override
  String get whatsNewLinkNearbyGranted => 'Yakındaki cihazlara izin verildi';

  @override
  String get whatsNewNearbyTitle => 'Yakındaki cihazlar';

  @override
  String get whatsNewNearbyDesc =>
      'Android artık bir uygulama ağınızdaki diğer cihazlara erişmeden önce izin istiyor. Toadplayer buna şunlar için ihtiyaç duyar:';

  @override
  String get whatsNewNearbyLinkTitle => 'Bilgisayarınızı bulma';

  @override
  String get whatsNewNearbyLinkBody =>
      'Toadplayer Link, bilgisayarınızı aynı Wi-Fi\'de arar ve bağlantıyı sürdürür.';

  @override
  String get whatsNewNearbyStorageTitle => 'Ağ depolaması';

  @override
  String get whatsNewNearbyStorageBody =>
      'Evdeki bir NAS veya sunucudan SMB ya da WebDAV üzerinden müzik çalın.';

  @override
  String get whatsNewNearbyPrivateTitle => 'Yalnızca kendi cihazlarınız';

  @override
  String get whatsNewNearbyPrivateBody =>
      'Toadplayer bunu yalnızca ağınızdaki cihazlara ulaşmak için kullanır, konumunuzu bulmak için asla.';

  @override
  String get whatsNewNearbyRefused =>
      'İzin verilmedi. Android ayarlarından Toadplayer için Yakındaki cihazlar iznini verene kadar Toadplayer Link ve ağ depolaması kapalı kalır.';

  @override
  String get setupNext => 'Sıradaki';

  @override
  String get setupGetStarted => 'Başla';

  @override
  String get setupAllowAccessToManageFiles =>
      'Lütfen bir sonraki ekranda \"Bütün dosyalara eriş\" iznini sağlayın.';

  @override
  String get setupLanguageTitle => 'Dil Seçin';

  @override
  String get setupLanguageDescription =>
      'Uygulama için tercih ettiğiniz dili seçin. Bunu daha sonra Ayarlar\'dan değiştirebilirsiniz.';

  @override
  String get setupLanguageSystemDefault => 'Sistem Varsayılanı';

  @override
  String get dialogCancel => 'İptal';

  @override
  String get dialogSave => 'Kaydet';

  @override
  String get dialogDelete => 'Sil';

  @override
  String get dialogRetry => 'Yeniden dene';

  @override
  String get dialogClear => 'Temizle';

  @override
  String get dialogDone => 'Tamamlandı';

  @override
  String get dialogImport => 'İçe aktar';

  @override
  String get dialogDownload => 'İndir';

  @override
  String get previewPlay => 'Ön izlemeyi oynat';

  @override
  String get previewStop => 'Ön izlemeyi durdur';

  @override
  String get previewUnavailable => 'Ön izleme mevcut değil';

  @override
  String get dialogDiscard => 'Vazgeç';

  @override
  String get dialogRemove => 'Kaldır';

  @override
  String get dialogUninstall => 'Kaldır';

  @override
  String get dialogDiscardChanges => 'Değişiklikleri İptal Et?';

  @override
  String get dialogUnsavedChanges =>
      'Kaydedilmeyen değişiklikler mevcut. Bu değişiklikleri iptal etmek istiyor musunuz?';

  @override
  String get dialogClearAll => 'Tümünü Temizle';

  @override
  String get dialogRemoveExtension => 'Eklentiyi Kaldır';

  @override
  String get dialogRemoveExtensionMessage =>
      'Bu eklentiyi kaldırmak istediğine emin misin? Bu işlem geri alınamaz.';

  @override
  String get dialogUninstallExtension => 'Eklentiyi Kaldır?';

  @override
  String dialogUninstallExtensionMessage(String extensionName) {
    return '$extensionName eklentisini kaldırmak istediğine emin misin?';
  }

  @override
  String get dialogClearHistoryTitle => 'Geçmişi Temizle';

  @override
  String get dialogClearHistoryMessage =>
      'Tüm indirme geçmişini temizlemek istediğinizden emin misiniz? Bu işlem geri alınamaz.';

  @override
  String get dialogDeleteSelectedTitle => 'Seçileni Sil';

  @override
  String dialogDeleteSelectedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'şarkıyı',
      one: 'şarkıyı',
    );
    return '$count $_temp0 geçmişten silmeye emin misiniz?\n\nBu işlem seçilenleri cihazınızdan da silecektir.';
  }

  @override
  String get dialogImportPlaylistTitle => 'Çalma listesini içe aktar';

  @override
  String dialogImportPlaylistMessage(int count) {
    return 'Çalma listesi dosyasında $count parça bulundu. İndirme kuyruğuna eklensin mi?';
  }

  @override
  String csvImportTracks(int count) {
    return 'CSV\'den $count şarkı';
  }

  @override
  String get collectionExportM3u => 'M3U8 olarak dışarı aktar';

  @override
  String collectionExportM3uDone(int exported, int total) {
    return '$total parçanın $exported tanesi dışa aktarıldı';
  }

  @override
  String get collectionExportM3uNone => 'Dışa aktarılacak indirilmiş dosya yok';

  @override
  String get collectionExportM3uFailed => 'Dışa aktarma başarısız oldu';

  @override
  String get trackOpenOn => 'Şurada aç...';

  @override
  String get trackOpenOnNoLinks =>
      'Bu parça için platform bağlantısı bulunamadı.';

  @override
  String get libraryReviewDuplicates => 'Yinelenenleri incele';

  @override
  String get libraryReviewDuplicatesSubtitle =>
      'Birden fazla kez kayıtlı parçaları bul';

  @override
  String get duplicatesTitle => 'Yinelenenler';

  @override
  String get duplicatesEmpty => 'Yinelenen parça bulunamadı.';

  @override
  String get duplicatesKeepBest => 'En iyisini sakla';

  @override
  String get duplicatesKeepBestAll => 'Tümü için en iyisini sakla';

  @override
  String duplicatesKeepBestAllMessage(int count, int groupCount) {
    String _temp0 = intl.Intl.pluralLogic(
      groupCount,
      locale: localeName,
      other: 'parça',
      one: 'parça',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kopya',
      one: 'kopya',
    );
    return '$groupCount $_temp0 için en iyi kopya saklanıp $count düşük kaliteli $_temp1 silinsin mi?\n\nSilinen dosyalar depolamadan kaldırılacak.';
  }

  @override
  String duplicatesKeepBestMessage(int count, String trackName) {
    return '\"$trackName\" parçasının $count düşük kaliteli kopyası silinsin mi?';
  }

  @override
  String duplicatesDeleteCopyMessage(String trackName) {
    return '\"$trackName\" parçasının bu kopyası silinsin mi?';
  }

  @override
  String snackbarAddedToQueue(String trackName) {
    return '\"$trackName\" kuyruğa eklendi';
  }

  @override
  String snackbarAddedTracksToQueue(int count) {
    return '$count şarkı kuyruğa eklendi';
  }

  @override
  String snackbarAlreadyDownloaded(String trackName) {
    return '\"$trackName\" zaten indirilmiş';
  }

  @override
  String snackbarAlreadyInLibrary(String trackName) {
    return '\"$trackName\" kitaplığınızda zaten mevcut';
  }

  @override
  String get snackbarHistoryCleared => 'Geçmiş temizlendi';

  @override
  String snackbarDeletedTracks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'şarkı',
      one: 'şarkı',
    );
    return '$count $_temp0 silindi';
  }

  @override
  String snackbarCannotOpenFile(String error) {
    return 'Dosya açılamadı: $error';
  }

  @override
  String get snackbarViewQueue => 'Kuyruğu Görüntüle';

  @override
  String snackbarUrlCopied(String platform) {
    return '$platform Bağlantı panoya kopyalandı';
  }

  @override
  String get snackbarFileNotFound => 'Dosya bulunamadı';

  @override
  String get snackbarSelectExtFile => 'Lütfen .toadplayer-ext dosyasını seçin';

  @override
  String get snackbarProviderPrioritySaved => 'Sağlayıcı önceliği kaydedildi';

  @override
  String get snackbarMetadataProviderSaved =>
      'Meta veri sağlayıcı önceliği kaydedildi';

  @override
  String snackbarExtensionInstalled(String extensionName) {
    return '$extensionName yüklendi.';
  }

  @override
  String snackbarExtensionUpdated(String extensionName) {
    return '$extensionName güncellendi.';
  }

  @override
  String get snackbarFailedToInstall => 'Eklenti yüklenirken hata oluştu';

  @override
  String get snackbarFailedToUpdate => 'Eklenti güncellenirken hata oluştu';

  @override
  String get errorRateLimited => 'Aşırı istek gönderildi';

  @override
  String get errorRateLimitedMessage =>
      'Çok fazla istek. Lütfen arama yapmadan önce biraz bekleyin.';

  @override
  String get errorNoTracksFound => 'Parça bulunamadı';

  @override
  String get searchEmptyResultSubtitle => 'Başka bir anahtar kelime deneyin';

  @override
  String get errorUrlNotRecognized => 'Bağlantı tanınamadı';

  @override
  String get errorUrlNotRecognizedMessage =>
      'Bu bağlantı desteklenmiyor. URL\'nin doğru olduğundan ve uyumlu bir uzantının yüklü olduğundan emin olun.';

  @override
  String get errorUrlFetchFailed =>
      'Bu bağlantıdan içerik yüklenemedi. Lütfen tekrar deneyin.';

  @override
  String errorMissingExtensionSource(String item) {
    return '$item yüklenemedi: Eksik eklenti kaynağı';
  }

  @override
  String get actionPause => 'Duraklat';

  @override
  String get actionResume => 'Devam et';

  @override
  String get actionCancel => 'Vazgeç';

  @override
  String get actionSelectAll => 'Tümünü Seç';

  @override
  String get actionDeselect => 'Seçimi kaldır';

  @override
  String selectionSelected(int count) {
    return '$count seçildi';
  }

  @override
  String get selectionAllSelected => 'Tüm parçalar seçildi';

  @override
  String get selectionSelectToDelete => 'Silinecek parçaları seçin';

  @override
  String progressFetchingMetadata(int current, int total) {
    return 'Meta verileri alınıyor... $current/$total';
  }

  @override
  String get progressReadingCsv => 'CSV okunuyor...';

  @override
  String get searchSongs => 'Şarkılar';

  @override
  String get searchArtists => 'Sanatçılar';

  @override
  String get searchAlbums => 'Albümler';

  @override
  String get searchPlaylists => 'Çalma Listeleri';

  @override
  String get searchShowAll => 'Tümünü göster';

  @override
  String searchShowAllCategory(String category) {
    return 'Tüm $category öğelerini göster';
  }

  @override
  String get searchSortTitle => 'Sonuçları Sırala';

  @override
  String get searchSortDefault => 'Varsayılan';

  @override
  String get searchSortTitleAZ => 'Başlık (A-Z)';

  @override
  String get searchSortTitleZA => 'Başlık (Z-A)';

  @override
  String get searchSortArtistAZ => 'Sanatçı (A-Z)';

  @override
  String get searchSortArtistZA => 'Sanatçı (Z-A)';

  @override
  String get searchSortDurationShort => 'Süre (en kısa)';

  @override
  String get searchSortDurationLong => 'Süre (en uzun)';

  @override
  String get searchSortDateOldest => 'Yayın Tarihi (En eski)';

  @override
  String get searchSortDateNewest => 'Yayın Tarihi (En yeni)';

  @override
  String get tooltipPlay => 'Oynat';

  @override
  String get filenameFormat => 'Dosya adı formatı';

  @override
  String get filenameShowAdvancedTags => 'Gelişmiş etiketleri göster';

  @override
  String get filenameShowAdvancedTagsDescription =>
      'Parça numarası tamamlama ve tarih desenleri için biçimlendirilmiş etiketleri etkinleştir';

  @override
  String get folderOrganizationNone => 'Organizasyon yok';

  @override
  String get folderOrganizationByPlaylist => 'Çalma Listesine Göre';

  @override
  String get folderOrganizationByPlaylistSubtitle =>
      'Her çalma listesi için ayrı klasör';

  @override
  String get folderOrganizationByArtist => 'Sanatçıya Göre';

  @override
  String get folderOrganizationByAlbum => 'Albüme Göre';

  @override
  String get folderOrganizationByArtistAlbum => 'Sanatçı/Albüm';

  @override
  String get folderOrganizationDescription =>
      'İndirilenleri klasörlerle organize et';

  @override
  String get folderOrganizationNoneSubtitle =>
      'Her şey indirilen dosyasına kaydedilecek';

  @override
  String get folderOrganizationByArtistSubtitle =>
      'Her sanatçı için ayrı klasör';

  @override
  String get folderOrganizationByAlbumSubtitle => 'Her albüm için ayrı klasör';

  @override
  String get folderOrganizationByArtistAlbumSubtitle =>
      'Sanatçı klasörlerinin içinde Albüm klasörleri';

  @override
  String get updateAvailable => 'Güncelleme Mevcut';

  @override
  String get updateLater => 'Daha Sonra';

  @override
  String get updateStartingDownload => 'İndirme başlıyor...';

  @override
  String get updateDownloadFailed => 'İndirme başarısız';

  @override
  String get updateFailedMessage => 'Güncelleme indirilemedi';

  @override
  String get updateNewVersionReady => 'Yeni bir sürüm hazır';

  @override
  String get updateRequiredTitle => 'Güncelleme gerekli';

  @override
  String updateRequiredNotice(int count) {
    return 'Bu sürüm $count sürüm geride ve artık desteklenmiyor. Uygulamayı kullanmaya devam etmek için güncelleyin.';
  }

  @override
  String get updateCurrent => 'Şimdiki';

  @override
  String get updateNew => 'Yeni';

  @override
  String get updateDownloading => 'İndiriliyor...';

  @override
  String get updateWhatsNew => 'Yenilikler';

  @override
  String get updateDownloadInstall => 'İndir & Yükle';

  @override
  String get updateDontRemind => 'Bir daha sorma';

  @override
  String get updateViewRelease => 'Sürümü Görüntüle';

  @override
  String get updateStartingInstaller => 'Yükleyici başlatılıyor...';

  @override
  String get updateMacInstallHint =>
      'Disk görüntüsü Finder\'da açıldı. Toadplayer\'den çıkın, ardından Toadplayer\'yi disk görüntüsünden Uygulamalar\'a sürükleyip eski kopyanın yerine koyun.';

  @override
  String get updateQuitApp => 'Toadplayer\'den Çık';

  @override
  String get updateReadyToRestart =>
      'Güncelleme yüklendi. Kullanmak için Toadplayer\'yi yeniden başlatın.';

  @override
  String get updateRestartNow => 'Şimdi Yeniden Başlat';

  @override
  String get providerPriorityTitle => 'İndirme hizmetleri öncelik sırası';

  @override
  String get providerPriorityDescription =>
      'İndirme hizmetlerini sıralamak için kaydır. Uygulama şarkı indirirken hizmetleri yukarıdan aşağıya doğru deneyecektir.';

  @override
  String get providerPriorityInfo =>
      'Eğer bir şarkı ilk hizmette mevcut değilse uygulama otomatik olarak bir sonrakini deneyecektir.';

  @override
  String get providerPriorityFallbackExtensionsDescription =>
      'Otomatik geri dönüş sırasında hangi yüklü indirme uzantılarının kullanılabileceğini seçin.';

  @override
  String get providerPriorityFallbackExtensionsHint =>
      'Burada yalnızca indirme sağlayıcısı yeteneğine sahip olan ve etkinleştirilmiş uzantılar listelenir.';

  @override
  String get providerExtension => 'Eklenti';

  @override
  String get metadataProviderPriorityTitle => 'Meta Veri Önceliği';

  @override
  String get metadataProviderPriorityDescription =>
      'Meta veri sağlayıcılarını yeniden sıralamak için sürükleyin. Uygulama, parça ararken ve meta verileri alırken sağlayıcıları yukarıdan aşağıya doğru deneyecektir.';

  @override
  String get metadataProviderPriorityInfo =>
      'Deezer\'da istek sınırı yoktur ve birincil olarak önerilir. Spotify, çok sayıda istekten sonra hız sınırlaması uygulayabilir.';

  @override
  String get logTitle => 'Kayıtlar';

  @override
  String get logCopied => 'Kayıtlar panoya kopyalandı';

  @override
  String get logSearchHint => 'Kayıtları Ara...';

  @override
  String get logFilterLevel => 'Seviye';

  @override
  String get logFilterSection => 'Filtre';

  @override
  String get logShareLogs => 'Kayıtları paylaş';

  @override
  String get logClearLogs => 'Kayıtları temizle';

  @override
  String get logClearLogsTitle => 'Kayıtları temizle';

  @override
  String get logClearLogsMessage =>
      'Tüm kayıtları temizlemek istediğinize emin misiniz?';

  @override
  String get logFilterBySeverity => 'Günlükleri önem derecesine göre filtrele';

  @override
  String get logNoLogsYet => 'Henüz kayıt yok';

  @override
  String get logNoLogsYetSubtitle =>
      'Uygulamayı kullandıkça günlükler burada görünecektir';

  @override
  String logEntriesFiltered(int count) {
    return 'Kayıtlar ($count filtrelendi)';
  }

  @override
  String logEntries(int count) {
    return 'Kayıtlar ($count)';
  }

  @override
  String get channelStable => 'Kararlı';

  @override
  String get channelPreview => 'Önizleme';

  @override
  String get sectionSearchSource => 'Arama Kaynağı';

  @override
  String get sectionDownload => 'İndir';

  @override
  String get sectionPerformance => 'Performans';

  @override
  String get sectionApp => 'Uygulama';

  @override
  String get sectionData => 'Veri';

  @override
  String get sectionDebug => 'Hata ayıklama';

  @override
  String get sectionService => 'Servis';

  @override
  String get sectionAudioQuality => 'Ses Kalitesi';

  @override
  String get sectionFileSettings => 'Dosya Ayarları';

  @override
  String get sectionLyrics => 'Şarkı sözleri';

  @override
  String get lyricsKeepScreenOn =>
      'Şarkı sözlerini görüntülerken ekranı açık tut';

  @override
  String get lyricsKeepScreenOnSubtitle =>
      'Oynatma duraklatılmış olsa bile şarkı sözleri açıkken ekranın kapanmasını önler.';

  @override
  String get lyricsMode => 'Şarkı Sözü Modu';

  @override
  String get lyricsModeDescription =>
      'Şarkı sözlerinin indirmelerinizle birlikte nasıl kaydedileceğini seçin';

  @override
  String get lyricsModeEmbed => 'Dosyaya göm';

  @override
  String get lyricsModeEmbedSubtitle =>
      'Şarkı sözleri FLAC meta verilerinin içinde saklanır';

  @override
  String get lyricsModeExternal => 'Harici .lrc dosyası';

  @override
  String get lyricsModeExternalSubtitle =>
      'Samsung Music gibi oynatıcılar için ayrı .lrc dosyası';

  @override
  String get lyricsModeBoth => 'Her ikisi de';

  @override
  String get lyricsModeBothSubtitle =>
      'Hem göm hem de .lrc dosyası olarak kaydet';

  @override
  String get sectionColor => 'Renk';

  @override
  String get sectionTheme => 'Tema';

  @override
  String get sectionLayout => 'Düzen';

  @override
  String get sectionLanguage => 'Dil';

  @override
  String get appearanceLanguage => 'Uygulama Dili';

  @override
  String get settingsAppearanceSubtitle => 'Tema, renkler, görünüm';

  @override
  String get settingsDownloadSubtitle => 'Hizmet, kalite, yedekleme';

  @override
  String get settingsExtensionsSubtitle => 'İndirme sağlayıcılarını yönet';

  @override
  String get settingsLogsSubtitle =>
      'Hata ayıklama için uygulama günlüklerini görüntüle';

  @override
  String get loadingSharedLink => 'Paylaşılan bağlantı yükleniyor...';

  @override
  String get pressBackAgainToExit => 'Çıkmak için tekrar geri basın';

  @override
  String downloadAllCount(int count) {
    return 'Tümünü İndir ($count)';
  }

  @override
  String tracksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count parça',
      one: '1 parça',
    );
    return '$_temp0';
  }

  @override
  String get trackCopyFilePath => 'Dosya yolunu kopyala';

  @override
  String get trackRemoveFromDevice => 'Cihazdan kaldır';

  @override
  String get trackLoadLyrics => 'Şarkı Sözlerini Yükle';

  @override
  String get trackMetadata => 'Meta Veri';

  @override
  String get trackFileInfo => 'Dosya Bilgisi';

  @override
  String get trackLyrics => 'Şarkı Sözleri';

  @override
  String get trackFileNotFound => 'Dosya bulunamadı';

  @override
  String get trackFileUnavailable =>
      'Dosya şu anda kullanılamıyor. Depolama erişimini kontrol edip tekrar deneyin.';

  @override
  String get trackOpenInDeezer => 'Deezer\'da aç';

  @override
  String get trackOpenInSpotify => 'Spotify\'da aç';

  @override
  String get trackTrackName => 'Parça adı';

  @override
  String get trackArtist => 'Sanatçı';

  @override
  String get trackAlbumArtist => 'Albüm sanatçısı';

  @override
  String get trackAlbum => 'Albüm';

  @override
  String get trackTrackNumber => 'Parça numarası';

  @override
  String get trackDiscNumber => 'Disk numarası';

  @override
  String get trackDuration => 'Süre';

  @override
  String get trackAudioQuality => 'Ses kalitesi';

  @override
  String get trackReplayGainTrackGain => 'ReplayGain parça kazancı';

  @override
  String get trackReplayGainTrackPeak => 'ReplayGain parça tepe değeri';

  @override
  String get trackReplayGainAlbumGain => 'ReplayGain albüm kazancı';

  @override
  String get trackReplayGainAlbumPeak => 'ReplayGain albüm tepe değeri';

  @override
  String get libraryQualityLabelFileFormat => 'Dosya biçimi';

  @override
  String get trackReleaseDate => 'Yayın tarihi';

  @override
  String get trackGenre => 'Tür';

  @override
  String get trackLabel => 'Etiket / Müzik Şirketi';

  @override
  String get trackCopyright => 'Telif Hakkı';

  @override
  String get trackDownloaded => 'İndirildi';

  @override
  String get trackCopyLyrics => 'Şarkı sözlerini kopyala';

  @override
  String trackLyricsSource(String source) {
    return 'Kaynak: $source';
  }

  @override
  String get trackLyricsNotAvailable => 'Bu parça için şarkı sözü mevcut değil';

  @override
  String get trackLyricsNotInFile => 'Bu dosyada şarkı sözü bulunamadı';

  @override
  String get trackFetchOnlineLyrics => 'İnternetten Getir';

  @override
  String get trackLyricsTimeout =>
      'İstek zaman aşımına uğradı. Daha sonra tekrar deneyin.';

  @override
  String get trackLyricsLoadFailed => 'Şarkı sözleri yüklenemedi';

  @override
  String get trackEmbedLyrics => 'Şarkı Sözlerini Göm';

  @override
  String get trackLyricsEmbedded => 'Şarkı sözleri başarıyla gömüldü';

  @override
  String get trackInstrumental => 'Enstrümantal parça';

  @override
  String get trackCopiedToClipboard => 'Panoya kopyalandı';

  @override
  String get trackDeleteConfirmTitle => 'Cihazdan kaldırılsın mı?';

  @override
  String get trackDeleteNetworkConfirmMessage =>
      'Bu işlem dosyayı ağ depolamanızdan kalıcı olarak siler ve kitaplığınızdan ve geçmişinizden kaldırır.';

  @override
  String snackbarDeleteTracksFailed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'parça',
      one: 'parça',
    );
    return '$count $_temp0 silinemedi. Depolama erişimini kontrol edip tekrar deneyin.';
  }

  @override
  String get trackDeleteConfirmMessage =>
      'Bu işlem, indirilen dosyayı kalıcı olarak silecek ve geçmişinizden kaldıracaktır.';

  @override
  String get dateToday => 'Bugün';

  @override
  String get dateYesterday => 'Dün';

  @override
  String dateDaysAgo(int count) {
    return '$count gün önce';
  }

  @override
  String dateWeeksAgo(int count) {
    return '$count hafta önce';
  }

  @override
  String dateMonthsAgo(int count) {
    return '$count ay önce';
  }

  @override
  String get storeFilterAll => 'Tümü';

  @override
  String get storeFilterMetadata => 'Meta Veri';

  @override
  String get storeFilterDownload => 'İndir';

  @override
  String get storeFilterUtility => 'Araç';

  @override
  String get storeFilterLyrics => 'Şarkı Sözleri';

  @override
  String get storeFilterIntegration => 'Entegrasyon';

  @override
  String get storeClearFilters => 'Filtreleri temizle';

  @override
  String get storeAddRepoTitle => 'Uzantı Deposu Ekle';

  @override
  String get storeAddRepoDescription =>
      'Uzantılara göz atmak ve yüklemek için registry.json dosyası içeren bir GitHub depo URL\'si girin.';

  @override
  String get storeRepoUrlLabel => 'Depo URL\'si';

  @override
  String get storeRepoUrlHint => 'https://github.com/user/repo';

  @override
  String get storeAddRepoButton => 'Depo Ekle';

  @override
  String get storeChangeRepoTooltip => 'Depoyu değiştir';

  @override
  String get storeRepoDialogTitle => 'Uzantı Deposu';

  @override
  String get storeRepoDialogCurrent => 'Mevcut depo:';

  @override
  String get storeNewRepoUrlLabel => 'Yeni Depo URL\'si';

  @override
  String get storeLoadError => 'Depo yüklenemedi';

  @override
  String get storeEmptyNoExtensions => 'Uygun uzantı yok';

  @override
  String get storeEmptyNoResults => 'Uzantı bulunamadı';

  @override
  String get extensionId => 'Kimlik';

  @override
  String get extensionError => 'Hata';

  @override
  String get extensionCapabilities => 'Özellikler';

  @override
  String get extensionMetadataProvider => 'Meta Veri Sağlayıcı';

  @override
  String get extensionDownloadProvider => 'İndirme Sağlayıcı';

  @override
  String get extensionLyricsProvider => 'Şarkı Sözü Sağlayıcı';

  @override
  String get extensionUrlHandler => 'URL İşleyici';

  @override
  String get extensionQualityOptions => 'Kalite Seçenekleri';

  @override
  String get extensionPostProcessingHooks => 'Son İşlem Kancaları';

  @override
  String get extensionPermissions => 'İzinler';

  @override
  String get extensionSettings => 'Ayarlar';

  @override
  String get extensionRemoveButton => 'Uzantıyı Kaldır';

  @override
  String get extensionUpdated => 'Güncellendi';

  @override
  String get extensionMinAppVersion => 'Minimum Uygulama Sürümü';

  @override
  String get extensionCustomTrackMatching => 'Özel Parça Eşleştirme';

  @override
  String get extensionPostProcessing => 'Son İşlem';

  @override
  String extensionHooksAvailable(int count) {
    return '$count kanca kullanılabilir';
  }

  @override
  String extensionPatternsCount(int count) {
    return '$count desen';
  }

  @override
  String extensionStrategy(String strategy) {
    return 'Strateji: $strategy';
  }

  @override
  String get extensionsProviderPrioritySection => 'Sağlayıcı Önceliği';

  @override
  String get extensionsInstalledSection => 'Kurulu uzantılar';

  @override
  String get extensionsNoExtensions => 'Hiçbir eklenti kurulmamış';

  @override
  String get extensionsNoExtensionsSubtitle =>
      'Yeni sağlayıcılar eklemek için .toadplayer-ext dosyalarını yükleyin';

  @override
  String get extensionsInstallButton => 'Uzantı Yükle';

  @override
  String get extensionsInfoTip =>
      'Uzantılar yeni meta veri ve indirme sağlayıcıları ekleyebilir. Yalnızca güvenilir kaynaklardan gelen uzantıları yükleyin.';

  @override
  String get extensionsInstalledSuccess => 'Uzantı başarıyla yüklendi';

  @override
  String extensionsInstalledCount(int count) {
    return '$count uzantı başarıyla yüklendi';
  }

  @override
  String extensionsInstallPartialSuccess(int installed, int attempted) {
    return 'Yüklenen uzantı sayısı: $installed / $attempted';
  }

  @override
  String get extensionsDownloadPriority => 'İndirme Önceliği';

  @override
  String get extensionsDownloadPrioritySubtitle =>
      'İndirme servisi sırasını ayarla';

  @override
  String get extensionsFallbackTitle => 'Yedekleme Uzantıları';

  @override
  String get extensionsFallbackSubtitle =>
      'Hangi yüklü indirme uzantılarının yedekleme olarak kullanılabileceğini seçin';

  @override
  String get extensionsNoDownloadProvider =>
      'İndirme sağlayıcısı olan uzantı yok';

  @override
  String get extensionsMetadataPriority => 'Meta Veri Önceliği';

  @override
  String get extensionsMetadataPrioritySubtitle =>
      'Arama ve meta veri kaynağı sırasını ayarla';

  @override
  String get extensionsNoMetadataProvider =>
      'Meta veri sağlayıcısı içeren uzantı bulunamadı';

  @override
  String get extensionsSearchProvider => 'Arama Sağlayıcısı';

  @override
  String get extensionsNoCustomSearch => 'Özel arama içeren uzantı bulunamadı';

  @override
  String get extensionsSearchProviderDescription =>
      'Parça aramak için hangi servisin kullanılacağını seçin';

  @override
  String get extensionsCustomSearch => 'Özel arama';

  @override
  String get extensionsErrorLoading => 'Uzantı yüklenirken hata oluştu';

  @override
  String get qualityFlacLossless => 'FLAC Kayıpsız';

  @override
  String get qualityFlacLosslessSubtitle => '16-bit / 44.1kHz';

  @override
  String get qualityHiResFlac => 'Hi-Res FLAC';

  @override
  String get qualityHiResFlacSubtitle => '24-bit / 96kHz\'e kadar';

  @override
  String get qualityHiResFlacMax => 'Hi-Res FLAC Max';

  @override
  String get qualityHiResFlacMaxSubtitle => '24-bit / 192kHz\'e kadar';

  @override
  String get downloadLossyFormat => 'Kayıplı Format';

  @override
  String get downloadAutoConvert => 'İndirme sonrası otomatik dönüştür';

  @override
  String get downloadAutoConvertAllFormatsSubtitle =>
      'Tamamlanan indirmeleri dönüştürün veya FLAC bit derinliğini ve örnekleme hızını sınırlayın. Orijinal, yalnızca dönüştürme başarılı olduktan sonra değiştirilir.';

  @override
  String get downloadAutoConvertOutputSubtitle =>
      'Yeni tamamlanan indirmeler için çıktı biçimini seçin.';

  @override
  String get downloadAutoConvertFlacSubtitle =>
      'Kalite sınırlarıyla kayıpsız FLAC. Daha düşük bit derinlikleri ve örnekleme hızları korunur.';

  @override
  String get downloadAutoConvertMaxBitDepth => 'Maksimum bit derinliği';

  @override
  String get downloadAutoConvertMaxSampleRate => 'Maksimum örnekleme hızı';

  @override
  String get downloadAutoConvertFlacLimitsSubtitle =>
      'Bunlar üst sınırlardır. Örneğin 48 kHz seçildiğinde 44,1 kHz kaynak 44,1 kHz\'de kalır. Kayıplı kaynaklar orijinal biçimlerinde tutulur.';

  @override
  String get downloadAutoConvertSubtitle =>
      'Tamamlanan indirmeleri daha küçük, kayıplı bir biçime dönüştürür. Orijinal dosya yalnızca dönüştürme başarılı olduktan sonra değiştirilir.';

  @override
  String get downloadAutoConvertFormat => 'Çıktı biçimi';

  @override
  String get downloadAutoConvertFormatSubtitle =>
      'Yeni tamamlanan indirmeler için kullanılacak kayıplı biçimi seçin.';

  @override
  String get downloadAutoConvertBitrate => 'Çıktı kalitesi';

  @override
  String get downloadAutoConvertBitrateSubtitle =>
      'Daha yüksek bit hızları daha fazla ayrıntı korur ancak daha büyük dosyalar oluşturur.';

  @override
  String get downloadAutoConvertMp3Subtitle =>
      'Oynatıcılar ve cihazlar arasında en iyi uyumluluk';

  @override
  String get downloadAutoConvertM4aSubtitle =>
      'M4A kapsayıcısında verimli AAC ses';

  @override
  String get downloadAutoConvertOpusSubtitle =>
      'Modern oynatıcılar için en iyi verimlilik';

  @override
  String get downloadAskBeforeDownload => 'İndirmeden Önce Sor';

  @override
  String get downloadDirectory => 'İndirme Dizini';

  @override
  String get downloadSeparateSinglesFolder => 'Ayrı Single Klasörü';

  @override
  String get downloadAlbumFolderStructure => 'Albüm Klasör Yapısı';

  @override
  String get albumFolderStructureDescription =>
      'Albüm klasörlerinin nasıl yapılandırılacağını seçin';

  @override
  String get downloadUseAlbumArtistForFolders =>
      'Klasörler için Albüm Sanatçısı\'nı kullan';

  @override
  String get downloadUsePrimaryArtistOnly =>
      'Klasörler için yalnızca birincil sanatçıyı kullan';

  @override
  String get downloadUsePrimaryArtistOnlyEnabled =>
      'Düet sanatçıları klasör adından kaldırılır (örn. Justin Bieber, Quavo → Justin Bieber)';

  @override
  String get downloadUsePrimaryArtistOnlyDisabled =>
      'Klasör adı için tam sanatçı dizesi kullanılır';

  @override
  String get downloadSelectQuality => 'Kalite seçin';

  @override
  String get downloadFrom => 'İndirme Kaynağı';

  @override
  String get appearanceAmoledDark => 'AMOLED Koyu';

  @override
  String get appearanceAmoledDarkSubtitle => 'Saf siyah arka plan';

  @override
  String get appearanceHeroAnimations => 'Hero animasyonları';

  @override
  String get appearanceHeroAnimationsSubtitle =>
      'Kapaklar ekranlar arasında uçar; örneğin oynatıcı açılırken';

  @override
  String get appearanceForceBlur => 'Her zaman bulanıklık efektlerini kullan';

  @override
  String get appearanceForceBlurSubtitle =>
      'Varsayılan olarak kapalı olan cihazlarda bile gezinme çubuğu bulanıklığını etkinleştirir. Performansı etkileyebilir.';

  @override
  String get queueClearAll => 'Tümünü Temizle';

  @override
  String get queueClearAllMessage =>
      'Tüm indirmeleri temizlemek istediğinizden emin misiniz?';

  @override
  String get settingsAutoExportFailed =>
      'Başarısız indirmeleri otomatik dışa aktar';

  @override
  String get settingsAutoExportFailedSubtitle =>
      'Başarısız indirmeleri otomatik olarak TXT dosyasına kaydet';

  @override
  String get settingsDownloadNetwork => 'İndirme Ağı';

  @override
  String get settingsDownloadNetworkAny => 'WiFi + Mobil Veri';

  @override
  String get settingsDownloadNetworkWifiOnly => 'Yalnızca WiFi';

  @override
  String get settingsDownloadNetworkSubtitle =>
      'İndirmeler için hangi ağın kullanılacağını seçin. Yalnızca WiFi olarak ayarlandığında, mobil veriye geçildiğinde indirmeler duraklatılır.';

  @override
  String get settingsConcurrentDownloads => 'Eşzamanlı indirmeler';

  @override
  String get settingsConcurrentDownloadsSubtitle =>
      'Aynı anda birkaç parça indirmek daha hızlıdır ancak bazı sağlayıcılar paralel istekleri sınırlayabilir.';

  @override
  String get concurrentDownloadsOne => 'Aynı anda 1 parça';

  @override
  String concurrentDownloadsCount(int count) {
    return 'Aynı anda en fazla $count parça';
  }

  @override
  String get albumFolderArtistAlbum => 'Sanatçı / Albüm';

  @override
  String get albumFolderArtistAlbumSubtitle =>
      'Albümler/Sanatçı Adı/Albüm Adı/';

  @override
  String get albumFolderArtistYearAlbum => 'Sanatçı / [Yıl] Albüm';

  @override
  String get albumFolderArtistYearAlbumSubtitle =>
      'Albümler/Sanatçı Adı/[2005] Albüm Adı/';

  @override
  String get albumFolderAlbumOnly => 'Yalnızca Albüm';

  @override
  String get albumFolderAlbumOnlySubtitle => 'Albümler/Albüm Adı/';

  @override
  String get albumFolderYearAlbum => '[Yıl] Albüm';

  @override
  String get albumFolderYearAlbumSubtitle => 'Albümler/[2005] Albüm Adı/';

  @override
  String get albumFolderArtistAlbumSingles => 'Sanatçı / Albüm + Singlelar';

  @override
  String get albumFolderArtistAlbumSinglesSubtitle =>
      'Sanatçı/Albüm/ ve Sanatçı/Singlelar/';

  @override
  String get albumFolderArtistAlbumFlat =>
      'Sanatçı / Albüm (Singlelar alt klasörsüz)';

  @override
  String get albumFolderArtistAlbumFlatSubtitle =>
      'Sanatçı/Albüm/ ve Sanatçı/şarkı.flac';

  @override
  String get downloadedAlbumDeleteSelected => 'Seçilenleri Sil';

  @override
  String downloadedAlbumDeleteMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'parça',
      one: 'parça',
    );
    return 'Bu albümden $count $_temp0 parça silinsin mi?\n\nBu işlem dosyaları depolama alanından da kalıcı olarak silecektir.';
  }

  @override
  String downloadedAlbumSelectedCount(int count) {
    return '$count seçildi';
  }

  @override
  String get downloadedAlbumTapToSelect => 'Seçmek için parçalara dokunun';

  @override
  String downloadedAlbumDeleteCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'parçayı',
      one: 'parçayı',
    );
    return '$count $_temp0 sil';
  }

  @override
  String get downloadedAlbumSelectToDelete => 'Silinecek parçaları seçin';

  @override
  String downloadedAlbumDiscHeader(int discNumber) {
    return 'Disk $discNumber';
  }

  @override
  String get recentTypeArtist => 'Sanatçı';

  @override
  String get recentTypeAlbum => 'Albüm';

  @override
  String get recentTypeSong => 'Şarkı';

  @override
  String get recentTypePlaylist => 'Çalma Listesi';

  @override
  String get recentEmpty => 'Henüz son kullanılan öğe yok';

  @override
  String get recentClearAllMessage =>
      'Tüm son etkinlik temizlensin mi? İndirme geçmişi ve müzik dosyaları silinmez.';

  @override
  String get recentShowAllDownloads => 'Tüm İndirmeleri Göster';

  @override
  String recentPlaylistInfo(String name) {
    return 'Çalma Listesi: $name';
  }

  @override
  String get discographyDownload => 'Diskografiyi İndir';

  @override
  String get discographyDownloadAll => 'Tümünü İndir';

  @override
  String discographyDownloadAllSubtitle(int count, int albumCount) {
    return '$albumCount yayından $count parça';
  }

  @override
  String get discographyAlbumsOnly => 'Yalnızca Albümler';

  @override
  String discographyAlbumsOnlySubtitle(int count, int albumCount) {
    return '$albumCount albümden $count parça';
  }

  @override
  String get discographySinglesOnly => 'Yalnızca Single\'lar ve EP\'ler';

  @override
  String discographySinglesOnlySubtitle(int count, int albumCount) {
    return '$albumCount tekliden $count parça';
  }

  @override
  String get discographySelectAlbums => 'Albümleri Seç...';

  @override
  String get discographySelectAlbumsSubtitle =>
      'Belirli albümleri veya single\'ları seçin';

  @override
  String get discographyFetchingTracks => 'Parçalar getiriliyor...';

  @override
  String discographyFetchingAlbum(int current, int total) {
    return '$total üzerinden $current getiriliyor...';
  }

  @override
  String get discographyDownloadSelected => 'Seçilenleri İndir';

  @override
  String discographyAddedToQueue(int count) {
    return '$count parça kuyruğa eklendi';
  }

  @override
  String discographySkippedDownloaded(int added, int skipped) {
    return '$added eklendi, $skipped zaten indirilmiş';
  }

  @override
  String get discographyNoAlbums => 'Kullanılabilir albüm yok';

  @override
  String get discographyFailedToFetch => 'Bazı albümler getirilemedi';

  @override
  String get sectionStorageAccess => 'Depolama Erişimi';

  @override
  String get allFilesAccess => 'Tüm Dosyalara Erişim';

  @override
  String get allFilesAccessEnabledSubtitle => 'Herhangi bir klasöre yazabilir';

  @override
  String get allFilesAccessDisabledSubtitle =>
      'Yalnızca medya klasörleriyle sınırlı';

  @override
  String get allFilesAccessDescription =>
      'Özel klasörlere kaydederken yazma hatalarıyla karşılaşırsanız bunu etkinleştirin. Android 13 ve üzeri, varsayılan olarak belirli dizinlere erişimi kısıtlar.';

  @override
  String get allFilesAccessDeniedMessage =>
      'İzin reddedildi. Lütfen sistem ayarlarından \'Tüm dosyalara erişim\' iznini manuel olarak etkinleştirin.';

  @override
  String get allFilesAccessDisabledMessage =>
      'Tüm Dosyalara Erişim devre dışı bırakıldı. Uygulama kısıtlı depolama erişimi kullanacak.';

  @override
  String get settingsLocalLibrary => 'Yerel Kitaplık';

  @override
  String get settingsLocalLibrarySubtitle =>
      'Müziği tara ve kopyaları tespit et';

  @override
  String get settingsCache => 'Depolama ve Önbellek';

  @override
  String get settingsCacheSubtitle =>
      'Boyutu görüntüle ve önbelleğe alınmış verileri temizle';

  @override
  String get libraryTitle => 'Yerel Kitaplık';

  @override
  String get libraryScanSettings => 'Tarama Ayarları';

  @override
  String get libraryEnableLocalLibrary => 'Yerel Kitaplığı Etkinleştir';

  @override
  String get libraryEnableLocalLibrarySubtitle =>
      'Mevcut müziğinizi tarayın ve takip edin';

  @override
  String get libraryFolder => 'Kitaplık Klasörü';

  @override
  String get libraryFolderHint => 'Klasör seçmek için dokunun';

  @override
  String get libraryAddFolder => 'Kitaplık klasörü ekle';

  @override
  String get libraryAddFolderSubtitle =>
      'Dahili depolama, SD kart, SSD veya başka bir harici sürücü';

  @override
  String get librarySourceOnline => 'Çevrimiçi';

  @override
  String get librarySourceOffline =>
      'Çevrimdışı. Bu parçaları geri getirmek için depolamayı yeniden bağlayın';

  @override
  String get librarySourceDisabled => 'Devre dışı';

  @override
  String librarySourceScanCount(int scanned, int total, String progress) {
    return '$total dosyadan $scanned tanesi tarandı (%$progress)';
  }

  @override
  String get libraryExternalStorage => 'Harici depolama';

  @override
  String get libraryRemoveFolder => 'Kitaplık klasörünü kaldır';

  @override
  String get libraryRemoveFolderMessage =>
      'Bu klasör ve dizinlenmiş parçaları Toadplayer\'den kaldırılsın mı? Depolamadaki ses dosyaları silinmez.';

  @override
  String libraryUnreadableFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dosya okunamadı',
      one: '1 dosya okunamadı',
    );
    return '$_temp0';
  }

  @override
  String get libraryUnreadableFilesTitle => 'Okunamayan dosyalar';

  @override
  String get libraryUnreadableFilesSubtitle =>
      'Bu dosyalar kitaplığınıza dahil edilmedi. Hasar görmüş, hâlâ indiriliyor veya depolama uygulaması tarafından engellenmiş olabilirler.';

  @override
  String get libraryUnreadableFilesAction => 'Hangi dosyalar ve neden';

  @override
  String libraryUnreadableFilesMore(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dosya daha listelenmiyor',
      one: '1 dosya daha listelenmiyor',
    );
    return '$_temp0';
  }

  @override
  String get libraryShowDuplicateIndicator => 'Kopya Belirtecini Göster';

  @override
  String get libraryShowDuplicateIndicatorSubtitle =>
      'Mevcut parçalar aranırken göster';

  @override
  String get libraryAutoScan => 'Otomatik Tarama';

  @override
  String get libraryAutoScanSubtitle =>
      'Kitaplığınızı yeni dosyalar için otomatik olarak tarayın';

  @override
  String get libraryAutoScanOff => 'Kapalı';

  @override
  String get libraryAutoScanOnOpen => 'Her uygulama açılışında';

  @override
  String get libraryAutoScanDaily => 'Günlük';

  @override
  String get libraryAutoScanWeekly => 'Haftalık';

  @override
  String get libraryActions => 'Eylemler';

  @override
  String get libraryScan => 'Kitaplığı Tara';

  @override
  String get libraryScanSubtitle => 'Ses dosyaları için tara';

  @override
  String get libraryScanSelectFolderFirst => 'Önce bir klasör seçin';

  @override
  String get libraryCleanupMissingFiles => 'Eksik Dosyaları Temizle';

  @override
  String get libraryCleanupMissingFilesSubtitle =>
      'Eski dosya kalıntılarını temizleyin';

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
  String get libraryClear => 'Kitaplığı temizle';

  @override
  String get libraryClearSubtitle => 'Taranan tüm parçaları sil';

  @override
  String get libraryClearConfirmTitle => 'Kütüphaneyi temizle';

  @override
  String get libraryClearConfirmMessage =>
      'Bu işlem, kitaplığınızdaki tüm taranmış parçaları siler. Asıl müzik dosyalarınız silinmez.';

  @override
  String get libraryAbout => 'Yerel Kütüphane Hakkında';

  @override
  String get libraryAboutDescription =>
      'İndirme işlemi sırasında mevcut müzik koleksiyonunuzu tarayarak yinelenen dosyaları tespit eder. FLAC, M4A, MP3, Opus ve OGG formatlarını destekler. Varsa, meta veriler dosya etiketlerinden okunur.';

  @override
  String libraryTracksUnit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'parçalar',
      one: 'parça',
    );
    return '$_temp0';
  }

  @override
  String libraryFilesUnit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dosyalar',
      one: 'dosya',
    );
    return '$_temp0';
  }

  @override
  String libraryLastScanned(String time) {
    return 'Son tarama tarihi: $time';
  }

  @override
  String get libraryLastScannedNever => 'Asla';

  @override
  String get libraryScanning => 'Taranıyor...';

  @override
  String get libraryScanFinalizing => 'Kütüphane sonlandırılıyor...';

  @override
  String get libraryScanPaused => 'Tarama duraklatıldı';

  @override
  String libraryScanProgress(String progress, int total) {
    return '$total dosyanın $progress%\'si';
  }

  @override
  String get libraryInLibrary => 'Kütüphanede';

  @override
  String libraryRemovedMissingFiles(int count) {
    return 'Kütüphaneden $count adet eksik dosya kaldırıldı';
  }

  @override
  String get libraryCleared => 'Kütüphane temizlendi';

  @override
  String get libraryStorageAccessRequired =>
      'Depolama Alanına Erişim Gereklidir';

  @override
  String get libraryStorageAccessMessage =>
      'Toadplayer, müzik kitaplığınızı tarayabilmek için depolama alanına erişime ihtiyaç duyar. Lütfen ayarlar bölümünden izin verin.';

  @override
  String get librarySourceDownloaded => 'İndirildi';

  @override
  String get librarySourceLocal => 'Yerel';

  @override
  String get libraryFilterAll => 'Tümü';

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
  String get libraryFilterDownloaded => 'İndirildi';

  @override
  String get libraryFilterLocal => 'Yerel';

  @override
  String get libraryFilterTitle => 'Filtreler';

  @override
  String get libraryFilterReset => 'Sıfırla';

  @override
  String get libraryFilterApply => 'Uygula';

  @override
  String get libraryFilterSource => 'Kaynak';

  @override
  String get libraryFilterQuality => 'Kalite';

  @override
  String get libraryFilterQualityHiRes => 'Hi-Res (24bit)';

  @override
  String get libraryFilterQualityCD => 'CD (16bit)';

  @override
  String get libraryFilterQualityLossy => 'Kayıplı';

  @override
  String get libraryFilterFormat => 'Format';

  @override
  String get libraryFilterMetadata => 'Meta veriler';

  @override
  String get libraryFilterMetadataComplete => 'Tam meta veriler';

  @override
  String get libraryFilterMetadataMissingAny => 'Herhangi bir meta veri eksik';

  @override
  String get libraryFilterMetadataMissingYear => 'Kayıp yıl';

  @override
  String get libraryFilterMetadataMissingGenre => 'Eksik tür';

  @override
  String get libraryFilterMetadataMissingAlbumArtist => 'Kayıp albüm sanatçısı';

  @override
  String get libraryFilterSort => 'Sırala';

  @override
  String get libraryFilterSortLatest => 'En sonuncu';

  @override
  String get libraryFilterSortOldest => 'En eski';

  @override
  String get libraryFilterSortSizeLargest => 'Boyut (En büyük önce)';

  @override
  String get libraryFilterSortSizeSmallest => 'Boyut (En küçük önce)';

  @override
  String get libraryFilterSortAlbumAsc => 'Albüm (A-Z)';

  @override
  String get libraryFilterSortAlbumDesc => 'Albüm (Z-A)';

  @override
  String get libraryFilterSortGenreAsc => 'Tür (A-Z)';

  @override
  String get libraryFilterSortGenreDesc => 'Tür (Z-A)';

  @override
  String get timeJustNow => 'Şu anda';

  @override
  String timeMinutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dakika önce',
      one: '1 dakika önce',
    );
    return '$_temp0';
  }

  @override
  String timeHoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saat önce',
      one: '1 saat önce',
    );
    return '$_temp0';
  }

  @override
  String get tutorialWelcomeTitle => 'Toadplayer\'ye hoş geldiniz!';

  @override
  String get tutorialWelcomeDesc =>
      'Uzantılarla müzik bulmayı, istediğiniz kaliteyi seçmeyi ve Toadplayer\'de indirmeleri yönetmeyi öğrenin.';

  @override
  String get tutorialWelcomeTip1 =>
      'Yüklü bir eklentiyle arayın veya desteklenen bir müzik bağlantısı yapıştırın';

  @override
  String get tutorialWelcomeTip2 =>
      'İndirme sağlayıcınızın sunduğu ses kaliteleri arasından seçin';

  @override
  String get tutorialWelcomeTip3 =>
      'Meta verileri, kapak resmini, şarkı sözlerini ve sürüm bilgilerini otomatik olarak gömün';

  @override
  String get tutorialSearchTitle => 'Müzik Bulma';

  @override
  String get tutorialSearchDesc =>
      'Seçili eklentinizle arayın veya desteklenen bir müzik bağlantısı yapıştırın.';

  @override
  String get tutorialDownloadTitle => 'Müzik İndirme';

  @override
  String get tutorialDownloadDesc =>
      'Kullanılabilir bir kalite seçin, indirmeyi başlatın ve ilerlemesini kuyruktan takip edin.';

  @override
  String get tutorialLibraryTitle => 'Kitaplığınız';

  @override
  String get tutorialLibraryDesc =>
      'İndirilen ve yerel olarak taranan müzikler Kitaplığınızda düzenlenir.';

  @override
  String get tutorialLibraryTip1 =>
      'Etkin, bekleyen ve tamamlanan indirmeleri Kitaplık kuyruğundan yönetin';

  @override
  String get tutorialLibraryTip2 =>
      'Yerleşik oynatıcıyla çalmak için bir parçaya dokunun';

  @override
  String get tutorialLibraryTip3 =>
      'Parçalara, albümlere ve çalma listelerine liste veya ızgara görünümünde göz atın';

  @override
  String get tutorialExtensionsTitle => 'Uzantılar';

  @override
  String get tutorialExtensionsDesc =>
      'Eklentiler arama, indirme, meta veri, şarkı sözü ve diğer entegrasyonları ekler.';

  @override
  String get tutorialExtensionsTip1 =>
      'Faydalı uzantıları keşfetmek için Depo sekmesine göz atın';

  @override
  String get tutorialExtensionsTip2 =>
      'Arama, indirme, meta veri ve yedekler için sağlayıcıları seçin';

  @override
  String get tutorialExtensionsTip3 =>
      'Gerektiğinde hesapları bağlayın ve eklentileri güncel tutun';

  @override
  String get tutorialSettingsTitle => 'Deneyiminizi Özelleştirin';

  @override
  String get tutorialSettingsDesc =>
      'İndirmeleri, oynatmayı, Kitaplık davranışını, görünümü ve depolamayı ince ayarlayın.';

  @override
  String get tutorialSettingsTip1 =>
      'İndirme konumunu ve klasör düzenini değiştirin';

  @override
  String get tutorialSettingsTip2 =>
      'Kalite, eşzamanlılık, dosya adları ve dönüştürme tercihlerini ayarlayın';

  @override
  String get tutorialSettingsTip3 =>
      'Uygulama temasını ve görünümünü özelleştirin';

  @override
  String get tutorialReadyMessage =>
      'Hazırsınız. Eklentilerinizi seçin, ardından arayın veya desteklenen bir bağlantı yapıştırın.';

  @override
  String whatsNewIntroTitle(String version) {
    return 'Toadplayer $version geldi';
  }

  @override
  String get whatsNewIntroDesc =>
      'Şimdiye kadarki en büyük güncellememiz. Yeniliklerimize hızlıca bir göz atın.';

  @override
  String get whatsNewLinkTitle => 'Toadplayer Link';

  @override
  String get whatsNewLinkDesc =>
      'Telefonunuzu ve bilgisayarınızı aynı ağda eşleştirin. Toadplayer Link beta aşamasındadır.';

  @override
  String get whatsNewLinkPlayTitle => 'Cihazlar arasında çalın';

  @override
  String get whatsNewLinkPlayBody =>
      'Bilgisayarınızın kitaplığına telefonunuzdan göz atın, ne çaldığını denetleyin ve kaldığınız yeri kaybetmeden oynatmayı devredin.';

  @override
  String get whatsNewLinkTransferTitle => 'Şarkıları iki yönde taşıyın';

  @override
  String get whatsNewLinkTransferBody =>
      'Şarkı menüsünden doğrudan bilgisayarınıza şarkı gönderin veya telefonunuza kaydedin.';

  @override
  String get whatsNewLinkSyncTitle => 'Senkron kalın';

  @override
  String get whatsNewLinkSyncBody =>
      'Koleksiyonlar ve dinleme geçmişi eşleştirilmiş cihazlarda aynı kalır.';

  @override
  String get whatsNewHomeTitle => 'Öğrenen bir Ana sayfa';

  @override
  String get whatsNewHomeDesc =>
      'Mix\'ler ve otomatik oynatma artık gerçekte nasıl dinlediğinizi izliyor.';

  @override
  String get whatsNewHomeMixesTitle => 'Kitaplığınızdan mix\'ler';

  @override
  String get whatsNewHomeMixesBody =>
      'Kendi şarkılarınızdan oluşturulan yeni mix\'ler; her tür için bir mix dahil.';

  @override
  String get whatsNewHomeAutoplayTitle => 'Daha akıllı otomatik oynatma';

  @override
  String get whatsNewHomeAutoplayBody =>
      'Otomatik oynatma dinleme oturumunuzu izler ve favorilerinizden, çalma listelerinizden ve tekrarlarınızdan öğrenir.';

  @override
  String get whatsNewHomeAnalysisTitle => 'Şarkı analizi';

  @override
  String get whatsNewHomeAnalysisBody =>
      'Toadplayer daha isabetli seçimler için şarkılarınızın nasıl kulağa geldiğini analiz edebilir. Ayarlar\'dan açana kadar kapalı kalır.';

  @override
  String get whatsNewPlayerTitle => 'Oynatıcı ve şarkı sözleri';

  @override
  String get whatsNewPlayerDesc =>
      'Daha akıcı oynatma ve her dilde şarkı sözleri.';

  @override
  String get whatsNewPlayerGaplessTitle => 'Gapless oynatma';

  @override
  String get whatsNewPlayerGaplessBody =>
      'Albümler bir şarkıdan diğerine duraklama olmadan akar.';

  @override
  String get whatsNewPlayerTranslateTitle => 'Şarkı sözlerini çevir';

  @override
  String get whatsNewPlayerTranslateBody =>
      'Ayarladığınız bir AI sağlayıcısıyla şarkı sözlerini çevirin veya romanize edin.';

  @override
  String get whatsNewPlayerTimingTitle => 'Şarkı sözü zamanlaması';

  @override
  String get whatsNewPlayerTimingBody =>
      'Senkronlu şarkı sözleri şarkıdan kaydığında öne veya geriye kaydırın.';

  @override
  String get whatsNewPlayerAutoTitle => 'Android Auto';

  @override
  String get whatsNewPlayerAutoBody =>
      'Arabanızın ekranından Kitaplığınıza göz atın ve müzik çalın.';

  @override
  String get whatsNewPlayerExclusiveTitle => 'Özel çıkış';

  @override
  String get whatsNewPlayerExclusiveBody =>
      'Sesi sistem mikseri olmadan doğrudan çıkış aygıtınıza gönderin.';

  @override
  String get whatsNewLibraryTitle => 'Kitaplık ve arama';

  @override
  String get whatsNewLibraryDesc =>
      'Müziğinizi bulmanın ve düzenlemenin yeni yolları.';

  @override
  String get whatsNewLibraryFoldersTitle => 'Klasöre göre göz at';

  @override
  String get whatsNewLibraryFoldersBody =>
      'Kitaplığınızı diskte depolandığı şekilde keşfedin.';

  @override
  String get whatsNewLibrarySuggestionsTitle => 'Önerilen şarkılar';

  @override
  String get whatsNewLibrarySuggestionsBody =>
      'Albümler, tekliler ve çalma listeleri artık uygun şarkılar öneriyor.';

  @override
  String get whatsNewLibraryRecognizeTitle => 'Müziği tanı';

  @override
  String get whatsNewLibraryRecognizeBody =>
      'Yakında ne çaldığını öğrenmek için Aramada mikrofon simgesine dokunun.';

  @override
  String get whatsNewLibraryPlaylistsTitle => 'Daha iyi çalma listeleri';

  @override
  String get whatsNewLibraryPlaylistsBody =>
      'Şarkıları yeniden sıralayın, bir klasörden çalma listesi oluşturun veya çalma listesi dosyalarını içe aktarın.';

  @override
  String get whatsNewFasterTitle => 'Her yerde daha hızlı';

  @override
  String get whatsNewFasterDesc =>
      'Özellikle büyük kitaplıklarda daha hızlı ve daha hafif.';

  @override
  String get whatsNewFasterLibraryTitle => 'Daha hızlı Kitaplık';

  @override
  String get whatsNewFasterLibraryBody =>
      'Sekmeler ve albümler daha hızlı açılır, kaydırma akıcı kalır.';

  @override
  String get whatsNewFasterNetworkTitle => 'Daha hızlı ağ müziği';

  @override
  String get whatsNewFasterNetworkBody =>
      'Ağ paylaşımları çok daha hızlı taranır ve Subsonic sunucuları çok daha az istekle eşitlenir.';

  @override
  String get whatsNewFasterQueueTitle => 'Uzun süre dayanan kuyruklar';

  @override
  String get whatsNewFasterQueueBody =>
      'Büyük kuyruklar hızlı kaydedilir ve yeniden başlatmadan sonra geri gelir.';

  @override
  String get whatsNewFasterBackgroundTitle => 'Arka planda daha hafif';

  @override
  String get whatsNewFasterBackgroundBody =>
      'Uygulama daha hızlı açılır ve müzik çalarken daha az iş yapar.';

  @override
  String get whatsNewDone => 'Dinlemeye başla';

  @override
  String whatsNewAboutTitle(String version) {
    return '$version sürümündeki yenilikler';
  }

  @override
  String get libraryForceFullScan => 'Tam Taramayı Zorla';

  @override
  String get libraryForceFullScanSubtitle =>
      'Önbelleği yok sayarak tüm dosyaları yeniden tarayın';

  @override
  String get cleanupOrphanedDownloads => 'Yetim kalmış indirmeleri temizle';

  @override
  String get cleanupOrphanedDownloadsSubtitle =>
      'Artık mevcut olmayan dosyalar için geçmiş kayıtlarını kaldırın';

  @override
  String cleanupOrphanedDownloadsResult(int count) {
    return 'Geçmişten $count adet yetim kayıt kaldırıldı';
  }

  @override
  String get cleanupOrphanedDownloadsNone => 'Hiçbir yetim kayıt bulunamadı';

  @override
  String get cacheTitle => 'Depolama & Önbellek';

  @override
  String get cacheSummaryTitle => 'Önbellek genel bakışı';

  @override
  String get cacheSummarySubtitle =>
      'Önbelleği temizlemek, indirilen müzik dosyalarını silmeyecektir.';

  @override
  String cacheEstimatedTotal(String size) {
    return 'Tahmini önbellek kullanımı: $size';
  }

  @override
  String get cacheSectionStorage => 'Önbelleğe alınmış veriler';

  @override
  String get cacheSectionMaintenance => 'Bakım';

  @override
  String get cacheAppDirectory => 'Uygulama önbellek dizini';

  @override
  String get cacheAppDirectoryDesc =>
      'HTTP yanıtları, WebView verileri ve diğer geçici uygulama verileri.';

  @override
  String get cacheTempDirectory => 'Geçici dizin';

  @override
  String get cacheTempDirectoryDesc =>
      'İndirmelerden ve ses dönüştürme işlemlerinden kaynaklanan geçici dosyalar.';

  @override
  String get cacheCoverImage => 'Kapak resmi önbelleği';

  @override
  String get cacheCoverImageDesc =>
      'Albüm ve şarkı kapak resimleri indirildi. Görüntülendikten sonra tekrar indirilecektir.';

  @override
  String get cacheLibraryCover => 'Kütüphane kapağı önbelleği';

  @override
  String get cacheLibraryCoverDesc =>
      'Kapak resmi yerel müzik dosyalarından çıkarıldı. Bir sonraki taramada yeniden çıkarılacaktır.';

  @override
  String get libraryPlaybackNormalization => 'Ses seviyesi normalizasyonu';

  @override
  String get libraryPlaybackNormalizationSubtitle =>
      'Varsa ReplayGain veya R128 etiketlerini kullanarak parçalar arasındaki ses yüksekliğini eşitleyin';

  @override
  String get playbackNormalizationMode => 'Kazanç modu';

  @override
  String get playbackNormalizationModeTrack => 'Şarkı';

  @override
  String get playbackNormalizationModeAlbum => 'Albüm';

  @override
  String get playbackNormalizationPreamp => 'Ön yükselteç';

  @override
  String playbackNormalizationPreampValue(String gain, String target) {
    return '$gain dB (hedef $target LUFS)';
  }

  @override
  String get playbackNormalizationPreampHint =>
      'Düşük değerler daha kısık çalar. Normalizasyon yalnızca parçaları kısar, bu yüzden ses asla kırpılmaz.';

  @override
  String get cacheAudioAnalysis => 'Ses analizi önbelleği';

  @override
  String get cacheAudioAnalysisDesc =>
      'Kaydedilmiş spektrogramlar ve analiz sonuçları. Sonraki açılışta yeniden analiz edilir.';

  @override
  String get cacheExploreFeed => 'Besleme önbelleğini keşfedin';

  @override
  String get cacheExploreFeedDesc =>
      'Sekme içeriğini keşfedin (yeni çıkanlar, trendler). Bir sonraki ziyaretinizde yenilenecektir.';

  @override
  String get cacheTrackLookup => 'İzleme arama önbelleği';

  @override
  String get cacheTrackLookupDesc =>
      'Spotify/Deezer parça kimliği sorguları. Temizlemek sonraki birkaç aramayı yavaşlatabilir.';

  @override
  String get cacheCleanupUnusedDesc =>
      'Artık mevcut olmayan dosyalar için yetim indirme geçmişini ve kitaplık kayıtlarını kaldırın.';

  @override
  String get cacheNoData => 'Önbelleğe alınmış veri yok';

  @override
  String cacheSizeWithFiles(String size, int count) {
    return '$count dosyada $size';
  }

  @override
  String cacheSizeOnly(String size) {
    return '$size';
  }

  @override
  String cacheEntries(int count) {
    return '$count kayıt';
  }

  @override
  String cacheClearSuccess(String target) {
    return 'Temizlendi: $target';
  }

  @override
  String get cacheClearConfirmTitle => 'Önbellek temizlensin mi?';

  @override
  String cacheClearConfirmMessage(String target) {
    return '$target için önbelleğe alınan veriler temizlenecek. İndirilen müzik dosyaları silinmeyecek.';
  }

  @override
  String get cacheClearAllConfirmTitle => 'Tüm önbellek temizlensin mi?';

  @override
  String get cacheClearAllConfirmMessage =>
      'Bu sayfadaki tüm önbellek kategorileri temizlenecek. İndirilen müzik dosyaları silinmeyecek.';

  @override
  String get cacheClearAll => 'Tüm önbelleği temizle';

  @override
  String get cacheCleanupUnused => 'Kullanılmayan verileri temizle';

  @override
  String get cacheCleanupUnusedSubtitle =>
      'Yetim indirme geçmişini ve eksik kitaplık kayıtlarını kaldır';

  @override
  String cacheCleanupResult(int downloadCount, int libraryCount) {
    return 'Temizlik tamamlandı: $downloadCount yetim indirme, $libraryCount eksik kitaplık kaydı';
  }

  @override
  String get cacheRefreshStats => 'İstatistikleri yenile';

  @override
  String get trackSaveCoverArt => 'Kapak resmini kaydet';

  @override
  String get trackSaveLyrics => 'Şarkı sözlerini kaydet (.lrc)';

  @override
  String get trackSaveLyricsProgress => 'Şarkı sözleri kaydediliyor...';

  @override
  String get trackReEnrich => 'Yeniden zenginleştir';

  @override
  String get trackReEnrichBatchSubtitle =>
      'Çevrimiçi veya elle güncelleme seçin, ardından yazmadan önce her değişikliği gözden geçirin';

  @override
  String get trackReEnrichFieldCover => 'Kapak resmi';

  @override
  String get trackReEnrichFieldLyrics => 'Şarkı Sözleri';

  @override
  String get trackReEnrichFieldBasicTags => 'Albüm, Albüm Sanatçısı';

  @override
  String get trackReEnrichFieldTrackInfo => 'Parça ve Disk Numarası';

  @override
  String get trackReEnrichFieldReleaseInfo => 'Tarih ve ISRC';

  @override
  String get trackReEnrichFieldExtra => 'Tür, Etiket, Telif hakkı';

  @override
  String get trackReEnrichSelectAll => 'Tümünü Seç';

  @override
  String get trackReEnrichModeIsrc => 'Sadece ISRC';

  @override
  String get trackReEnrichModeIsrcSubtitle =>
      'Diğer etiketleri değiştirmeden kayıt tanımlayıcısını bulun ve ekleyin';

  @override
  String get trackReEnrichModeMissing => 'Eksik etiketleri doldur';

  @override
  String get trackReEnrichModeMissingSubtitle =>
      'Mevcut değerleri koru ve yalnızca boş alanları doldur';

  @override
  String get trackReEnrichModeReplace => 'Seçili etiketleri güncelle';

  @override
  String get trackReEnrichModeReplaceSubtitle =>
      'Hangi mevcut değerlerin çevrimiçi meta verilerle değiştirilebileceğini seçin';

  @override
  String get trackReEnrichModeManual => 'Ortak değerleri ayarla';

  @override
  String get trackReEnrichModeManualSubtitle =>
      'Aynı değerleri seçili her parçaya uygula';

  @override
  String get trackReEnrichManualFieldsTitle => 'Uygulanacak değerler';

  @override
  String get trackReEnrichManualHint =>
      'Geçerli değeri korumak için alanı boş bırakın. Parça başlıkları, numaraları ve ISRC\'ler değişmez.';

  @override
  String get trackReEnrichFieldsTitle => 'Güncellenecek etiketler';

  @override
  String get trackReEnrichReview => 'Değişiklikleri incele';

  @override
  String get trackReEnrichReviewTitle => 'Meta veri değişikliklerini incele';

  @override
  String trackReEnrichReviewSubtitle(int changeCount, int trackCount) {
    return '$trackCount parça genelinde $changeCount önerilen değişiklik';
  }

  @override
  String get trackReEnrichNoChanges =>
      'Seçilen parçalar için meta veri değişikliği bulunamadı.';

  @override
  String get trackReEnrichApplyChanges => 'Değişiklikleri uygula';

  @override
  String get trackReEnrichRefreshOnline => 'Çevrimiçinden yenile';

  @override
  String get trackEditMetadata => 'Meta verileri düzenle';

  @override
  String trackCoverSaved(String fileName) {
    return 'Kapak resmi $fileName konumuna kaydedildi';
  }

  @override
  String get trackCoverNoSource => 'Kullanılabilir kapak resmi kaynağı yok';

  @override
  String trackLyricsSaved(String fileName) {
    return 'Şarkı sözleri $fileName konumuna kaydedildi';
  }

  @override
  String get trackReEnrichProgress =>
      'Meta veriler yeniden zenginleştiriliyor...';

  @override
  String get trackReEnrichSearching => 'Meta veriler çevrimiçi aranıyor...';

  @override
  String get trackReEnrichPreparing =>
      'Meta veri değişiklikleri hazırlanıyor...';

  @override
  String get trackReEnrichSuccess =>
      'Meta veriler başarıyla yeniden zenginleştirildi';

  @override
  String get trackReEnrichMetadataSaved => 'Meta veriler kaydedildi';

  @override
  String get trackReEnrichLyricsUpdated => 'Şarkı sözleri güncellendi';

  @override
  String get trackReEnrichLyricsPreserved =>
      'Yeni şarkı sözü bulunamadı; mevcut şarkı sözleri korundu';

  @override
  String get trackReEnrichLyricsDisabled =>
      'Şarkı sözleri güncellenmedi: şarkı sözü indirme Ayarlar\'da devre dışı';

  @override
  String get trackReEnrichFfmpegFailed =>
      'FFmpeg meta veri gömme işlemi başarısız oldu';

  @override
  String get queueFlacAction => 'FLAC\'i kuyruğa ekle';

  @override
  String queueFlacConfirmMessage(int count) {
    return 'Seçilen parçalar için çevrimiçi eşleşmeler aranır ve FLAC indirmeleri kuyruğa eklenir.\n\nMevcut dosyalar değiştirilmez veya silinmez.\n\nYalnızca yüksek güvenilirlikli eşleşmeler otomatik olarak kuyruğa eklenir.\n\n$count seçili';
  }

  @override
  String get queueFlacNoReliableMatches =>
      'Seçim için güvenilir çevrimiçi eşleşme bulunamadı';

  @override
  String queueFlacQueuedWithSkipped(int addedCount, int skippedCount) {
    return 'Kuyruğa $addedCount parça eklendi, $skippedCount atlandı';
  }

  @override
  String trackSaveFailed(String error) {
    return 'Başarısız: $error';
  }

  @override
  String get trackConvertFormat => 'Format dönüştür';

  @override
  String get trackConvertTitle => 'Sesi dönüştür';

  @override
  String get trackConvertTargetFormat => 'Hedef format';

  @override
  String get trackConvertBitrate => 'Bitrate';

  @override
  String get trackConvertKeepOriginal => 'Orijinal dosyayı sakla';

  @override
  String get trackConvertKeepOriginalDescription =>
      'Dönüştürülen dosyayı ayrı bir kitaplık öğesi olarak ekle';

  @override
  String get trackConvertConfirmTitle => 'Dönüştürmeyi Onayla';

  @override
  String trackConvertConfirmMessage(
    String sourceFormat,
    String targetFormat,
    String bitrate,
  ) {
    return '$sourceFormat formatından $targetFormat formatına $bitrate hızında dönüştürülsün mü?\n\nDönüştürme işleminden sonra orijinal dosya silinecektir.';
  }

  @override
  String trackConvertConfirmMessageLossless(
    String sourceFormat,
    String targetFormat,
  ) {
    return '$sourceFormat formatından $targetFormat formatına dönüştürmek ister misiniz? (Kayıpsız — kalite kaybı yok)\n\nDönüştürme işleminden sonra orijinal dosya silinecektir.';
  }

  @override
  String trackConvertConfirmKeepOriginal(
    String sourceFormat,
    String targetFormat,
  ) {
    return '$sourceFormat biçiminden $targetFormat biçimine dönüştürülsün mü?\n\nOrijinal dosya saklanır ve dönüştürülen dosya ayrı bir kitaplık öğesi olarak eklenir.';
  }

  @override
  String get trackConvertLosslessHint =>
      'Kayıpsız dönüştürme — kalite kaybı yok';

  @override
  String get trackConvertConverting => 'Ses dönüştürülüyor...';

  @override
  String trackConvertSuccess(String format) {
    return '$format formatına başarıyla dönüştürüldü';
  }

  @override
  String get trackConvertFailed => 'Dönüştürme başarısız oldu';

  @override
  String get cueSplitTitle => 'Bölünmüş CUE Sayfası';

  @override
  String cueSplitAlbum(String album) {
    return 'Albüm: $album';
  }

  @override
  String cueSplitArtist(String artist) {
    return 'Sanatçı: $artist';
  }

  @override
  String cueSplitTrackCount(int count) {
    return '$count parça';
  }

  @override
  String get cueSplitConfirmTitle => 'Bölünmüş CUE Albümü';

  @override
  String cueSplitConfirmMessage(String album, int count) {
    return '\"$album\" albümünü $count adet ayrı FLAC dosyasına bölmek ister misiniz?\n\nDosyalar aynı dizine kaydedilecektir.';
  }

  @override
  String cueSplitSplitting(int current, int total) {
    return 'CUE sayfası bölünüyor... ($current/$total)';
  }

  @override
  String cueSplitSuccess(int count) {
    return '$count parçaya başarıyla bölündü';
  }

  @override
  String get cueSplitFailed => 'CUE bölme işlemi başarısız oldu';

  @override
  String get cueSplitNoAudioFile =>
      'Bu CUE sayfası için ses dosyası bulunamadı';

  @override
  String get cueSplitButton => 'Parçalara Ayrılmış';

  @override
  String get actionCreate => 'Oluştur';

  @override
  String get collectionFoldersTitle => 'Klasörlerim';

  @override
  String get collectionWishlist => 'İstek listesi';

  @override
  String get collectionLoved => 'Sevilen';

  @override
  String get collectionFavoriteArtists => 'Favori Sanatçılar';

  @override
  String get collectionPlaylist => 'Çalma listesi';

  @override
  String get collectionAddToPlaylist => 'Çalma listesine ekle';

  @override
  String get collectionCreatePlaylist => 'Çalma listesi oluştur';

  @override
  String get collectionNoPlaylistsYet => 'Henüz çalma listesi yok';

  @override
  String collectionPlaylistTracks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count parça',
      one: '1 parça',
    );
    return '$_temp0';
  }

  @override
  String collectionArtistCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sanatçı',
      one: '1 sanatçı',
    );
    return '$_temp0';
  }

  @override
  String collectionAddedToPlaylist(String playlistName) {
    return '\"$playlistName\"e eklendi';
  }

  @override
  String collectionAlreadyInPlaylist(String playlistName) {
    return 'Zaten \"$playlistName\" içinde';
  }

  @override
  String get collectionPlaylistNameHint => 'Çalma listesi adı';

  @override
  String get collectionPlaylistNameRequired => 'Çalma listesi adı zorunludur';

  @override
  String get collectionRenamePlaylist => 'Çalma listesini yeniden adlandır';

  @override
  String get collectionDeletePlaylist => 'Çalma listesini sil';

  @override
  String get collectionPlaylistRenamed => 'Çalma listesinin adı değiştirildi';

  @override
  String get collectionWishlistEmptyTitle => 'İstek listesi boş';

  @override
  String get collectionWishlistEmptySubtitle =>
      'Daha sonra indirmek istediğiniz parçaları kaydetmek için parçaların üzerine + işaretiyle dokunun';

  @override
  String get collectionLovedEmptyTitle => 'Sevilenler klasörü boş';

  @override
  String get collectionLovedEmptySubtitle =>
      'Favorilerinizi kaydetmek için parçalara beğeni bırakın';

  @override
  String get collectionFavoriteArtistsEmptyTitle => 'Henüz favori sanatçım yok';

  @override
  String get collectionFavoriteArtistsEmptySubtitle =>
      'Bir sanatçının sayfasındaki kalbe dokunarak onu burada tutmaya devam edin';

  @override
  String get collectionPlaylistEmptyTitle => 'Çalma listesi boş';

  @override
  String get collectionPlaylistEmptySubtitle =>
      'Buraya eklemek istediğiniz herhangi bir parçaya uzun süre basılı tutun +';

  @override
  String get collectionRemoveFromPlaylist => 'Çalma listesinden kaldır';

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
  String get collectionRemoveFromFolder => 'Klasörden kaldır';

  @override
  String collectionAddedToLoved(String trackName) {
    return '\"$trackName\" Sevilen\'e eklendi';
  }

  @override
  String collectionRemovedFromLoved(String trackName) {
    return '\"$trackName\" Sevilen\'den kaldırıldı';
  }

  @override
  String collectionAddedToWishlist(String trackName) {
    return '\"$trackName\" İstek listesine eklendi';
  }

  @override
  String collectionRemovedFromWishlist(String trackName) {
    return '\"$trackName\" İstek listesinden kaldırıldı';
  }

  @override
  String collectionAddedToFavoriteArtists(String artistName) {
    return '\"$artistName\" Favori Sanatçılar\'a eklendi';
  }

  @override
  String collectionRemovedFromFavoriteArtists(String artistName) {
    return '\"$artistName\" Favori Sanatçılar\'dan kaldırıldı';
  }

  @override
  String get trackOptionAddToLoved => 'Sevilen\'e ekle';

  @override
  String get trackOptionRemoveFromLoved => 'Sevilen\'den kaldır';

  @override
  String get trackOptionAddToWishlist => 'İstek listesine ekle';

  @override
  String get trackOptionRemoveFromWishlist => 'İstek listesinden kaldır';

  @override
  String get artistOptionAddToFavorites => 'Favori Sanatçılar\'a ekle';

  @override
  String get artistOptionRemoveFromFavorites => 'Favori Sanatçılar\'dan kaldır';

  @override
  String get collectionPlaylistChangeCover => 'Kapak resmini değiştir';

  @override
  String get collectionPlaylistRemoveCover => 'Kapak resmini kaldır';

  @override
  String selectionConvertCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'parçayı',
      one: 'parçayı',
    );
    return '$count $_temp0 dönüştür';
  }

  @override
  String get selectionConvertNoConvertible =>
      'Dönüştürülebilir parça seçilmedi';

  @override
  String get selectionBatchConvertConfirmTitle => 'Toplu dönüştürme';

  @override
  String selectionBatchConvertConfirmMessage(
    int count,
    String format,
    String bitrate,
  ) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'parça',
      one: 'parça',
    );
    return '$count $_temp0 $format biçimine $bitrate bit hızında dönüştürülsün mü?\n\nDönüştürme sonrasında orijinal dosyalar silinecek.';
  }

  @override
  String selectionBatchConvertConfirmMessageLossless(int count, String format) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'parça',
      one: 'parça',
    );
    return '$count $_temp0 $format biçimine dönüştürülsün mü? (Kayıpsız — kalite kaybı yok)\n\nDönüştürme sonrasında orijinal dosyalar silinecek.';
  }

  @override
  String selectionBatchConvertConfirmKeepOriginal(int count, String format) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'parça',
      one: 'parça',
    );
    return '$count $_temp0 $format biçimine dönüştürülsün mü?\n\nOrijinal dosyalar saklanır ve dönüştürülen dosyalar ayrı kitaplık öğeleri olarak eklenir.';
  }

  @override
  String selectionBatchConvertSuccess(int success, int total, String format) {
    return '$total parçanın $success tanesi $format formatına dönüştürüldü';
  }

  @override
  String downloadedAlbumDownloadedCount(int count) {
    return '$count indirildi';
  }

  @override
  String get downloadUseAlbumArtistForFoldersAlbumSubtitle =>
      'Klasör, Albüm Sanatçısı etiketine göre adlandırılır';

  @override
  String get downloadUseAlbumArtistForFoldersTrackSubtitle =>
      'Klasör, Parça Sanatçısı etiketine göre adlandırılır';

  @override
  String get lyricsProvidersTitle => 'Şarkı sözü sağlayıcı önceliği';

  @override
  String get lyricsProvidersDescription =>
      'Şarkı sözü kaynaklarını etkinleştirin, devre dışı bırakın ve sıralayın. Şarkı sözleri bulunana kadar sağlayıcılar yukarıdan aşağıya denenir.';

  @override
  String get lyricsProvidersInfoText =>
      'Eklenti şarkı sözü sağlayıcıları, yerleşik şarkı sözü sağlayıcılarından önce çalışır. En az bir sağlayıcı etkin kalmalıdır.';

  @override
  String lyricsProvidersEnabledSection(int count) {
    return 'Etkin ($count)';
  }

  @override
  String lyricsProvidersDisabledSection(int count) {
    return 'Devre dışı ($count)';
  }

  @override
  String get lyricsProvidersAtLeastOne =>
      'En az bir sağlayıcı etkin kalmalıdır';

  @override
  String get lyricsProvidersSaved => 'Şarkı sözü sağlayıcı önceliği kaydedildi';

  @override
  String get lyricsProvidersDiscardContent =>
      'Kaydedilmemiş değişiklikleriniz var ve kaybolacak.';

  @override
  String get lyricsProviderLrclibDesc =>
      'Açık kaynaklı senkronize şarkı sözü veritabanı';

  @override
  String get lyricsProviderNeteaseDesc =>
      'NetEase Cloud Music (Asya şarkıları için iyi)';

  @override
  String get lyricsProviderMusixmatchDesc =>
      'En büyük şarkı sözü veritabanı (çok dilli)';

  @override
  String get lyricsProviderAppleMusicDesc =>
      'Kelime kelime senkronize şarkı sözleri (proxy üzerinden)';

  @override
  String get lyricsProviderQqMusicDesc =>
      'QQ Music (Çince şarkılar için iyi, doğrudan API)';

  @override
  String get lyricsProviderLyricsPlusDesc =>
      'Kelime kelime karaoke şarkı sözleri (Apple/Musixmatch/Spotify/QQ, proxy üzerinden)';

  @override
  String get lyricsProviderToadLrcDesc =>
      'Toad-LRC\'den kelime kelime Apple Music şarkı sözleri';

  @override
  String get lyricsProviderLrcRedDesc =>
      'Kayda göre eşleştirilen kelime kelime Apple Music şarkı sözleri';

  @override
  String get lyricsProviderBetterLyricsDesc =>
      'Popüler şarkılar için kelime kelime Apple Music şarkı sözleri';

  @override
  String get lyricsProviderExtensionDesc => 'Eklenti sağlayıcısı';

  @override
  String get safMigrationTitle => 'Depolama güncellemesi gerekli';

  @override
  String get safMigrationMessage1 =>
      'Toadplayer artık indirmeler için Android Depolama Erişim Çerçevesi\'ni (SAF) kullanıyor. Bu, Android 10+ sürümlerindeki \"izin reddedildi\" hatalarını giderir.';

  @override
  String get safMigrationMessage2 =>
      'Yeni depolama sistemine geçmek için lütfen indirme klasörünüzü yeniden seçin.';

  @override
  String get safMigrationSuccess => 'İndirme klasörü SAF moduna güncellendi';

  @override
  String get settingsDonate => 'Geliştirmeyi destekle';

  @override
  String get settingsDonateSubtitle => 'Geliştiriciye bir kahve ısmarlayın';

  @override
  String get settingsBackup => 'Yedekle ve geri yükle';

  @override
  String get settingsBackupSubtitle =>
      'Kitaplığınızı, geçmişinizi ve ayarlarınızı yeni bir cihaza taşıyın';

  @override
  String get backupTitle => 'Yedekle ve geri yükle';

  @override
  String get backupExportSectionTitle => 'Yedek oluştur';

  @override
  String get backupExportSectionDescription =>
      'Ayarlarınızı, indirme geçmişinizi, beğendiğiniz parçaları, istek listenizi, favori sanatçılarınızı ve çalma listelerinizi saklayabileceğiniz veya başka bir telefona taşıyabileceğiniz tek bir dosyaya kaydedin.';

  @override
  String get backupExportButton => 'Yedek dosyası oluştur';

  @override
  String get backupImportSectionTitle => 'Yedeği geri yükle';

  @override
  String get backupImportSectionDescription =>
      'Verilerinizi geri yüklemek için bir yedek dosyası seçin. Bu, bu cihazdaki mevcut ayarların, geçmişin ve kitaplığın yerini alır.';

  @override
  String get backupImportButton => 'Yedek dosyası seç';

  @override
  String get backupCreated => 'Yedek oluşturuldu';

  @override
  String get backupCreateFailed => 'Yedek oluşturulamadı';

  @override
  String get backupRestoreConfirmTitle => 'Bu yedek geri yüklensin mi?';

  @override
  String get backupRestoreConfirmButton => 'Geri yükle';

  @override
  String get backupRestored => 'Yedek başarıyla geri yüklendi';

  @override
  String get backupRestoreFailed => 'Yedek geri yüklenemedi';

  @override
  String get backupInvalidFile =>
      'Bu dosya geçerli bir Toadplayer yedeği değil';

  @override
  String get backupRestoreRestartHint =>
      'Tüm değişikliklerin uygulandığından emin olmak için uygulamayı yeniden başlatın.';

  @override
  String get backupContentsTitle => 'Yedek içeriği';

  @override
  String get backupSettingsOnly => 'Yalnızca ayarlar';

  @override
  String get backupSelectHistory => 'İndirme geçmişi';

  @override
  String get backupSelectCollections => 'Kitaplık koleksiyonları';

  @override
  String get backupSelectCollectionsDescription =>
      'Beğenilen parçalar, istek listesi, favori sanatçılar, çalma listeleri ve çalma listesi kapakları.';

  @override
  String get backupSelectExtensions => 'Eklentiler ve ayarları';

  @override
  String get backupSelectedExportDescription =>
      'Seçilen kategorileri bir yedek dosyasına kaydedin. Ses dosyaları dahil edilmez.';

  @override
  String get backupSelectAtLeastOne =>
      'Yedek oluşturmak için en az bir kategori seçin.';

  @override
  String get backupSelectedRestoreMessage =>
      'Yalnızca aşağıda listelenen kategoriler geri yüklenir. Bu yedeğe dahil olmayan kategoriler değişmeden kalır. Geri yükleme mevcut verilerin yerini alabilir ve geri alınamaz.';

  @override
  String get backupContentsSettings => 'Uygulama ayarları';

  @override
  String backupContentsHistory(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'öğe',
      one: 'öğe',
    );
    return 'Geçmişte $count $_temp0';
  }

  @override
  String backupContentsLiked(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'parça',
      one: 'parça',
    );
    return '$count beğenilen $_temp0';
  }

  @override
  String backupContentsWishlist(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'parça',
      one: 'parça',
    );
    return 'İstek listesinde $count $_temp0';
  }

  @override
  String backupContentsPlaylists(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count çalma listesi',
      one: '1 çalma listesi',
    );
    return '$_temp0';
  }

  @override
  String backupContentsArtists(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count favori sanatçı',
      one: '1 favori sanatçı',
    );
    return '$_temp0';
  }

  @override
  String backupContentsExtensions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count eklenti',
      one: '1 eklenti',
    );
    return '$_temp0';
  }

  @override
  String get backupIncludeSecrets => 'Eklenti kimlik bilgilerini dahil et';

  @override
  String get backupIncludeSecretsDescription =>
      'Eklentilerden gelen token\'lar ve API anahtarları yedek dosyasına kaydedilir. Dosyayı gizli tutun. Kapalıyken geri yükleme sonrasında bunları yeniden girersiniz.';

  @override
  String backupExtensionsRestoreFailed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'eklenti',
      one: 'eklenti',
    );
    return '$count $_temp0 yeniden yüklenemedi. Bunları depodan elle yükleyin.';
  }

  @override
  String get tooltipLoveAll => 'Tümünü beğen';

  @override
  String get tooltipAddToPlaylist => 'Çalma listesine ekle';

  @override
  String snackbarRemovedTracksFromLoved(int count) {
    return 'Sevilen albümünden $count parça kaldırıldı';
  }

  @override
  String snackbarAddedTracksToLoved(int count) {
    return 'Sevilen\'e $count parça eklendi';
  }

  @override
  String get dialogDownloadAllTitle => 'Tümünü İndir';

  @override
  String dialogDownloadAllMessage(int count) {
    return '$count parça indirilsin mi?';
  }

  @override
  String get homeSkipAlreadyDownloaded => 'Daha önce indirilmiş şarkıları atla';

  @override
  String get homeGoToAlbum => 'Albüme Git';

  @override
  String get homeAlbumInfoUnavailable => 'Albüm bilgisi mevcut değil';

  @override
  String get snackbarLoadingCueSheet => 'CUE sayfası yükleniyor...';

  @override
  String get snackbarMetadataSaved => 'Meta veriler başarıyla kaydedildi';

  @override
  String get snackbarFailedToEmbedLyrics => 'Şarkı sözleri eklenemedi';

  @override
  String get snackbarFailedToWriteStorage =>
      'Depolama alanına geri yazma işlemi başarısız oldu';

  @override
  String snackbarError(String error) {
    return 'Hata: $error';
  }

  @override
  String get snackbarNoActionDefined =>
      'Bu düğme için tanımlanmış bir işlem yok';

  @override
  String get noTracksFoundForAlbum => 'Bu albüm için hiçbir parça bulunamadı';

  @override
  String get downloadLocationSubtitle =>
      'İndirdiğiniz parçaları nereye kaydedeceğinizi seçin';

  @override
  String get storageAutomaticFolder => 'Otomatik klasör';

  @override
  String get storageAutomaticDownloadFolder =>
      'Yazılabilirse Download/Toadplayer kullanılır, aksi halde uygulama depolaması';

  @override
  String get storageSafRecommended => 'Klasör seç (Önerilen)';

  @override
  String get storageDownloadFolderHint =>
      'Android klasör seçicide Download klasörünü açıp Toadplayer\'yi seçin. Yoksa Yeni klasör ile oluşturun, ardından erişim vermek için Bu klasörü kullan\'a dokunun.';

  @override
  String get downloadFolderAccessLostTitle =>
      'İndirme klasörü erişimi kaybedildi';

  @override
  String get downloadFolderAccessLostSubtitle =>
      'Klasörü yeniden seçene kadar indirmeler başarısız olur';

  @override
  String get downloadFolderReselect => 'Klasörü yeniden seç';

  @override
  String get downloadErrorSafPermissionLost =>
      'SAF izni geçersiz veya iptal edilmiş. Lütfen indirme konumunu Ayarlar\'dan yeniden yapılandırın.';

  @override
  String get downloadErrorFolderAccessLost =>
      'İndirme klasörü erişimi kaybedildi. Lütfen Ayarlar\'dan indirme klasörünüzü yeniden seçin.';

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
    return 'Yer tutucu olarak $artist, $title, $album, $track, $year, $date, $disc ifadelerini kullanın.';
  }

  @override
  String get downloadFilenameInsertTag => 'Etiket eklemek için dokunun:';

  @override
  String get downloadSeparateSinglesEnabled =>
      'Single şarkılar ve EP\'ler ayrı bir klasöre kaydedildi';

  @override
  String get downloadSeparateSinglesDisabled =>
      'Single\'lar ve albümler aynı klasöre kaydedilir';

  @override
  String get downloadArtistNameFilters => 'Sanatçı adı filtreleri';

  @override
  String get downloadCreatePlaylistSourceFolder =>
      'Çalma listesi kaynak klasörü';

  @override
  String get downloadCreatePlaylistSourceFolderEnabled =>
      'Her çalma listesi için bir alt klasör oluşturulur';

  @override
  String get downloadCreatePlaylistSourceFolderDisabled =>
      'Tüm parçalar doğrudan indirme klasörüne kaydedilir';

  @override
  String get downloadCreatePlaylistSourceFolderRedundant =>
      'Klasör düzeni ayarı tarafından yönetiliyor';

  @override
  String get downloadSongLinkRegion => 'SongLink bölgesi';

  @override
  String get downloadNetworkCompatibilityMode => 'Ağ uyumluluk modu';

  @override
  String get downloadNetworkCompatibilityModeEnabled =>
      'Eski HTTP uç noktalarına izin veriliyor; TLS doğrulaması etkin kalır';

  @override
  String get downloadNetworkCompatibilityModeDisabled =>
      'Standart ağ ayarları kullanılıyor';

  @override
  String get downloadAllowLocalNetwork => 'Yerel ağ erişimine izin ver';

  @override
  String get downloadAllowLocalNetworkEnabled =>
      'Yerel/özel adreslere yapılan isteklere izin verilir (yerel proxy veya özel DNS için)';

  @override
  String get downloadAllowLocalNetworkDisabled =>
      'Güvenlik nedeniyle yerel/özel adresler engellenir';

  @override
  String get downloadSelectServiceToEnable =>
      'Bu seçeneği etkinleştirmek için kalite seçenekleri sunan bir sağlayıcı seçin';

  @override
  String get downloadEmbedLyricsDisabled =>
      'Önce meta veri gömmeyi etkinleştirin';

  @override
  String get downloadNeteaseIncludeTranslation => 'Netease: Çeviriyi dahil et';

  @override
  String get downloadNeteaseIncludeTranslationEnabled =>
      'Çince çeviri satırları dahil edilir';

  @override
  String get downloadNeteaseIncludeTranslationDisabled =>
      'Yalnızca orijinal şarkı sözleri';

  @override
  String get downloadNeteaseIncludeRomanization =>
      'Netease: Romanizasyonu dahil et';

  @override
  String get downloadNeteaseIncludeRomanizationEnabled =>
      'Romanizasyon satırları dahil edilir';

  @override
  String get downloadNeteaseIncludeRomanizationDisabled => 'Romanizasyon yok';

  @override
  String get downloadAppleQqMultiPerson =>
      'Apple / QQ: Çok kişili şarkı sözleri';

  @override
  String get downloadAppleQqMultiPersonEnabled =>
      'Düetler ve grup parçaları için konuşmacı etiketleri dahil edilir';

  @override
  String get downloadAppleQqMultiPersonDisabled =>
      'Konuşmacı etiketi olmayan standart şarkı sözleri';

  @override
  String get downloadAppleElrcWordSync => 'Apple Music eLRC kelime senkronu';

  @override
  String get downloadAppleElrcWordSyncEnabled =>
      'Ham kelime kelime zaman damgaları korunur';

  @override
  String get downloadAppleElrcWordSyncDisabled =>
      'Daha güvenli satır satır Apple Music şarkı sözleri';

  @override
  String get downloadMusixmatchLanguage => 'Musixmatch dili';

  @override
  String get downloadMusixmatchLanguageAuto => 'Otomatik (orijinal dil)';

  @override
  String get downloadFilterContributing =>
      'Katkıda bulunan sanatçıları filtrele';

  @override
  String get downloadFilterContributingEnabled =>
      'Katkıda bulunan sanatçılar Albüm Sanatçısı klasör adından kaldırılır';

  @override
  String get downloadFilterContributingDisabled =>
      'Tam Albüm Sanatçısı dizesi kullanılır';

  @override
  String get downloadProvidersNoneEnabled => 'Etkin sağlayıcı yok';

  @override
  String get downloadMusixmatchLanguageCode => 'Dil kodu';

  @override
  String get downloadMusixmatchLanguageHint => 'örn. en, de, ja';

  @override
  String get downloadMusixmatchLanguageDesc =>
      'Musixmatch\'ten çevrilmiş şarkı sözleri istemek için bir BCP-47 dil kodu girin (örn. en, de, ja).';

  @override
  String get downloadMusixmatchAuto => 'Otomatik';

  @override
  String get downloadNetworkAnySubtitle => 'WiFi veya mobil veri kullan';

  @override
  String get downloadNetworkWifiOnlySubtitle =>
      'Mobil verideyken indirmeler duraklatılır';

  @override
  String get downloadSongLinkRegionDesc =>
      'SongLink ile parça bağlantıları çözümlenirken kullanılan bölge. Akış hizmetlerinizin kullanılabildiği ülkeyi seçin.';

  @override
  String get snackbarUnsupportedAudioFormat => 'Desteklenmeyen ses formatı';

  @override
  String get cacheRefresh => 'Yenile';

  @override
  String dialogDownloadPlaylistsMessage(int trackCount, int playlistCount) {
    String _temp0 = intl.Intl.pluralLogic(
      playlistCount,
      locale: localeName,
      other: 'çalma listesinden',
      one: 'çalma listesinden',
    );
    String _temp1 = intl.Intl.pluralLogic(
      trackCount,
      locale: localeName,
      other: 'parça',
      one: 'parça',
    );
    return '$playlistCount $_temp0 $trackCount $_temp1 indirilsin mi?';
  }

  @override
  String bulkDownloadPlaylistsButton(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'çalma listesini',
      one: 'çalma listesini',
    );
    return '$count $_temp0 indir';
  }

  @override
  String get bulkDownloadSelectPlaylists =>
      'İndirilecek çalma listelerini seçin';

  @override
  String get snackbarSelectedPlaylistsEmpty =>
      'Seçilen çalma listelerinde parça yok';

  @override
  String playlistsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count çalma listesi',
      one: '1 çalma listesi',
    );
    return '$_temp0';
  }

  @override
  String get editMetadataAutoFill => 'Çevrimiçinden otomatik doldur';

  @override
  String get editMetadataAutoFillDesc =>
      'Bir meta veri eklentisi seçin, alanları işaretleyin ve uygulamadan önce verilerini gözden geçirin';

  @override
  String get editMetadataAutoFillSource => 'Meta veri kaynağı';

  @override
  String get editMetadataAutoFillSourceAutomatic =>
      'Otomatik (sağlayıcı önceliği)';

  @override
  String get editMetadataAutoFillFind => 'Meta veri bul';

  @override
  String editMetadataAutoFillPreview(String source) {
    return '$source kaynağından veriler';
  }

  @override
  String get editMetadataAutoFillCoverAvailable => 'Kapak resmi mevcut';

  @override
  String get editMetadataAutoFillApply => 'Seçilen verileri uygula';

  @override
  String editMetadataAutoFillDoneFromSource(int count, String source) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'alan',
      one: 'alan',
    );
    return '$source kaynağından $count $_temp0 dolduruldu';
  }

  @override
  String get editMetadataAutoFillSearching => 'Çevrimiçi aranıyor...';

  @override
  String get editMetadataAutoFillNoResults =>
      'Çevrimiçinde eşleşen meta veri bulunamadı';

  @override
  String get editMetadataAutoFillNoneSelected =>
      'Otomatik doldurmak için en az bir alan seçin';

  @override
  String get editMetadataLyricsSearch => 'Çevrimiçi şarkı sözü bul';

  @override
  String get lyricsPickerTitle => 'Şarkı sözlerini seç';

  @override
  String get lyricsPickerNeedsTitle => 'Önce bir başlık ve sanatçı girin';

  @override
  String get lyricsPickerNoProviders =>
      'Etkin şarkı sözü sağlayıcısı yok. Ayarlar > Şarkı sözleri bölümünden bazılarını açın.';

  @override
  String get lyricsPickerWordSynced => 'Kelime senkronlu';

  @override
  String get lyricsPickerSynced => 'Senkronlu';

  @override
  String get lyricsPickerPlain => 'Düz metin';

  @override
  String get lyricsPickerInstrumental => 'Enstrümantal';

  @override
  String get lyricsPickerNotFound => 'Şarkı sözü bulunamadı';

  @override
  String lyricsPickerLineCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count satır',
      one: '1 satır',
    );
    return '$_temp0';
  }

  @override
  String get editMetadataFieldTitle => 'Başlık';

  @override
  String get editMetadataFieldArtist => 'Sanatçı';

  @override
  String get editMetadataFieldAlbum => 'Albüm';

  @override
  String get editMetadataFieldAlbumArtist => 'Albüm Sanatçısı';

  @override
  String get editMetadataFieldDate => 'Tarih';

  @override
  String get editMetadataFieldTrackNum => 'Parça no';

  @override
  String get editMetadataFieldDiscNum => 'Disk no';

  @override
  String get editMetadataFieldGenre => 'Tür';

  @override
  String get editMetadataFieldIsrc => 'ISRC';

  @override
  String get editMetadataFieldLabel => 'Etiket';

  @override
  String get editMetadataFieldCopyright => 'Telif hakkı';

  @override
  String get editMetadataFieldCover => 'Kapak resmi';

  @override
  String get editMetadataSelectAll => 'Tümü';

  @override
  String get editMetadataSelectEmpty => 'Yalnızca boş';

  @override
  String queueDownloadingCount(int count) {
    return 'İndiriliyor ($count)';
  }

  @override
  String get queueFilteringIndicator => 'Filtreleniyor...';

  @override
  String queueTrackCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count parça',
      one: '1 parça',
    );
    return '$_temp0';
  }

  @override
  String queueAlbumCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count albüm',
      one: '1 albüm',
    );
    return '$_temp0';
  }

  @override
  String get queueEmptyAlbums => 'Albüm indirmesi yok';

  @override
  String get queueEmptyAlbumsSubtitle =>
      'Burada görmek için bir albümden birden fazla parça indirin';

  @override
  String get queueEmptySingles => 'Tekli indirme yok';

  @override
  String get queueEmptySinglesSubtitle =>
      'Tek parça indirmeleri burada görünür';

  @override
  String queuePlaylistCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count çalma listesi',
      one: '1 çalma listesi',
    );
    return '$_temp0';
  }

  @override
  String get queueEmptyPlaylistsSubtitle =>
      'Parçalarınızı düzenlemek için bir çalma listesi oluşturun';

  @override
  String get libraryDefaultView => 'Varsayılan görünüm';

  @override
  String get libraryDefaultViewLastUsed => 'Son kullanılan';

  @override
  String get queueEmptyHistory => 'İndirme geçmişi yok';

  @override
  String get queueEmptyHistorySubtitle => 'İndirilen parçalar burada görünür';

  @override
  String get selectionAllPlaylistsSelected => 'Tüm çalma listeleri seçildi';

  @override
  String get selectionTapPlaylistsToSelect =>
      'Seçmek için çalma listelerine dokunun';

  @override
  String get selectionSelectPlaylistsToDelete =>
      'Silinecek çalma listelerini seçin';

  @override
  String get audioAnalysisTitle => 'Ses kalitesi analizi';

  @override
  String get audioAnalysisDescription =>
      'Kayıpsız kaliteyi spektrum analiziyle doğrulayın';

  @override
  String get audioAnalysisAnalyzing => 'Ses analiz ediliyor...';

  @override
  String get audioAnalysisSampleRate => 'Örnekleme hızı';

  @override
  String get audioAnalysisCodec => 'Kodek';

  @override
  String get audioAnalysisContainer => 'Kapsayıcı';

  @override
  String get audioAnalysisDecodedFormat => 'Çözülen format';

  @override
  String get audioAnalysisBitDepth => 'Bit derinliği';

  @override
  String get audioAnalysisChannels => 'Kanallar';

  @override
  String get audioAnalysisDuration => 'Süre';

  @override
  String get audioAnalysisNyquist => 'Nyquist';

  @override
  String get audioAnalysisFileSize => 'Boyut';

  @override
  String get audioAnalysisDynamicRange => 'Dinamik aralık';

  @override
  String get audioAnalysisPeak => 'Tepe';

  @override
  String get audioAnalysisRms => 'RMS';

  @override
  String get audioAnalysisLufs => 'LUFS';

  @override
  String get audioAnalysisTruePeak => 'True Peak';

  @override
  String get audioAnalysisClipping => 'Kırpılma';

  @override
  String get audioAnalysisNoClipping => 'Kırpılma yok';

  @override
  String get audioAnalysisSpectralCutoff => 'Spektral kesim';

  @override
  String get audioAnalysisCutoffNotDetected => 'Algılanamadı';

  @override
  String get audioAnalysisChannelStats => 'Kanal başına istatistikler';

  @override
  String get audioAnalysisSamples => 'Örnekler';

  @override
  String get audioAnalysisRescan => 'Yeniden analiz et';

  @override
  String get audioAnalysisSaveSpectrogram => 'Spektrogramı Kaydet';

  @override
  String audioAnalysisSpectrogramSaved(String fileName) {
    return 'Spektrogram $fileName dosyasına kaydedildi';
  }

  @override
  String get downloadRedownloadFakeHiRes => 'Sahte Hi-Res\'i yeniden indir';

  @override
  String get downloadRedownloadFakeHiResSubtitle =>
      'Varsayılan olarak kapalı. Hi-Res indirmeleri kontrol eder ve yalnızca tüm ses örnekleri korunduğunda değiştirir. Doğrulama veya işleme başarısız olursa orijinali korur';

  @override
  String get hiResCheckVerdictFakeCertain => 'Sahte Hi-Res';

  @override
  String get hiResCheckReasonSampleHold =>
      'Her örnek tekrarlanıyor: kopyalama yoluyla yukarı örneklenmiş';

  @override
  String get hiResCheckReasonInterpolation =>
      'Ara örnekler doğrusal olarak interpolasyonlanmış';

  @override
  String get hiResCheckTitle => 'Hi-Res özgünlüğü';

  @override
  String get hiResCheckSummary =>
      'Yukarı örnekleme veya doldurma belirtileri için spektrumu ve etkin bit derinliğini inceleyin.';

  @override
  String get hiResCheckLimitedBandwidth => 'Sınırlı bant genişliği';

  @override
  String get hiResCheckNoEvidence =>
      'Yukarı örnekleme veya doldurma algılanmadı';

  @override
  String get hiResCheckEstimatedCutoff => 'Tahmini kesim noktası';

  @override
  String get hiResCheckActiveBits => 'Etkin / depolanan bitler';

  @override
  String get hiResCheckBandwidthExplanation =>
      'Daha düşük bir kesim noktası mastering kaynaklı olabilir. Tek başına yukarı örneklemeyi kanıtlamaz.';

  @override
  String hiResCheckSampledExplanation(String seconds) {
    return '$seconds saniyelik sese dayanır. Bu analiz orijinal master\'ı doğrulayamaz.';
  }

  @override
  String get hiResCheckImagingEvidence =>
      'Spektrum, yukarı örneklemeyle tutarlı yansıtılmış bantlar içeriyor.';

  @override
  String hiResCheckRateEvidence(String cutoff) {
    return '$cutoff yakınındaki keskin düşüş ve ölçülen gürültü tabanı, daha düşük hızlı bir kaynağa işaret ediyor.';
  }

  @override
  String hiResCheckSteadyEnergy(String cutoff) {
    return '$cutoff üzerindeki enerji, analiz edilen kesitte çoğunlukla sabit ve gürültü olabilir.';
  }

  @override
  String get hiResCheckRun => 'Kontrol et';

  @override
  String get hiResCheckChecking => 'Hi-Res özgünlüğü kontrol ediliyor...';

  @override
  String get hiResCheckVerdictFake => 'Muhtemelen sahte Hi-Res';

  @override
  String get hiResCheckVerdictStandard =>
      'Standart çözünürlük, işaretlenecek bir şey yok';

  @override
  String get hiResCheckVerdictInconclusive =>
      'Sonuçsuz: analiz edilen kesit çok sessiz veya kısa';

  @override
  String get hiResCheckUnsupported =>
      'Yalnızca FLAC ve WAV dosyaları kontrol edilebilir';

  @override
  String hiResCheckFailed(String error) {
    return 'Hi-Res kontrolü başarısız oldu: $error';
  }

  @override
  String hiResCheckReasonDepth(int declared, int effective) {
    return '$declared-bit bildiriyor ancak yalnızca $effective bit veri taşıyor';
  }

  @override
  String get audioAnalysisRescanning => 'Ses yeniden analiz ediliyor...';

  @override
  String get extensionsHomeFeedProvider => 'Ana sayfa akışı sağlayıcısı';

  @override
  String get extensionsHomeFeedCountry => 'Ana sayfa akışı ülkesi';

  @override
  String get extensionsHomeFeedCountryDescription =>
      'VPN olmadan bir ülkenin Ana sayfa önerilerini seçin.';

  @override
  String get extensionsHomeFeedDescription =>
      'Ana ekrandaki ana sayfa akışını hangi eklentinin sağlayacağını seçin';

  @override
  String get extensionsHomeFeedAuto => 'Otomatik';

  @override
  String get extensionsHomeFeedAutoSubtitle =>
      'Kullanılabilir en iyiyi otomatik seç';

  @override
  String get extensionsHomeFeedOff => 'Kapalı';

  @override
  String get extensionsHomeFeedOffSubtitle =>
      'Ana ekranda ana sayfa akışını gösterme';

  @override
  String extensionsHomeFeedUse(String extensionName) {
    return '$extensionName ana sayfa akışını kullan';
  }

  @override
  String get extensionsNoHomeFeedExtensions =>
      'Ana sayfa akışı sunan eklenti yok';

  @override
  String get cancelDownloadTitle => 'İndirme iptal edilsin mi?';

  @override
  String cancelDownloadContent(String trackName) {
    return '\"$trackName\" için etkin indirme iptal edilecek.';
  }

  @override
  String get cancelDownloadKeep => 'Sürdür';

  @override
  String get queueCancelledTitle => 'İndirme iptal edildi';

  @override
  String get queueCancelledMessage =>
      'Bu indirme iptal edildi. Yeniden deneyin veya kuyruktan kaldırın.';

  @override
  String get metadataSaveFailedFfmpeg =>
      'Meta veriler FFmpeg ile kaydedilemedi';

  @override
  String get metadataSaveFailedStorage =>
      'Meta veriler depolamaya geri yazılamadı';

  @override
  String snackbarFolderPickerFailed(String error) {
    return 'Klasör seçici açılamadı: $error';
  }

  @override
  String notifDownloadingTrack(String trackName) {
    return '$trackName indiriliyor';
  }

  @override
  String notifFinalizingTrack(String trackName) {
    return '$trackName tamamlanıyor';
  }

  @override
  String get notifEmbeddingMetadata => 'Meta veriler gömülüyor...';

  @override
  String notifAlreadyInLibraryCount(int completed, int total) {
    return 'Kütüphanede zaten ($completed/$total)';
  }

  @override
  String get notifAlreadyInLibrary => 'Kütüphanede zaten';

  @override
  String notifDownloadCompleteCount(int completed, int total) {
    return 'İndirme tamamlandı ($completed/$total)';
  }

  @override
  String get notifDownloadComplete => 'İndirme tamamlandı';

  @override
  String notifDownloadsFinished(int completed, int failed) {
    return 'İndirmeler bitti ($completed başarılı, $failed başarısız)';
  }

  @override
  String get notifVerificationRequiredTitle => 'Doğrulama gerekli';

  @override
  String get notifVerificationRequiredBody =>
      'Doğrulamayı tamamlamak ve indirmeleri sürdürmek için uygulamayı açın';

  @override
  String get notifAllDownloadsComplete => 'Tüm indirmeler tamamlandı';

  @override
  String notifTracksDownloadedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count parça başarıyla indirildi',
      one: '1 parça başarıyla indirildi',
    );
    return '$_temp0';
  }

  @override
  String notifDownloadsFinishedBody(int completed, int failed) {
    String _temp0 = intl.Intl.pluralLogic(
      completed,
      locale: localeName,
      other: '$completed parça indirildi',
      one: '1 parça indirildi',
    );
    String _temp1 = intl.Intl.pluralLogic(
      failed,
      locale: localeName,
      other: '$failed başarısız',
      one: '1 başarısız',
    );
    return '$_temp0, $_temp1';
  }

  @override
  String get notifDownloadsCanceledTitle => 'İndirmeler iptal edildi';

  @override
  String notifDownloadsCanceledBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count indirme kullanıcı tarafından iptal edildi',
      one: '1 indirme kullanıcı tarafından iptal edildi',
    );
    return '$_temp0';
  }

  @override
  String get notifScanningLibrary => 'Yerel kitaplık taranıyor';

  @override
  String notifLibraryScanProgressWithTotal(
    int scanned,
    int total,
    int percentage,
  ) {
    return '$scanned/$total dosya • %$percentage';
  }

  @override
  String notifLibraryScanProgressNoTotal(int scanned) {
    return '$scanned dosya tarandı';
  }

  @override
  String get notifLibraryScanComplete => 'Kitaplık taraması tamamlandı';

  @override
  String notifLibraryScanCompleteBody(int count) {
    return '$count parça dizinlendi';
  }

  @override
  String notifLibraryScanExcluded(int count) {
    return '$count hariç tutuldu';
  }

  @override
  String notifLibraryScanErrors(int count) {
    return '$count hata';
  }

  @override
  String get notifLibraryScanFailed => 'Kitaplık taraması başarısız oldu';

  @override
  String get notifLibraryScanInterruptedBody =>
      'Önceki kitaplık taraması kesintiye uğradı. Devam etmek için klasörü yeniden tarayın. Dizinlenmiş parçalarınız hâlâ kullanılabilir.';

  @override
  String get notifLibraryScanCancelled => 'Kitaplık taraması iptal edildi';

  @override
  String get notifLibraryScanStopped => 'Tarama tamamlanmadan durduruldu.';

  @override
  String get notifLibraryScanPaused => 'Kitaplık taraması duraklatıldı';

  @override
  String notifLibraryScanPausedBody(int count) {
    return '$count dosya tarandı. Buradan devam etmek için Yerel Kitaplık ayarlarından sürdürün.';
  }

  @override
  String notifDownloadingUpdate(String version) {
    return 'Toadplayer v$version indiriliyor';
  }

  @override
  String notifUpdateProgress(String received, String total, int percentage) {
    return '$received / $total MB • %$percentage';
  }

  @override
  String get notifUpdateReady => 'Güncelleme Hazır';

  @override
  String notifUpdateReadyBody(String version) {
    return 'Toadplayer v$version indirildi. Yüklemek için dokunun.';
  }

  @override
  String get notifUpdateFailed => 'Güncelleme başarısız';

  @override
  String get notifUpdateFailedBody =>
      'Güncelleme indirilemedi. Daha sonra tekrar deneyin.';

  @override
  String get searchTracks => 'Parçalar';

  @override
  String get homeSearchHintDefault => 'Paste supported URL or search...';

  @override
  String homeSearchHintProvider(String providerName) {
    return '$providerName ile ara...';
  }

  @override
  String get homeImportCsvTooltip => 'Çalma listesi içe aktar (CSV, M3U)';

  @override
  String get homeChangeSearchProviderTooltip => 'Arama sağlayıcısını değiştir';

  @override
  String get actionPaste => 'Yapıştır';

  @override
  String get tutorialSearchHint => 'Yapıştır veya ara...';

  @override
  String get tutorialDownloadCompletedSemantics => 'İndirme tamamlandı';

  @override
  String get tutorialDownloadInProgressSemantics => 'İndirme sürüyor';

  @override
  String get tutorialStartDownloadSemantics => 'İndirmeyi başlat';

  @override
  String get optionsEmbedMetadata => 'Meta verileri göm';

  @override
  String get optionsEmbedMetadataSubtitleOn =>
      'Meta verileri, kapak resmini ve gömülü şarkı sözlerini dosyalara yaz';

  @override
  String get optionsEmbedMetadataSubtitleOff =>
      'Devre dışı (gelişmiş): tüm meta veri gömmeyi atla';

  @override
  String get trackCoverNoEmbeddedArt => 'Gömülü albüm kapağı bulunamadı';

  @override
  String get trackCoverReplace => 'Kapağı değiştir';

  @override
  String get trackCoverPick => 'Kapak Seç';

  @override
  String get trackCoverClearSelected => 'Seçilen kapağı temizle';

  @override
  String get trackCoverCurrent => 'Geçerli kapak';

  @override
  String get trackCoverSelected => 'Seçili kapak';

  @override
  String get trackCoverReplaceNotice =>
      'Kaydet\'e dokunduğunuzda seçilen kapak, geçerli gömülü kapağın yerini alacak.';

  @override
  String get trackCoverResolution => 'Kapak çözünürlüğü';

  @override
  String get trackCoverResolutionHint =>
      'Kaydederken en uzun kenarı belirler. Büyütmek görüntü ayrıntısı eklemez.';

  @override
  String get trackCoverResizeFailed =>
      'Kapak resmi yeniden boyutlandırılamadı. Lütfen başka bir boyut veya resim deneyin.';

  @override
  String get actionStop => 'Durdur';

  @override
  String get queueFinalizingDownload => 'İndirme tamamlanıyor';

  @override
  String get queueDownloadNext => 'Sıradaki olarak indir';

  @override
  String get queueMoveUp => 'Yukarı taşı';

  @override
  String get queueMoveDown => 'Aşağı taşı';

  @override
  String get editMetadataMusicBrainzButton => 'MusicBrainz\'den getir';

  @override
  String get editMetadataMusicBrainzFilled => 'MusicBrainz\'den güncellendi';

  @override
  String get editMetadataMusicBrainzNothing =>
      'MusicBrainz\'de hiçbir şey bulunamadı';

  @override
  String get editMetadataMusicBrainzNeedsIsrc => 'ISRC etiketi gerekir';

  @override
  String get nowPlayingRepeatOff => 'Tekrar kapalı';

  @override
  String get nowPlayingRepeatAll => 'Tümünü tekrarla';

  @override
  String get nowPlayingRepeatOne => 'Birini tekrarla';

  @override
  String queueNetworkFailedOffline(int count) {
    return 'Çevrimdışıyken $count indirme başarısız oldu';
  }

  @override
  String get queueDownloadedFileMissing => 'İndirilen dosya eksik';

  @override
  String get queueCheckingDownloadedFile =>
      'İndirilen dosya kontrol ediliyor...';

  @override
  String get queueDownloadCompleted => 'İndirme tamamlandı';

  @override
  String get queueRateLimitTitle => 'Hizmet hız sınırı uyguladı';

  @override
  String get queueRateLimitMessage =>
      'Bu parça hâlâ kullanılabilir olabilir. Birkaç dakika bekleyin, paralel indirme sayısını azaltın ve tekrar deneyin.';

  @override
  String appearanceSelectAccentColor(String hex) {
    return 'Vurgu rengini seç $hex';
  }

  @override
  String get logAutoScrollOn => 'Otomatik kaydırma AÇIK';

  @override
  String get logAutoScrollOff => 'Otomatik kaydırma KAPALI';

  @override
  String get logCopyLogs => 'Günlükleri kopyala';

  @override
  String get logClearSearch => 'Aramayı temizle';

  @override
  String get logIssueIspBlockingLabel => 'İSS ENGELLEMESİ ALGILANDI';

  @override
  String get logIssueIspBlockingDescription =>
      'İnternet servis sağlayıcınız indirme hizmetlerine erişimi engelliyor olabilir';

  @override
  String get logIssueIspBlockingSuggestion =>
      'Bir VPN kullanmayı deneyin veya DNS\'i 1.1.1.1 ya da 8.8.8.8 olarak değiştirin';

  @override
  String get logIssueRateLimitedLabel => 'HIZ SINIRI';

  @override
  String get logIssueRateLimitedDescription =>
      'Hizmete çok fazla istek gönderildi';

  @override
  String get logIssueRateLimitedSuggestion =>
      'Tekrar denemeden önce birkaç dakika bekleyin';

  @override
  String get logIssueNetworkErrorLabel => 'AĞ HATASI';

  @override
  String get logIssueNetworkErrorDescription => 'Bağlantı sorunları algılandı';

  @override
  String get logIssueNetworkErrorSuggestion =>
      'İnternet bağlantınızı kontrol edin';

  @override
  String get logIssueTrackNotFoundLabel => 'PARÇA BULUNAMADI';

  @override
  String get logIssueTrackNotFoundDescription =>
      'Bazı parçalar indirme hizmetlerinde bulunamadı';

  @override
  String get logIssueTrackNotFoundSuggestion =>
      'Parça kayıpsız kalitede mevcut olmayabilir';

  @override
  String get clickableLookingUpArtist => 'Sanatçı aranıyor...';

  @override
  String clickableInformationUnavailable(String type) {
    return '$type bilgisi mevcut değil';
  }

  @override
  String get extensionDetailsTags => 'Etiketler';

  @override
  String get extensionDetailsInformation => 'Bilgiler';

  @override
  String get extensionUtilityFunctions => 'Yardımcı işlevler';

  @override
  String get actionDismiss => 'Kapat';

  @override
  String get setupChangeFolderTooltip => 'Klasörü değiştir';

  @override
  String a11yOpenTrackByArtist(String trackName, String artistName) {
    return '$artistName sanatçısının $trackName parçasını aç';
  }

  @override
  String a11yOpenItem(String itemType, String name) {
    return '$name $itemType öğesini aç';
  }

  @override
  String a11yOpenItemCount(String title, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'öğe',
      one: 'öğe',
    );
    return '$title öğesini aç, $count $_temp0';
  }

  @override
  String a11yOpenAlbumByArtistTrackCount(
    String albumName,
    String artistName,
    int trackCount,
  ) {
    return '$artistName sanatçısının $albumName albümünü aç, $trackCount parça';
  }

  @override
  String a11yTrackByArtist(String trackName, String artistName) {
    return '$artistName - $trackName';
  }

  @override
  String a11ySelectAlbum(String albumName) {
    return '$albumName albümünü seç';
  }

  @override
  String a11yOpenAlbum(String albumName) {
    return '$albumName albümünü aç';
  }

  @override
  String get settingsFiles => 'Dosyalar ve klasörler';

  @override
  String get settingsFilesSubtitle =>
      'İndirme konumu, dosya adı, klasör yapısı';

  @override
  String get settingsMetadata => 'Meta veriler';

  @override
  String get settingsMetadataSubtitle =>
      'Kapak resmi, etiketler, ReplayGain, sağlayıcılar';

  @override
  String get settingsLyrics => 'Şarkı sözleri';

  @override
  String get settingsLyricsSubtitle =>
      'Gömme, mod, sağlayıcılar, dil seçenekleri';

  @override
  String get settingsApp => 'Uygulama';

  @override
  String get settingsAppSubtitle =>
      'Güncellemeler, veriler, eklenti deposu, hata ayıklama';

  @override
  String get sectionMetadataProviders => 'Sağlayıcılar';

  @override
  String get sectionDuplicates => 'Yinelenenler';

  @override
  String get sectionLyricsProviderOptions => 'Sağlayıcı seçenekleri';

  @override
  String get metadataProvidersTitle => 'Meta veri sağlayıcı önceliği';

  @override
  String get metadataProvidersSubtitle =>
      'Arama ve meta veri kaynağı sırasını ayarlamak için sürükleyin';

  @override
  String get downloadDeduplication => 'Yinelenen indirmeleri atla';

  @override
  String get downloadDeduplicationEnabled =>
      'Daha önce indirilen parçalar atlanır';

  @override
  String get downloadDeduplicationWithQualityVariants =>
      'Seçilen kalitedeki mevcut dosyalar atlanır';

  @override
  String get downloadDeduplicationDisabled =>
      'Geçmişten bağımsız olarak tüm parçalar indirilir';

  @override
  String get downloadQualityVariants => 'Farklı kalite sürümlerine izin ver';

  @override
  String get downloadQualityVariantsDescription =>
      'Her kalite sürümünü sakla; ölçülen kaliteyi dosya adına yalnızca ad zaten kullanılıyorsa ekle';

  @override
  String get trackOptionDownloadQualityVariant => 'Başka bir kalitede indir';

  @override
  String get downloadFallbackExtensions => 'Yedek eklentiler';

  @override
  String get downloadFallbackExtensionsSubtitle =>
      'Hangi eklentilerin yedek olarak kullanılabileceğini seçin';

  @override
  String get editMetadataFieldDateHint => 'YYYY-AA-GG veya YYYY';

  @override
  String get editMetadataFieldTrackTotal => 'Toplam parça';

  @override
  String get editMetadataFieldDiscTotal => 'Toplam disk';

  @override
  String get editMetadataFieldComposer => 'Besteci';

  @override
  String get editMetadataFieldComment => 'Yorum';

  @override
  String get trackAlbumType => 'Sürüm türü';

  @override
  String get editMetadataFieldAlbumTypeHint => 'Albüm, single, EP, derleme...';

  @override
  String get editMetadataFieldExplicit => 'Explicit';

  @override
  String get editMetadataFieldExplicitHint =>
      'Bu parçayı explicit içerik olarak işaretle';

  @override
  String get metadataExplicitValue => 'Explicit';

  @override
  String get editMetadataFieldUpc => 'UPC / Barkod';

  @override
  String get editMetadataFieldUpcHint => 'Sayısal UPC, EAN veya GTIN';

  @override
  String get editMetadataAdvanced => 'Gelişmiş';

  @override
  String get libraryFilterMetadataMissingTrackNumber => 'Parça numarası eksik';

  @override
  String get libraryFilterMetadataMissingDiscNumber => 'Disk numarası eksik';

  @override
  String get libraryFilterMetadataMissingArtist => 'Sanatçı eksik';

  @override
  String get libraryFilterMetadataIncorrectIsrcFormat => 'Geçersiz ISRC biçimi';

  @override
  String get libraryFilterMetadataMissingIsrc => 'ISRC eksik';

  @override
  String get libraryFilterMetadataMissingLabel => 'Etiket eksik';

  @override
  String collectionDeletePlaylistsMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'çalma listesi',
      one: 'çalma listesi',
    );
    return '$count $_temp0 silinsin mi?';
  }

  @override
  String collectionPlaylistsDeleted(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'çalma listesi',
      one: 'çalma listesi',
    );
    return '$count $_temp0 silindi';
  }

  @override
  String collectionAddedTracksToPlaylist(int count, String playlistName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'parça',
      one: 'parça',
    );
    return '$playlistName listesine $count $_temp0 eklendi';
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
      other: 'parça',
      one: 'parça',
    );
    return '$playlistName listesine $count $_temp0 eklendi ($alreadyCount tanesi zaten listedeydi)';
  }

  @override
  String itemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'öğe',
      one: 'öğe',
    );
    return '$count $_temp0';
  }

  @override
  String trackReEnrichSuccessWithFailures(
    int successCount,
    int total,
    int failedCount,
  ) {
    return 'Meta veriler başarıyla yeniden zenginleştirildi ($successCount/$total) - Başarısız: $failedCount';
  }

  @override
  String selectionDeleteTracksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'parçayı',
      one: 'parçayı',
    );
    return '$count $_temp0 sil';
  }

  @override
  String queueDownloadSpeedStatus(String speed) {
    return 'İndiriliyor - $speed MB/s';
  }

  @override
  String get queueDownloadStarting => 'Başlatılıyor...';

  @override
  String get queueCheckingDownloadSession =>
      'İndirme oturumu kontrol ediliyor...';

  @override
  String get queueResolvingDownloadMetadata =>
      'Parça meta verileri çözümleniyor...';

  @override
  String get queueResolvingDownloadStream => 'Ses akışı hazırlanıyor...';

  @override
  String get queueWaitingForVerification => 'Doğrulama bekleniyor...';

  @override
  String get queueResumingAfterVerification =>
      'Doğrulama sonrası sürdürülüyor...';

  @override
  String get a11ySelectTrack => 'Parçayı seç';

  @override
  String get a11yDeselectTrack => 'Parça seçimini kaldır';

  @override
  String a11yPlayTrackByArtist(String trackName, String artistName) {
    return '$artistName sanatçısının $trackName parçasını çal';
  }

  @override
  String storeExtensionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'eklenti',
      one: 'eklenti',
    );
    return '$count $_temp0';
  }

  @override
  String storeRequiresVersion(String version) {
    return 'v$version+ gerektirir';
  }

  @override
  String get logIssueSummary => 'Sorun özeti';

  @override
  String logTotalErrors(int count) {
    return 'Toplam hata: $count';
  }

  @override
  String logAffectedDomains(String domains) {
    return 'Etkilenen: $domains';
  }

  @override
  String get libraryScanCancelled => 'Tarama iptal edildi';

  @override
  String get libraryScanCancelledSubtitle =>
      'Hazır olduğunuzda taramayı yeniden deneyebilirsiniz.';

  @override
  String libraryDownloadsHistoryExcluded(int count) {
    return 'İndirme geçmişinden $count öğe (listedan hariç tutuldu)';
  }

  @override
  String get downloadNativeWorker => 'Yerleşik indirme motoru';

  @override
  String get downloadNativeWorkerSubtitle =>
      'Eklenti indirmeleri için Android arka plan hizmeti';

  @override
  String get extensionServiceStatus => 'Hizmet durumu';

  @override
  String get extensionServiceHealth => 'Hizmet sağlığı';

  @override
  String extensionHealthChecksConfigured(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kontrol',
      one: 'kontrol',
    );
    return '$count $_temp0 yapılandırıldı';
  }

  @override
  String get extensionOauthConnectHint =>
      'Bu alanı doldurmak için Spotify\'a bağlan\'a dokunun.';

  @override
  String extensionLastChecked(String time) {
    return 'Son kontrol: $time';
  }

  @override
  String get extensionRefreshStatus => 'Durumu yenile';

  @override
  String get extensionCustomUrlHandling => 'Özel URL işleme';

  @override
  String get extensionCustomUrlHandlingSubtitle =>
      'Bu eklenti şu sitelerin bağlantılarını işleyebilir';

  @override
  String get extensionCustomUrlHandlingShareHint =>
      'Bu sitelerdeki bağlantıları Toadplayer ile paylaşın; bu uzantı onları işleyecektir.';

  @override
  String extensionSettingsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ayar',
      one: 'ayar',
    );
    return '$count $_temp0';
  }

  @override
  String get extensionHealthOnline => 'Çevrimiçi';

  @override
  String get extensionHealthDegraded => 'Sorunlu';

  @override
  String get extensionHealthOffline => 'Çevrimdışı';

  @override
  String get extensionHealthNotConfigured => 'Yapılandırılmadı';

  @override
  String get extensionHealthUnknown => 'Bilinmiyor';

  @override
  String get extensionHealthRequired => 'gerekli';

  @override
  String get extensionSettingNotSet => 'Ayarlanmadı';

  @override
  String get extensionActionFailed => 'İşlem başarısız oldu';

  @override
  String get extensionEnterValue => 'Değer girin';

  @override
  String get extensionHealthServiceOnline => 'Hizmet çevrimiçi';

  @override
  String get extensionHealthServiceDegraded => 'Hizmet sorunlu';

  @override
  String get extensionHealthServiceOffline => 'Hizmet çevrimdışı';

  @override
  String get extensionHealthServiceUnknown => 'Hizmet durumu bilinmiyor';

  @override
  String get audioAnalysisStereo => 'Stereo';

  @override
  String get audioAnalysisMono => 'Mono';

  @override
  String trackOpenInService(String serviceName) {
    return '$serviceName uygulamasında aç';
  }

  @override
  String get trackLyricsEmbeddedSource => 'Gömülü';

  @override
  String get unknownAlbum => 'Bilinmeyen albüm';

  @override
  String get unknownArtist => 'Bilinmeyen sanatçı';

  @override
  String get permissionAudio => 'Ses';

  @override
  String get permissionStorage => 'Depolama';

  @override
  String get permissionNotification => 'Bildirim';

  @override
  String get errorInvalidFolderSelected => 'Geçersiz klasör seçildi';

  @override
  String get storeAnyVersion => 'Herhangi';

  @override
  String get storeCategoryMetadata => 'Meta veriler';

  @override
  String get storeCategoryDownload => 'İndirme';

  @override
  String get storeCategoryUtility => 'Yardımcı';

  @override
  String get storeCategoryLyrics => 'Şarkı sözleri';

  @override
  String get storeCategoryIntegration => 'Entegrasyon';

  @override
  String get artistReleases => 'Sürümler';

  @override
  String get editMetadataSelectNone => 'Hiçbiri';

  @override
  String queueRetryAllFailed(int count) {
    return 'Başarısız $count öğeyi yeniden dene';
  }

  @override
  String get settingsSaveDownloadHistory => 'İndirme geçmişini kaydet';

  @override
  String get settingsSaveDownloadHistorySubtitle =>
      'Tamamlanan indirmeleri geçmişte ve kitaplık görünümlerinde sakla';

  @override
  String get dialogDisableHistoryTitle => 'İndirme geçmişi kapatılsın mı?';

  @override
  String get dialogDisableHistoryMessage =>
      'Mevcut geçmiş temizlenecek. İndirilen dosyalar silinmeyecek.';

  @override
  String get dialogDisableAndClear => 'Kapat ve temizle';

  @override
  String get openInOtherServices => 'Diğer hizmetlerde aç';

  @override
  String get shareSheetNoExtensions => 'Başka uyumlu hizmet yok';

  @override
  String get shareSheetNotFound => 'Bulunamadı';

  @override
  String get shareSheetCopyLink => 'Bağlantıyı kopyala';

  @override
  String shareSheetLinkCopied(Object service) {
    return '$service bağlantısı kopyalandı';
  }

  @override
  String get libraryPlayback => 'Oynatma';

  @override
  String get libraryExternalPlayer => 'Harici oynatıcı';

  @override
  String get libraryExternalPlayerSubtitle =>
      'Recommended for listening, best quality, gapless playback, EQ, and wider format support';

  @override
  String get libraryBuiltInPreviewPlayer => 'Yerleşik oynatıcı';

  @override
  String get libraryBuiltInPreviewPlayerSubtitle =>
      'Müziğinizi doğrudan Toadplayer içinde çalın';

  @override
  String get nowPlayingTitle => 'Şimdi çalıyor';

  @override
  String get nowPlayingNothingPlaying => 'Hiçbir şey çalmıyor';

  @override
  String get nowPlayingMinimize => 'Küçült';

  @override
  String get nowPlayingUpNext => 'Sıradaki';

  @override
  String get nowPlayingAudioOutput => 'Ses çıkışı';

  @override
  String nowPlayingWrittenBy(String writers) {
    return 'Yazan: $writers';
  }

  @override
  String nowPlayingLyricsProvider(String provider) {
    return 'Şarkı sözleri: $provider';
  }

  @override
  String get concertGetTickets => 'Bilet al';

  @override
  String get concertSetList => 'Konser setlist\'i';

  @override
  String get concertSetListButton => 'Setlist';

  @override
  String get concertAddToCalendar => 'Takvime ekle';

  @override
  String get concertOpenMaps => 'Haritalar\'da aç';

  @override
  String get concertDetailsUnavailable =>
      'Konser ayrıntıları şu anda mevcut değil.';

  @override
  String get concertCalendarUnavailable => 'Takvim açılamadı.';

  @override
  String get nowPlayingAudioOutputUnavailable =>
      'Ses çıkışı ayarları açılamadı.';

  @override
  String get nowPlayingPreviousTrack => 'Önceki parça';

  @override
  String get nowPlayingNextTrack => 'Sonraki parça';

  @override
  String get nowPlayingDetails => 'Ayrıntılar';

  @override
  String get nowPlayingSleepTimer => 'Uyku zamanlayıcısı';

  @override
  String nowPlayingSleepTimerActive(String time) {
    return '$time itibarıyla sona erer';
  }

  @override
  String nowPlayingSleepTimerMinutes(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes dakika',
      one: '1 dakika',
    );
    return '$_temp0';
  }

  @override
  String get nowPlayingSleepTimerOff => 'Uyku zamanlayıcısını kapat';

  @override
  String nowPlayingSleepTimerSet(String duration) {
    return 'Uyku zamanlayıcısı $duration için ayarlandı';
  }

  @override
  String get nowPlayingSleepTimerCancelled => 'Uyku zamanlayıcısı kapatıldı';

  @override
  String get nowPlayingOpenInExternalPlayer => 'Harici oynatıcıda aç';

  @override
  String get nowPlayingHideVolume => 'Sesi gizle';

  @override
  String get nowPlayingShowVolume => 'Sesi göster';

  @override
  String get nowPlayingTabPlayer => 'Oynatıcı';

  @override
  String get nowPlayingTabLyrics => 'Şarkı sözleri';

  @override
  String get nowPlayingNoLyrics => 'Bu dosyada şarkı sözü yok';

  @override
  String get nowPlayingInstrumental => 'Enstrümantal';

  @override
  String get nowPlayingLyricsLanguageOptions => 'Şarkı sözü dili seçenekleri';

  @override
  String get nowPlayingHidePronunciation => 'Telaffuzu gizle';

  @override
  String get nowPlayingShowPronunciation => 'Telaffuzu göster';

  @override
  String get nowPlayingHideTranslation => 'Çeviriyi gizle';

  @override
  String get nowPlayingShowTranslation => 'Çeviriyi göster';

  @override
  String get nowPlayingSearchLyricsOnline => 'Çevrimiçi ara';

  @override
  String get nowPlayingNoLyricsOnline => 'Çevrimiçi şarkı sözü bulunamadı';

  @override
  String nowPlayingTranslateLyricsTo(String language) {
    return 'Translate to $language';
  }

  @override
  String get nowPlayingTranslateOtherLanguage => 'Other Language…';

  @override
  String get nowPlayingCancelTranslation => 'Çeviriyi iptal et';

  @override
  String nowPlayingTranslatingLyrics(int percent) {
    return 'Şarkı sözleri çevriliyor, %$percent';
  }

  @override
  String get lyricsTranslateSheetTitle => 'Şu dile çevir';

  @override
  String lyricsTranslateSheetSubtitle(String provider) {
    return 'Şarkı sözleri $provider sağlayıcısına gönderilir.';
  }

  @override
  String lyricsTranslatePartial(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count satır',
      one: '1 satır',
    );
    return '$_temp0 çevrilemedi';
  }

  @override
  String lyricsTranslateAlreadyIn(String language) {
    return 'Bu şarkı sözleri zaten $language dilinde';
  }

  @override
  String get lyricsAiTranslation => 'AI çevirisi';

  @override
  String get lyricsAiTranslationOff => 'Ayarlanmadı';

  @override
  String get lyricsAiTranslationNotice =>
      'Çevirdiğiniz şarkı sözleri, kendi API anahtarınızla seçtiğiniz sağlayıcıya gönderilir. Sağlayıcının koşulları ve fiyatlandırması geçerlidir. Çeviriler bu cihazda kaydedilir ve şarkı sözü dosyalarınızı asla değiştirmez.';

  @override
  String get lyricsAiSectionProvider => 'Sağlayıcı';

  @override
  String get lyricsAiSectionTranslation => 'Çeviri';

  @override
  String get lyricsAiProvider => 'Sağlayıcı';

  @override
  String get lyricsAiProviderCustom => 'Özel Sunucu';

  @override
  String get lyricsAiProviderCustomSubtitle =>
      'Ollama veya LM Studio gibi OpenAI uyumlu herhangi bir sunucu';

  @override
  String get lyricsAiBaseUrl => 'Sunucu URL\'si';

  @override
  String get lyricsAiBaseUrlInvalid =>
      'http:// veya https:// ile başlayan bir URL girin';

  @override
  String get lyricsAiNotSet => 'Ayarlanmadı';

  @override
  String get lyricsAiApiKey => 'API anahtarı';

  @override
  String get lyricsAiApiKeyOptional => 'Yerel sunucular için isteğe bağlı';

  @override
  String lyricsAiApiKeySaved(String suffix) {
    return 'Kaydedildi, sonu $suffix';
  }

  @override
  String lyricsAiApiKeyDescription(String provider) {
    return 'Bu cihazın güvenli depolamasında tutulur ve yalnızca $provider sağlayıcısına gönderilir.';
  }

  @override
  String get lyricsAiModel => 'Model';

  @override
  String lyricsAiModelDefault(String model) {
    return 'Varsayılan ($model)';
  }

  @override
  String get lyricsAiModelHint => 'Model kimliği';

  @override
  String get lyricsAiModelUseDefault => 'Varsayılanı kullan';

  @override
  String get lyricsAiModelLoad => 'Modelleri yükle';

  @override
  String get lyricsAiModelsEmpty => 'Sağlayıcı hiç model listelemedi';

  @override
  String get lyricsAiTestConnection => 'Bağlantıyı test et';

  @override
  String get lyricsAiTestConnectionSubtitle =>
      'Anahtarı ve modeli denetlemek için bir satırı çevirir';

  @override
  String get lyricsAiTestSuccess => 'Bağlantı çalışıyor';

  @override
  String get lyricsAiTargetLanguage => 'Şu dile çevir';

  @override
  String lyricsAiTargetLanguageApp(String language) {
    return 'Uygulama dili ($language)';
  }

  @override
  String get lyricsAiInstruction => 'Ek talimat';

  @override
  String get lyricsAiInstructionNone => 'Yok';

  @override
  String get lyricsAiInstructionHint =>
      'Örneğin: kafiyeleri mümkün olduğunca koru';

  @override
  String get lyricsAiAutoTranslate => 'Otomatik çevir';

  @override
  String get lyricsAiAutoTranslateSubtitle =>
      'Açtığınızda çevirisi olmayan senkronlu şarkı sözlerini sağlayıcınızın kotasını kullanarak çevirir';

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
  String get lyricsAiRomanize => 'Romanizasyon ekle';

  @override
  String get lyricsAiRomanizeSubtitle =>
      'Japonca için romaji veya Çince için pinyin gibi diğer alfabelerdeki şarkı sözlerinin nasıl söylendiğini gösterir';

  @override
  String get lyricsAiClearCache => 'Kaydedilen çevirileri temizle';

  @override
  String lyricsAiClearCacheSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count şarkı',
      one: '1 şarkı',
      zero: 'Kaydedilmiş çeviri yok',
    );
    return '$_temp0';
  }

  @override
  String get lyricsAiClearCacheConfirm =>
      'Kaydedilen çeviriler temizlensin mi?';

  @override
  String get lyricsAiClearCacheMessage =>
      'Şarkıların yeniden çevrilmesi gerekecek; bu, sağlayıcınızın kotasını kullanır.';

  @override
  String get lyricsAiClearCacheDone => 'Kaydedilen çeviriler temizlendi';

  @override
  String get lyricsAiErrorNotConfigured =>
      'Önce Şarkı sözleri ayarlarından AI çevirisini ayarlayın';

  @override
  String get lyricsAiErrorInvalidKey => 'Sağlayıcı API anahtarını kabul etmedi';

  @override
  String get lyricsAiErrorRateLimited =>
      'Sağlayıcı istekleri sınırlıyor. Biraz sonra tekrar deneyin';

  @override
  String get lyricsAiErrorQuota =>
      'Sağlayıcı hesabınızın kredisi veya kotası tükendi';

  @override
  String get lyricsAiErrorNetwork =>
      'Sağlayıcıya ulaşılamadı. Bağlantınızı kontrol edin';

  @override
  String get lyricsAiErrorTimeout =>
      'Sağlayıcı yanıt vermek için çok uzun süre bekledi';

  @override
  String get lyricsAiErrorModelNotFound => 'Sağlayıcı bu modeli sunmuyor';

  @override
  String get lyricsAiErrorRefused =>
      'Model bu şarkı sözlerini çevirmeyi reddetti';

  @override
  String get lyricsAiErrorTruncated =>
      'Modelin yanıtı kesildi. Başka bir model deneyin';

  @override
  String get lyricsAiErrorBadResponse =>
      'Modelin yanıtı okunamadı. Başka bir model deneyin';

  @override
  String get lyricsAiErrorService =>
      'Sağlayıcıda bir sorun oluştu. Daha sonra tekrar deneyin';

  @override
  String get lyricsAiErrorNoLyrics =>
      'Bu şarkı sözlerinde çevrilecek bir şey yok';

  @override
  String get nowPlayingLibraryEmpty => 'Kitaplığınız boş';

  @override
  String nowPlayingShuffleLibraryFailed(String error) {
    return 'Kitaplık karıştırılamadı: $error';
  }

  @override
  String get nowPlayingShuffleOn => 'Karıştırma açık';

  @override
  String get nowPlayingPlayInOrder => 'Sırayla çal';

  @override
  String get nowPlayingShuffleLibrary => 'Kitaplığı karıştır';

  @override
  String get nowPlayingQueueEmpty => 'Kuyruk boş';

  @override
  String get nowPlayingNoMetadata => 'Meta veri yok';

  @override
  String get linkDevicesTitle => 'Cihazlar';

  @override
  String get linkConnectionConnected => 'Bağlı';

  @override
  String get linkConnectionConnecting => 'Bağlanıyor';

  @override
  String get linkConnectionDisconnected => 'Bağlı değil';

  @override
  String get linkThisPhone => 'Bu telefon';

  @override
  String linkPlayingOn(String name) {
    return '$name üzerinde çalıyor';
  }

  @override
  String linkDesktopDownloads(String name) {
    return '$name üzerindeki indirmeler';
  }

  @override
  String linkHandoffStarted(String name) {
    return '$name üzerinde çalıyor';
  }

  @override
  String linkHandoffSending(String name) {
    return 'Bu şarkı $name cihazına gönderiliyor...';
  }

  @override
  String linkHandoffMissing(String name, String titles) {
    return '$name üzerinde çalıyor. Orada bulunamadı: $titles';
  }

  @override
  String linkHandoffNotFound(String name) {
    return '$name cihazında bu parçaların hiçbiri yok';
  }

  @override
  String get linkHandoffNothingPlaying => 'Bu telefonda hiçbir şey çalmıyor';

  @override
  String linkContinueSkipped(String titles) {
    return 'Bu telefonda yok: $titles';
  }

  @override
  String get linkContinueNotFound => 'Bu parçaların hiçbiri bu telefonda yok';

  @override
  String linkRequestFailed(String name) {
    return '$name cihazına ulaşılamadı';
  }

  @override
  String linkDownloadOnDesktop(String name) {
    return '$name üzerinde indir';
  }

  @override
  String linkDownloadQueuedOnDesktop(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$name üzerinde $count parça kuyruğa alındı',
      one: '$name üzerinde 1 parça kuyruğa alındı',
    );
    return '$_temp0';
  }

  @override
  String linkOpenOnDesktop(String name) {
    return '$name üzerinde aç';
  }

  @override
  String linkOpenedOnDesktop(String name) {
    return '$name üzerinde açıldı';
  }

  @override
  String linkSendToDesktop(String name) {
    return '$name cihazına gönder';
  }

  @override
  String get linkSaveToPhone => 'Bu telefona kaydet';

  @override
  String get linkSavingToPhone => 'Bu telefona kaydediliyor';

  @override
  String linkSavedToPhone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bu telefona $count şarkı kaydedildi',
      one: 'Bu telefona 1 şarkı kaydedildi',
    );
    return '$_temp0';
  }

  @override
  String linkSaveToPhoneFailed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count şarkı kaydedilemedi',
      one: '1 şarkı kaydedilemedi',
    );
    return '$_temp0';
  }

  @override
  String get linkSaveToPhoneCancelled => 'Kaydetme durduruldu';

  @override
  String linkTransferPhoneReceiving(int count, String title, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$name cihazından $count şarkı kaydediliyor',
      one: '$name cihazından $title kaydediliyor',
    );
    return '$_temp0';
  }

  @override
  String linkTransferPhoneOffered(int count, String title, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$name bu telefona $count şarkı gönderiyor',
      one: '$name bu telefona $title gönderiyor',
    );
    return '$_temp0';
  }

  @override
  String get linkTransferPhoneView => 'Görüntüle';

  @override
  String linkTransferPhoneWith(String name) {
    return '$name ile aktar';
  }

  @override
  String linkTransferPhoneNothing(String name) {
    return 'Bu şarkıların hiçbiri $name cihazında yok';
  }

  @override
  String linkSendSending(int count, String title, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count şarkı $name cihazına gönderiliyor',
      one: '$title $name cihazına gönderiliyor',
    );
    return '$_temp0';
  }

  @override
  String linkSendNothing(String name) {
    return 'Bu şarkıların hiçbiri $name cihazına gönderilemiyor';
  }

  @override
  String get linkDownloadStatusQueued => 'Bekliyor';

  @override
  String get linkDownloadStatusDownloading => 'İndiriliyor';

  @override
  String get linkDownloadStatusDone => 'Tamamlandı';

  @override
  String get linkDownloadStatusFailed => 'Başarısız';

  @override
  String get announcementUnableToOpenLink =>
      'Bağlantı açılamadı. Lütfen tekrar deneyin.';

  @override
  String trackConvertLosslessOutputWithCap(String quality) {
    return '$quality sınırıyla kayıpsız çıktı';
  }

  @override
  String trackConvertConfirmMessageLosslessCapped(
    String sourceFormat,
    String targetFormat,
    String quality,
  ) {
    return '$sourceFormat biçiminden $targetFormat ($quality) biçimine dönüştürülsün mü?\n\nÇıktı kayıpsız bir kodekte kalır ancak bit derinliği/örnekleme hızı sınırlandırılır. Dönüştürme sonrasında orijinal dosya silinir.';
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
      other: 'parça',
      one: 'parça',
    );
    return '$count $_temp0 $format ($quality) biçimine dönüştürülsün mü?\n\nÇıktı kayıpsız bir kodekte kalır ancak bit derinliği/örnekleme hızı sınırlandırılır. Dönüştürme sonrasında orijinal dosyalar silinir.';
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
      'Musixmatch, Netease, Apple Music, QQ Music, Spotify, Deezer, YouTube, Kugou ve Genius için şarkı sözü proxy\'si';

  @override
  String get snackbarPlayingNext => 'Sırada çalınacak';

  @override
  String get snackbarAddedToQueueGeneric => 'Kuyruğa eklendi';

  @override
  String selectionDeletePlaylistsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'çalma listesini',
      one: 'çalma listesini',
    );
    return '$count $_temp0 sil';
  }

  @override
  String get actionShuffle => 'Karıştır';

  @override
  String get artistShuffleEmpty =>
      'No songs by this artist in your Library yet';

  @override
  String get downloadPrimaryArtistOnlyOn => 'Yalnızca birincil: Açık';

  @override
  String get downloadPrimaryArtistOnlyOff => 'Yalnızca birincil: Kapalı';

  @override
  String get downloadAlbumArtistMetadataPrimaryOnly =>
      'Albüm Sanatçısı meta verisi: Yalnızca birincil';

  @override
  String get downloadAlbumArtistMetadataFull =>
      'Albüm Sanatçısı meta verisi: Tam';

  @override
  String get trackConvertOriginal => 'Orijinal';

  @override
  String get trackConvertOriginalQuality => 'Orijinal kalite';

  @override
  String get trackConvertLosslessSuffix => 'Kayıpsız';

  @override
  String get trackConvertDithering => 'Dithering';

  @override
  String get trackConvertResampler => 'Resampler';

  @override
  String get trackConvertDitherNone => 'Hiçbiri';

  @override
  String get trackConvertDitherTriangular => 'TPDF';

  @override
  String get trackConvertDitherTriangularHp => 'Triangular HP';

  @override
  String get trackConvertResamplerSwr => 'SWR';

  @override
  String get trackConvertResamplerSoxr => 'SoXr';

  @override
  String get updateSeeReleaseNotes => 'Ayrıntılar için sürüm notlarına bakın.';

  @override
  String get unknownTitle => 'Bilinmeyen başlık';

  @override
  String get trackPlayNext => 'Sırada çal';

  @override
  String get trackAddToQueue => 'Kuyruğa ekle';

  @override
  String snackbarExtensionInstalledEnable(String extensionName) {
    return '$extensionName yüklendi. Ayarlar > Eklentiler\'den etkinleştirin';
  }

  @override
  String snackbarExtensionUpdatedVersion(String extensionName, String version) {
    return '$extensionName v$version sürümüne güncellendi';
  }

  @override
  String snackbarFailedToInstallNamed(String extensionName) {
    return '$extensionName yüklenemedi';
  }

  @override
  String snackbarFailedToUpdateNamed(String extensionName) {
    return '$extensionName güncellenemedi';
  }

  @override
  String get releaseTypeEp => 'EP';

  @override
  String get releaseTypeSingle => 'Single';

  @override
  String get trackCoverOnline => 'Çevrimiçi kapak';

  @override
  String get regionCountryUS => 'Amerika Birleşik Devletleri';

  @override
  String get regionCountryIT => 'İtalya';

  @override
  String get regionCountryES => 'İspanya';

  @override
  String get regionCountryGB => 'Birleşik Krallık';

  @override
  String get regionCountryFR => 'Fransa';

  @override
  String get regionCountryDE => 'Almanya';

  @override
  String get regionCountryJP => 'Japonya';

  @override
  String get regionCountryKR => 'Güney Kore';

  @override
  String get regionCountryIN => 'Hindistan';

  @override
  String get regionCountryID => 'Endonezya';

  @override
  String get regionCountryBR => 'Brezilya';

  @override
  String get regionCountryMX => 'Meksika';

  @override
  String get regionCountryAU => 'Avustralya';

  @override
  String get regionCountryCA => 'Kanada';

  @override
  String get regionCountryXK => 'Kosova';

  @override
  String get extensionVerificationBrowserTitle => 'Doğrulama tarayıcısı';

  @override
  String get extensionVerificationBrowserSubtitleExternal =>
      'Doğrulama adımlarını önce varsayılan tarayıcıda aç';

  @override
  String get extensionVerificationBrowserSubtitleInApp =>
      'Doğrulama adımlarını önce uygulama içi tarayıcıda aç';

  @override
  String get extensionVerificationBrowserExternal => 'Harici';

  @override
  String get extensionVerificationBrowserInApp => 'Uygulama içi';

  @override
  String extensionVerificationUnavailable(String extension) {
    return '$extension için doğrulama sayfası yok. Yeni bir doğrulama istemek için indirmeyi yeniden deneyin.';
  }

  @override
  String get extensionVerificationHelpTitleManual => 'Doğrulamayı elle aç';

  @override
  String get extensionVerificationHelpTitleWaiting => 'Doğrulama hâlâ bekliyor';

  @override
  String get extensionVerificationHelpMessageManual =>
      'Toadplayer tarayıcıyı otomatik açamadı. Bu bağlantıyı tarayıcınızda açın veya elle kopyalayın.';

  @override
  String get extensionVerificationHelpMessageWaiting =>
      'Tarayıcı açılmadıysa veya doğrulama tamamlanıp Toadplayer\'ye dönmediyse bu bağlantıyı tekrar açın ya da elle kopyalayın.';

  @override
  String get extensionVerificationClose => 'Kapat';

  @override
  String get extensionVerificationCopyLink => 'Bağlantıyı kopyala';

  @override
  String get extensionVerificationPasteCallback => 'Geri çağrıyı yapıştır';

  @override
  String get extensionVerificationLinkCopied =>
      'Doğrulama bağlantısı kopyalandı';

  @override
  String get extensionVerificationOpenBrowser => 'Tarayıcıyı aç';

  @override
  String get settingsSearchHint => 'Ayarlarda ara';

  @override
  String settingsSearchNoResults(String query) {
    return '\"$query\" ile eşleşen ayar yok';
  }

  @override
  String get libraryFilterMetadataMissingLyrics => 'Şarkı sözü eksik';

  @override
  String get libraryFilterMetadataMissingReplayGain => 'ReplayGain eksik';

  @override
  String get libraryFilterMetadataHasReplayGain => 'ReplayGain var';

  @override
  String get libraryFilterIncompleteAlbums => 'Eksik albümler';

  @override
  String get libraryAlbumCompletenessUnknown => 'Albüm bütünlüğü bilinmiyor';

  @override
  String libraryAlbumMissingTracks(int present, int expected, int missing) {
    return '$present/$expected parça · $missing eksik';
  }

  @override
  String get trackOptionCopyTrackName => 'Parça adını kopyala';

  @override
  String get trackOptionCopyArtist => 'Sanatçıyı kopyala';

  @override
  String get trackOptionCopyTrackAndArtist => 'Parçayı ve sanatçıyı kopyala';

  @override
  String trackOptionCopyLink(String service) {
    return 'Copy $service link';
  }

  @override
  String get metadataCopyValue => 'Değeri kopyala';

  @override
  String get metadataCopyField => 'Alanı ve değeri kopyala';

  @override
  String get toadplayerSearch => 'Ara';

  @override
  String get toadplayerContinuePlaying => 'Çalmaya devam et';

  @override
  String get metadataCopyAll => 'Tüm meta verileri kopyala';

  @override
  String get optionsEmbeddedCoverSize => 'Gömülü kapak boyutu';

  @override
  String get optionsEmbeddedCoverSizeDescription =>
      'Uzaktan indirilen kapak resmini gömmeden önce küçültün. Sınırın altındaki görseller değiştirilmeden bırakılır.';

  @override
  String get toadplayerFavorite => 'Favorilere ekle';

  @override
  String get toadplayerGoToArtist => 'Sanatçıya git';

  @override
  String get toadplayerGetInfo => 'Get Info';

  @override
  String get toadplayerFavorited => 'Favorilerde';

  @override
  String get autoMixDescription =>
      'Şarkıları vuruş eşleştirme ve perdeyi koruyan tempo ayarıyla birbirine karıştırır. Vuruşlar eşleştirilemediğinde çapraz geçiş kullanır.';

  @override
  String get gaplessPlayback => 'Gapless oynatma';

  @override
  String get gaplessPlaybackDescription =>
      'Bir parça bittiği anda, aralarında sessizlik olmadan sonrakini başlat. Açıkken bunun yerini AutoMix alır.';

  @override
  String get playerCoverStyle => 'Albüm kapağı';

  @override
  String get landscapeLyricsArtwork => 'Şarkı sözlerinin yanında albüm kapağı';

  @override
  String get landscapeLyricsArtworkDescription =>
      'Material yatay oynatıcıda parça ayrıntıları yerine albüm kapağını göster';

  @override
  String get autoHideLyricsControls => 'Automatic fullscreen lyrics';

  @override
  String get autoHideLyricsControlsDescription =>
      'Hide player controls after 5 seconds while lyrics are open. Turn off to keep the current view';

  @override
  String get compactPlayer => 'Kompakt oynatıcı';

  @override
  String get compactPlayerDescription =>
      'Şarkı sözleri kendi hâline bırakıldığında, şarkı sözlerine daha fazla yer açmak için oynatıcıyı ince bir çubuğa küçült. Dokunmak tam oynatıcıyı geri getirir';

  @override
  String get playerCoverStyleDefault => 'Varsayılan';

  @override
  String get playerCoverStyleCard => 'Kart';

  @override
  String get playerCoverStyleDefaultDescription =>
      'Kontrollerin üzerinde kart olarak albüm kapağı';

  @override
  String get playerCoverStyleFullScreen => 'Tam ekran';

  @override
  String get playerCoverStyleFullScreenDescription =>
      'Albüm kapağı oynatıcının üst kısmını doldurur ve bulanıklığa karışır. Hareketli kapaklar Toadplayer\'de her zaman tam ekrandır';

  @override
  String get musicHaptics => 'Müzik titreşimi';

  @override
  String get musicHapticsDescription =>
      'İndirilen ve yerel şarkıların ritmiyle titreşin';

  @override
  String get musicHapticsSensitivity => 'Hassasiyet';

  @override
  String get musicHapticsStrength => 'Güç';

  @override
  String get autoMixOn => 'AutoMix açık';

  @override
  String get autoMixOff => 'AutoMix kapalı';

  @override
  String get autoplayOn => 'Otomatik çalma açık';

  @override
  String get autoplayOff => 'Otomatik çalma kapalı';

  @override
  String get queueAutoplay => 'Autoplay';

  @override
  String get queueAutoMix => 'AutoMix';

  @override
  String get autoplayFromLibrary => 'Kitaplığınızdan otomatik çal';

  @override
  String get autoplayDescription =>
      'Kuyruk bittiğinde Kitaplığınızdan benzer şarkılarla devam edin.';

  @override
  String get autoplayPersonalization => 'Kişiselleştirilmiş otomatik çalma';

  @override
  String get autoplayPersonalizationDescription =>
      'Dinlediğiniz ve atladığınız şarkılardan bu cihazda gizlice öğrenir. Kapatıldığında öğrenme durur ve normal otomatik çalmaya dönülür.';

  @override
  String get autoplayResetLearning => 'Öneri öğrenmesini sıfırla';

  @override
  String get autoplayResetLearningConfirmTitle => 'Öneri öğrenmesini sıfırla?';

  @override
  String get autoplayResetLearningConfirmMessage =>
      'Otomatik oynatma, dinleme ve atlamalarınızdan öğrendiklerini unutur. Bu işlem geri alınamaz.';

  @override
  String get autoplayResetLearningConfirm => 'Sıfırla';

  @override
  String autoplayLearningProgress(int count, int minimum) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);
    final intl.NumberFormat minimumNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String minimumString = minimumNumberFormat.format(minimum);

    return '$minimumString Otomatik oynatma şarkısından sonra sıralama size uyarlanır (şu ana kadar $countString)';
  }

  @override
  String get autoplayLearningWaiting =>
      'Son Otomatik oynatma şarkılarını hem tutup hem atlayana kadar standart sıralama';

  @override
  String autoplayLearningTuned(int learned, int starting) {
    return 'Size uyarlandı: son şarkılarınızda %$learned isabetli (standart %$starting)';
  }

  @override
  String autoplayLearningStandard(int learned, int starting) {
    return 'Standart sıralama: uyarlama son şarkılarınızda daha isabetli olmadı (%$learned - %$starting)';
  }

  @override
  String get songAnalysis => 'Şarkı analizi';

  @override
  String get songAnalysisDescription =>
      'Otomatik oynatmanın çaldığınıza benzeyen ve birbirine akıcı geçen şarkılar seçebilmesi için her kitaplık şarkısının nasıl kulağa geldiğini bu cihazda gizli olarak öğrenin.';

  @override
  String get songAnalysisOnlyWhileCharging => 'Yalnızca şarj olurken';

  @override
  String get songAnalysisOnlyWhileChargingDescription =>
      'Kitaplığı yalnızca bu telefon şarj olurken analiz et. Çalan şarkı her durumda analiz edilir.';

  @override
  String songAnalysisProgress(int analyzed, int total) {
    final intl.NumberFormat analyzedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String analyzedString = analyzedNumberFormat.format(analyzed);
    final intl.NumberFormat totalNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String totalString = totalNumberFormat.format(total);

    return '$totalString şarkıdan $analyzedString tanesi analiz edildi';
  }

  @override
  String get songAnalysisClear => 'Şarkı analizini temizle';

  @override
  String get songAnalysisClearConfirmTitle => 'Şarkı analizi temizlensin mi?';

  @override
  String get songAnalysisClearConfirmMessage =>
      'Otomatik oynatma şarkılarınızın nasıl kulağa geldiğini unutur. Şarkı analizi açıkken kitaplığınız yeniden analiz edilir.';

  @override
  String get songAnalysisClearConfirm => 'Temizle';

  @override
  String get profileTitle => 'Profil';

  @override
  String get profileSetUp => 'Profilinizi oluşturun';

  @override
  String get profileEdit => 'Adı ve fotoğrafı düzenle';

  @override
  String get backupIncludesProfile => 'Profil adınızı ve fotoğrafınızı içerir';

  @override
  String get profileName => 'Ad';

  @override
  String get profileNameHint => 'Adınız';

  @override
  String get profileChangePhoto => 'Fotoğraf seç';

  @override
  String get profileRemovePhoto => 'Fotoğrafı kaldır';

  @override
  String get profilePhotoError => '20 MB\'tan küçük geçerli bir görsel seçin.';

  @override
  String get profileSaveError =>
      'Profiliniz kaydedilemedi. Lütfen tekrar deneyin.';

  @override
  String get homeGreetingMorning1 => 'Günaydın';

  @override
  String get homeGreetingMorning2 => 'Güne enerjik başla';

  @override
  String get homeGreetingMorning3 => 'Yeni bir başlangıç';

  @override
  String get homeGreetingAfternoon1 => 'İyi günler';

  @override
  String get homeGreetingAfternoon2 => 'Öğleden sonra ritmi';

  @override
  String get homeGreetingAfternoon3 => 'Keyfi sürdür';

  @override
  String get homeGreetingEvening1 => 'İyi akşamlar';

  @override
  String get homeGreetingEvening2 => 'Rahatlamanın zamanı';

  @override
  String get homeGreetingEvening3 => 'Altın saat';

  @override
  String get homeGreetingNight1 => 'İyi geceler';

  @override
  String get homeGreetingNight2 => 'Gece seansı';

  @override
  String get homeGreetingNight3 => 'Sessiz saatler';

  @override
  String homeGreetingNamed(String greeting, String name) {
    return '$greeting, $name';
  }

  @override
  String get homeTaglineListening => 'Ne dinliyoruz?';

  @override
  String get homeTaglineLink => 'Bir bağlantın mı var? Aramaya bırak';

  @override
  String get homeTaglineDiscover => 'Bir sonraki favori albümünü bul';

  @override
  String get homeContinueListening => 'Dinlemeye devam et';

  @override
  String get homeRecentlyPlayed => 'Recently Played';

  @override
  String get homeRecentlyAdded => 'Son eklenenler';

  @override
  String get homeOnRepeat => 'Sürekli çalanlar';

  @override
  String get homeShortcuts => 'Kısayollar';

  @override
  String get searchResults => 'Search Results';

  @override
  String get homeTopPicks => 'Top Picks for You';

  @override
  String get homeMadeForYou => 'Made for You';

  @override
  String get homeMixesForYou => 'Size özel mix\'ler';

  @override
  String get homeMixFavoritesTitle => 'Favoriler Mix\'i';

  @override
  String homeMixGenreTitle(String genre) {
    return '$genre Mix\'i';
  }

  @override
  String homeMixArtistTitle(String artist) {
    return '$artist Mix\'i';
  }

  @override
  String homeMixDecadeTitle(String decade) {
    return '$decade\'lar Mix\'i';
  }

  @override
  String get homeMixFreshTitle => 'Yeni Eklenenler Mix\'i';

  @override
  String get homeMixRediscoverTitle => 'Yeniden Keşfet Mix\'i';

  @override
  String get homeMixDiscoverTitle => 'Keşfet Mix\'i';

  @override
  String homeMixArtistsOne(String first) {
    return '$first';
  }

  @override
  String homeMixArtistsTwo(String first, String second) {
    return '$first ve $second';
  }

  @override
  String homeMixArtistsMore(String first, String second) {
    return '$first, $second ve daha fazlası';
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
  String get homeMixGenreIndie => 'Indie ve Alternatif';

  @override
  String get homeMixGenreElectronic => 'Elektronik';

  @override
  String get homeMixGenreChill => 'Chill ve Lo-Fi';

  @override
  String get homeMixGenreJazz => 'Caz';

  @override
  String get homeMixGenreBlues => 'Blues';

  @override
  String get homeMixGenreClassical => 'Klasik';

  @override
  String get homeMixGenreSoundtrack => 'Film Müzikleri';

  @override
  String get homeMixGenreCountry => 'Country';

  @override
  String get homeMixGenreFolk => 'Folk ve Akustik';

  @override
  String get homeMixGenreLatin => 'Latin';

  @override
  String get homeMixGenreReggae => 'Reggae';

  @override
  String get homeMixGenreAfro => 'Afrobeats';

  @override
  String get homeMixGenreGospel => 'Gospel ve İlahi';

  @override
  String get homeMixGenreDangdut => 'Dangdut';

  @override
  String get homeMixUpdatedDaily =>
      'Kitaplığınızdan oluşturulur, her gün güncellenir';

  @override
  String get homeMixSaveAsPlaylist => 'Çalma listesi olarak kaydet';

  @override
  String get artistUpcomingConcerts => 'Yaklaşan konserler';

  @override
  String get artistAllUpcomingConcerts => 'Tüm yaklaşan konserler';

  @override
  String get artistNoUpcomingConcerts => 'Yaklaşan konser yok.';

  @override
  String get motionArtwork => 'Animasyonlu kapak resmi';

  @override
  String get listeningStats => 'Dinleme istatistikleri';

  @override
  String get listeningStatsRecord => 'Dinlemeyi kaydet';

  @override
  String get listeningStatsDescription =>
      'Yalnızca bu cihazda saklanır ve şu andan itibaren başlar. Yalnızca yerleşik oynatıcıyı kaydeder; duraklamalar, ara bellek ve atlama dinleme süresi eklemez. Bir çalma 30 saniye sonra sayılır.';

  @override
  String get listeningStatsEmpty =>
      'Dinleme özetinizi başlatmak için yerleşik oynatıcıyla müzik çalın. Önceki dinlemeler kurtarılamaz.';

  @override
  String listeningStatsDays(int days) {
    return '$days gün';
  }

  @override
  String listeningStatsMinutes(int minutes) {
    return '$minutes dk';
  }

  @override
  String listeningStatsTotals(int plays, int tracks, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      plays,
      locale: localeName,
      other: '$plays çalma',
      one: '1 çalma',
    );
    String _temp1 = intl.Intl.pluralLogic(
      tracks,
      locale: localeName,
      other: '$tracks parça',
      one: '1 parça',
    );
    String _temp2 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days etkin gün',
      one: '1 etkin gün',
    );
    return '$_temp0 · $_temp1 · $_temp2';
  }

  @override
  String get listeningStatsPreviousYear => 'Önceki yıl';

  @override
  String get listeningStatsNextYear => 'Sonraki yıl';

  @override
  String get listeningStatsActivity => 'Son dinleme günleri · dakika';

  @override
  String get listeningStatsTopArtists => 'En çok dinlenen sanatçılar';

  @override
  String get listeningStatsTopTracks => 'En çok dinlenen parçalar';

  @override
  String get listeningStatsLoadError => 'Dinleme istatistikleri yüklenemedi';

  @override
  String get listeningStatsClear => 'Dinleme istatistiklerini temizle';

  @override
  String get listeningStatsClearError =>
      'Dinleme istatistikleri temizlenemedi. Lütfen tekrar deneyin.';

  @override
  String get listeningStatsClearDescription =>
      'Bu cihazdaki tüm dinleme istatistikleri silinsin mi? Müzikleriniz ve çalma listeleriniz korunur.';

  @override
  String get libraryArtistsEmpty =>
      'Müzik indirdiğinizde veya yerel bir kitaplığı taradığınızda sanatçılar burada görünür.';

  @override
  String get listeningRewind => 'Geri Bakış';

  @override
  String get listeningRewindDescription =>
      'Son haftalarınızın ve aylarınızın öne çıkanlarını yeniden yaşayın';

  @override
  String get listeningRewindChoosePeriod => 'Bir dönem seçin';

  @override
  String listeningRewindLastWeeks(int weeks) {
    return 'Son $weeks hafta';
  }

  @override
  String listeningRewindLastMonths(int months) {
    return 'Son $months ay';
  }

  @override
  String listeningRewindThisYear(int year) {
    return '$year şu ana kadar';
  }

  @override
  String get listeningRewindIntroTitle => 'Geri Bakışınız';

  @override
  String listeningRewindIntroBody(String start, String end) {
    return '$start ile $end arasında çaldıklarınıza bir bakış.';
  }

  @override
  String get listeningRewindMinutesTitle => 'Dinleme süreniz';

  @override
  String listeningRewindMinutesUnit(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: 'dakika',
      one: 'dakika',
    );
    return '$_temp0';
  }

  @override
  String listeningRewindHours(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: 'Yaklaşık $hours saatlik müzik',
      one: 'Yaklaşık 1 saatlik müzik',
    );
    return '$_temp0';
  }

  @override
  String listeningRewindMore(int percent) {
    return 'Önceki döneme göre %$percent daha fazla';
  }

  @override
  String listeningRewindLess(int percent) {
    return 'Önceki döneme göre %$percent daha az';
  }

  @override
  String get listeningRewindSame => 'Önceki dönemle yaklaşık aynı';

  @override
  String get listeningRewindTopArtistTitle => 'En çok dinlediğiniz sanatçı';

  @override
  String listeningRewindArtistShare(int percent) {
    return 'Dinleme sürenizin %$percent\'i';
  }

  @override
  String get listeningRewindArtistsTitle => 'Dönüşümlü sanatçılar';

  @override
  String get listeningRewindTopTrackTitle => 'En çok dinlediğiniz şarkı';

  @override
  String listeningRewindPlays(int plays) {
    String _temp0 = intl.Intl.pluralLogic(
      plays,
      locale: localeName,
      other: '$plays çalma',
      one: '1 çalma',
    );
    return '$_temp0';
  }

  @override
  String get listeningRewindTracksTitle => 'Tekrar tekrar çalan şarkılar';

  @override
  String get listeningRewindTopAlbumTitle => 'Tekrar tekrar döndüğünüz albüm';

  @override
  String get listeningRewindNewArtistsTitle => 'Yeni keşifler';

  @override
  String listeningRewindNewArtistsBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count yeni sanatçı keşfettiniz',
      one: '1 yeni sanatçı keşfettiniz',
    );
    return '$_temp0';
  }

  @override
  String get listeningRewindRhythmTitle => 'Dinleme ritminiz';

  @override
  String get listeningRewindPeakDay => 'En yoğun gün';

  @override
  String get listeningRewindFavoriteDay => 'Favori gün';

  @override
  String get listeningRewindStreak => 'En uzun seri';

  @override
  String listeningRewindStreakDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'üst üste $days gün',
      one: '1 gün',
    );
    return '$_temp0';
  }

  @override
  String get listeningRewindReplayTitle => 'Dinlemeyi bırakamadınız';

  @override
  String listeningRewindReplayBody(int plays, String date) {
    return '$date tarihinde $plays kez çaldınız';
  }

  @override
  String get listeningRewindOutroTitle => 'Geri Bakışınız bu kadar';

  @override
  String get listeningRewindOutroBody =>
      'Dinlemeye devam edin. Bir sonraki Geri Bakışınız şimdiden şekilleniyor.';

  @override
  String get listeningRewindEmpty =>
      'Bu dönemde henüz yeterli dinleme yok. Yerleşik oynatıcıyla biraz müzik çalın ve daha sonra tekrar gelin.';

  @override
  String get listeningRewindLoadError => 'Geri Bakışınız yüklenemedi';

  @override
  String listeningRewindSlide(int index, int count) {
    return 'Slayt $index / $count';
  }

  @override
  String get listeningRewindShare => 'Paylaş';

  @override
  String get listeningRewindShareError => 'Geri Bakışınız paylaşılamadı';

  @override
  String get listeningRewindNext => 'Sıradaki';

  @override
  String get listeningRewindPrevious => 'Önceki';

  @override
  String get listeningRewindMonthlyReady =>
      'Son 4 haftanız yeniden oynatılmaya hazır';

  @override
  String listeningRewindYearTitle(String year) {
    return 'Müzikte $year yılınız';
  }

  @override
  String get listeningRewindYearEyebrow => 'Yıl sonu Geri Bakışı';

  @override
  String get listeningRewindYearBanner =>
      'Yılın en iyi sanatçıları, şarkıları ve anları';

  @override
  String get listeningRewindYearIntroBody =>
      'Bu yıl çaldığınız her şey: ilk şarkınızdan en yoğun ayınıza kadar.';

  @override
  String get listeningRewindNumbersTitle => 'Sayılarla yılınız';

  @override
  String get listeningRewindSongsLabel => 'Şarkılar';

  @override
  String get listeningRewindArtistsLabel => 'Sanatçılar';

  @override
  String get listeningRewindAlbumsLabel => 'Albümler';

  @override
  String get listeningRewindDaysLabel => 'Müzikli günler';

  @override
  String listeningRewindDaysShare(int percent) {
    return 'Günlerinizin %$percent\'inde müzik';
  }

  @override
  String get listeningRewindMonthsTitle => 'Ay ay';

  @override
  String get listeningRewindBiggestMonthLabel => 'En yoğun ay';

  @override
  String listeningRewindBiggestMonth(String month) {
    return 'En yoğun ayınız $month oldu';
  }

  @override
  String get listeningRewindMonthlyArtistsTitle => 'Ayın sanatçısı';

  @override
  String get listeningRewindLoyalTitle => 'Her zaman yanınızda';

  @override
  String listeningRewindLoyalBody(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days farklı gün sizinleydi',
      one: '1 gün sizinleydi',
    );
    return '$_temp0';
  }

  @override
  String get listeningRewindFirstSongTitle => 'Yılınızın başladığı yer';

  @override
  String listeningRewindFirstSongBody(String date) {
    return 'İlk dinleme gününüz olan $date tarihinde en çok çaldığınız şarkı';
  }

  @override
  String listeningRewindYearOutroTitle(String year) {
    return '$year yılınız böyle geçti';
  }

  @override
  String get listeningRewindYearOutroBody =>
      'Harika müziklerle dolu yeni bir yıla!';

  @override
  String get weeklyReleases => 'Yeni çıkanlar';

  @override
  String get weeklyReleasesDescription =>
      'Favori sanatçılarınızdan yeni albümler ve single\'lar; yüklü meta veri eklentileri tarafından sağlanır.';

  @override
  String get weeklyReleasesEmpty =>
      'Bu dönemde tarihli sürüm bulunamadı. Favori sanatçı ekleyin veya daha uzun bir dönem deneyin.';

  @override
  String get weeklyReleasesUnavailable =>
      'Bazı sanatçılar kontrol edilemedi. Kayıtlı sonuçları korunuyor. Sağlayıcılar sanatçı kataloglarını veya kesin çıkış tarihlerini sunmayabilir.';

  @override
  String get weeklyReleasesLoadError =>
      'Yeni çıkanlar kontrol edilemedi. Yenilemek için aşağı çekin.';

  @override
  String get motionArtworkDescription =>
      'Meta veri sağlayıcılarının sunduğu döngülü video kapaklar. Sabit kapak resmi kullanmak ve pil tüketimini azaltmak için kapatın.';

  @override
  String get libraryLoading => 'Kitaplık yükleniyor…';

  @override
  String get libraryLoadFailed =>
      'Kitaplık yüklenemedi. Kayıtlı klasörleri ve parça dizinini yüklemek için yeniden deneyin.';

  @override
  String get discordPresenceDescription =>
      'Yerleşik oynatıcıda çalınan müziğin başlığını, sanatçısını, albümünü ve ilerlemesini Discord profilinizde paylaşır. Yerel ses ve kapak dosyaları hiçbir zaman yüklenmez. Oynatma duraklatıldığında veya durduğunda temizlenir.';

  @override
  String get discordPresenceDisabled => 'Devre dışı';

  @override
  String get discordPresenceLink => 'Discord hesabını bağla';

  @override
  String get discordPresenceConnecting => 'Discord\'a bağlanılıyor…';

  @override
  String get discordPresenceReady => 'Müzik çalınca hazır';

  @override
  String get discordPresenceActive => 'Geçerli parça paylaşılıyor';

  @override
  String get discordPresenceUnavailable =>
      'Discord kullanılamıyor. Oynatma sırasında yeniden denenecek.';

  @override
  String get discordPresenceBuildUnavailable =>
      'Bu yapıda Discord SDK kullanılamıyor.';

  @override
  String get discordPresenceAndroidHelp =>
      'Bu telefona Discord\'u yükleyip oturum açın. Discord\'da etkinlik paylaşımına izin verin. Harici oynatıcılar desteklenmez.';

  @override
  String get discordPresenceIosHelp =>
      'Hesabınızı Discord üzerinden bağlayın ve etkinlik paylaşımına izin verin. Yetkilendirme başarısız olursa yeniden bağlamak için dokunun.';

  @override
  String get discordPresenceDesktopHelp =>
      'Discord masaüstü uygulamasını bu bilgisayarda açık ve oturum açmış halde tutun ve Discord\'da etkinlik paylaşımına izin verin.';

  @override
  String get discordPresenceDisconnect => 'Bağlantıyı kes ve hesabı unut';

  @override
  String get autoMixSettingsTitle => 'Mix geçişleri';

  @override
  String get autoMixAutomaticDuration => 'Otomatik süre';

  @override
  String get autoMixDuration => 'Mix süresi';

  @override
  String get autoMixEffect => 'Geçiş efekti';

  @override
  String get autoMixEffectAuto => 'Otomatik';

  @override
  String get autoMixEffectCrossfade => 'Crossfade';

  @override
  String get autoMixEffectMuffled => 'Boğuk';

  @override
  String get autoMixEffectEcho => 'Yankı';

  @override
  String get autoMixEffectPitch => 'Perde';

  @override
  String get autoMixEffectCustom => 'Özel';

  @override
  String get autoMixEffectsHelp =>
      'Efektler, mix sırasında çıkan şarkının sonuna uygulanır. Kısa şarkılar daha kısa bir çakışma kullanır.';

  @override
  String get autoMixSpeed => 'Hız';

  @override
  String get autoMixPitch => 'Perde (yarım ton)';

  @override
  String get autoMixEcho => 'Yankı';

  @override
  String get autoMixLowPass => 'Boğuk filtre';

  @override
  String get autoMixMixing => 'Mix yapılıyor';

  @override
  String get autoMixCrossfading => 'Crossfade yapılıyor';

  @override
  String get playbackAutomation => 'Otomatik oynatma';

  @override
  String get playbackPauseOnMute => 'Sessizken duraklat';

  @override
  String get snackbarPlaybackMuted =>
      'Medya ses düzeyi sıfır. Oynatma duraklatıldı. Devam etmek için oynat\'a tekrar basın.';

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
      'Medya ses düzeyi sıfırken duraklatın ve yükseltildiğinde sürdürün. Elle yapılan duraklatmalar duraklatılmış kalır. Yalnızca standart ses çıkışı.';

  @override
  String get playbackOnHeadphonesConnected => 'Kulaklık bağlandığında çal';

  @override
  String get playbackOnHeadphonesConnectedDescription =>
      'Kablolu veya Bluetooth kulaklık bağlandığında geçerli şarkıyı sürdürün. Bağlantı kesildiğinde oynatma duraklatılır. Yalnızca yerleşik oynatıcı.';

  @override
  String get appearanceCustomFont => 'Özel yazı tipi';

  @override
  String get appearanceCustomFontSubtitle =>
      'Bir TTF veya OTF dosyası içe aktarın (en fazla 10 MB). Tema ve sistem yazı tipini geçersiz kılar.';

  @override
  String get appearanceCustomFontInvalid =>
      'Bu yazı tipi yüklenemedi. En fazla 10 MB boyutunda geçerli bir TTF veya OTF dosyası seçin.';

  @override
  String get appearanceCustomFontReset => 'Tema yazı tipini kullan';

  @override
  String get equalizerTitle => 'Ekolayzer';

  @override
  String get equalizerDescription =>
      '5–31 bant, ton kontrolleri, ön yükselteç ve dinamikler';

  @override
  String get equalizerEnable => 'Ekolayzeri etkinleştir';

  @override
  String get equalizerBands => 'Bantlar';

  @override
  String get equalizerTone => 'Ton ve stereo';

  @override
  String get equalizerPreamp => 'Ön yükselteç';

  @override
  String get equalizerBass => 'Bas';

  @override
  String get equalizerTreble => 'Tiz';

  @override
  String get equalizerBalance => 'Denge';

  @override
  String get equalizerDynamics => 'Dinamikler';

  @override
  String get equalizerHeadroom => 'Otomatik headroom';

  @override
  String get equalizerHeadroomDescription =>
      'Yükseltilen frekanslara yer açmak için giriş kazancını azaltın.';

  @override
  String get equalizerLimiter => 'Tepe sınırlayıcı';

  @override
  String get equalizerLimiterDescription =>
      'Kırpılmayı azaltmak için tepeleri −0,5 dBFS\'nin altında tutun.';

  @override
  String get equalizerCompressor => 'Sıkıştırıcı';

  @override
  String get equalizerCompressorDescription =>
      'Sessiz ve yüksek pasajlar arasındaki farkı azaltın.';

  @override
  String get equalizerThreshold => 'Eşik';

  @override
  String get equalizerRatio => 'Oran';

  @override
  String get equalizerAttack => 'Atak';

  @override
  String get equalizerRelease => 'Bırakma';

  @override
  String get equalizerPresets => 'Ön ayarlar';

  @override
  String get equalizerSavePreset => 'Ön ayarı kaydet';

  @override
  String get equalizerPresetName => 'Ön ayar adı';

  @override
  String get equalizerImport => 'Ön ayar içe aktar';

  @override
  String get equalizerExport => 'Ön ayarı paylaş';

  @override
  String get equalizerImportInvalid =>
      'Geçerli bir Toadplayer ekolayzer ön ayarı seçin (JSON, en fazla 64 KB).';

  @override
  String get equalizerSaved => 'Ön ayar kaydedildi';

  @override
  String get equalizerResetTitle => 'Ekolayzer sıfırlansın mı?';

  @override
  String get equalizerResetDescription =>
      'Düz bir eğri ile varsayılan ton ve dinamik ayarlarını geri yükleyin. Kaydedilen ön ayarlar korunur.';

  @override
  String get equalizerBypass =>
      'Bit-perfect, Doğrudan USB ve özel Hi-Res çıkışları ekolayzeri atlar. Ekolayzeri kullanmak için bit-perfect çıkışı devre dışı bırakın. Harici oynatıcılar kendi efektlerini yönetir.';

  @override
  String get equalizerCurve => 'Ekolayzer eğrisi (tahmini)';

  @override
  String get equalizerCurveDescription =>
      'Eğri, bant kazançlarını gösterir; kesin yanıt çıkış motoruna bağlıdır.';

  @override
  String get equalizerEffectivePreamp => 'Headroom sonrası giriş kazancı';

  @override
  String get equalizerDeletePreset => 'Ön ayarı sil';

  @override
  String get equalizerCustom => 'Özel';

  @override
  String get equalizerManagePresets => 'Ön ayarları yönet';

  @override
  String get lyricsShareTitle => 'Şarkı sözlerini paylaş';

  @override
  String lyricsShareSelectHint(int count) {
    return 'En fazla $count satır seçin';
  }

  @override
  String lyricsShareLimit(int count) {
    return 'En fazla $count satır paylaşabilirsiniz';
  }

  @override
  String get lyricsShareAction => 'Paylaş';

  @override
  String get lyricsShareError => 'Şarkı sözü görseli oluşturulamadı';

  @override
  String get lyricsShareBackgroundArtwork => 'Albüm kapağı';

  @override
  String get lyricsShareBackgroundColor => 'Kapak rengi';

  @override
  String get lyricsShareBackgroundDark => 'Koyu';

  @override
  String get lyricsShareBackgroundLight => 'Açık';

  @override
  String get audioInfoTitle => 'Ses bilgisi';

  @override
  String get audioInfoSource => 'Kaynak dosya';

  @override
  String get audioInfoSignal => 'Sinyal';

  @override
  String get audioInfoLoudness => 'Ses yüksekliği';

  @override
  String get audioInfoProcessing => 'İşleme';

  @override
  String get audioInfoOutput => 'Çıkış';

  @override
  String get audioInfoAnalysis => 'Spektrum ve seviye analizi';

  @override
  String get audioInfoQuality => 'Kalite';

  @override
  String get audioInfoHiResLossless => 'Hi-Res Kayıpsız';

  @override
  String get audioInfoLossless => 'Kayıpsız';

  @override
  String get audioInfoLossy => 'Kayıplı';

  @override
  String get audioInfoFormat => 'Format';

  @override
  String get audioInfoCodec => 'Kodek';

  @override
  String get audioInfoSampleRate => 'Örnekleme hızı';

  @override
  String get audioInfoBitDepth => 'Bit derinliği';

  @override
  String get audioInfoChannels => 'Kanallar';

  @override
  String audioInfoChannelCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kanal',
      two: 'Stereo',
      one: 'Mono',
    );
    return '$_temp0';
  }

  @override
  String get audioInfoBitrate => 'Bitrate';

  @override
  String get audioInfoDuration => 'Süre';

  @override
  String get audioInfoFileSize => 'Dosya boyutu';

  @override
  String get audioInfoCompression => 'Sıkıştırma';

  @override
  String audioInfoCompressionValue(String percent) {
    return 'Sıkıştırılmamış boyutun %$percent\'i';
  }

  @override
  String get audioInfoLocation => 'Konum';

  @override
  String get audioInfoLocationLocal => 'Cihaz depolaması';

  @override
  String get audioInfoLocationShared => 'Paylaşılan klasör';

  @override
  String get audioInfoLocationNetwork => 'Ağ depolaması';

  @override
  String audioInfoLocationLink(String device) {
    return '$device (Toadplayer Link üzerinden)';
  }

  @override
  String get audioInfoPcmRate => 'Sıkıştırılmamış veri hızı';

  @override
  String get audioInfoFrequencyRange => 'Frekans aralığı';

  @override
  String audioInfoFrequencyRangeValue(String frequency) {
    return 'En fazla $frequency (Nyquist)';
  }

  @override
  String get audioInfoDynamicRange => 'Teorik dinamik aralık';

  @override
  String get audioInfoTrackGain => 'Parça kazancı';

  @override
  String get audioInfoTrackPeak => 'Parça tepe değeri';

  @override
  String get audioInfoAlbumGain => 'Albüm kazancı';

  @override
  String get audioInfoAlbumPeak => 'Albüm tepe değeri';

  @override
  String get audioInfoNoGainTags => 'ReplayGain etiketi yok';

  @override
  String audioInfoApplied(String gain) {
    return 'Uygulanan: $gain';
  }

  @override
  String get audioInfoOn => 'Açık';

  @override
  String get audioInfoOff => 'Kapalı';

  @override
  String get audioInfoBypassed => 'Doğrudan çıkış tarafından atlandı';

  @override
  String get audioInfoPlayer => 'Oynatıcı';

  @override
  String get audioInfoPlayerValue => 'Toadplayer yerleşik oynatıcısı';

  @override
  String get audioInfoSignalPath => 'Sinyal yolu';

  @override
  String get audioInfoPathSystem => 'Sistem mikseri';

  @override
  String get audioInfoPathDirect => 'Doğrudan USB, sistem mikserini atlar';

  @override
  String get audioInfoPathExclusive => 'Özel çıkış, sistem mikserini atlar';

  @override
  String get audioInfoDecoder => 'Kod çözücü';

  @override
  String get audioInfoHardware => 'Donanım';

  @override
  String get audioInfoSoftware => 'Yazılım';

  @override
  String audioInfoBands(int count) {
    return '$count bant';
  }

  @override
  String get audioInfoTempo => 'Tempo';

  @override
  String get audioInfoResampling => 'Yeniden örnekleme';

  @override
  String get audioInfoResamplingNone => 'Yok, hızlar eşleşiyor';

  @override
  String get audioInfoBitPerfect => 'Bit-perfect';

  @override
  String get audioInfoBitPerfectActive => 'Evet, değiştirilmemiş örnekler';

  @override
  String get audioInfoBitPerfectNo => 'Hayır, sistem tarafından karıştırıldı';

  @override
  String get audioInfoBitPerfectUnverified => 'Not verified';

  @override
  String get audioInfoBitPerfectProcessed => 'No, audio processing is active';

  @override
  String get audioInfoDevice => 'Cihaz';

  @override
  String audioInfoDeviceType(String type) {
    String _temp0 = intl.Intl.selectLogic(type, {
      'speaker': 'Telefon hoparlörü',
      'earpiece': 'Ahize',
      'wired_headphones': 'Kablolu kulaklık',
      'wired_headset': 'Kablolu kulaklık seti',
      'line': 'Hat çıkışı',
      'bluetooth': 'Bluetooth',
      'bluetooth_le': 'Bluetooth LE Audio',
      'usb': 'USB ses',
      'usb_headset': 'USB kulaklık seti',
      'hdmi': 'HDMI',
      'dock': 'Dock',
      'cast': 'Cast',
      'hearing_aid': 'İşitme cihazı',
      'airplay': 'AirPlay',
      'car': 'Araç sesi',
      'other': 'Diğer',
    });
    return '$_temp0';
  }

  @override
  String get audioInfoOutputRate => 'Çıkış örnekleme hızı';

  @override
  String get audioInfoOutputFormat => 'Çıktı biçimi';

  @override
  String get audioInfoBluetoothFormat => 'Bluetooth kodek biçimi';

  @override
  String get audioInfoAndroidNotReported => 'Android tarafından bildirilmedi';

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
  String get audioInfoSystemDefaultRate => 'Sistem varsayılanı örnekleme hızı';

  @override
  String get audioInfoAndroidPcmRates => 'Android PCM örnekleme hızları';

  @override
  String get audioInfoAndroidPcmFormats => 'Android PCM biçimleri';

  @override
  String get audioInfoSystemDefaultBuffer => 'Sistem varsayılanı arabellek';

  @override
  String get audioInfoDeviceRates => 'Cihaz örnekleme hızları';

  @override
  String get audioInfoDeviceFormats => 'Cihaz biçimleri';

  @override
  String get audioInfoAnyRate => 'Herhangi';

  @override
  String get audioInfoBuffer => 'Mikser arabelleği';

  @override
  String get audioInfoLatency => 'Çıkış gecikmesi';

  @override
  String get audioInfoLowLatency => 'Düşük gecikmeli ses';

  @override
  String get audioInfoProAudio => 'Pro ses';

  @override
  String get audioInfoSupported => 'Destekleniyor';

  @override
  String get audioInfoNotSupported => 'Desteklenmiyor';

  @override
  String get audioInfoSpatial => 'Uzamsal ses';

  @override
  String get audioInfoHeadTracking => 'Baş takibi';

  @override
  String get audioInfoUnavailable => 'Kullanılamıyor';

  @override
  String get audioInfoFixedVolume => 'Cihaz tarafından denetleniyor';

  @override
  String get audioInfoCopy => 'Raporu kopyala';

  @override
  String get audioInfoCopied => 'Ses bilgisi kopyalandı';

  @override
  String get lyricsTextSize => 'Şarkı sözü metin boyutu';

  @override
  String get lyricsTextPreview => 'Favori şarkınızın her satırını takip edin';

  @override
  String get lyricsBlur => 'Şarkı sözü bulanıklığı';

  @override
  String get lyricsBlurSubtitle =>
      'Geçerli satırın çevresindeki satırların ne kadar yumuşatılacağı';

  @override
  String get lyricsBlurOff => 'Kapalı';

  @override
  String get lyricsOffset => 'Şarkı sözü zamanlaması';

  @override
  String get lyricsOffsetSubtitle =>
      'Senkronlu şarkı sözlerini daha geç veya daha erken göster; örneğin Bluetooth sesi geç geldiğinde';

  @override
  String get lyricsOffsetNone => 'Senkron';

  @override
  String lyricsOffsetLater(String seconds) {
    return '$seconds sn geç';
  }

  @override
  String lyricsOffsetEarlier(String seconds) {
    return '$seconds sn erken';
  }

  @override
  String get appCrashTitle => 'Uygulama daha önce çöktü';

  @override
  String get appAnrTitle => 'Uygulama daha önce yanıt vermeyi durdurdu';

  @override
  String get appAnrMessage =>
      'Bir tanılama raporu kaydedildi. İncelemeye yardımcı olması için kopyalayıp geliştiriciye gönderebilirsiniz.';

  @override
  String get appCrashMessage =>
      'Bir çökme raporu kaydedildi. İncelemeye yardımcı olması için kopyalayıp geliştiriciye gönderin.';

  @override
  String get appCrashDetails => 'Hatayı ve günlüğü görüntüle';

  @override
  String get appCrashCopy => 'Raporu geliştirici için kopyala';

  @override
  String get appCrashDismiss => 'Kapat';

  @override
  String get appCrashCopyFailed =>
      'Çökme raporu kopyalanamadı. Lütfen tekrar deneyin.';

  @override
  String get appCrashDismissFailed =>
      'Çökme raporu kapatılamadı. Lütfen tekrar deneyin.';

  @override
  String get optionsEmbeddedCoverSizeOriginal => 'Orijinal çözünürlük';

  @override
  String desktopShortcutTooltip(String action, String shortcut) {
    return '$action ($shortcut)';
  }

  @override
  String get desktopPlayerIdle => 'Çalmıyor';

  @override
  String get desktopVolumeUp => 'Sesi artır';

  @override
  String get desktopVolumeDown => 'Sesi azalt';

  @override
  String desktopTableSortedAscending(String column) {
    return '$column, artan sırada sıralandı';
  }

  @override
  String desktopTableSortedDescending(String column) {
    return '$column, azalan sırada sıralandı';
  }

  @override
  String get desktopMenuOpen => 'Aç';

  @override
  String get desktopMenuShowDetails => 'Ayrıntıları göster';

  @override
  String get desktopDropToImport => 'Kitaplığınıza eklemek için bırakın';

  @override
  String desktopDropImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'klasör',
      one: 'klasör',
    );
    return '$count $_temp0 kitaplığınıza ekleniyor';
  }

  @override
  String get desktopDropNothingToImport =>
      'Kitaplığınıza eklemek için müzik dosyalarını veya klasörleri bırakın';

  @override
  String get desktopAllPlaylists => 'Tüm Çalma Listeleri';

  @override
  String get desktopMenuSettings => 'Ayarlar…';

  @override
  String get desktopMenuFile => 'Dosya';

  @override
  String get desktopMenuEdit => 'Düzen';

  @override
  String get desktopMenuView => 'Görünüm';

  @override
  String get desktopWindowMode => 'Pencere modu';

  @override
  String get desktopWindowed => 'Pencereli';

  @override
  String get desktopWindowFullscreen => 'Tam ekran';

  @override
  String get desktopWindowBorderless => 'Kenarlıksız';

  @override
  String get desktopExitFullscreen => 'Tam ekrandan çık';

  @override
  String get desktopMinimizeWindow => 'Pencereyi küçült';

  @override
  String get desktopZoomWindow => 'Pencereyi büyüt veya geri yükle';

  @override
  String get desktopWindowModeUnavailable =>
      'Pencere modu değiştirilemedi. Geçerli pencere geçişi tamamlandıktan sonra tekrar deneyin.';

  @override
  String get desktopMenuControls => 'Kontroller';

  @override
  String get desktopMenuWindow => 'Pencere';

  @override
  String get desktopMenuHelp => 'Yardım';

  @override
  String get desktopMenuPlayPause => 'Çal/Duraklat';

  @override
  String get desktopMenuMiniPlayer => 'Mini Oynatıcı';

  @override
  String get desktopMiniPlayerExpand => 'Tam Pencereyi Göster';

  @override
  String get desktopMenuRefresh => 'Yenile';

  @override
  String get desktopMenuProjectPage => 'Proje sayfası';

  @override
  String get desktopDownloadsShowAll => 'Tümünü göster';

  @override
  String get desktopDownloadsQueued => 'Bekliyor';

  @override
  String get desktopDownloadsCancel => 'İndirme iptal edilsin mi';

  @override
  String get linkDesktopSettingsTitle => 'Telefonunuzdaki Toadplayer';

  @override
  String get linkDesktopSettingsSubtitle =>
      'Kitaplığınızı akış olarak aktarın ve oynatmayı telefonunuzdan denetleyin';

  @override
  String get linkDesktopEnableTitle => 'Telefonunuzdaki Toadplayer ile paylaş';

  @override
  String get linkDesktopEnableSubtitle =>
      'Telefonunuz yerel ağınızda bu bilgisayar üzerinden göz atabilir, çalabilir ve indirebilir';

  @override
  String get linkDesktopStatusStarting => 'Başlatılıyor';

  @override
  String linkDesktopStatusRunning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count telefon bağlı',
      one: '1 telefon bağlı',
      zero: 'telefon bağlı değil',
    );
    return 'Açık, $_temp0';
  }

  @override
  String linkDesktopStatusFailed(String error) {
    return 'Başlatılamadı: $error';
  }

  @override
  String get linkDesktopFirewallHint =>
      'Bilgisayarınız Toadplayer\'nin gelen ağ bağlantılarını kabul edip edemeyeceğini sorabilir. Telefonunuzun bağlanabilmesi için izin verin.';

  @override
  String get linkDesktopSectionComputer => 'Bu bilgisayar';

  @override
  String get linkDesktopDeviceName => 'Ad';

  @override
  String get linkDesktopDeviceNameHint =>
      'Telefonlar bu bilgisayarı bulduklarında bu adı gösterir';

  @override
  String get linkDesktopAddress => 'Adres';

  @override
  String get linkDesktopSecurityCode => 'Güvenlik kodu';

  @override
  String get linkDesktopSecurityCodeHint =>
      'Eşleştirirken telefonunuz aynı kodu gösterir';

  @override
  String linkDesktopCatalogSongs(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count şarkı paylaşılıyor',
      one: '1 şarkı paylaşılıyor',
    );
    return '$_temp0';
  }

  @override
  String get linkDesktopSectionPhones => 'Telefonlar';

  @override
  String get linkDesktopPairPhone => 'Telefon eşleştir';

  @override
  String get linkDesktopPairPhoneSubtitle =>
      'Telefonunuzda gireceğiniz bir kod gösterin';

  @override
  String get linkDesktopNoDevices => 'Henüz telefon eşleştirilmedi';

  @override
  String get linkDesktopDeviceConnected => 'Bağlı';

  @override
  String linkDesktopDeviceLastSeen(String date) {
    return 'Son görülme $date';
  }

  @override
  String get linkDesktopDeviceNeverSeen => 'Henüz bağlanmadı';

  @override
  String get linkDesktopSubsonicApp => 'Subsonic uygulaması';

  @override
  String get linkDesktopRevoke => 'Kaldır';

  @override
  String linkDesktopRevokeTitle(String name) {
    return '$name kaldırılsın mı?';
  }

  @override
  String get linkDesktopRevokeMessage =>
      'Bu bilgisayara bağlanabilmesi için yeniden eşleştirilmesi gerekir.';

  @override
  String linkDesktopRevoked(String name) {
    return '$name kaldırıldı';
  }

  @override
  String get linkDesktopSectionOtherApps => 'Diğer uygulamalar';

  @override
  String get linkDesktopAddSubsonicApp => 'Başka bir Subsonic uygulaması ekle';

  @override
  String get linkDesktopAddSubsonicAppSubtitle =>
      'Başka bir cihazdaki Subsonic oynatıcı için anahtar oluşturun';

  @override
  String get linkDesktopAppName => 'Uygulama adı';

  @override
  String get linkDesktopCreateKey => 'Anahtar oluştur';

  @override
  String linkDesktopAppKeyTitle(String name) {
    return '$name bağla';
  }

  @override
  String get linkDesktopAppKeyMessage =>
      'Bu ayrıntıları uygulamaya girin. Anahtar yalnızca şimdi gösterilir.';

  @override
  String get linkDesktopServerAddress => 'Sunucu adresi';

  @override
  String get linkDesktopUsername => 'Kullanıcı adı';

  @override
  String get linkDesktopApiKey => 'Parola veya API anahtarı';

  @override
  String linkDesktopCopy(String label) {
    return '$label kopyala';
  }

  @override
  String get linkDesktopPairInstructions =>
      'Telefonunuzda Toadplayer\'yi açın, bu bilgisayarı seçin ve bu kodu girin.';

  @override
  String linkDesktopPairCheckCode(String code) {
    return 'Telefonunuzun $code güvenlik kodunu gösterdiğini kontrol edin.';
  }

  @override
  String linkDesktopPairExpires(String time) {
    return 'Kod $time içinde sona erer';
  }

  @override
  String linkDesktopPaired(String name) {
    return '$name ile eşleştirildi';
  }

  @override
  String get linkDesktopPairExpired =>
      'Kodun süresi doldu. Yeni kod için tekrar eşleştirin.';

  @override
  String get linkDesktopPairAttempts =>
      'Çok fazla yanlış kod girildi. Yeni kod için tekrar eşleştirin.';

  @override
  String get linkDesktopPairFailed => 'Eşleştirme başlatılamadı';

  @override
  String get linkDesktopDevicesTitle => 'Telefonlar';

  @override
  String get linkDesktopPhoneNothingPlaying => 'Hiçbir şey çalmıyor';

  @override
  String get linkDesktopContinueOnPhone => 'Telefonda devam et';

  @override
  String get linkDesktopOpenOnPhone => 'Bağlantıyı telefonda aç';

  @override
  String linkDesktopOpenLinkTitle(String name) {
    return 'Bağlantıyı $name üzerinde aç';
  }

  @override
  String get linkDesktopOpenLinkLabel => 'Bağlantı';

  @override
  String get linkDesktopOpen => 'Aç';

  @override
  String linkDesktopSentToPhone(String name) {
    return '$name cihazına gönderildi';
  }

  @override
  String get linkDesktopNotDelivered => 'Telefon bunu almadı';

  @override
  String get linkDesktopNothingToContinue =>
      'Bu bilgisayarda hiçbir şey çalmıyor';

  @override
  String linkTransferDesktopSendTo(String name) {
    return '$name cihazına gönder';
  }

  @override
  String get linkTransferDesktopSaveHere => 'Bu bilgisayara kaydet';

  @override
  String linkTransferDesktopSendingSong(String title, String name) {
    return '\"$title\" $name cihazına gönderiliyor';
  }

  @override
  String linkTransferDesktopSendingSongs(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$name cihazına $count şarkı gönderiliyor',
      one: '$name cihazına 1 şarkı gönderiliyor',
    );
    return '$_temp0';
  }

  @override
  String linkTransferDesktopReceivingSong(String title, String name) {
    return '\"$title\" $name cihazından alınıyor';
  }

  @override
  String linkTransferDesktopReceivingSongs(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$name cihazından $count şarkı alınıyor',
      one: '$name cihazından 1 şarkı alınıyor',
    );
    return '$_temp0';
  }

  @override
  String get linkTransferDesktopView => 'Görüntüle';

  @override
  String get linkTransferDesktopNothingToSend =>
      'Bu şarkıların hiçbiri şu anda gönderilemiyor';

  @override
  String get linkTransferDesktopNothingToSave =>
      'Bu şarkıların hiçbiri şu anda kaydedilemiyor';

  @override
  String get desktopScrollBack => 'Geri kaydır';

  @override
  String get desktopScrollForward => 'İleri kaydır';

  @override
  String get settingsKeyboardShortcuts => 'Klavye Kısayolları';

  @override
  String get settingsKeyboardShortcutsSubtitle =>
      'Oynatma, gezinme ve paneller için tuşlar';

  @override
  String get desktopShortcutsNavigation => 'Gezinme';

  @override
  String get desktopShortcutDismiss => 'İletişim kutusunu veya sayfayı kapat';

  @override
  String get desktopShortcutForward => 'Forward';

  @override
  String get desktopShortcutToggleSidebar => 'Kenar çubuğunu göster veya gizle';

  @override
  String get linkSettingsTitle => 'Bilgisayarınızdaki Toadplayer';

  @override
  String get linkSettingsSubtitle =>
      'Bilgisayarınızın kitaplığını çalın ve denetleyin';

  @override
  String get linkPageTitle => 'Bilgisayarlar';

  @override
  String get linkPageDescription =>
      'Kitaplığını bu telefonda çalmak ve ne çaldığını denetlemek için bilgisayarınızdaki Toadplayer ile eşleştirin. Her iki cihaz da aynı ağda olmalıdır.';

  @override
  String get linkPairedSection => 'Eşleştirilmiş bilgisayarlar';

  @override
  String get linkPhoneSection => 'Bu telefon';

  @override
  String get linkShareSongsTitle => 'Şarkıları bilgisayarda göster';

  @override
  String get linkShareSongsSubtitle =>
      'Bu telefondaki şarkılar bilgisayarın Kitaplığında görünür ve bu telefon bağlıyken orada çalar';

  @override
  String get linkFollowDesktopTitle => 'Bilgisayarın oynatmasını izle';

  @override
  String get linkFollowDesktopSubtitle =>
      'Bilgisayar çalmaya başladığında bu telefon onu gösterir ve denetler';

  @override
  String get linkNearbySection => 'Bu ağda';

  @override
  String get linkSearching => 'Bilgisayarlar aranıyor...';

  @override
  String get linkNoneFoundTitle => 'Bilgisayar bulunamadı';

  @override
  String get linkNoneFound =>
      'Bilgisayarınızda Toadplayer\'yi açın ve ayarlarından Telefonunuzdaki Toadplayer ile paylaş seçeneğini açın.';

  @override
  String get linkAddManually => 'Adresle ekle';

  @override
  String get linkManualHost => 'Bilgisayar adresi';

  @override
  String get linkManualPort => 'Bağlantı noktası';

  @override
  String get linkManualMessage =>
      'Bilgisayarınızdaki Toadplayer, paylaşımı açtığınız yerde adresini ve bağlantı noktasını gösterir.';

  @override
  String get linkContinue => 'Devam';

  @override
  String get linkStateConnected => 'Bağlı';

  @override
  String get linkStateConnecting => 'Bağlanıyor...';

  @override
  String get linkStateDisconnected => 'Bağlı değil';

  @override
  String get linkStateInactive => 'Bu bilgisayarı kullanmak için dokunun';

  @override
  String get linkActive => 'Kullanımda';

  @override
  String get linkForget => 'Unut';

  @override
  String linkForgetTitle(String name) {
    return '$name unutulsun mu?';
  }

  @override
  String get linkForgetMessage =>
      'Bu telefon artık ona bağlanmaz. Daha sonra yeniden eşleştirebilirsiniz.';

  @override
  String get linkForgetRemoveLibrary => 'Müziğini de Kitaplıktan kaldır';

  @override
  String linkPinTitle(String name) {
    return '$name ile eşleştir';
  }

  @override
  String get linkPinMessage =>
      'Bilgisayarınızda gösterilen 6 haneli PIN\'i girin.';

  @override
  String get linkPinField => 'PIN';

  @override
  String linkPinCode(String code) {
    return 'Bilgisayarınız PIN\'in yanında $code kodunu gösterir. Yalnızca eşleşiyorsa eşleştirin.';
  }

  @override
  String get linkPinNotOpen =>
      'Eşleştirme henüz açık değil. PIN göstermek için bilgisayarınızdaki Toadplayer\'de eşleştirmeyi başlatın.';

  @override
  String get linkPair => 'Eşleştir';

  @override
  String linkPaired(String name) {
    return '$name ile eşleştirildi. Müziği Kitaplığa ekleniyor.';
  }

  @override
  String get linkPairAgain => 'Yeniden eşleştir';

  @override
  String get linkTransfersTitle => 'Aktarımlar';

  @override
  String get linkTransfersInProgress => 'Devam edenler';

  @override
  String get linkTransfersFinished => 'Tamamlananlar';

  @override
  String get linkTransfersClearFinished => 'Tamamlananları temizle';

  @override
  String get linkTransfersEmptyTitle => 'Henüz aktarım yok';

  @override
  String get linkTransfersEmptyMessage =>
      'Şarkıları bir şarkının menüsünden, bir albümden veya bir seçimden gönderin ya da kaydedin.';

  @override
  String linkTransfersSending(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count şarkı',
      one: '1 şarkı',
    );
    return '$name cihazına $_temp0 gönderiliyor';
  }

  @override
  String linkTransfersReceiving(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count şarkı',
      one: '1 şarkı',
    );
    return '$name cihazından $_temp0 alınıyor';
  }

  @override
  String linkTransfersSendingSong(String title, String name) {
    return '$title $name cihazına gönderiliyor';
  }

  @override
  String linkTransfersReceivingSong(String title, String name) {
    return '$title $name cihazından alınıyor';
  }

  @override
  String linkTransfersSongsTo(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count şarkı',
      one: '1 şarkı',
    );
    return '$name cihazına $_temp0';
  }

  @override
  String linkTransfersSongsFrom(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count şarkı',
      one: '1 şarkı',
    );
    return '$name cihazından $_temp0';
  }

  @override
  String linkTransfersSongTo(String title, String name) {
    return '$title → $name';
  }

  @override
  String linkTransfersSongFrom(String title, String name) {
    return '$title ← $name';
  }

  @override
  String linkTransfersPosition(int position, int total) {
    return '$position / $total';
  }

  @override
  String linkTransfersPercent(int percent) {
    return '%$percent';
  }

  @override
  String get linkTransfersWaiting => 'Bekliyor';

  @override
  String linkTransfersSavedCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaydedildi',
    );
    return '$_temp0';
  }

  @override
  String linkTransfersAlreadyThereCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zaten oradaydı',
    );
    return '$_temp0';
  }

  @override
  String linkTransfersFailedCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count başarısız',
    );
    return '$_temp0';
  }

  @override
  String linkTransfersStopped(int done, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      done,
      locale: localeName,
      other: '$total şarkıdan $done tanesinden sonra durduruldu',
      zero: 'Durduruldu',
    );
    return '$_temp0';
  }

  @override
  String get linkTransfersReasonDisconnected => 'Bağlantı kesildi';

  @override
  String get linkTransfersReasonNoFolder => 'Önce bir indirme klasörü seçin';

  @override
  String linkTransfersReasonNoFolderPeer(String name) {
    return '$name cihazında indirme klasörü yok';
  }

  @override
  String get linkTransfersReasonBusy => 'Meşgul, daha sonra tekrar deneyin';

  @override
  String get linkTransfersReasonError => 'Bir sorun oluştu';

  @override
  String get linkTransfersSongSaved => 'Kaydedildi';

  @override
  String get linkTransfersSongAlreadyThere => 'Zaten orada';

  @override
  String get linkTransfersSongFailed => 'Başarısız';

  @override
  String get linkTransfersSongCopying => 'Kopyalanıyor';

  @override
  String get linkTransfersSongNotCopied => 'Kopyalanmadı';

  @override
  String get linkTransfersStop => 'Aktarımı durdur';

  @override
  String linkTransfersActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aktarım',
      one: '1 aktarım',
    );
    return '$_temp0';
  }

  @override
  String linkTransfersFinishedCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aktarım tamamlandı',
      one: '1 aktarım tamamlandı',
    );
    return '$_temp0';
  }

  @override
  String get linkErrorBadPin =>
      'Bu PIN doğru değil. Bilgisayarınızdaki PIN\'i kontrol edip tekrar deneyin.';

  @override
  String get linkErrorPairingClosed =>
      'Bilgisayarınızda eşleştirme açık değil. Orada eşleştirmeyi başlatın, sonra tekrar deneyin.';

  @override
  String get linkErrorTooManyAttempts =>
      'Çok fazla deneme. Biraz bekleyip tekrar deneyin.';

  @override
  String get linkErrorCertificateTitle => 'Bilgisayar doğrulanmadı';

  @override
  String get linkErrorCertificate =>
      'Bilgisayarın güvenlik sertifikası bildirdiğiyle eşleşmiyor. Bu ağdaki biri bağlantıyı kesiyor olabilir, bu yüzden eşleştirme durduruldu.';

  @override
  String get linkErrorIncompatible =>
      'Bu bilgisayar, bu telefonla eşleşemeyen bir Toadplayer sürümü çalıştırıyor. Toadplayer\'yi her iki cihazda da güncelleyin.';

  @override
  String get linkErrorUnreachable =>
      'Bilgisayara ulaşılamadı. Toadplayer\'nin açık olduğunu ve iki cihazın da aynı ağda olduğunu kontrol edin.';

  @override
  String get linkErrorTimeout =>
      'Bilgisayar zamanında yanıt vermedi. Tekrar deneyin.';

  @override
  String get linkErrorInvalidAddress =>
      '192.168.1.20 ve 47710 gibi geçerli bir adres ve bağlantı noktası girin.';

  @override
  String get linkErrorFailed => 'Eşleştirme başarısız oldu. Tekrar deneyin.';

  @override
  String get linkLocalNetworkTitle => 'Yerel ağ erişimi gerekli';

  @override
  String get linkLocalNetworkMessage =>
      'Toadplayer\'nin bilgisayarınızı bulmak ve ona bağlanmak için yerel ağ erişimine ihtiyacı var.';

  @override
  String get linkLocalNetworkAllow => 'Erişime izin ver';

  @override
  String get linkWifiOffTitle => 'Wi-Fi\'de değilsiniz';

  @override
  String get linkWifiOffMessage =>
      'Bu telefonu bilgisayarınızla aynı Wi-Fi ağına bağlayın.';

  @override
  String linkIssueUnauthorized(String name) {
    return '$name bu telefonu artık kabul etmiyor. Yeniden bağlanmak için tekrar eşleştirin.';
  }

  @override
  String linkIssueCertificate(String name) {
    return '$name farklı bir güvenlik sertifikası sundu. Yalnızca o bilgisayarda Toadplayer\'yi yeniden yüklediyseniz veya sıfırladıysanız tekrar eşleştirin.';
  }

  @override
  String linkIssueIncompatible(String name) {
    return 'Bağlanmak için Toadplayer\'yi bu telefonda ve $name cihazında güncelleyin.';
  }

  @override
  String get playlistEditOrder => 'Sırayı düzenle';

  @override
  String get playlistEditOrderDescription =>
      'Bir parçayı tutamacından sürükleyin veya dokunup basılı tutarak taşıyın.';

  @override
  String get playlistEditOrderSaved => 'Çalma listesi sırası kaydedildi';

  @override
  String get collectionOrderSaved => 'Şarkı sırası kaydedildi';

  @override
  String get collectionOrderChanged =>
      'Bu koleksiyon düzenleme sırasında değişti. Lütfen yeniden sıralayın.';

  @override
  String get collectionOrderSaveFailed =>
      'Şarkı sırası kaydedilemedi. Tekrar deneyin.';

  @override
  String get playlistCreateEmpty => 'Boş çalma listesi';

  @override
  String get playlistCreateEmptySubtitle =>
      'Parçaları daha sonra herhangi bir listeden ekleyin';

  @override
  String get playlistCreateFromFolder => 'Bir klasörden';

  @override
  String get playlistCreateFromFolderSubtitle =>
      'Kitaplığınızdaki tek bir klasördeki tüm parçalar';

  @override
  String get playlistImportFile => 'Çalma listesi dosyası içe aktar';

  @override
  String get playlistImportFileSubtitle =>
      'M3U, M3U8 veya CSV; bu cihazdaki dosyalarla eşleştirilir';

  @override
  String get playlistFolderPickerTitle => 'Bir klasör seçin';

  @override
  String get playlistFolderPickerEmptyTitle => 'Henüz klasör yok';

  @override
  String get playlistFolderPickerEmpty =>
      'Henüz taranmış parça yok. Önce bir Kitaplık klasörü ekleyip tarayın.';

  @override
  String playlistCreatedWithTracks(String name, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count parça',
      one: '1 parça',
    );
    return '$_temp0 ile $name oluşturuldu';
  }

  @override
  String playlistImportResult(int count, String name, int matched) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count parça',
      one: '1 parça',
    );
    return '$name listesine $_temp0 içe aktarıldı; $matched tanesi bu cihazdaki dosyalarla eşleşti';
  }

  @override
  String get playlistImportNoTracks => 'Bu dosyada parça bulunamadı';

  @override
  String get playlistImportFailed => 'Bu çalma listesi dosyası okunamadı';

  @override
  String get recognizeTitle => 'Şarkıyı tanı';

  @override
  String get recognizeSearchTooltip => 'Yakında çalan bir şarkıyı tanı';

  @override
  String get recognizeIdleTitle => 'Ne çalıyor?';

  @override
  String get recognizeIdleMessage =>
      'Cihazınızı müziğe yakın tutun, sonra dinlemek için dokunun.';

  @override
  String get recognizeStartListening => 'Dinlemeye başla';

  @override
  String get recognizeServiceNote =>
      'Şarkıyı bulmak için Shazam\'a bir ses parmak izi gönderilir. Kayıt cihazınızda kalır.';

  @override
  String get recognizeListening => 'Dinleniyor…';

  @override
  String get recognizeListeningMessage =>
      'Müziği cihazınızın yakınında çalmaya devam ettirin.';

  @override
  String get recognizeSearching => 'Aranıyor…';

  @override
  String get recognizeNoMatchTitle => 'Eşleşme bulunamadı';

  @override
  String get recognizeNoMatchMessage =>
      'Müziğe daha yakın veya daha yüksekken tekrar deneyin.';

  @override
  String get recognizeTryAgain => 'Tekrar Dene';

  @override
  String get recognizeQuietTitle => 'Müzik duyulamadı';

  @override
  String get recognizeQuietMessage => 'Müziğe yaklaşın ve tekrar deneyin.';

  @override
  String get recognizeNetworkTitle => 'Bağlantı yok';

  @override
  String get recognizeNetworkMessage =>
      'İnternet bağlantınızı kontrol edip tekrar deneyin.';

  @override
  String get recognizeRateLimitedTitle => 'Çok fazla deneme';

  @override
  String get recognizeRateLimitedMessage =>
      'Bir dakika bekleyip tekrar deneyin.';

  @override
  String get recognizeUnavailableTitle => 'Tanımlama kullanılamıyor';

  @override
  String get recognizeUnavailableMessage =>
      'Tanımlama hizmeti yanıt vermedi. Daha sonra tekrar deneyin.';

  @override
  String get recognizeMicrophoneTitle => 'Mikrofon kullanılamıyor';

  @override
  String get recognizeMicrophoneMessage =>
      'Kullanılabilir mikrofon yok veya başka bir uygulama onu kullanıyor.';

  @override
  String get recognizePermissionTitle => 'Mikrofon erişimi kapalı';

  @override
  String get recognizePermissionMessage =>
      'Toadplayer mikrofonu yalnızca bir şarkıyı tanımlarken kullanır.';

  @override
  String get recognizePermissionAllow => 'Mikrofona İzin Ver';

  @override
  String get recognizePlay => 'Toadplayer\'de çal';

  @override
  String get recognizeSearch => 'Toadplayer\'de ara';

  @override
  String get recognizeOpenInShazam => 'Shazam\'da aç';

  @override
  String get recognizeListenAgain => 'Tekrar Dinle';

  @override
  String get recognizeHistory => 'Son Tanımlananlar';

  @override
  String get recognizeClearHistory => 'Tanımlanan şarkıları temizle';

  @override
  String get recognizeClearHistoryMessage =>
      'Bu listedeki tüm şarkılar kaldırılsın mı?';

  @override
  String get collectionSuggestionsTitle => 'Önerilen şarkılar';

  @override
  String get collectionSuggestionsRelated => 'Yukarıdaki şarkılara göre';

  @override
  String get collectionSuggestionsByArtists => 'Bu sanatçılardan daha fazlası';

  @override
  String get collectionSuggestionsRefresh => 'Başka şarkılar öner';

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
  String get collectionSuggestionsAddHere => 'Bu çalma listesine ekle';

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
