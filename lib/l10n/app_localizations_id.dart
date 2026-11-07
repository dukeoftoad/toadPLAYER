// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get libraryLyricsSearchDescription =>
      'Cari lirik yang tersimpan di lagu. Pencarian pertama bisa memerlukan waktu; ganti filter untuk menghentikannya.';

  @override
  String libraryLyricsIndexing(int count) {
    return 'Menyiapkan pencarian lirik: $count lagu diperiksa';
  }

  @override
  String get libraryLyricsSearchIncomplete =>
      'Beberapa lagu tidak dapat dibaca. Hasil mungkin belum lengkap.';

  @override
  String get libraryLyricsRefresh => 'Perbarui pencarian lirik';

  @override
  String get networkErrorListing =>
      'Server merespons, tetapi daftar foldernya tidak dapat dibaca. Untuk WebDAV, gunakan endpoint WebDAV. Untuk HTTP, gunakan daftar direktori atau URL audio langsung.';

  @override
  String get networkErrorStorage =>
      'Server berhasil diakses, tetapi perangkat ini tidak dapat menyimpan koneksi. Periksa log aplikasi lalu coba lagi.';

  @override
  String get extensionsUnsecuredStorage =>
      'Gunakan penyimpanan extension tanpa keyring';

  @override
  String get extensionsUnsecuredStorageDescription =>
      'Jalankan extension tanpa keyring Linux. Kunci disimpan secara lokal, sehingga siapa pun yang dapat mengakses file aplikasi bisa membaca kredensial extension. Nonaktifkan untuk memakai keyring sistem.';

  @override
  String get extensionsStorageKeyringRequired =>
      'Data extension yang ada memerlukan kunci aslinya. Buka keyring sistem sekali, lalu aktifkan lagi penyimpanan tanpa keyring. Data kamu tetap tersimpan.';

  @override
  String get extensionsStorageKeyConflict =>
      'Kunci lokal dan keyring sistem berbeda. Penyimpanan tidak diubah dan kedua kunci tetap tersimpan.';

  @override
  String get extensionsStorageKeyringUnavailable =>
      'Keyring sistem tidak tersedia atau terkunci. Jalankan atau buka keyring sebelum beralih ke penyimpanan aman. Kunci lokal kamu tetap tersimpan.';

  @override
  String linkFileActionOn(String action, String name) {
    return '$action di $name';
  }

  @override
  String linkFileActionsDescription(String name) {
    return 'Perubahan diterapkan pada file musik di $name. Pekerjaan yang diterima tetap berjalan jika HP ini terputus.';
  }

  @override
  String linkFileDeleteConfirm(int count, String name) {
    return 'Hapus $count file musik dari $name? File akan dihapus dari penyimpanan komputer tersebut.';
  }

  @override
  String get linkFileJobs => 'Perubahan file';

  @override
  String linkFileJobsSubtitle(String name) {
    return 'Edit, konversi, dan penghapusan di $name';
  }

  @override
  String get linkFileJobsEmpty => 'Belum ada perubahan file';

  @override
  String get linkFileJobsEmptyMessage =>
      'Edit, konversi, dan penghapusan lagu di komputer yang kamu mulai dari HP ini akan muncul di sini.';

  @override
  String get linkDesktopFileJobsSubtitle =>
      'Perubahan yang diminta dari HP kamu';

  @override
  String get linkDesktopFileJobsEmptyMessage =>
      'Edit, konversi, dan penghapusan yang diminta dari HP kamu akan muncul di sini.';

  @override
  String linkFileJobRequestedBy(String name) {
    return 'Dari $name';
  }

  @override
  String get linkFileJobsView => 'Lihat';

  @override
  String get linkFileJobsUnsupported =>
      'Perbarui Toadplayer di komputer agar file musiknya bisa dikelola dari HP ini.';

  @override
  String get linkFileSelectionOneDevice =>
      'Pilih lagu dari satu komputer yang terhubung (maksimal 100 lagu).';

  @override
  String linkFileJobProgress(int finished, int total) {
    return '$finished dari $total lagu';
  }

  @override
  String linkFileJobFailedCount(int count) {
    return '$count gagal';
  }

  @override
  String linkFileJobFinished(String action, String name) {
    return '$action selesai di $name';
  }

  @override
  String get linkFileDeleting => 'Menghapus...';

  @override
  String get linkFileReading => 'Membaca tag...';

  @override
  String get linkFileSavingCover => 'Menyimpan cover art...';

  @override
  String get linkFileCancelHint => 'Hentikan setelah lagu yang sedang diproses';

  @override
  String get linkFileJobCancelled => 'Dihentikan';

  @override
  String get linkFileJobQueued => 'Dalam antrean';

  @override
  String get linkFileJobCompleted => 'Selesai';

  @override
  String get linkFileChanged =>
      'File berubah sejak pratinjau dibuat. Buat pratinjau lagi sebelum menyimpan.';

  @override
  String get linkFileOperationFailed =>
      'Operasi tidak berhasil diselesaikan. Periksa log di komputer untuk detailnya.';

  @override
  String get trackBpm => 'BPM';

  @override
  String get trackMood => 'Mood';

  @override
  String get subsonicAddToLibrary => 'Tambahkan server ke Koleksi';

  @override
  String get subsonicLibraryAdded => 'Server ditambahkan ke Koleksi';

  @override
  String get subsonicLibraryDescription =>
      'Sinkronkan katalog dan foto cover server ke Koleksi. Musik tetap di server. Pindai ulang lewat setelan Koleksi Lokal untuk mengupdate katalog.';

  @override
  String get subsonicAuthentication => 'Otentikasi';

  @override
  String get subsonicToken => 'Salted token';

  @override
  String get subsonicPasswordAuth => 'Sandi';

  @override
  String get subsonicApiKey => 'Key API';

  @override
  String get subsonicUsername => 'Nama pengguna';

  @override
  String get subsonicPassword => 'Sandi';

  @override
  String get subsonicSearch => 'Telusuri lagu server...';

  @override
  String get subsonicMoreAlbums => 'Album lainnya';

  @override
  String get subsonicErrorApi =>
      'Server tidak mendukung versi API atau metode autentikasi ini. Periksa setelan server dan metode masuk yang dipilih.';

  @override
  String get networkDownloadDestination => 'Tujuan download jaringan';

  @override
  String get networkUseForDownloads => 'Download ke folder ini';

  @override
  String get networkDownloadSelected => 'Tujuan download terpilih';

  @override
  String get networkUseLocalDownloads => 'Gunakan folder download lokal';

  @override
  String get networkDownloadAccessFailed => 'Tak dapat mengakses folder ini.';

  @override
  String get networkUploading => 'Mengupload ke penyimpanan jaringan';

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
      'Lagu disiapkan di perangkat, lalu diupload ke NAS. Biarkan aplikasi terbuka sampai upload selesai. Mencoba lagi akan gunakan audio yang disiapkan. File yang ada tetap disimpan; download baru dengan nama sama diberi akhiran nomor.';

  @override
  String get networkAddToLibrary => 'Tambahkan folder ke Koleksi';

  @override
  String get networkLibraryAdded => 'Folder ditambahkan ke Koleksi';

  @override
  String get networkLibraryDescription =>
      'Pindai folder ini beserta subfoldernya. Musik tetap di server; metadata dan cover disimpan di perangkat ini. Kelola atau pindai ulang lewat setelan Koleksi Lokal.';

  @override
  String get networkStorage => 'Penyimpanan jaringan';

  @override
  String get networkErrorUnreachable =>
      'Server tidak dapat dijangkau. Pastikan ponsel ini dapat mengakses jaringannya dan layanan berbagi file sudah aktif. Untuk SMB, port 445 harus dapat diakses.';

  @override
  String get networkErrorTimeout =>
      'Server tidak merespons tepat waktu. Periksa koneksi lalu coba lagi.';

  @override
  String get networkErrorAuthentication =>
      'Server menolak info login. Periksa nama pengguna, sandi, dan domain. Kosongkan domain kecuali server memerlukannya.';

  @override
  String get networkErrorPermission =>
      'Akun ini tidak diizinkan membuka file atau folder ini. Periksa izin aksesnya di server.';

  @override
  String get networkErrorLocalPermission =>
      'Akses jaringan lokal tak diizinkan. Izinkan Perangkat di sekitar untuk Toadplayer di Setelan Android, lalu coba lagi.';

  @override
  String get networkErrorShare =>
      'File atau folder tidak ditemukan. Untuk SMB, tambah nama folder berbagi server setelah alamatnya, misalnya smb://server/Music/.';

  @override
  String get networkErrorProtocol =>
      'Server dan klien SMB ini tidak menemukan protokol yang cocok. Aktifkan SMB2 atau SMB3 di server. SMB1 tidak didukung.';

  @override
  String get networkErrorAddress =>
      'Periksa alamat server. Gunakan smb://server/share/ untuk SMB, atau alamat http:// maupun https:// untuk WebDAV dan HTTP.';

  @override
  String get networkConnections => 'Koneksi tersimpan';

  @override
  String get networkServer => 'Server';

  @override
  String get networkCredentials => 'Login (opsional)';

  @override
  String get networkRefresh => 'Refresh';

  @override
  String get networkStorageDescription =>
      'Hubungkan NAS atau server musik dan jelajahi foldernya. Informasi akun disimpan dengan aman di perangkat ini.';

  @override
  String get networkAddConnection => 'Tambah koneksi';

  @override
  String get networkEditConnection => 'Edit koneksi';

  @override
  String get networkConnectionName => 'Nama';

  @override
  String get networkAddress => 'URL server atau audio';

  @override
  String get networkProtocol => 'Protokol';

  @override
  String get networkUsername => 'Nama pengguna (opsional)';

  @override
  String get networkPassword => 'Sandi (opsional)';

  @override
  String get networkDomain => 'Domain (opsional)';

  @override
  String get networkConnectSave => 'Hubungkan dan simpan';

  @override
  String get networkErrorCertificate =>
      'Sertifikat HTTPS server tidak dapat diverifikasi. Edit koneksi ini untuk memeriksa dan mempercayai sertifikatnya, atau periksa konfigurasi HTTPS server.';

  @override
  String get networkCertificatePrompt =>
      'Server ini menggunakan sertifikat HTTPS yang tidak dipercaya. Biasanya router dan perangkat NAS menggunakan sertifikatnya sendiri. Periksa alamat server dan sidik jari SHA-256 sebelum mempercayainya. Hanya mempercayai sertifikat server ini; bila berubah harus disetujui lagi.';

  @override
  String get networkTrustCertificate => 'Percayai sertifikat dan coba lagi';

  @override
  String get networkRemoveConnection => 'Hapus koneksi';

  @override
  String get networkNoFiles => 'Tak menemukan file lagu atau folder terdukung.';

  @override
  String get networkConnectionError =>
      'Tidak dapat mengakses sumber jaringan. Periksa alamat server, kredensial, dan koneksi, lalu coba lagi.';

  @override
  String get extensionAccountTitle => 'Akun ekstensi';

  @override
  String get extensionAccountInvalidForm =>
      'Ekstensi mengembalikan bentuk akun yang tak valid.';

  @override
  String get extensionAccountRestartLogin => 'Restart akun login untuk lanjut.';

  @override
  String get extensionAccountRequiredValue => 'Harap diisi.';

  @override
  String get extensionAccountInvalidNumber => 'Beri angka yang valid.';

  @override
  String get settingsPlaybackSubtitle =>
      'Pemutar, volume, AutoMix, dan output audio';

  @override
  String get sectionPlayer => 'Pemutar';

  @override
  String get sectionVolumeAndTransitions => 'Volume dan transisi';

  @override
  String get sectionAudioOutput => 'Output audio';

  @override
  String get usbBitPerfect => 'Audio Hi-Res dan Bit-Perfect';

  @override
  String get usbBitPerfectDescription =>
      'Pertahankan kualitas audio di perangkat output yang didukung. Pilih Direct USB atau AAudio Exclusive di bawah; juga, output USB Android butuh Android 14+. Berlaku di lagu selanjutnya, tanpa AutoMix & normalisasi. Mungkin Anda tidak dapat mengatur volume.';

  @override
  String get usbHardwareVolume => 'Volume hardware DAC';

  @override
  String get usbVolumeWarningTitle => 'Periksa volume Anda';

  @override
  String get usbVolumeWarning =>
      'Memutar dengan Direct USB akan membuat suara lebih keras dari biasanya, dan tombol volume mungkin tidak akan berfungsi. Pelankan volume DAC atau amplifier Anda sebelum mendengar. Bila mendukung, Toadplayer mengatur volume DAC pada -40dB saat terhubung; tapi ini tidak menjamin suara akan berada di batas aman.';

  @override
  String get usbVolumeAccept => 'Saya paham';

  @override
  String get usbVolumeUnavailable =>
      'Pemutaran dijeda karena kontrol volume pada hardware DAC tidak dapat diverifikasi. Turunkan volume DAC atau Amplifier, lalu hidupkan volume output tetap bila dibutuhkan lalu putar lagi.';

  @override
  String get usbFixedVolume => 'Izinkan volume tetap output USB';

  @override
  String get usbFixedVolumeDescription =>
      'Untuk DAC yang tidak dapat dikontrol volume oleh aplikasi. Matikan bila menggunakan headset USB yang tidak punya kontrol volume. Berlaku di lagu selanjutnya.';

  @override
  String get usbFixedVolumeWarning =>
      'Aplikasi tidak dapat menurunkan volume output ini. Audio mungkin terdengar sangat kencang, dan kontrol volume perangkat tidak dapat berfungsi. Lanjutkan setelan menurunkan volume DAC/Amplifier Anda. Jangan hidupkan bila headset Anda tidak punya kontrol volume.';

  @override
  String get dapExclusive => 'Hi-Res DAP (eksklusif AAudio)';

  @override
  String get dapExclusiveDescription =>
      'Gunakan Oboe/AAudio pada sample rate dan presisi asli FLAC/WAV PCM. Butuh Android 8.1+ dan hardware didukung. Akses eksklusif diperiksa; format tak didukung akan gunakan pemutaran normal. DSD butuh driver Direct USB. Berlaku di lagu selanjutnya.';

  @override
  String get dapExclusiveUnavailable =>
      'Akses eksklusif AAudio tidak tersedia di lagu dan output ini. Lagu akan diputar normal. Jika pakai DAC USB, coba pakai driver Direct USB.';

  @override
  String get exclusiveOutputWindows => 'Mode eksklusif WASAPI';

  @override
  String get exclusiveOutputMacos => 'Akses eksklusif (hog mode)';

  @override
  String get exclusiveOutputLinux => 'Output ALSA langsung';

  @override
  String get exclusiveOutputDescriptionWindows =>
      'Lewati mixer Windows agar output mengikuti sample rate dan bit depth tiap lagu. Aplikasi lain tidak bisa memutar suara selama Toadplayer memegang perangkat. AutoMix dan preview mati di mode ini. Untuk output bit-perfect, biarkan volume di 100% dengan equalizer dan normalisasi mati.';

  @override
  String get exclusiveOutputDescriptionMacos =>
      'Pegang perangkat output khusus untuk Toadplayer dan ubah ke sample rate dan bit depth tiap lagu, agar Core Audio tidak melakukan resampling. Aplikasi lain tidak bisa memutar suara selama Toadplayer memegang perangkat. AutoMix dan preview mati di mode ini. Untuk output bit-perfect, biarkan volume di 100% dengan equalizer dan normalisasi mati.';

  @override
  String get exclusiveOutputDescriptionLinux =>
      'Putar langsung ke perangkat hardware ALSA, melewati PipeWire atau PulseAudio, agar output mengikuti sample rate dan bit depth tiap lagu. Perangkat harus bebas: sound server melepas kartu yang menganggur setelah beberapa detik, atau ubah profilnya ke Off. AutoMix dan preview mati di mode ini.';

  @override
  String get exclusiveOutputPending => 'Perangkat diambil saat lagu diputar.';

  @override
  String get exclusiveOutputActive => 'Diputar dalam mode eksklusif.';

  @override
  String get exclusiveOutputUnavailableWindows =>
      'Perangkat menolak akses eksklusif, jadi lagu ini diputar lewat mixer Windows. Tutup aplikasi lain yang memakai perangkat, atau izinkan kontrol eksklusif di properti suara perangkat di Windows.';

  @override
  String get exclusiveOutputUnavailableMacos =>
      'Aplikasi lain sedang memegang perangkat output, jadi lagu ini diputar lewat mixer sistem.';

  @override
  String get exclusiveOutputUnavailableLinux =>
      'Perangkat ALSA sedang dipakai, biasanya oleh sound server, jadi lagu ini diputar lewat sound server. Ubah profil kartu ke Off di pengaturan suara, atau pilih perangkat lain.';

  @override
  String get exclusiveOutputDevice => 'Perangkat output';

  @override
  String get exclusiveOutputDeviceFirst => 'Kartu suara pertama';

  @override
  String get exclusiveOutputNoDevices => 'Tidak ada perangkat playback ALSA';

  @override
  String get usbDirect => 'Driver Direct USB';

  @override
  String get usbDirectDescription =>
      'Gunakan audio USB eksklusif pada FLAC/WAV, DSF/DFF, dan WavPack DSD dengan izin USB Android. DSD Native butuh DAC yang didukung dan dikenali. Format PCM lain akan diputar normal. Berlaku di lagu selanjutnya.';

  @override
  String get usbDsdOverPcm => 'DSD melalui PCM (DoP)';

  @override
  String get usbDsdOverPcmDescription =>
      'Hidupkan bila DAC Anda mendukung DoP. Mengirim DSF/DFF & WavPack DSD dalam carrier PCM saat DSD native tidak tersedia. Bila tak didukung mungkin membuat suara desis; biarkan mati bila menggunakan headset USB biasa.';

  @override
  String get usbDsdUnsupported =>
      'Format DSD/DAC terhubung tidak didukung. Pemutaran berhenti.';

  @override
  String get usbPermissionDenied =>
      'Izin USB tidak diberikan. Menggunakan pemutaran normal.';

  @override
  String get usbBitPerfectPending =>
      'Menunggu lagu selanjutnya dan output USB yang didukung.';

  @override
  String get usbOutputReady =>
      'Output USB siap. Mulai pemutaran untuk mengaktifkannya.';

  @override
  String get usbOutputPreparing => 'Menyiapkan output audio USB...';

  @override
  String get usbOutputCancelled =>
      'Persiapan USB dibatalkan. Pilih lagu untuk mencoba lagi.';

  @override
  String get usbBitPerfectNoDevice =>
      'Tiada DAC USB terhubung. Menggunakan pemutaran normal.';

  @override
  String get usbBitPerfectFallback =>
      'Perangkat atau format audio tidak mendukung output Bit-Perfect. Menggunakan pemutaran normal.';

  @override
  String get usbBitPerfectRouteChanged =>
      'Rute audio USB berubah. Pemutaran dijeda; pilih lagu untuk menghubungkan ulang.';

  @override
  String get upgradeIntroContinue => 'Lanjut';

  @override
  String get cacheMotionArtwork => 'Cover bergerak offline';

  @override
  String get cacheMotionArtworkDesc =>
      'Video album yang didownload. Menghapusnya tidak akan menghapus file musik dan cover biasa.';

  @override
  String get nowPlayingVolume => 'Volume';

  @override
  String get appearanceStyle => 'Gaya Aplikasi';

  @override
  String get appearanceAccentRed => 'Merah (default)';

  @override
  String get appearanceAccentOrange => 'Oranye';

  @override
  String get appearanceAccentGreen => 'Hijau';

  @override
  String get appearanceAccentTeal => 'Hijau kebiruan';

  @override
  String get appearanceAccentBlue => 'Biru';

  @override
  String get appearanceAccentPurple => 'Ungu';

  @override
  String get appearanceAccentPink => 'Merah muda';

  @override
  String get appearanceGlassClarity => 'Kebeningan kaca';

  @override
  String get appearanceGlassOutlines => 'Garis tepi kaca';

  @override
  String get appearanceGlassOutlinesSubtitle =>
      'Tampilkan garis dekoratif di tepi kaca Toadplayer. Mematikannya tetap mempertahankan blur dan pembiasan.';

  @override
  String get appearanceGlassClaritySubtitle =>
      'Atur kebeningan kaca menu dan navigasi Toadplayer. Kontras teks tetap terjaga.';

  @override
  String get appearanceGlassTinted => 'Berwarna';

  @override
  String get appearanceGlassClear => 'Bening';

  @override
  String get appearanceGlassClearPerformance =>
      'Kaca yang terlalu bening dapat memperlambat performa perangkat lama. Kurangi kebeningan jika perlu.';

  @override
  String appearanceGlassClarityBlurOff(String setting) {
    return 'Efek kaca mati di perangkat ini. Hidupkan \"$setting\" untuk atur kebeningan kaca.';
  }

  @override
  String appearanceGlassClarityHighContrast(String setting) {
    return 'Sistem meminta peningkatan kontras, sehingga kaca menjadi buram penuh. Aktifkan “$setting” untuk tetap menggunakan efek kaca; kontras teks tetap dipertahankan.';
  }

  @override
  String get appearanceUseSystemFont => 'Gunakan font sistem';

  @override
  String get appearanceUseSystemFontSubtitle =>
      'Menggunakan font default perangkat untuk aplikasi.';

  @override
  String get appName => 'Toadplayer';

  @override
  String get navHome => 'Beranda';

  @override
  String get navLibrary => 'Koleksi';

  @override
  String get navSettings => 'Setelan';

  @override
  String get navStore => 'Repo';

  @override
  String get homeTitle => 'Beranda';

  @override
  String get homeEmptyTitle => 'Belum ada provider penelusuran';

  @override
  String get homeEmptySubtitle => 'Instal ekstensi untuk melanjutkan.';

  @override
  String get homeRecent => 'Terbaru';

  @override
  String get searchRecentlySearched => 'Baru Ditelusuri';

  @override
  String get searchLibraryPrompt => 'Telusuri Koleksimu';

  @override
  String get searchBrowse => 'Jelajahi';

  @override
  String get historyFilterAll => 'Semua';

  @override
  String get historyFilterAlbums => 'Album';

  @override
  String get historyFilterSingles => 'Single';

  @override
  String get libraryRecentlyAdded => 'Baru Ditambahkan';

  @override
  String get libraryDownloads => 'Download';

  @override
  String get libraryNoActiveDownloads => 'Tidak sedang download';

  @override
  String get librarySearchHint => 'Telusuri koleksimu';

  @override
  String get libraryEmptyCollection => 'Musik kamu akan muncul di sini';

  @override
  String get libraryFolders => 'Folder';

  @override
  String libraryFolderCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count folder',
      one: '1 folder',
    );
    return '$_temp0';
  }

  @override
  String get libraryFoldersEmptyTitle => 'Belum ada folder';

  @override
  String get libraryFoldersEmptyMessage =>
      'Unduh lagu atau tambahkan folder musik di setelan Koleksi Lokal untuk menjelajahinya per folder.';

  @override
  String get libraryFolderMissing => 'Folder ini tidak ada lagi di Koleksi';

  @override
  String get libraryFoldersLoadFailed => 'Tidak dapat membaca folder';

  @override
  String get settingsTitle => 'Setelan';

  @override
  String get settingsDownload => 'Download';

  @override
  String get settingsAppearance => 'Tampilan';

  @override
  String get settingsExtensions => 'Ekstensi';

  @override
  String get settingsAbout => 'Tentang';

  @override
  String get downloadTitle => 'Download';

  @override
  String get downloadAskQualitySubtitle =>
      'Tampilkan pemilih kualitas setiap mendownload';

  @override
  String get downloadFilenameFormat => 'Format Nama File';

  @override
  String get downloadSingleFilenameFormat => 'Format Nama File Single';

  @override
  String get downloadSingleFilenameFormatDescription =>
      'Atur nama file untuk single dan EP. Menggunakan tag yang sama dengan format album.';

  @override
  String get downloadFolderOrganization => 'Atur Folder';

  @override
  String get downloadFolderTemplate => 'Struktur Folder Kustom';

  @override
  String get downloadFolderTemplateDescription =>
      'Gunakan tag penamaan dan / untuk subfolder. Menyimpan akan mengganti susunan album dan single bawaan. Nama folder kosong memakai Unknown.';

  @override
  String get folderOrganizationCustom => 'Template kustom';

  @override
  String get folderTemplateInvalid =>
      'Masukkan path folder relatif dengan tag yang didukung. Folder kosong, . dan .. tidak diizinkan.';

  @override
  String get folderTemplatePreview => 'Contoh path folder';

  @override
  String get folderTemplatePreviewFailed => 'Preview tidak tersedia';

  @override
  String get appearanceTitle => 'Tampilan';

  @override
  String get appearanceThemeSystem => 'Sistem';

  @override
  String get appearanceThemeLight => 'Terang';

  @override
  String get appearanceThemeDark => 'Gelap';

  @override
  String get appearanceDynamicColor => 'Warna Dinamis';

  @override
  String get appearanceDynamicColorSubtitle => 'Gunakan warna dari wallpapermu';

  @override
  String get appearanceHistoryView => 'Tampilan Koleksi';

  @override
  String get appearanceHistoryViewList => 'Daftar';

  @override
  String get appearanceHistoryViewGrid => 'Kisi';

  @override
  String get optionsPrimaryProvider => 'Provider Utama';

  @override
  String get optionsPrimaryProviderSubtitle =>
      'Layanan yang digunakan untuk menelusuri lagu atau album';

  @override
  String optionsUsingExtension(String extensionName) {
    return 'Menggunakan ekstensi: $extensionName';
  }

  @override
  String get optionsDefaultSearchTab => 'Tab Penelusuran Default';

  @override
  String get optionsDefaultSearchTabSubtitle =>
      'Pilih tab yang terbuka terlebih dahulu untuk hasil penelusuran baru.';

  @override
  String get optionsAutoFallback => 'Layanan Cadangan';

  @override
  String get optionsAutoFallbackSubtitle =>
      'Gunakan layanan lain jika download gagal';

  @override
  String get optionsEmbedLyrics => 'Penyematan Lirik';

  @override
  String get optionsEmbedLyricsSubtitle =>
      'Simpan lirik berwaktu dalam file lagu yang didownload';

  @override
  String get optionsReplayGain => 'ReplayGain';

  @override
  String get optionsReplayGainSubtitleOn =>
      'Pindai kenyaringan dan sematkan tag ReplayGain (EBU R128)';

  @override
  String get optionsReplayGainSubtitleOff =>
      'Mati: tidak ada tag normalisasi kenyaringan';

  @override
  String get trackReplayGain => 'Pindai ulang ReplayGain';

  @override
  String get trackReplayGainScanning => 'Menganalisis kenyaringan...';

  @override
  String get trackReplayGainSuccess => 'Tag ReplayGain ditambahkan';

  @override
  String get trackReplayGainFailed => 'Gagal menambahkan tag ReplayGain';

  @override
  String get trackRemoveReplayGain => 'Hapus ReplayGain';

  @override
  String get trackRemoveReplayGainSuccess => 'Tag ReplayGain dihapus';

  @override
  String get trackRemoveReplayGainFailed => 'Gagal menghapus tag ReplayGain';

  @override
  String get replayGainRemoving => 'Menghapus ReplayGain...';

  @override
  String replayGainRemoveConfirmMessage(int count) {
    return 'Hapus tag ReplayGain dari $count lagu? Audio, cover, dan metadata lain akan tetap disimpan.';
  }

  @override
  String selectionRemoveReplayGainCount(int count) {
    return 'Hapus RG ($count)';
  }

  @override
  String replayGainRemoveBatchSuccess(int success, int total) {
    return 'ReplayGain dihapus pada $success dari $total lagu';
  }

  @override
  String selectionReplayGainCount(int count) {
    return 'ReplayGain ($count)';
  }

  @override
  String get replayGainBatchConfirmTitle => 'Tambah ReplayGain';

  @override
  String replayGainBatchConfirmMessage(int count) {
    return 'Analisis kenyaringan dan tambah tag ReplayGain ke $count lagu?';
  }

  @override
  String get replayGainBatchAnalyzing => 'Menganalisis ReplayGain...';

  @override
  String replayGainBatchSuccess(int success, int total) {
    return 'ReplayGain ditambah ke $success dari $total lagu';
  }

  @override
  String get replayGainUnsupportedDecoder =>
      'Beberapa lagu tidak dapat dianalisis karena decoder ReplayGain tidak mendukung codec audio-nya. File tidak diubah.';

  @override
  String get optionsArtistTagMode => 'Mode Tag Artis';

  @override
  String get metadataSeparators => 'Pemisah metadata';

  @override
  String get metadataSeparatorsDescription =>
      'Pilih cara metadata dipisah dengan koma atau titik koma di download berikutnya. Pemisah artis kustom menggunakan satu tag tergabung; termasuk Artis utama saja. Nama dengan & atau / tidak akan diubah.';

  @override
  String get metadataSeparatorSource => 'Ikuti format sumber';

  @override
  String get metadataSeparatorComma => 'Koma (,)';

  @override
  String get metadataSeparatorSemicolon => 'Titik koma (;)';

  @override
  String get metadataSeparatorSlash => 'Garis miring (/)';

  @override
  String get metadataSeparatorCustom => 'Pemisah kustom';

  @override
  String get metadataSeparatorPreview => 'Preview';

  @override
  String get metadataSeparatorInvalid =>
      'Gunakan 1–16 karakter tanpa baris baru atau karakter kontrol.';

  @override
  String get optionsArtistTagModeDescription =>
      'Pilih cara mencantumkan artis di tag tersemat.';

  @override
  String get optionsArtistTagModeJoined => 'Gabungkan semuanya';

  @override
  String get optionsArtistTagModeJoinedSubtitle =>
      'Tulis semua ARTIS dalam satu tag \"Artis A, Artis B\", mendukung lebih banyak pemutar.';

  @override
  String get optionsArtistTagModeSplitVorbis =>
      'Pisahkan tag (hanya FLAC/Opus)';

  @override
  String get optionsArtistTagModeSplitVorbisSubtitle =>
      'Pisahkan tag hanya untuk satu artis untuk file FLAC/Opus; MP3 dan M4A tetap tergabung.';

  @override
  String get optionsArtistTagModePrimary => 'Artis utama saja';

  @override
  String get optionsArtistTagModePrimarySubtitle =>
      'Hanya cantumkan artis utama, seperti \"Artis A\", pada Artis dan Artis Album di semua format, jadi pemutar hanya memunculkan satu artis.';

  @override
  String get optionsExtensionStore => 'Repo';

  @override
  String get optionsExtensionStoreSubtitle => 'Tampilkan tab Repo di navigasi';

  @override
  String get optionsCheckUpdates => 'Periksa Update';

  @override
  String get optionsCheckUpdatesSubtitle => 'Beritahu saat versi baru tersedia';

  @override
  String get optionsUpdateChannel => 'Channel Update';

  @override
  String get optionsUpdateChannelStable => 'Versi Stabil';

  @override
  String get optionsUpdateChannelPreview => 'Versi Preview';

  @override
  String get optionsUpdateChannelWarning =>
      'Mungkin ada bug atau fitur belum selesai di versi Preview';

  @override
  String get optionsClearHistory => 'Hapus Histori Download';

  @override
  String get optionsClearHistorySubtitle => 'Hapus semua lagu dari histori';

  @override
  String get optionsDetailedLogging => 'Logging Mendetail';

  @override
  String get optionsDetailedLoggingOn => 'Log mendetail sedang direkam';

  @override
  String get optionsDetailedLoggingOff => 'Hidupkan untuk laporan bug';

  @override
  String get extensionsTitle => 'Ekstensi';

  @override
  String get extensionsDisabled => 'Mati';

  @override
  String extensionsVersion(String version) {
    return 'Versi $version';
  }

  @override
  String get extensionsUninstall => 'Uninstal';

  @override
  String get storeTitle => 'Repo';

  @override
  String get storeSearch => 'Cari ekstensi...';

  @override
  String get storeInstall => 'Instal';

  @override
  String get storeInstalled => 'Terinstal';

  @override
  String get storeUpdate => 'Update';

  @override
  String get aboutTitle => 'Tentang';

  @override
  String get aboutContributors => 'Kontributor';

  @override
  String get aboutMobileDeveloper => 'Sang developer utama';

  @override
  String get aboutLogoArtist =>
      'Artist berbakat yang membuat logo indah untuk aplikasi kami!';

  @override
  String get aboutTranslators => 'Penerjemah';

  @override
  String get aboutSpecialThanks => 'Terima Kasih Khusus';

  @override
  String get aboutLinks => 'Link';

  @override
  String get aboutMobileSource => 'Source code';

  @override
  String get aboutLyricsWebsite => 'Website lirik';

  @override
  String get aboutServiceStatus => 'Status layanan';

  @override
  String get aboutReportIssue => 'Laporkan masalah';

  @override
  String get aboutReportIssueSubtitle => 'Laporkan masalah yang kamu temui';

  @override
  String get aboutFeatureRequest => 'Minta fitur baru';

  @override
  String get aboutFeatureRequestSubtitle =>
      'Sarankan fitur baru untuk aplikasi';

  @override
  String get aboutTelegramChannel => 'Channel Telegram';

  @override
  String get aboutTelegramChannelSubtitle => 'Pengumuman dan update';

  @override
  String get aboutTelegramChat => 'Komunitas Telegram';

  @override
  String get aboutTelegramChatSubtitle => 'Chat dengan pengguna lain';

  @override
  String get aboutSocial => 'Media Sosial';

  @override
  String get aboutApp => 'Aplikasi';

  @override
  String get aboutVersion => 'Versi';

  @override
  String get aboutBinimumDesc =>
      'Pembuat API QQDL & HiFi. Proyeknya membantu membuat dukungan download lossless.';

  @override
  String get aboutSachinsenalDesc =>
      'Pembuat proyek HiFi asli. Sebuah fondasi untuk integrasi sumber lossless.';

  @override
  String get aboutUnituneDesc =>
      'Resolver link musik open-source oleh Flaze, untuk melakukan match link cadangan cross-platform.';

  @override
  String get aboutMusicBrainzDesc =>
      'Database musik terbuka yang dirawat oleh MetaBrainz dan komunitasnya, untuk merekam cross-reference.';

  @override
  String get aboutSquiglyDesc =>
      'Layanan link musik universal oleh Liam Macmillan, digunakan untuk resolver fallback cross-platform final.';

  @override
  String get aboutAppDescription =>
      'Telusuri metadata musik, kelola ekstensi, dan atur Koleksimu.';

  @override
  String get artistAlbums => 'Album';

  @override
  String get artistSingles => 'Single & EP';

  @override
  String get artistCompilations => 'Kompilasi';

  @override
  String get artistPopular => 'Populer';

  @override
  String get artistLatestRelease => 'Latest Release';

  @override
  String get artistTopSongs => 'Top Songs';

  @override
  String artistMonthlyListeners(String count) {
    return '$count pendengar bulanan';
  }

  @override
  String get trackMetadataService => 'Layanan';

  @override
  String get trackMetadataPlay => 'Putar';

  @override
  String get trackMetadataShare => 'Bagikan';

  @override
  String get trackMetadataDelete => 'Hapus';

  @override
  String get setupGrantPermission => 'Berikan Izin';

  @override
  String get setupSkip => 'Lewati untuk sekarang';

  @override
  String get setupStorageAccessRequired => 'Akses Penyimpanan Diperlukan';

  @override
  String get setupStorageAccessMessageAndroid11 =>
      'Android 11+ butuh izin \"Akses semua file\" untuk menyimpan file ke folder download pilihanmu.';

  @override
  String get setupOpenSettings => 'Buka Setelan';

  @override
  String get setupPermissionDeniedMessage =>
      'Izin ditolak. Harap berikan semua izin untuk melanjutkan.';

  @override
  String setupPermissionRequired(String permissionType) {
    return 'Izin $permissionType Diperlukan';
  }

  @override
  String setupPermissionRequiredMessage(String permissionType) {
    return 'Izin $permissionType diperlukan untuk pengalaman terbaik. Anda dapat mengubahnya nanti di Setelan.';
  }

  @override
  String get setupUseDefaultFolder => 'Gunakan Folder Default?';

  @override
  String get setupNoFolderSelected =>
      'Tidak ada folder dipilih. Apakah kamu ingin menggunakan folder Musik default?';

  @override
  String get setupUseDefault => 'Gunakan Default';

  @override
  String get setupDownloadLocationTitle => 'Lokasi Download';

  @override
  String get setupDownloadLocationIosMessage =>
      'Di iOS, download disimpan ke folder Documents. Kamu dapat mengaksesnya melalui aplikasi Files.';

  @override
  String get setupAppDocumentsFolder => 'Folder Documents Aplikasi';

  @override
  String get setupAppDocumentsFolderSubtitle =>
      'Disarankan - dapat diakses via aplikasi Files';

  @override
  String get setupChooseFromFiles => 'Pilih dari Files';

  @override
  String get setupChooseFromFilesSubtitle => 'Pilih lokasi iCloud atau lainnya';

  @override
  String get setupIosEmptyFolderWarning =>
      'Batasan iOS: Folder kosong tidak dapat dipilih. Pilih folder dengan minimal satu file.';

  @override
  String get setupIcloudNotSupported =>
      'iCloud Drive tidak didukung. Silakan gunakan folder Dokumen di aplikasi.';

  @override
  String get setupDownloadInFlac =>
      'Download musik dengan kualitas loseless dan Hi-Res';

  @override
  String get setupStorageGranted => 'Akses Penyimpanan Diberikan!';

  @override
  String get setupStorageRequired => 'Butuh Akses Penyimpanan';

  @override
  String get setupStorageDescription =>
      'Toadplayer butuh akses penyimpanan untuk menyimpan hasil download.';

  @override
  String get setupNotificationGranted => 'Akses Notifikasi Diberikan!';

  @override
  String get setupNotificationEnable => 'Aktifkan Akses Notifikasi';

  @override
  String get setupFolderChoose => 'Pilih Folder Download';

  @override
  String get setupFolderDescription =>
      'Pilih folder untuk menyimpan hasil download Anda.';

  @override
  String get setupSelectFolder => 'Pilih Folder';

  @override
  String get setupEnableNotifications => 'Aktifkan Akses Notifikasi';

  @override
  String get setupNotificationBackgroundDescription =>
      'Dapatkan informasi progres download. Akan membantu mengetahui progres download lagumu selama di luar aplikasi.';

  @override
  String get setupSkipForNow => 'Lewati saja';

  @override
  String get setupNearbyEnable => 'Izinkan Perangkat di Sekitar';

  @override
  String get setupNearbyDescription =>
      'Toadplayer Link memakainya untuk menemukan komputermu di jaringan yang sama, dan penyimpanan jaringan memerlukannya untuk menjangkau server di rumah.';

  @override
  String get setupNearbyGranted => 'Perangkat di Sekitar Diizinkan!';

  @override
  String get permissionNearbyDevices => 'Perangkat di sekitar';

  @override
  String get whatsNewLinkNearbyAllow => 'Izinkan perangkat di sekitar';

  @override
  String get whatsNewLinkNearbyGranted => 'Perangkat di sekitar diizinkan';

  @override
  String get whatsNewNearbyTitle => 'Perangkat di sekitar';

  @override
  String get whatsNewNearbyDesc =>
      'Android kini meminta izin sebelum aplikasi bisa menjangkau perangkat lain di jaringanmu. Toadplayer memerlukannya untuk:';

  @override
  String get whatsNewNearbyLinkTitle => 'Menemukan komputermu';

  @override
  String get whatsNewNearbyLinkBody =>
      'Toadplayer Link mencari komputermu di Wi-Fi yang sama dan tetap terhubung dengannya.';

  @override
  String get whatsNewNearbyStorageTitle => 'Penyimpanan jaringan';

  @override
  String get whatsNewNearbyStorageBody =>
      'Putar musik dari NAS atau server di rumah lewat SMB atau WebDAV.';

  @override
  String get whatsNewNearbyPrivateTitle => 'Hanya perangkatmu sendiri';

  @override
  String get whatsNewNearbyPrivateBody =>
      'Toadplayer memakainya hanya untuk menjangkau perangkat di jaringanmu, tidak pernah untuk mengetahui lokasimu.';

  @override
  String get whatsNewNearbyRefused =>
      'Tidak diizinkan. Toadplayer Link dan penyimpanan jaringan tidak aktif sampai kamu mengizinkan Perangkat di sekitar untuk Toadplayer di pengaturan Android.';

  @override
  String get setupNext => 'Lanjut';

  @override
  String get setupGetStarted => 'Mulai';

  @override
  String get setupAllowAccessToManageFiles =>
      'Harap aktifkan \"Izinkan akses untuk mengelola semua file\" di layar berikutnya.';

  @override
  String get setupLanguageTitle => 'Pilih Bahasa';

  @override
  String get setupLanguageDescription =>
      'Pilih bahasa pilihan untuk aplikasi ini. Kamu dapat mengubahnya nanti di Setelan.';

  @override
  String get setupLanguageSystemDefault => 'Default Sistem';

  @override
  String get dialogCancel => 'Batal';

  @override
  String get dialogSave => 'Simpan';

  @override
  String get dialogDelete => 'Hapus';

  @override
  String get dialogRetry => 'Coba Lagi';

  @override
  String get dialogClear => 'Hapus';

  @override
  String get dialogDone => 'Selesai';

  @override
  String get dialogImport => 'Impor';

  @override
  String get dialogDownload => 'Download';

  @override
  String get previewPlay => 'Putar preview';

  @override
  String get previewStop => 'Hentikan preview';

  @override
  String get previewUnavailable => 'Preview tidak tersedia';

  @override
  String get dialogDiscard => 'Buang';

  @override
  String get dialogRemove => 'Hapus';

  @override
  String get dialogUninstall => 'Uninstal';

  @override
  String get dialogDiscardChanges => 'Buang Perubahan?';

  @override
  String get dialogUnsavedChanges =>
      'Ada perubahan yang belum disimpan. Kamu ingin membuangnya?';

  @override
  String get dialogClearAll => 'Hapus Semua';

  @override
  String get dialogRemoveExtension => 'Uninstal Ekstensi';

  @override
  String get dialogRemoveExtensionMessage =>
      'Kamu yakin ingin meng-uninstal ekstensi ini? Ini tidak dapat dibatalkan.';

  @override
  String get dialogUninstallExtension => 'Uninstal Ekstensi?';

  @override
  String dialogUninstallExtensionMessage(String extensionName) {
    return 'Kamu yakin ingin meng-uninstal $extensionName?';
  }

  @override
  String get dialogClearHistoryTitle => 'Hapus Histori';

  @override
  String get dialogClearHistoryMessage =>
      'Apakah kamu yakin ingin menghapus semua histori download? Ini tidak dapat dibatalkan.';

  @override
  String get dialogDeleteSelectedTitle => 'Hapus Terpilih';

  @override
  String dialogDeleteSelectedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'lagu',
      one: 'lagu',
    );
    return 'Hapus $count $_temp0 dari histori?\n\nIni juga akan menghapus file dari penyimpanan.';
  }

  @override
  String get dialogImportPlaylistTitle => 'Impor Playlist';

  @override
  String dialogImportPlaylistMessage(int count) {
    return 'Menemukan $count lagu di file playlist. Tambahkan ke antrean download?';
  }

  @override
  String csvImportTracks(int count) {
    return '$count lagu dari CSV';
  }

  @override
  String get collectionExportM3u => 'Ekspor sebagai M3U8';

  @override
  String collectionExportM3uDone(int exported, int total) {
    return 'Mengekspor $exported dari $total lagu';
  }

  @override
  String get collectionExportM3uNone =>
      'Tidak ada hasil download untuk diekspor';

  @override
  String get collectionExportM3uFailed => 'Ekspor gagal';

  @override
  String get trackOpenOn => 'Buka di...';

  @override
  String get trackOpenOnNoLinks =>
      'Tidak menemukan link platform untuk lagu ini.';

  @override
  String get libraryReviewDuplicates => 'Tinjau duplikat';

  @override
  String get libraryReviewDuplicatesSubtitle =>
      'Tinjau file lagu ganda di perangkat';

  @override
  String get duplicatesTitle => 'Duplikat';

  @override
  String get duplicatesEmpty => 'Tidak menemukan lagu duplikat.';

  @override
  String get duplicatesKeepBest => 'Simpan kualitas terbaik';

  @override
  String get duplicatesKeepBestAll => 'Simpan semua kualitas terbaik';

  @override
  String duplicatesKeepBestAllMessage(int count, int groupCount) {
    String _temp0 = intl.Intl.pluralLogic(
      groupCount,
      locale: localeName,
      other: 'lagu',
      one: 'lagu',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'lagu',
      one: 'lagu',
    );
    return 'Simpan kualitas terbaik dari $groupCount $_temp0 dan hapus $count kualitas terendah dari $_temp1?\n\nFile terhapus akan dihapus dari penyimpanan.';
  }

  @override
  String duplicatesKeepBestMessage(int count, String trackName) {
    return 'Hapus $count salinan kualitas rendah lagu \"$trackName\"?';
  }

  @override
  String duplicatesDeleteCopyMessage(String trackName) {
    return 'Hapus salinan lagu \"$trackName\"?';
  }

  @override
  String snackbarAddedToQueue(String trackName) {
    return 'Menambahkan \"$trackName\" ke antrean';
  }

  @override
  String snackbarAddedTracksToQueue(int count) {
    return 'Menambahkan $count lagu ke antrean';
  }

  @override
  String snackbarAlreadyDownloaded(String trackName) {
    return '\"$trackName\" sudah didownload';
  }

  @override
  String snackbarAlreadyInLibrary(String trackName) {
    return '\"$trackName\" sudah ada di Koleksi';
  }

  @override
  String get snackbarHistoryCleared => 'Histori dihapus';

  @override
  String snackbarDeletedTracks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'lagu',
      one: 'lagu',
    );
    return 'Menghapus $count $_temp0';
  }

  @override
  String snackbarCannotOpenFile(String error) {
    return 'Tidak dapat membuka file: $error';
  }

  @override
  String get snackbarViewQueue => 'Lihat Antrean';

  @override
  String snackbarUrlCopied(String platform) {
    return 'URL $platform disalin ke clipboard';
  }

  @override
  String get snackbarFileNotFound => 'File tidak ditemukan';

  @override
  String get snackbarSelectExtFile => 'Harap pilih file .toadplayer-ext';

  @override
  String get snackbarProviderPrioritySaved => 'Prioritas provider disimpan';

  @override
  String get snackbarMetadataProviderSaved =>
      'Prioritas provider metadata disimpan';

  @override
  String snackbarExtensionInstalled(String extensionName) {
    return '$extensionName diinstal.';
  }

  @override
  String snackbarExtensionUpdated(String extensionName) {
    return '$extensionName diupdate.';
  }

  @override
  String get snackbarFailedToInstall => 'Gagal menginstal ekstensi';

  @override
  String get snackbarFailedToUpdate => 'Gagal mengupdate ekstensi';

  @override
  String get errorRateLimited => 'Dibatasi';

  @override
  String get errorRateLimitedMessage =>
      'Terlalu banyak permintaan. Tunggu sebentar sebelum menelusuri lagi.';

  @override
  String get errorNoTracksFound => 'Tidak ada lagu ditemukan';

  @override
  String get searchEmptyResultSubtitle => 'Coba kata kunci lain';

  @override
  String get errorUrlNotRecognized => 'Link tidak dikenali';

  @override
  String get errorUrlNotRecognizedMessage =>
      'Link ini tidak didukung. Pastikan URL sudah benar dan ekstensi yang sesuai sudah diinstal.';

  @override
  String get errorUrlFetchFailed =>
      'Konten dari link ini gagal dimuat. Silakan coba lagi.';

  @override
  String errorMissingExtensionSource(String item) {
    return 'Tidak dapat memuat $item: sumber ekstensi tidak ada';
  }

  @override
  String get actionPause => 'Jeda';

  @override
  String get actionResume => 'Lanjutkan';

  @override
  String get actionCancel => 'Batal';

  @override
  String get actionSelectAll => 'Pilih Semua';

  @override
  String get actionDeselect => 'Batal Pilih';

  @override
  String selectionSelected(int count) {
    return '$count dipilih';
  }

  @override
  String get selectionAllSelected => 'Semua lagu dipilih';

  @override
  String get selectionSelectToDelete => 'Pilih lagu untuk dihapus';

  @override
  String progressFetchingMetadata(int current, int total) {
    return 'Mengambil metadata... $current/$total';
  }

  @override
  String get progressReadingCsv => 'Membaca CSV...';

  @override
  String get searchSongs => 'Lagu';

  @override
  String get searchArtists => 'Artis';

  @override
  String get searchAlbums => 'Album';

  @override
  String get searchPlaylists => 'Playlist';

  @override
  String get searchShowAll => 'Tampilkan semua';

  @override
  String searchShowAllCategory(String category) {
    return 'Tampilkan semua $category';
  }

  @override
  String get searchSortTitle => 'Urutkan Hasil';

  @override
  String get searchSortDefault => 'Default';

  @override
  String get searchSortTitleAZ => 'Judul (A-Z)';

  @override
  String get searchSortTitleZA => 'Judul (Z-A)';

  @override
  String get searchSortArtistAZ => 'Artis (A-Z)';

  @override
  String get searchSortArtistZA => 'Artis (Z-A)';

  @override
  String get searchSortDurationShort => 'Durasi (Terpendek)';

  @override
  String get searchSortDurationLong => 'Durasi (Terpanjang)';

  @override
  String get searchSortDateOldest => 'Tanggal Rilis (Terlama)';

  @override
  String get searchSortDateNewest => 'Tanggal Rilis (Terbaru)';

  @override
  String get tooltipPlay => 'Putar';

  @override
  String get filenameFormat => 'Format Nama File';

  @override
  String get filenameShowAdvancedTags => 'Tampilkan tag lanjutan';

  @override
  String get filenameShowAdvancedTagsDescription =>
      'Aktifkan tag yang diformat untuk padding lagu dan pola tanggal';

  @override
  String get folderOrganizationNone => 'Tidak ada';

  @override
  String get folderOrganizationByPlaylist => 'Menurut Playlist';

  @override
  String get folderOrganizationByPlaylistSubtitle =>
      'Pisahkan folder untuk setiap playlist';

  @override
  String get folderOrganizationByArtist => 'Menurut Artis';

  @override
  String get folderOrganizationByAlbum => 'Menurut Album';

  @override
  String get folderOrganizationByArtistAlbum => 'Menurut Artis/Album';

  @override
  String get folderOrganizationDescription =>
      'Atur hasil download ke dalam folder';

  @override
  String get folderOrganizationNoneSubtitle => 'Semua file di folder download';

  @override
  String get folderOrganizationByArtistSubtitle =>
      'Pisahkan folder untuk setiap artis';

  @override
  String get folderOrganizationByAlbumSubtitle =>
      'Pisahkan folder untuk setiap album';

  @override
  String get folderOrganizationByArtistAlbumSubtitle =>
      'Satukan folder untuk artis dan album';

  @override
  String get updateAvailable => 'Update Tersedia';

  @override
  String get updateLater => 'Nanti';

  @override
  String get updateStartingDownload => 'Memulai download...';

  @override
  String get updateDownloadFailed => 'Download gagal';

  @override
  String get updateFailedMessage => 'Gagal mendownload update';

  @override
  String get updateNewVersionReady => 'Versi baru tersedia';

  @override
  String get updateRequiredTitle => 'Harus update';

  @override
  String updateRequiredNotice(int count) {
    return 'Versi yang Anda gunakan, $count sudah tidak didukung. Update untuk terus menggunakan aplikasi.';
  }

  @override
  String get updateCurrent => 'Saat ini';

  @override
  String get updateNew => 'Baru';

  @override
  String get updateDownloading => 'Mendownload...';

  @override
  String get updateWhatsNew => 'Yang Baru';

  @override
  String get updateDownloadInstall => 'Download & Instal';

  @override
  String get updateDontRemind => 'Tidak usah';

  @override
  String get updateViewRelease => 'Lihat Rilisan';

  @override
  String get updateStartingInstaller => 'Memulai instaler...';

  @override
  String get updateMacInstallHint =>
      'Image disk terbuka di Finder. Keluar dari Toadplayer, lalu tarik Toadplayer dari image disk ke Aplikasi dan ganti versi lamanya.';

  @override
  String get updateQuitApp => 'Keluar Toadplayer';

  @override
  String get updateReadyToRestart =>
      'Update diinstal. Restart Toadplayer untuk menggunakannya.';

  @override
  String get updateRestartNow => 'Restart Sekarang';

  @override
  String get providerPriorityTitle => 'Prioritas Provider';

  @override
  String get providerPriorityDescription =>
      'Seret untuk mengatur ulang urutan provider download. Aplikasi akan mencoba provider dari atas ke bawah saat mendownload lagu.';

  @override
  String get providerPriorityInfo =>
      'Jika lagu tidak tersedia di provider pertama, aplikasi akan otomatis mencoba yang berikutnya.';

  @override
  String get providerPriorityFallbackExtensionsDescription =>
      'Pilih ekstensi download terinstal yang akan digunakan sebagai cadangan.';

  @override
  String get providerPriorityFallbackExtensionsHint =>
      'Hanya ekstensi dengan provider download aktif yang ada di sini.';

  @override
  String get providerExtension => 'Ekstensi';

  @override
  String get metadataProviderPriorityTitle => 'Prioritas Metadata';

  @override
  String get metadataProviderPriorityDescription =>
      'Seret untuk mengatur urutan provider metadata. Aplikasi akan mencoba provider dari atas ke bawah saat mencari lagu dan mengambil metadata.';

  @override
  String get metadataProviderPriorityInfo =>
      'Deezer tidak punya pembatasan dan disarankan jadi utama. Spotify mungkin ada bila banyak permintaan.';

  @override
  String get logTitle => 'Log';

  @override
  String get logCopied => 'Log disalin ke clipboard';

  @override
  String get logSearchHint => 'Telusuri log...';

  @override
  String get logFilterLevel => 'Level';

  @override
  String get logFilterSection => 'Filter';

  @override
  String get logShareLogs => 'Bagikan log';

  @override
  String get logClearLogs => 'Hapus log';

  @override
  String get logClearLogsTitle => 'Hapus Log';

  @override
  String get logClearLogsMessage =>
      'Apakah kamu yakin ingin menghapus semua log?';

  @override
  String get logFilterBySeverity => 'Filter log menurut keparahan';

  @override
  String get logNoLogsYet => 'Tidak ada log';

  @override
  String get logNoLogsYetSubtitle =>
      'Log akan muncul di sini saat Anda menggunakan aplikasi';

  @override
  String logEntriesFiltered(int count) {
    return 'Entri ($count difilter)';
  }

  @override
  String logEntries(int count) {
    return 'Entri ($count)';
  }

  @override
  String get channelStable => 'Stabil';

  @override
  String get channelPreview => 'Pratinjau';

  @override
  String get sectionSearchSource => 'Sumber Penelusuran';

  @override
  String get sectionDownload => 'Download';

  @override
  String get sectionPerformance => 'Performa';

  @override
  String get sectionApp => 'Aplikasi';

  @override
  String get sectionData => 'Data';

  @override
  String get sectionDebug => 'Debug';

  @override
  String get sectionService => 'Layanan';

  @override
  String get sectionAudioQuality => 'Kualitas Audio';

  @override
  String get sectionFileSettings => 'Setelan File';

  @override
  String get sectionLyrics => 'Lirik';

  @override
  String get lyricsKeepScreenOn => 'Cegah layar mati saat melihat lirik';

  @override
  String get lyricsKeepScreenOnSubtitle =>
      'Mencegah layar mati saat sedang membuka layar lirik, berlaku saat pemutaran dijeda.';

  @override
  String get lyricsMode => 'Mode Lirik';

  @override
  String get lyricsModeDescription => 'Pilih cara lirik disimpan di lagu Anda';

  @override
  String get lyricsModeEmbed => 'Disematkan ke file';

  @override
  String get lyricsModeEmbedSubtitle => 'Lirik disimpan di dalam metadata FLAC';

  @override
  String get lyricsModeExternal => 'File .lrc eksternal';

  @override
  String get lyricsModeExternalSubtitle =>
      'File .lrc dipisah untuk pemutar seperti Samsung Music';

  @override
  String get lyricsModeBoth => 'Keduanya';

  @override
  String get lyricsModeBothSubtitle => 'Sematkan lalu simpan file .lrc';

  @override
  String get sectionColor => 'Warna';

  @override
  String get sectionTheme => 'Tema';

  @override
  String get sectionLayout => 'Tata Letak';

  @override
  String get sectionLanguage => 'Bahasa';

  @override
  String get appearanceLanguage => 'Bahasa Aplikasi';

  @override
  String get settingsAppearanceSubtitle => 'Tema, warna, tampilan';

  @override
  String get settingsDownloadSubtitle => 'Layanan, kualitas, cadangan';

  @override
  String get settingsExtensionsSubtitle => 'Kelola provider download';

  @override
  String get settingsLogsSubtitle => 'Lihat log aplikasi untuk debugging';

  @override
  String get loadingSharedLink => 'Memuat link yang dibagikan...';

  @override
  String get pressBackAgainToExit => 'Tekan kembali sekali lagi untuk keluar';

  @override
  String downloadAllCount(int count) {
    return 'Download Semua ($count)';
  }

  @override
  String tracksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lagu',
      one: '1 lagu',
    );
    return '$_temp0';
  }

  @override
  String get trackCopyFilePath => 'Salin lokasi file';

  @override
  String get trackRemoveFromDevice => 'Hapus dari perangkat';

  @override
  String get trackLoadLyrics => 'Muat Lirik';

  @override
  String get trackMetadata => 'Metadata';

  @override
  String get trackFileInfo => 'Info File';

  @override
  String get trackLyrics => 'Lirik';

  @override
  String get trackFileNotFound => 'File tidak ditemukan';

  @override
  String get trackFileUnavailable =>
      'File saat ini tidak dapat diakses. Periksa akses penyimpanan dan coba lagi.';

  @override
  String get trackOpenInDeezer => 'Buka di Deezer';

  @override
  String get trackOpenInSpotify => 'Buka di Spotify';

  @override
  String get trackTrackName => 'Nama lagu';

  @override
  String get trackArtist => 'Artis';

  @override
  String get trackAlbumArtist => 'Artis album';

  @override
  String get trackAlbum => 'Album';

  @override
  String get trackTrackNumber => 'Nomor lagu';

  @override
  String get trackDiscNumber => 'Nomor disc';

  @override
  String get trackDuration => 'Durasi';

  @override
  String get trackAudioQuality => 'Kualitas audio';

  @override
  String get trackReplayGainTrackGain => 'ReplayGain Gain Lagu';

  @override
  String get trackReplayGainTrackPeak => 'ReplayGain Peak Lagu';

  @override
  String get trackReplayGainAlbumGain => 'ReplayGain Gain Album';

  @override
  String get trackReplayGainAlbumPeak => 'ReplayGain Peak Album';

  @override
  String get libraryQualityLabelFileFormat => 'Format file';

  @override
  String get trackReleaseDate => 'Tanggal rilis';

  @override
  String get trackGenre => 'Genre';

  @override
  String get trackLabel => 'Label';

  @override
  String get trackCopyright => 'Hak cipta';

  @override
  String get trackDownloaded => 'Didownload';

  @override
  String get trackCopyLyrics => 'Salin lirik';

  @override
  String trackLyricsSource(String source) {
    return 'Sumber: $source';
  }

  @override
  String get trackLyricsNotAvailable => 'Lirik tidak tersedia untuk lagu ini';

  @override
  String get trackLyricsNotInFile => 'Tidak ditemukan lirik dalam file ini';

  @override
  String get trackFetchOnlineLyrics => 'Ambil dari Internet';

  @override
  String get trackLyricsTimeout => 'Waktu permintaan habis. Coba lagi nanti.';

  @override
  String get trackLyricsLoadFailed => 'Gagal memuat lirik';

  @override
  String get trackEmbedLyrics => 'Sematkan Lirik';

  @override
  String get trackLyricsEmbedded => 'Lirik berhasil disematkan';

  @override
  String get trackInstrumental => 'Lagu instrumental';

  @override
  String get trackCopiedToClipboard => 'Tersalin ke clipboard';

  @override
  String get trackDeleteConfirmTitle => 'Hapus dari perangkat?';

  @override
  String get trackDeleteNetworkConfirmMessage =>
      'Ini akan menghapus file secara permanen dari penyimpanan jaringan, koleksi, dan histori kamu.';

  @override
  String snackbarDeleteTracksFailed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'lagu',
      one: 'lagu',
    );
    return 'Tak dapat hapus $count $_temp0. Periksa akses penyimpanan dan coba lagi.';
  }

  @override
  String get trackDeleteConfirmMessage =>
      'Ini akan menghapus file hasil download dan historinya secara permanen.';

  @override
  String get dateToday => 'Hari ini';

  @override
  String get dateYesterday => 'Kemarin';

  @override
  String dateDaysAgo(int count) {
    return '$count hari lalu';
  }

  @override
  String dateWeeksAgo(int count) {
    return '$count minggu lalu';
  }

  @override
  String dateMonthsAgo(int count) {
    return '$count bulan lalu';
  }

  @override
  String get storeFilterAll => 'Semua';

  @override
  String get storeFilterMetadata => 'Metadata';

  @override
  String get storeFilterDownload => 'Unduhan';

  @override
  String get storeFilterUtility => 'Utilitas';

  @override
  String get storeFilterLyrics => 'Lirik';

  @override
  String get storeFilterIntegration => 'Integrasi';

  @override
  String get storeClearFilters => 'Hapus filter';

  @override
  String get storeAddRepoTitle => 'Tambah Repositori Ekstensi';

  @override
  String get storeAddRepoDescription =>
      'Masukkan URL repositori GitHub yang berisi file registry.json untuk menelusuri dan memasang ekstensi.';

  @override
  String get storeRepoUrlLabel => 'URL Repositori';

  @override
  String get storeRepoUrlHint => 'https://github.com/user/repo';

  @override
  String get storeAddRepoButton => 'Tambah Repositori';

  @override
  String get storeChangeRepoTooltip => 'Ubah repositori';

  @override
  String get storeRepoDialogTitle => 'Repositori Ekstensi';

  @override
  String get storeRepoDialogCurrent => 'Repositori saat ini:';

  @override
  String get storeNewRepoUrlLabel => 'URL Repositori Baru';

  @override
  String get storeLoadError => 'Gagal memuat repositori';

  @override
  String get storeEmptyNoExtensions => 'Tidak ada ekstensi tersedia';

  @override
  String get storeEmptyNoResults => 'Tidak ada ekstensi ditemukan';

  @override
  String get extensionId => 'ID';

  @override
  String get extensionError => 'Eror';

  @override
  String get extensionCapabilities => 'Kemampuan';

  @override
  String get extensionMetadataProvider => 'Provider Metadata';

  @override
  String get extensionDownloadProvider => 'Provider Download';

  @override
  String get extensionLyricsProvider => 'Provider Lirik';

  @override
  String get extensionUrlHandler => 'Penanganan URL';

  @override
  String get extensionQualityOptions => 'Opsi Kualitas';

  @override
  String get extensionPostProcessingHooks => 'Hook Pasca-Pemrosesan';

  @override
  String get extensionPermissions => 'Izin';

  @override
  String get extensionSettings => 'Setelan';

  @override
  String get extensionRemoveButton => 'Hapus Ekstensi';

  @override
  String get extensionUpdated => 'Diupdate';

  @override
  String get extensionMinAppVersion => 'Versi Apl Min';

  @override
  String get extensionCustomTrackMatching => 'Pencocokan Lagu Kustom';

  @override
  String get extensionPostProcessing => 'Pasca-Pemrosesan';

  @override
  String extensionHooksAvailable(int count) {
    return '$count hook tersedia';
  }

  @override
  String extensionPatternsCount(int count) {
    return '$count pola';
  }

  @override
  String extensionStrategy(String strategy) {
    return 'Strategi: $strategy';
  }

  @override
  String get extensionsProviderPrioritySection => 'Prioritas Provider';

  @override
  String get extensionsInstalledSection => 'Ekstensi Terinstal';

  @override
  String get extensionsNoExtensions => 'Tidak ada ekstensi terinstal';

  @override
  String get extensionsNoExtensionsSubtitle =>
      'Pasang file .toadplayer-ext untuk menambahkan provider baru';

  @override
  String get extensionsInstallButton => 'Instal Ekstensi';

  @override
  String get extensionsInfoTip =>
      'Ekstensi dapat menambahkan provider metadata dan download baru. Hanya instal ekstensi dari sumber terpercaya.';

  @override
  String get extensionsInstalledSuccess => 'Ekstensi berhasil diinstal';

  @override
  String extensionsInstalledCount(int count) {
    return '$count ekstensi berhasil diinstal';
  }

  @override
  String extensionsInstallPartialSuccess(int installed, int attempted) {
    return '$installed dari $attempted ekstensi terinstal';
  }

  @override
  String get extensionsDownloadPriority => 'Prioritas Download';

  @override
  String get extensionsDownloadPrioritySubtitle =>
      'Atur urutan layanan download';

  @override
  String get extensionsFallbackTitle => 'Ekstensi Cadangan';

  @override
  String get extensionsFallbackSubtitle =>
      'Pilih ekstensi download terinstal mana yang dapat digunakan sebagai cadangan';

  @override
  String get extensionsNoDownloadProvider =>
      'Tidak ada ekstensi dengan provider download';

  @override
  String get extensionsMetadataPriority => 'Prioritas Metadata';

  @override
  String get extensionsMetadataPrioritySubtitle =>
      'Atur urutan sumber penelusuran & metadata';

  @override
  String get extensionsNoMetadataProvider =>
      'Tidak ada ekstensi dengan provider metadata';

  @override
  String get extensionsSearchProvider => 'Provider Penelusuran';

  @override
  String get extensionsNoCustomSearch =>
      'Tidak ada ekstensi dengan penelusuran kustom';

  @override
  String get extensionsSearchProviderDescription =>
      'Pilih layanan yang digunakan untuk menelusuri lagu';

  @override
  String get extensionsCustomSearch => 'Penelusuran kustom';

  @override
  String get extensionsErrorLoading => 'Error memuat ekstensi';

  @override
  String get qualityFlacLossless => 'FLAC Lossless';

  @override
  String get qualityFlacLosslessSubtitle => '16-bit / 44.1kHz';

  @override
  String get qualityHiResFlac => 'Hi-Res FLAC';

  @override
  String get qualityHiResFlacSubtitle => '24-bit / hingga 96kHz';

  @override
  String get qualityHiResFlacMax => 'Hi-Res FLAC Max';

  @override
  String get qualityHiResFlacMaxSubtitle => '24-bit / hingga 192kHz';

  @override
  String get downloadLossyFormat => 'Format Lossy';

  @override
  String get downloadAutoConvert => 'Ubah format setelah download';

  @override
  String get downloadAutoConvertAllFormatsSubtitle =>
      'Ubah format hasil download atau batasi bit depth dan sample rate FLAC. File asli diganti hanya setelah konversi berhasil.';

  @override
  String get downloadAutoConvertOutputSubtitle =>
      'Pilih format output untuk download yang baru selesai.';

  @override
  String get downloadAutoConvertFlacSubtitle =>
      'FLAC lossless dengan batas kualitas. Bit depth dan sample rate yang lebih rendah tetap dipertahankan.';

  @override
  String get downloadAutoConvertMaxBitDepth => 'Bit depth maksimal';

  @override
  String get downloadAutoConvertMaxSampleRate => 'Sample rate maksimal';

  @override
  String get downloadAutoConvertFlacLimitsSubtitle =>
      'Ini adalah batas maksimal. Misalnya, sumber 44,1 kHz tetap 44,1 kHz saat 48 kHz dipilih. Sumber lossy tetap dalam format aslinya.';

  @override
  String get downloadAutoConvertSubtitle =>
      'Mengubah format ke lossy akan mengecilkan ukuran file. File asli akan dihapus setelah perubahan format selesai.';

  @override
  String get downloadAutoConvertFormat => 'Format output';

  @override
  String get downloadAutoConvertFormatSubtitle =>
      'Pilih format lossy yang digunakan untuk download selanjutnya.';

  @override
  String get downloadAutoConvertBitrate => 'Kualitas output';

  @override
  String get downloadAutoConvertBitrateSubtitle =>
      'Bitrate yang tinggi menjaga banyak detail tapi ukuran file akan besar.';

  @override
  String get downloadAutoConvertMp3Subtitle =>
      'Dapat diputar di berbagai pemutar dan perangkat';

  @override
  String get downloadAutoConvertM4aSubtitle =>
      'Audio AAC dalam format file M4A';

  @override
  String get downloadAutoConvertOpusSubtitle => 'Bagus untuk pemutar terbaru';

  @override
  String get downloadAskBeforeDownload => 'Tanya Sebelum Download';

  @override
  String get downloadDirectory => 'Folder Download';

  @override
  String get downloadSeparateSinglesFolder => 'Folder Single Terpisah';

  @override
  String get downloadAlbumFolderStructure => 'Struktur Folder Album';

  @override
  String get albumFolderStructureDescription => 'Pilih struktur folder album';

  @override
  String get downloadUseAlbumArtistForFolders =>
      'Gunakan Artis Album untuk folder';

  @override
  String get downloadUsePrimaryArtistOnly => 'Hanya artis utama untuk folder';

  @override
  String get downloadUsePrimaryArtistOnlyEnabled =>
      'Artis featuring dihapus dari nama folder (misalnya Justin Bieber, Quavo → Justin Bieber)';

  @override
  String get downloadUsePrimaryArtistOnlyDisabled =>
      'Nama lengkap artis digunakan untuk nama folder';

  @override
  String get downloadSelectQuality => 'Pilih Kualitas';

  @override
  String get downloadFrom => 'Download Dari';

  @override
  String get appearanceAmoledDark => 'AMOLED Gelap';

  @override
  String get appearanceAmoledDarkSubtitle => 'Latar belakang hitam murni';

  @override
  String get appearanceHeroAnimations => 'Transisi halus';

  @override
  String get appearanceHeroAnimationsSubtitle =>
      'Transisikan foto cover antar layar, cont. membuka pemutar';

  @override
  String get appearanceForceBlur => 'Selalu gunakan efek blur';

  @override
  String get appearanceForceBlurSubtitle =>
      'Aktifkan blur bar navigasi di perangkat yang dimatikan secara default. Dapat memengaruhi performa.';

  @override
  String get queueClearAll => 'Hapus Semua';

  @override
  String get queueClearAllMessage =>
      'Kamu yakin ingin menghapus semua download?';

  @override
  String get settingsAutoExportFailed => 'Ekspor otomatis download gagal';

  @override
  String get settingsAutoExportFailedSubtitle =>
      'Otomatis simpan download gagal ke file TXT';

  @override
  String get settingsDownloadNetwork => 'Koneksi Download';

  @override
  String get settingsDownloadNetworkAny => 'WiFi + Data Seluler';

  @override
  String get settingsDownloadNetworkWifiOnly => 'Hanya WiFi';

  @override
  String get settingsDownloadNetworkSubtitle =>
      'Koneksi yang akan digunakan untuk mendownload. Jika diatur ke Hanya WiFi, download dihentikan saat menggunakan data seluler.';

  @override
  String get settingsConcurrentDownloads => 'Download bersamaan';

  @override
  String get settingsConcurrentDownloadsSubtitle =>
      'Mendownload banyak lagu sekaligus lebih cepat, tapi provider mungkin membatasi permintaan paralel.';

  @override
  String get concurrentDownloadsOne => '1 lagu dalam satu waktu';

  @override
  String concurrentDownloadsCount(int count) {
    return 'Hingga $count lagu dalam satu waktu';
  }

  @override
  String get albumFolderArtistAlbum => 'Artis / Album';

  @override
  String get albumFolderArtistAlbumSubtitle => 'Albums/Nama Artis/Nama Album/';

  @override
  String get albumFolderArtistYearAlbum => 'Artis / [Tahun] Album';

  @override
  String get albumFolderArtistYearAlbumSubtitle =>
      'Albums/Nama Artis/[2005] Nama Album/';

  @override
  String get albumFolderAlbumOnly => 'Album Saja';

  @override
  String get albumFolderAlbumOnlySubtitle => 'Albums/Nama Album/';

  @override
  String get albumFolderYearAlbum => '[Tahun] Album';

  @override
  String get albumFolderYearAlbumSubtitle => 'Albums/[2005] Nama Album/';

  @override
  String get albumFolderArtistAlbumSingles => 'Artis / Album + Singel';

  @override
  String get albumFolderArtistAlbumSinglesSubtitle =>
      'Artis/Album/ dan Artis/Single/';

  @override
  String get albumFolderArtistAlbumFlat => 'Artis / Album (Single digabung)';

  @override
  String get albumFolderArtistAlbumFlatSubtitle =>
      'Artis/Album/ dan Artis/lagu.flac';

  @override
  String get downloadedAlbumDeleteSelected => 'Hapus yang Dipilih';

  @override
  String downloadedAlbumDeleteMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'lagu',
      one: 'lagu',
    );
    return 'Hapus $count $_temp0 dari album ini?\n\nIni juga akan menghapus file dari penyimpanan.';
  }

  @override
  String downloadedAlbumSelectedCount(int count) {
    return '$count dipilih';
  }

  @override
  String get downloadedAlbumTapToSelect => 'Ketuk lagu untuk memilih';

  @override
  String downloadedAlbumDeleteCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'lagu',
      one: 'lagu',
    );
    return 'Hapus $count $_temp0';
  }

  @override
  String get downloadedAlbumSelectToDelete => 'Pilih lagu untuk dihapus';

  @override
  String downloadedAlbumDiscHeader(int discNumber) {
    return 'Disk $discNumber';
  }

  @override
  String get recentTypeArtist => 'Artis';

  @override
  String get recentTypeAlbum => 'Album';

  @override
  String get recentTypeSong => 'Lagu';

  @override
  String get recentTypePlaylist => 'Playlist';

  @override
  String get recentEmpty => 'Tidak ada baru-baru ini';

  @override
  String get recentClearAllMessage =>
      'Hapus semua baru-baru ini? Histori download dan file musik tidak akan dihapus.';

  @override
  String get recentShowAllDownloads => 'Tampilkan Semua Download';

  @override
  String recentPlaylistInfo(String name) {
    return 'Download: $name';
  }

  @override
  String get discographyDownload => 'Download Diskografi';

  @override
  String get discographyDownloadAll => 'Download Semua';

  @override
  String discographyDownloadAllSubtitle(int count, int albumCount) {
    return '$count lagu dari $albumCount rilisan';
  }

  @override
  String get discographyAlbumsOnly => 'Hanya Album';

  @override
  String discographyAlbumsOnlySubtitle(int count, int albumCount) {
    return '$count lagu dari $albumCount album';
  }

  @override
  String get discographySinglesOnly => 'Hanya Single & EP';

  @override
  String discographySinglesOnlySubtitle(int count, int albumCount) {
    return '​$count lagu dari $albumCount single';
  }

  @override
  String get discographySelectAlbums => 'Pilih Album...';

  @override
  String get discographySelectAlbumsSubtitle =>
      'Pilih album atau single spesifik';

  @override
  String get discographyFetchingTracks => 'Memuat lagu...';

  @override
  String discographyFetchingAlbum(int current, int total) {
    return 'Memuat $current dari $total...';
  }

  @override
  String get discographyDownloadSelected => 'Download Terpilih';

  @override
  String discographyAddedToQueue(int count) {
    return '$count lagu ditambahkan ke antrean';
  }

  @override
  String discographySkippedDownloaded(int added, int skipped) {
    return '$added ditambahkan, $skipped didownload';
  }

  @override
  String get discographyNoAlbums => 'Tidak ada album tersedia';

  @override
  String get discographyFailedToFetch => 'Gagal mendapatkan informasi album';

  @override
  String get sectionStorageAccess => 'Akses Penyimpanan';

  @override
  String get allFilesAccess => 'Akses Semua File';

  @override
  String get allFilesAccessEnabledSubtitle =>
      'Dapat menyimpan ke folder manapun';

  @override
  String get allFilesAccessDisabledSubtitle => 'Gunakan folder media saja';

  @override
  String get allFilesAccessDescription =>
      'Hidupkan ini bila aplikasi mengalami eror saat menyimpan ke folder tertentu. Android 13+ membatasi akses ke folder tertentu secara default.';

  @override
  String get allFilesAccessDeniedMessage =>
      'Izin ditolak. Mohon hidupkan \'Akses semua file\' di setelan sistem.';

  @override
  String get allFilesAccessDisabledMessage =>
      'Akses Semua File dimatikan. Aplikasi akan menyimpan di folder media saja.';

  @override
  String get settingsLocalLibrary => 'Koleksi Lokal';

  @override
  String get settingsLocalLibrarySubtitle =>
      'Pindai musik & deteksi file ganda';

  @override
  String get settingsCache => 'Penyimpanan & Cache';

  @override
  String get settingsCacheSubtitle => 'Lihat total dan bersihkan cache';

  @override
  String get libraryTitle => 'Koleksi Lokal';

  @override
  String get libraryScanSettings => 'Setelan Pemindaian';

  @override
  String get libraryEnableLocalLibrary => 'Hidupkan Koleksi Lokal';

  @override
  String get libraryEnableLocalLibrarySubtitle =>
      'Pindai seluruh musik di perangkat';

  @override
  String get libraryFolder => 'Folder Koleksi';

  @override
  String get libraryFolderHint => 'Ketuk untuk memilih folder';

  @override
  String get libraryAddFolder => 'Tambahkan folder koleksi';

  @override
  String get libraryAddFolderSubtitle =>
      'Penyimpanan internal, kartu SD, SSD, atau penyimpanan eksternal lain';

  @override
  String get librarySourceOnline => 'Online';

  @override
  String get librarySourceOffline =>
      'Offline. Hubungkan penyimpanan ke ponsel untuk mengakses lagu';

  @override
  String get librarySourceDisabled => 'Dimatikan';

  @override
  String librarySourceScanCount(int scanned, int total, String progress) {
    return '$scanned dari $total file dipindai ($progress%)';
  }

  @override
  String get libraryExternalStorage => 'Penyimpanan eksternal';

  @override
  String get libraryRemoveFolder => 'Hapus folder koleksi';

  @override
  String get libraryRemoveFolderMessage =>
      'Hapus folder ini dan lagu di dalamnya dari Toadplayer? File audio di perangkat tidak akan dihapus.';

  @override
  String libraryUnreadableFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count file tak terbaca',
      one: '1 file tak terbaca',
    );
    return '$_temp0';
  }

  @override
  String get libraryUnreadableFilesTitle => 'File tak terbaca';

  @override
  String get libraryUnreadableFilesSubtitle =>
      'File ini tidak dimasukkan ke koleksi. Mungkin file rusak, masih didownload, atau diblokir oleh aplikasi penyimpanan.';

  @override
  String get libraryUnreadableFilesAction => 'Lihat file mana dan penyebabnya';

  @override
  String libraryUnreadableFilesMore(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count file lagi tidak ditampilkan',
      one: '1 file lagi tidak ditampilkan',
    );
    return '$_temp0';
  }

  @override
  String get libraryShowDuplicateIndicator => 'Tampilkan Tanda File Ganda';

  @override
  String get libraryShowDuplicateIndicatorSubtitle =>
      'Tampilkan saat menelusuri lagu';

  @override
  String get libraryAutoScan => 'Pindai Otomatis';

  @override
  String get libraryAutoScanSubtitle =>
      'Otomatis memindai file baru di koleksi Anda';

  @override
  String get libraryAutoScanOff => 'Mati';

  @override
  String get libraryAutoScanOnOpen => 'Setiap dibuka';

  @override
  String get libraryAutoScanDaily => 'Harian';

  @override
  String get libraryAutoScanWeekly => 'Mingguan';

  @override
  String get libraryActions => 'Tindakan';

  @override
  String get libraryScan => 'Pindai Koleksi';

  @override
  String get libraryScanSubtitle => 'Pindai file audio';

  @override
  String get libraryScanSelectFolderFirst => 'Pilih folder dahulu';

  @override
  String get libraryCleanupMissingFiles => 'Bersihkan file yang hilang';

  @override
  String get libraryCleanupMissingFilesSubtitle =>
      'Bersihkan lagu yang sudah tidak ada';

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
  String get libraryClear => 'Bersihkan Koleksi';

  @override
  String get libraryClearSubtitle => 'Hapus semua lagu terpindai';

  @override
  String get libraryClearConfirmTitle => 'Bersihkan Koleksi';

  @override
  String get libraryClearConfirmMessage =>
      'Tindakan ini akan menghapus lagu terpindai dari Koleksi. File asli akan tetap berada di perangkat.';

  @override
  String get libraryAbout => 'Tentang Koleksi Lokal';

  @override
  String get libraryAboutDescription =>
      'Memindai koleksi musik yang sudah ada untuk mendeteksi duplikat saat mendownload. Mendukung format FLAC, ALAC, M4A, MP3, Opus, OGG, WAV, AIFF, dan APE. Metadata dibaca dari tag file jika tersedia.';

  @override
  String libraryTracksUnit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'lagu',
      one: 'lagu',
    );
    return '$_temp0';
  }

  @override
  String libraryFilesUnit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'file',
      one: 'file',
    );
    return '$_temp0';
  }

  @override
  String libraryLastScanned(String time) {
    return 'Terakhir dipindai: $time';
  }

  @override
  String get libraryLastScannedNever => 'Tak pernah';

  @override
  String get libraryScanning => 'Memindai...';

  @override
  String get libraryScanFinalizing => 'Menyelesaikan koleksi...';

  @override
  String get libraryScanPaused => 'Pindai terjeda';

  @override
  String libraryScanProgress(String progress, int total) {
    return '$progress% dari $total file';
  }

  @override
  String get libraryInLibrary => 'Di Koleksi';

  @override
  String libraryRemovedMissingFiles(int count) {
    return 'Menghapus $count file hilang dari Koleksi';
  }

  @override
  String get libraryCleared => 'Koleksi dibersihkan';

  @override
  String get libraryStorageAccessRequired => 'Butuh Akses Penyimpanan';

  @override
  String get libraryStorageAccessMessage =>
      'Toadplayer butuh akses penyimpanan untuk memindai Koleksi musik Anda. Mohon berikan perizinan di Setelan.';

  @override
  String get librarySourceDownloaded => 'Didownload';

  @override
  String get librarySourceLocal => 'Lokal';

  @override
  String get libraryFilterAll => 'Semua';

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
  String get libraryFilterDownloaded => 'Didownload';

  @override
  String get libraryFilterLocal => 'Lokal';

  @override
  String get libraryFilterTitle => 'Filter';

  @override
  String get libraryFilterReset => 'Reset';

  @override
  String get libraryFilterApply => 'Terapkan';

  @override
  String get libraryFilterSource => 'Sumber';

  @override
  String get libraryFilterQuality => 'Kualitas';

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
  String get libraryFilterMetadataComplete => 'Metadata lengkap';

  @override
  String get libraryFilterMetadataMissingAny => 'Metadata belum lengkap';

  @override
  String get libraryFilterMetadataMissingYear => 'Tidak ada tahun';

  @override
  String get libraryFilterMetadataMissingGenre => 'Tidak ada genre';

  @override
  String get libraryFilterMetadataMissingAlbumArtist => 'Tidak ada artis album';

  @override
  String get libraryFilterSort => 'Urut';

  @override
  String get libraryFilterSortLatest => 'Terbaru';

  @override
  String get libraryFilterSortOldest => 'Terlama';

  @override
  String get libraryFilterSortSizeLargest => 'Ukuran (Terbesar dahulu)';

  @override
  String get libraryFilterSortSizeSmallest => 'Ukuran (Terkecil dahulu)';

  @override
  String get libraryFilterSortAlbumAsc => 'Album (A-Z)';

  @override
  String get libraryFilterSortAlbumDesc => 'Album (Z-A)';

  @override
  String get libraryFilterSortGenreAsc => 'Genre (A-Z)';

  @override
  String get libraryFilterSortGenreDesc => 'Genre (Z-A)';

  @override
  String get timeJustNow => 'Baru saja';

  @override
  String timeMinutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count menit lalu',
      one: '1 menit lalu',
    );
    return '$_temp0';
  }

  @override
  String timeHoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jam lalu',
      one: '1 jam lalu',
    );
    return '$_temp0';
  }

  @override
  String get tutorialWelcomeTitle => 'Selamat datang di Toadplayer!';

  @override
  String get tutorialWelcomeDesc =>
      'Pelajari cara menemukan musik dengan ekstensi, pilih kualitas yang kamu mau, dan atur downloadnya di Toadplayer.';

  @override
  String get tutorialWelcomeTip1 =>
      'Telusuri dengan ekstensi terinstal atau tempelkan link musik yang didukung';

  @override
  String get tutorialWelcomeTip2 =>
      'Pilih kualitas audio yang diberikan provider downloadmu';

  @override
  String get tutorialWelcomeTip3 =>
      'Otomatis menyematkan metadata, foto cover, lirik, dan informasi rilisan';

  @override
  String get tutorialSearchTitle => 'Menemukan Musik';

  @override
  String get tutorialSearchDesc =>
      'Telusuri dengan ekstensi terinstal atau tempelkan link musik yang didukung.';

  @override
  String get tutorialDownloadTitle => 'Mendownload Musik';

  @override
  String get tutorialDownloadDesc =>
      'Pilih kualitas yang tersedia, mulai download, dan pantau progresnya di antrean.';

  @override
  String get tutorialLibraryTitle => 'Koleksi Kamu';

  @override
  String get tutorialLibraryDesc =>
      'Hasil download dan musik terpindai akan muncul di Koleksi.';

  @override
  String get tutorialLibraryTip1 =>
      'Pantau download yang sedang berlangsung, menunggu, dan selesai lewat antrean Koleksi';

  @override
  String get tutorialLibraryTip2 =>
      'Ketuk lagu untuk memutarnya dengan pemutar bawaan';

  @override
  String get tutorialLibraryTip3 =>
      'Jelajahi lagu, album, dan playlist dalam tampilan daftar atau kisi';

  @override
  String get tutorialExtensionsTitle => 'Ekstensi';

  @override
  String get tutorialExtensionsDesc =>
      'Ekstensi menambahkan penelusuran, download, metadata, lirik, dan lainnya.';

  @override
  String get tutorialExtensionsTip1 =>
      'Jelajahi menu Repo untuk menemukan berbagai ekstensi';

  @override
  String get tutorialExtensionsTip2 =>
      'Pilih provider untuk penelusuran, download, metadata, dan fallback';

  @override
  String get tutorialExtensionsTip3 =>
      'Hubungkan akun jika diperlukan dan pastikan ekstensi selalu terupdate';

  @override
  String get tutorialSettingsTitle => 'Atur Semua Sesuai Selera';

  @override
  String get tutorialSettingsDesc =>
      'Sesuaikan download, pemutaran, perilaku Koleksi, tampilan, dan penyimpanan.';

  @override
  String get tutorialSettingsTip1 => 'Ubah lokasi download dan atur folder';

  @override
  String get tutorialSettingsTip2 =>
      'Atur kualitas, batas download, nama file, dan format favorit';

  @override
  String get tutorialSettingsTip3 => 'Sesuaikan tampilan dan tema aplikasi';

  @override
  String get tutorialReadyMessage =>
      'Kamu sudah siap, Pilih ekstensi, lalu telusuri atau tempel link yang didukung.';

  @override
  String whatsNewIntroTitle(String version) {
    return 'Toadplayer $version sudah hadir';
  }

  @override
  String get whatsNewIntroDesc =>
      'Pembaruan terbesar kami sejauh ini. Ini sekilas yang baru.';

  @override
  String get whatsNewLinkTitle => 'Toadplayer Link';

  @override
  String get whatsNewLinkDesc =>
      'Hubungkan HP dan komputer di jaringan yang sama. Toadplayer Link masih beta.';

  @override
  String get whatsNewLinkPlayTitle => 'Putar di semua perangkat';

  @override
  String get whatsNewLinkPlayBody =>
      'Jelajahi koleksi komputer dari HP, kendalikan yang diputarnya, dan pindahkan pemutaran tanpa kehilangan posisi.';

  @override
  String get whatsNewLinkTransferTitle => 'Pindahkan lagu dua arah';

  @override
  String get whatsNewLinkTransferBody =>
      'Kirim lagu ke komputer atau simpan ke HP, langsung dari menu lagu.';

  @override
  String get whatsNewLinkSyncTitle => 'Tetap sinkron';

  @override
  String get whatsNewLinkSyncBody =>
      'Koleksi dan riwayat dengar tetap sama di perangkat yang terhubung.';

  @override
  String get whatsNewHomeTitle => 'Beranda yang belajar';

  @override
  String get whatsNewHomeDesc =>
      'Mix dan autoplay kini mengikuti caramu mendengarkan.';

  @override
  String get whatsNewHomeMixesTitle => 'Mix dari Koleksi';

  @override
  String get whatsNewHomeMixesBody =>
      'Mix baru dari lagu milikmu sendiri, termasuk mix untuk tiap genre.';

  @override
  String get whatsNewHomeAutoplayTitle => 'Autoplay lebih pintar';

  @override
  String get whatsNewHomeAutoplayBody =>
      'Autoplay mengikuti sesi mendengarmu dan belajar dari favorit, playlist, dan lagu yang kamu ulang.';

  @override
  String get whatsNewHomeAnalysisTitle => 'Analisis lagu';

  @override
  String get whatsNewHomeAnalysisBody =>
      'Toadplayer bisa menganalisis karakter suara lagumu untuk pilihan yang lebih pas. Fitur ini mati sampai kamu menyalakannya di Setelan.';

  @override
  String get whatsNewPlayerTitle => 'Pemutar dan lirik';

  @override
  String get whatsNewPlayerDesc =>
      'Pemutaran lebih mulus, dan lirik dalam bahasa apa pun.';

  @override
  String get whatsNewPlayerGaplessTitle => 'Pemutaran tanpa jeda';

  @override
  String get whatsNewPlayerGaplessBody =>
      'Album mengalir dari satu lagu ke lagu berikutnya tanpa jeda.';

  @override
  String get whatsNewPlayerTranslateTitle => 'Terjemahkan lirik';

  @override
  String get whatsNewPlayerTranslateBody =>
      'Terjemahkan atau romanisasi lirik dengan penyedia AI yang kamu atur.';

  @override
  String get whatsNewPlayerTimingTitle => 'Waktu lirik';

  @override
  String get whatsNewPlayerTimingBody =>
      'Majukan atau mundurkan lirik sinkron saat tidak pas dengan lagu.';

  @override
  String get whatsNewPlayerAutoTitle => 'Android Auto';

  @override
  String get whatsNewPlayerAutoBody =>
      'Jelajahi dan putar Koleksi dari layar mobil.';

  @override
  String get whatsNewPlayerExclusiveTitle => 'Output eksklusif';

  @override
  String get whatsNewPlayerExclusiveBody =>
      'Kirim audio langsung ke perangkat output tanpa mixer sistem.';

  @override
  String get whatsNewLibraryTitle => 'Koleksi dan pencarian';

  @override
  String get whatsNewLibraryDesc =>
      'Cara baru untuk menemukan dan mengatur musikmu.';

  @override
  String get whatsNewLibraryFoldersTitle => 'Jelajahi per folder';

  @override
  String get whatsNewLibraryFoldersBody =>
      'Lihat Koleksi sesuai susunan foldernya di penyimpanan.';

  @override
  String get whatsNewLibrarySuggestionsTitle => 'Saran lagu';

  @override
  String get whatsNewLibrarySuggestionsBody =>
      'Album, single, dan playlist kini menyarankan lagu yang cocok.';

  @override
  String get whatsNewLibraryRecognizeTitle => 'Kenali musik';

  @override
  String get whatsNewLibraryRecognizeBody =>
      'Ketuk mikrofon di kolom pencarian untuk tahu lagu yang sedang diputar di sekitarmu.';

  @override
  String get whatsNewLibraryPlaylistsTitle => 'Playlist lebih baik';

  @override
  String get whatsNewLibraryPlaylistsBody =>
      'Urutkan ulang lagu, buat playlist dari folder, atau impor file playlist.';

  @override
  String get whatsNewFasterTitle => 'Lebih cepat di mana-mana';

  @override
  String get whatsNewFasterDesc =>
      'Lebih cepat dan ringan, terutama untuk koleksi besar.';

  @override
  String get whatsNewFasterLibraryTitle => 'Koleksi lebih cepat';

  @override
  String get whatsNewFasterLibraryBody =>
      'Tab dan album terbuka lebih cepat, dan scroll tetap mulus.';

  @override
  String get whatsNewFasterNetworkTitle => 'Musik jaringan lebih cepat';

  @override
  String get whatsNewFasterNetworkBody =>
      'Folder jaringan dipindai jauh lebih cepat, dan server Subsonic tersinkron dengan permintaan yang jauh lebih sedikit.';

  @override
  String get whatsNewFasterQueueTitle => 'Antrean panjang tetap aman';

  @override
  String get whatsNewFasterQueueBody =>
      'Antrean besar tersimpan cepat dan kembali setelah aplikasi dibuka ulang.';

  @override
  String get whatsNewFasterBackgroundTitle => 'Lebih ringan di latar belakang';

  @override
  String get whatsNewFasterBackgroundBody =>
      'Aplikasi terbuka lebih cepat dan bekerja lebih sedikit saat musik diputar.';

  @override
  String get whatsNewDone => 'Mulai mendengarkan';

  @override
  String whatsNewAboutTitle(String version) {
    return 'Yang baru di $version';
  }

  @override
  String get libraryForceFullScan => 'Paksa Pindai Ulang';

  @override
  String get libraryForceFullScanSubtitle =>
      'Pindah ulang semua file, tanpa cache';

  @override
  String get cleanupOrphanedDownloads => 'Bersihkan Sampah Download';

  @override
  String get cleanupOrphanedDownloadsSubtitle =>
      'Hapus sampah download dari histori';

  @override
  String cleanupOrphanedDownloadsResult(int count) {
    return 'Menghapus $count sampah download dari histori';
  }

  @override
  String get cleanupOrphanedDownloadsNone => 'Tidak ada histori sampah';

  @override
  String get cacheTitle => 'Penyimpanan & Cache';

  @override
  String get cacheSummaryTitle => 'Penggunaan cache';

  @override
  String get cacheSummarySubtitle =>
      'Membersihkan cache tidak menghapus hasil download.';

  @override
  String cacheEstimatedTotal(String size) {
    return 'Total cache yang digunakan: $size';
  }

  @override
  String get cacheSectionStorage => 'Data Cache';

  @override
  String get cacheSectionMaintenance => 'Perawatan';

  @override
  String get cacheAppDirectory => 'Folder cache aplikasi';

  @override
  String get cacheAppDirectoryDesc =>
      'Respons HTTP, data WebView, dan data aplikasi sementara lain.';

  @override
  String get cacheTempDirectory => 'Folder sementara';

  @override
  String get cacheTempDirectoryDesc =>
      'File sementara dari proses download dan ubah format.';

  @override
  String get cacheCoverImage => 'Cache foto cover';

  @override
  String get cacheCoverImageDesc =>
      'Foto cover album dan lagu yang didownload. Akan didownload ulang bila dilihat.';

  @override
  String get cacheLibraryCover => 'Cache cover koleksi';

  @override
  String get cacheLibraryCoverDesc =>
      'Foto cover yang diekstrak dari file musik lokal. Diekstrak ulang saat memindai.';

  @override
  String get libraryPlaybackNormalization => 'Normalisasi kenyaringan';

  @override
  String get libraryPlaybackNormalizationSubtitle =>
      'Atur kenyaringan antar lagu menggunakan tag ReplayGain atau R128, jika ada';

  @override
  String get playbackNormalizationMode => 'Mode gain';

  @override
  String get playbackNormalizationModeTrack => 'Lagu';

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
      'Nilai lebih rendah terdengar lebih pelan. Normalisasi hanya menurunkan volume, jadi tidak pernah clipping.';

  @override
  String get cacheAudioAnalysis => 'Cache analisis audio';

  @override
  String get cacheAudioAnalysisDesc =>
      'Spektogram dan hasil analisis yang tersimpan. Akan dianalisis lagi jika dibuka.';

  @override
  String get cacheExploreFeed => 'Cache penjelajahan';

  @override
  String get cacheExploreFeedDesc =>
      'Cache dari konten termuat (rilis baru, trending). Akan direfresh setiap dibuka.';

  @override
  String get cacheTrackLookup => 'Cache penelusuran lagu';

  @override
  String get cacheTrackLookupDesc =>
      'ID penelusuran lagu Spotify/Deezer. Dapat memperlambat penelusuran bila dibersihkan.';

  @override
  String get cacheCleanupUnusedDesc =>
      'Menghapus sisa-sisa histori download dan file hilang di koleksi.';

  @override
  String get cacheNoData => 'Tidak ada cache';

  @override
  String cacheSizeWithFiles(String size, int count) {
    return '$size di $count file';
  }

  @override
  String cacheSizeOnly(String size) {
    return '$size';
  }

  @override
  String cacheEntries(int count) {
    return '$count item';
  }

  @override
  String cacheClearSuccess(String target) {
    return 'Terhapus: $target';
  }

  @override
  String get cacheClearConfirmTitle => 'Hapus cache?';

  @override
  String cacheClearConfirmMessage(String target) {
    return 'Akan menghapus cache $target. Hasil download tidak akan dihapus.';
  }

  @override
  String get cacheClearAllConfirmTitle => 'Hapus semua cache?';

  @override
  String get cacheClearAllConfirmMessage =>
      'Tindakan ini akan menghapus seluruh cache aplikasi yang ada. Hasil download tidak akan dihapus.';

  @override
  String get cacheClearAll => 'Hapus semua cache';

  @override
  String get cacheCleanupUnused => 'Bersihkan data tak terpakai';

  @override
  String get cacheCleanupUnusedSubtitle =>
      'Menghapus sisa-sisa histori download dan file hilang di koleksi';

  @override
  String cacheCleanupResult(int downloadCount, int libraryCount) {
    return 'Pembersihan selesai: $downloadCount sisa-sisa download, $libraryCount file hilang di koleksi';
  }

  @override
  String get cacheRefreshStats => 'Refresh';

  @override
  String get trackSaveCoverArt => 'Simpan Cover Art';

  @override
  String get trackSaveLyrics => 'Simpan Lirik (.lrc)';

  @override
  String get trackSaveLyricsProgress => 'Menyimpan lirik...';

  @override
  String get trackReEnrich => 'Update Metadata';

  @override
  String get trackReEnrichBatchSubtitle =>
      'Pilih update online atau offline, lalu tinjau setiap perubahan sebelum diubah';

  @override
  String get trackReEnrichFieldCover => 'Foto Cover';

  @override
  String get trackReEnrichFieldLyrics => 'Lirik';

  @override
  String get trackReEnrichFieldBasicTags => 'Album, Artis Album';

  @override
  String get trackReEnrichFieldTrackInfo => 'Lagu & Nomor Disk';

  @override
  String get trackReEnrichFieldReleaseInfo => 'Tanggal & ISRC';

  @override
  String get trackReEnrichFieldExtra => 'Genre, Label, Hak Cipta';

  @override
  String get trackReEnrichSelectAll => 'Pilih Semua';

  @override
  String get trackReEnrichModeIsrc => 'Hanya ISRC';

  @override
  String get trackReEnrichModeIsrcSubtitle =>
      'Telusuri dan tambahkan identifier rekaman tanpa mengubah tag lain';

  @override
  String get trackReEnrichModeMissing => 'Isi tag yang hilang';

  @override
  String get trackReEnrichModeMissingSubtitle =>
      'Biarkan tag yang ada dan isi tag yang kosong';

  @override
  String get trackReEnrichModeReplace => 'Update tag terpilih';

  @override
  String get trackReEnrichModeReplaceSubtitle =>
      'Pilih metadata yang akan diubah dengan metadata internet';

  @override
  String get trackReEnrichModeManual => 'Pilih tag yang umum';

  @override
  String get trackReEnrichModeManualSubtitle =>
      'Gunakan tag yang sama untuk lagu terpilih';

  @override
  String get trackReEnrichManualFieldsTitle => 'Tag untuk diterapkan';

  @override
  String get trackReEnrichManualHint =>
      'Biarkan kosong jika tidak ingin mengubahnya. Judul lagu, nomor, dan ISRC tidak akan diubah.';

  @override
  String get trackReEnrichFieldsTitle => 'Tag untuk diupdate';

  @override
  String get trackReEnrichReview => 'Tinjau perubahan';

  @override
  String get trackReEnrichReviewTitle => 'Tinjau perubahan metadata';

  @override
  String trackReEnrichReviewSubtitle(int changeCount, int trackCount) {
    return '$changeCount perubahan ke $trackCount lagu';
  }

  @override
  String get trackReEnrichNoChanges =>
      'Tidak ada perubahan metadata pada lagu terpilih.';

  @override
  String get trackReEnrichApplyChanges => 'Terapkan perubahan';

  @override
  String get trackReEnrichRefreshOnline => 'Refresh dari internet';

  @override
  String get trackEditMetadata => 'Edit Metadata';

  @override
  String trackCoverSaved(String fileName) {
    return 'Cover art disimpan ke $fileName';
  }

  @override
  String get trackCoverNoSource => 'Tidak ada sumber cover art';

  @override
  String trackLyricsSaved(String fileName) {
    return 'Lirik disimpan ke $fileName';
  }

  @override
  String get trackReEnrichProgress => 'Mengupdate metadata...';

  @override
  String get trackReEnrichSearching => 'Mencari metadata di internet...';

  @override
  String get trackReEnrichPreparing => 'Menyiapkan perubahan metadata...';

  @override
  String get trackReEnrichSuccess => 'Metadata berhasil diupdate';

  @override
  String get trackReEnrichMetadataSaved => 'Metadata disimpan';

  @override
  String get trackReEnrichLyricsUpdated => 'Lirik diupdate';

  @override
  String get trackReEnrichLyricsPreserved =>
      'Tidak menemukan lirik baru; lirik tidak diubah';

  @override
  String get trackReEnrichLyricsDisabled =>
      'Lirik tidak diupdate, download lirik dimatikan di Setelan';

  @override
  String get trackReEnrichFfmpegFailed => 'Gagal menyematkan metadata FFmpeg';

  @override
  String get queueFlacAction => 'Antrean FLAC';

  @override
  String queueFlacConfirmMessage(int count) {
    return 'Menelusuri internet untuk mencari kecocokan lagu terpilih dan download antrean FLAC.\n\nFile yang sudah ada tidak akan dimodifikasi atau dihapus\n\nHanya kecocokan terbaik yang akan diantrekan.\n\n$count terpilih';
  }

  @override
  String get queueFlacNoReliableMatches =>
      'Tidak ada kecocokan yang ditemukan untuk lagu terpilih';

  @override
  String queueFlacQueuedWithSkipped(int addedCount, int skippedCount) {
    return 'Menambahkan $addedCount lagu ke antrean, $skippedCount dilewati';
  }

  @override
  String trackSaveFailed(String error) {
    return 'Gagal: $error';
  }

  @override
  String get trackConvertFormat => 'Ubah Format';

  @override
  String get trackConvertTitle => 'Ubah Audio';

  @override
  String get trackConvertTargetFormat => 'Format Pilihan';

  @override
  String get trackConvertBitrate => 'Bitrate';

  @override
  String get trackConvertKeepOriginal => 'Simpan file asli';

  @override
  String get trackConvertKeepOriginalDescription =>
      'Tambah format baru ke koleksi yang terpisah';

  @override
  String get trackConvertConfirmTitle => 'Konfirmasi Perubahan';

  @override
  String trackConvertConfirmMessage(
    String sourceFormat,
    String targetFormat,
    String bitrate,
  ) {
    return 'Ubah format $sourceFormat ke $targetFormat dengan bitrate $bitrate?\n\nFile asli akan dihapus setelah ini.';
  }

  @override
  String trackConvertConfirmMessageLossless(
    String sourceFormat,
    String targetFormat,
  ) {
    return 'Ubah format $sourceFormat ke $targetFormat dengan kualitas loseless?\n\nFile asli akan dihapus setelah ini.';
  }

  @override
  String trackConvertConfirmKeepOriginal(
    String sourceFormat,
    String targetFormat,
  ) {
    return 'Ubah format $sourceFormat ke $targetFormat?\n\nFile asli akan tetap disimpan dan file format baru akan ditambahkan ke koleksi terpisah.';
  }

  @override
  String get trackConvertLosslessHint =>
      'Kualitas loseless — kualitas tidak diturunkan';

  @override
  String get trackConvertConverting => 'Mengubah format...';

  @override
  String trackConvertSuccess(String format) {
    return 'Berhasil mengubah format ke $format';
  }

  @override
  String get trackConvertFailed => 'Perubahan format gagal';

  @override
  String get cueSplitTitle => 'Pisahkan Lembar CUE';

  @override
  String cueSplitAlbum(String album) {
    return 'Album $album';
  }

  @override
  String cueSplitArtist(String artist) {
    return 'Artis: $artist';
  }

  @override
  String cueSplitTrackCount(int count) {
    return '$count lagu';
  }

  @override
  String get cueSplitConfirmTitle => 'Pisahkan Album CUE';

  @override
  String cueSplitConfirmMessage(String album, int count) {
    return 'Pisahkan \"$album\" menjadi $count file FLAC?\n\nFile akan disimpan ke folder yang sama.';
  }

  @override
  String cueSplitSplitting(int current, int total) {
    return 'Memisahkan lembar CUE... ($current/$total)';
  }

  @override
  String cueSplitSuccess(int count) {
    return 'Berhasil memisah menjadi $count lagu';
  }

  @override
  String get cueSplitFailed => 'Gagal memisahkan CUE';

  @override
  String get cueSplitNoAudioFile => 'Tidak menemukan lagu untuk lembar CUE ini';

  @override
  String get cueSplitButton => 'Pisah menjadi Lagu';

  @override
  String get actionCreate => 'Buat';

  @override
  String get collectionFoldersTitle => 'Folder saya';

  @override
  String get collectionWishlist => 'Wishlist';

  @override
  String get collectionLoved => 'Disukai';

  @override
  String get collectionFavoriteArtists => 'Artis Favorit';

  @override
  String get collectionPlaylist => 'Playlist';

  @override
  String get collectionAddToPlaylist => 'Tambah ke playlist';

  @override
  String get collectionCreatePlaylist => 'Buat playlist';

  @override
  String get collectionNoPlaylistsYet => 'Tidak ada playlist';

  @override
  String collectionPlaylistTracks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lagu',
      one: '1 lagu',
    );
    return '$_temp0';
  }

  @override
  String collectionArtistCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count artis',
      one: '1 artis',
    );
    return '$_temp0';
  }

  @override
  String collectionAddedToPlaylist(String playlistName) {
    return 'Ditambahkan ke \"$playlistName\"';
  }

  @override
  String collectionAlreadyInPlaylist(String playlistName) {
    return 'Sudah ada di \"$playlistName\"';
  }

  @override
  String get collectionPlaylistNameHint => 'Nama playlist';

  @override
  String get collectionPlaylistNameRequired => 'Butuh nama playlist';

  @override
  String get collectionRenamePlaylist => 'Ubah nama playlist';

  @override
  String get collectionDeletePlaylist => 'Hapus playlist';

  @override
  String get collectionPlaylistRenamed => 'Playlist diubah nama';

  @override
  String get collectionWishlistEmptyTitle => 'Wishlist kosong';

  @override
  String get collectionWishlistEmptySubtitle =>
      'Ketuk + di lagu untuk menyimpan lagu yang ingin Anda download nanti';

  @override
  String get collectionLovedEmptyTitle => 'Folder disukai kosong';

  @override
  String get collectionLovedEmptySubtitle =>
      'Ketuk hati di lagu untuk menyimpan lagu favorit Anda';

  @override
  String get collectionFavoriteArtistsEmptyTitle => 'Tidak ada artis favorit';

  @override
  String get collectionFavoriteArtistsEmptySubtitle =>
      'Ketuk hati di halaman artist untuk menyimpannya di sini';

  @override
  String get collectionPlaylistEmptyTitle => 'Playlist kosong';

  @override
  String get collectionPlaylistEmptySubtitle =>
      'Tekan lama + untuk menambahkan lagu ke sini';

  @override
  String get collectionRemoveFromPlaylist => 'Hapus dari playlist';

  @override
  String collectionDeleteFilesMessage(int count) {
    return 'Hapus permanen $count file audio dari penyimpanan? Ini memengaruhi semua playlist yang menggunakan file tersebut.';
  }

  @override
  String get collectionRemoveFromFolder => 'Hapus dari folder';

  @override
  String collectionAddedToLoved(String trackName) {
    return '\"$trackName\" ditambahkan ke Disukai';
  }

  @override
  String collectionRemovedFromLoved(String trackName) {
    return '\"$trackName\" dihapus dari Disukai';
  }

  @override
  String collectionAddedToWishlist(String trackName) {
    return '\"$trackName\" ditambahkan ke Wishlist';
  }

  @override
  String collectionRemovedFromWishlist(String trackName) {
    return '\"$trackName\" dihapus dari Wishlist';
  }

  @override
  String collectionAddedToFavoriteArtists(String artistName) {
    return '\"$artistName\" ditambahkan ke Artis Favorit';
  }

  @override
  String collectionRemovedFromFavoriteArtists(String artistName) {
    return '\"$artistName\" dihapus dari Artis Favorit';
  }

  @override
  String get trackOptionAddToLoved => 'Tambah ke Disukai';

  @override
  String get trackOptionRemoveFromLoved => 'Hapus dari Disukai';

  @override
  String get trackOptionAddToWishlist => 'Tambah ke Wishlist';

  @override
  String get trackOptionRemoveFromWishlist => 'Hapus dari Wishlist';

  @override
  String get artistOptionAddToFavorites => 'Tambah ke Artis Favorit';

  @override
  String get artistOptionRemoveFromFavorites => 'Hapus dari Artis Favorit';

  @override
  String get collectionPlaylistChangeCover => 'Ubah foto cover';

  @override
  String get collectionPlaylistRemoveCover => 'Hapus foto cover';

  @override
  String selectionConvertCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'lagu',
      one: 'lagu',
    );
    return 'Ubah format $count $_temp0';
  }

  @override
  String get selectionConvertNoConvertible =>
      'Tidak ada lagu yang dapat diubah';

  @override
  String get selectionBatchConvertConfirmTitle => 'Ubah Format Massal';

  @override
  String selectionBatchConvertConfirmMessage(
    int count,
    String format,
    String bitrate,
  ) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'lagu',
      one: 'lagu',
    );
    return 'Ubah format $count $_temp0 ke $format dengan $bitrate?\n\nFile asli akan dihapus setelah perubahan.';
  }

  @override
  String selectionBatchConvertConfirmMessageLossless(int count, String format) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'lagu',
      one: 'lagu',
    );
    return 'Ubah format $count $_temp0 ke $format? (Lossless — kualitas dipertahankan)\n\nFile asli akan dihapus setelah perubahan.';
  }

  @override
  String selectionBatchConvertConfirmKeepOriginal(int count, String format) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'lagu',
      one: 'lagu',
    );
    return 'Ubah format $count $_temp0 ke $format?\n\nFile asli akan disimpan dan file format baru akan ditambah ke koleksi baru.';
  }

  @override
  String selectionBatchConvertSuccess(int success, int total, String format) {
    return 'Berhasil mengubah format $success dari $total lagu ke $format';
  }

  @override
  String downloadedAlbumDownloadedCount(int count) {
    return '$count didownload';
  }

  @override
  String get downloadUseAlbumArtistForFoldersAlbumSubtitle =>
      'Beri nama folder setelah tag Artis Album';

  @override
  String get downloadUseAlbumArtistForFoldersTrackSubtitle =>
      'Beri nama folder setelah tag Artis Lagu';

  @override
  String get lyricsProvidersTitle => 'Prioritas Provider Lirik';

  @override
  String get lyricsProvidersDescription =>
      'Hidupkan, matikan, dan atur sumber lirik. Provider akan diperiksa dari atas ke bawah hingga lirik ditemukan.';

  @override
  String get lyricsProvidersInfoText =>
      'Provider lirik ekstensi berjalan sebelum provider lirik bawaan. Setidaknya ada satu provider yang hidup.';

  @override
  String lyricsProvidersEnabledSection(int count) {
    return 'Dihidupkan ($count)';
  }

  @override
  String lyricsProvidersDisabledSection(int count) {
    return 'Dimatikan ($count)';
  }

  @override
  String get lyricsProvidersAtLeastOne =>
      'Setidaknya ada satu provider yang hidup';

  @override
  String get lyricsProvidersSaved => 'Prioritas provider lirik disimpan';

  @override
  String get lyricsProvidersDiscardContent =>
      'Ada perubahan yang belum disimpan yang akan hilang.';

  @override
  String get lyricsProviderLrclibDesc => 'Database lirik berjalan open-source';

  @override
  String get lyricsProviderNeteaseDesc =>
      'NetEase Cloud Music (bagus untuk lagu Asia)';

  @override
  String get lyricsProviderMusixmatchDesc =>
      'Database lirik terbesar (banyak bahasa)';

  @override
  String get lyricsProviderAppleMusicDesc =>
      'Lirik berjalan per kata (lewat proxy)';

  @override
  String get lyricsProviderQqMusicDesc =>
      'QQ Music (bagus untuk lagu Cina, API langsung)';

  @override
  String get lyricsProviderLyricsPlusDesc =>
      'Lirik karaoke per kata (Apple/Musixmatch/Spotify/QQ, lewat proxy)';

  @override
  String get lyricsProviderToadLrcDesc =>
      'Lirik Apple Music per kata dari Toad-LRC';

  @override
  String get lyricsProviderLrcRedDesc =>
      'Lirik Apple Music per kata, dicocokkan per rekaman';

  @override
  String get lyricsProviderBetterLyricsDesc =>
      'Lirik Apple Music per kata untuk lagu populer';

  @override
  String get lyricsProviderExtensionDesc => 'Provider ekstensi';

  @override
  String get safMigrationTitle => 'Butuh Update Penyimpanan';

  @override
  String get safMigrationMessage1 =>
      'Toadplayer kini menggunakan Android Storage Access (SAF) untuk mendownload. Ini memperbaiki eror \"izin ditolak\" di Android 10+.';

  @override
  String get safMigrationMessage2 =>
      'Harap pilih folder download Anda lagi untuk pindah ke sistem penyimpanan baru.';

  @override
  String get safMigrationSuccess => 'Folder download diupdate ke mode SAF';

  @override
  String get settingsDonate => 'Dukung Kami';

  @override
  String get settingsDonateSubtitle => 'Belikan developer kami kopi';

  @override
  String get settingsBackup => 'Cadangan & Pemulihan';

  @override
  String get settingsBackupSubtitle =>
      'Pindahkan koleksi, histori, dan setelan Anda ke perangkat baru';

  @override
  String get backupTitle => 'Cadangan & Pemulihan';

  @override
  String get backupExportSectionTitle => 'Buat cadangan';

  @override
  String get backupExportSectionDescription =>
      'Simpan setelan, histori download, lagu disukai, wishlist, artis favorit, dan playlist dalam satu file yang dapat disimpan maupun dikirim ke ponsel lain.';

  @override
  String get backupExportButton => 'Buat file cadangan';

  @override
  String get backupImportSectionTitle => 'Pulihkan cadangan';

  @override
  String get backupImportSectionDescription =>
      'Pilih file cadangan untuk memulihkan data Anda. Ini akan mengubah setelan sekarang, histori, dan koleksi di perangkat ini.';

  @override
  String get backupImportButton => 'Pilih file cadangan';

  @override
  String get backupCreated => 'Cadangan dibuat';

  @override
  String get backupCreateFailed => 'Gagal membuat cadangan';

  @override
  String get backupRestoreConfirmTitle => 'Pulihkan cadangan ini?';

  @override
  String get backupRestoreConfirmButton => 'Pulihkan';

  @override
  String get backupRestored => 'Cadangan berhasil dipulihkan';

  @override
  String get backupRestoreFailed => 'Gagal memulihkan cadangan';

  @override
  String get backupInvalidFile =>
      'File ini bukan cadangan Toadplayer yang valid';

  @override
  String get backupRestoreRestartHint =>
      'Restart aplikasi untuk memastikan setiap perubahan diterapkan.';

  @override
  String get backupContentsTitle => 'Akan dipulihkan';

  @override
  String get backupSettingsOnly => 'Setelan saja';

  @override
  String get backupSelectHistory => 'Histori download';

  @override
  String get backupSelectCollections => 'Koleksi saya';

  @override
  String get backupSelectCollectionsDescription =>
      'Lagu, wishlist, artis favorit, playlist, dan cover playlist yang disukai.';

  @override
  String get backupSelectExtensions => 'Ekstensi dan setelannya';

  @override
  String get backupSelectedExportDescription =>
      'Buat file cadangan dari kategori terpilih. Tidak termasuk file audio.';

  @override
  String get backupSelectAtLeastOne =>
      'Pilih setidaknya satu kategori untuk dicadangkan.';

  @override
  String get backupSelectedRestoreMessage =>
      'Hanya kategori di bawah yang akan dipulihkan. Yang tidak ada di daftar tidak akan diubah. Pemulihan akan mengganti data yang sudah ada dan tidak dapat diurungkan.';

  @override
  String get backupContentsSettings => 'Setelan aplikasi';

  @override
  String backupContentsHistory(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'histori',
      one: 'histori',
    );
    return '$count $_temp0';
  }

  @override
  String backupContentsLiked(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'disukai',
      one: 'disukai',
    );
    return '$count lagu $_temp0';
  }

  @override
  String backupContentsWishlist(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'wishlist',
      one: 'wishlist',
    );
    return '$count lagu di $_temp0';
  }

  @override
  String backupContentsPlaylists(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count playlist',
      one: '1 playlist',
    );
    return '$_temp0';
  }

  @override
  String backupContentsArtists(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count artis favorit',
      one: '1 artis favorit',
    );
    return '$_temp0';
  }

  @override
  String backupContentsExtensions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ekstensi',
      one: '1 ekstensi',
    );
    return '$_temp0';
  }

  @override
  String get backupIncludeSecrets => 'Masukkan kredensial ekstensi';

  @override
  String get backupIncludeSecretsDescription =>
      'Token dan kunci API dari ekstensi disimpan ke dalam file cadangan. Jangan bagikan file ini. Jika dimatikan, Anda harus memasukkannya setelah memulihkan.';

  @override
  String backupExtensionsRestoreFailed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ekstensi',
      one: 'ekstensi',
    );
    return '$count $_temp0 tidak dapat diinstal ulang. Instal manual lewat repo.';
  }

  @override
  String get tooltipLoveAll => 'Sukai Semua';

  @override
  String get tooltipAddToPlaylist => 'Tambah ke Playlist';

  @override
  String snackbarRemovedTracksFromLoved(int count) {
    return 'Menghapus $count lagu dari Disukai';
  }

  @override
  String snackbarAddedTracksToLoved(int count) {
    return 'Menambahkan $count lagu ke Disukai';
  }

  @override
  String get dialogDownloadAllTitle => 'Download Semua';

  @override
  String dialogDownloadAllMessage(int count) {
    return 'Download $count lagu?';
  }

  @override
  String get homeSkipAlreadyDownloaded => 'Lewati yang sudah didownload';

  @override
  String get homeGoToAlbum => 'Ke Album';

  @override
  String get homeAlbumInfoUnavailable => 'Info album tidak tersedia';

  @override
  String get snackbarLoadingCueSheet => 'Memuat lembar CUE...';

  @override
  String get snackbarMetadataSaved => 'Berhasil menyimpan metadata';

  @override
  String get snackbarFailedToEmbedLyrics => 'Gagal menyematkan lirik';

  @override
  String get snackbarFailedToWriteStorage => 'Gagal memodifikasi file';

  @override
  String snackbarError(String error) {
    return 'Eror: $error';
  }

  @override
  String get snackbarNoActionDefined =>
      'Tidak ada tindakan yang diatur untuk tombol ini';

  @override
  String get noTracksFoundForAlbum => 'Tidak ada lagu di album ini';

  @override
  String get downloadLocationSubtitle =>
      'Pilih lokasi penyimpanan hasil download';

  @override
  String get storageAutomaticFolder => 'Folder bawaan';

  @override
  String get storageAutomaticDownloadFolder =>
      'Menyimpan di folder Download/Toadplayer, atau di data aplikasi';

  @override
  String get storageSafRecommended => 'Pilih folder (Disarankan)';

  @override
  String get storageDownloadFolderHint =>
      'Begitu pemilih folder Android terbuka, buka folder Download dan pilih Toadplayer. Jika belum ada, buat folder baru, lalu ketuk Gunakan folder ini untuk memberi akses.';

  @override
  String get downloadFolderAccessLostTitle => 'Akses folder download hilang';

  @override
  String get downloadFolderAccessLostSubtitle =>
      'Download akan gagal hingga Anda memilih folder baru';

  @override
  String get downloadFolderReselect => 'Pilih Folder Baru';

  @override
  String get downloadErrorSafPermissionLost =>
      'Izin SAF tidak valid atau dicabut. Mohon pilih folder download baru di Setelan.';

  @override
  String get downloadErrorFolderAccessLost =>
      'Akses folder download hilang, mohon pilih folder download baru di Setelan.';

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
    return 'Gunakan $artist, $title, $album, $track, $year, $date, $disc untuk sementara.';
  }

  @override
  String get downloadFilenameInsertTag => 'Ketuk untuk memasukkan tag:';

  @override
  String get downloadSeparateSinglesEnabled =>
      'Single dan EP disimpan di folder terpisah';

  @override
  String get downloadSeparateSinglesDisabled =>
      'Single dan album disimpan di folder yang sama';

  @override
  String get downloadArtistNameFilters => 'Filter Nama Artis';

  @override
  String get downloadCreatePlaylistSourceFolder => 'Folder Sumber Playlist';

  @override
  String get downloadCreatePlaylistSourceFolderEnabled =>
      'Subfolder dibuat untuk setiap playlist';

  @override
  String get downloadCreatePlaylistSourceFolderDisabled =>
      'Semua lagu disimpan ke folder download';

  @override
  String get downloadCreatePlaylistSourceFolderRedundant =>
      'Dipegang oleh setelan pengatur folder';

  @override
  String get downloadSongLinkRegion => 'Wilayah SongLink';

  @override
  String get downloadNetworkCompatibilityMode => 'Mode Kompatibilitas Koneksi';

  @override
  String get downloadNetworkCompatibilityModeEnabled =>
      'Mengizinkan endpoint HTTP lama; verifikasi TLS tetap hidup';

  @override
  String get downloadNetworkCompatibilityModeDisabled =>
      'Menggunakan setelan koneksi standar';

  @override
  String get downloadAllowLocalNetwork => 'Izinkan Akses Koneksi Lokal';

  @override
  String get downloadAllowLocalNetworkEnabled =>
      'Permintaan ke alamat lokal/pribadi diizinkan (untuk proxy lokal atau DNS kustom)';

  @override
  String get downloadAllowLocalNetworkDisabled =>
      'Alamat lokal/pribadi diblokir untuk keamanan';

  @override
  String get downloadSelectServiceToEnable =>
      'Pilih provider dengan opsi kualitas untuk menghidupkan opsi ini';

  @override
  String get downloadEmbedLyricsDisabled => 'Hidupkan penyematan metadata dulu';

  @override
  String get downloadNeteaseIncludeTranslation =>
      'NetEase: Termasuk Terjemahan';

  @override
  String get downloadNeteaseIncludeTranslationEnabled =>
      'Lirik terjemahan Tionghoa dimasukkan';

  @override
  String get downloadNeteaseIncludeTranslationDisabled => 'Lirik asli saja';

  @override
  String get downloadNeteaseIncludeRomanization =>
      'NetEase: Termasuk Romanisasi';

  @override
  String get downloadNeteaseIncludeRomanizationEnabled =>
      'Lirik romanisasi dimasukkan';

  @override
  String get downloadNeteaseIncludeRomanizationDisabled =>
      'Tidak ada romanisasi';

  @override
  String get downloadAppleQqMultiPerson => 'Apple/QQ: Lirik Per-Orang';

  @override
  String get downloadAppleQqMultiPersonEnabled =>
      'Label penyanyi untuk lagu duet dan grup dimasukkan';

  @override
  String get downloadAppleQqMultiPersonDisabled =>
      'Lirik standar tanpa label penyanyi';

  @override
  String get downloadAppleElrcWordSync => 'eLRC Apple Music Per Kata';

  @override
  String get downloadAppleElrcWordSyncEnabled =>
      'Timestamp per kata mentah dimasukkan';

  @override
  String get downloadAppleElrcWordSyncDisabled =>
      'Lirik per kata Apple Music yang lebih aman';

  @override
  String get downloadMusixmatchLanguage => 'Bahasa Musixmatch';

  @override
  String get downloadMusixmatchLanguageAuto => 'Otomatis (bahasa asli)';

  @override
  String get downloadFilterContributing => 'Filter Artis Kontributor';

  @override
  String get downloadFilterContributingEnabled =>
      'Artis kontributor dihapus dari nama folder Artis Album';

  @override
  String get downloadFilterContributingDisabled =>
      'Menggunakan nama penuh Artis Album';

  @override
  String get downloadProvidersNoneEnabled => 'Tidak ada provider dihidupkan';

  @override
  String get downloadMusixmatchLanguageCode => 'Kode bahasa';

  @override
  String get downloadMusixmatchLanguageHint => 'cont. en, de, ja';

  @override
  String get downloadMusixmatchLanguageDesc =>
      'Masukkan kode bahasa BCP-47 (cont. en, de, ja) untuk meminta lirik terjemahan dari Musixmatch.';

  @override
  String get downloadMusixmatchAuto => 'Otomatis';

  @override
  String get downloadNetworkAnySubtitle => 'Gunakan WiFi atau data seluler';

  @override
  String get downloadNetworkWifiOnlySubtitle =>
      'Download dijeda saat menggunakan data seluler';

  @override
  String get downloadSongLinkRegionDesc =>
      'Wilayah digunakan untuk resolve link lagu lewat SongLink. Pilih wilayah layanan streaming yang sama dengan wilayah Anda.';

  @override
  String get snackbarUnsupportedAudioFormat => 'Format audio tidak didukung';

  @override
  String get cacheRefresh => 'Muat Ulang';

  @override
  String dialogDownloadPlaylistsMessage(int trackCount, int playlistCount) {
    String _temp0 = intl.Intl.pluralLogic(
      trackCount,
      locale: localeName,
      other: 'lagu',
      one: 'lagu',
    );
    String _temp1 = intl.Intl.pluralLogic(
      playlistCount,
      locale: localeName,
      other: 'playlist',
      one: 'playlist',
    );
    return 'Download $trackCount $_temp0 dari $playlistCount $_temp1?';
  }

  @override
  String bulkDownloadPlaylistsButton(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'playlist',
      one: 'playlist',
    );
    return 'Download $count $_temp0';
  }

  @override
  String get bulkDownloadSelectPlaylists => 'Pilih playlist untuk didownload';

  @override
  String get snackbarSelectedPlaylistsEmpty =>
      'Playlist terpilih tidak memiliki lagu';

  @override
  String playlistsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count playlist',
      one: '1 playlist',
    );
    return '$_temp0';
  }

  @override
  String get editMetadataAutoFill => 'Isi otomatis dari internet';

  @override
  String get editMetadataAutoFillDesc =>
      'Pilih ekstensi metadata, pilih tag, lalu tinjau data baru sebelum menerapkan';

  @override
  String get editMetadataAutoFillSource => 'Sumber metadata';

  @override
  String get editMetadataAutoFillSourceAutomatic =>
      'Otomatis (prioritas provider)';

  @override
  String get editMetadataAutoFillFind => 'Cari metadata';

  @override
  String editMetadataAutoFillPreview(String source) {
    return 'Data dari $source';
  }

  @override
  String get editMetadataAutoFillCoverAvailable => 'Cover artwork tersedia';

  @override
  String get editMetadataAutoFillApply => 'Terapkan data terpilih';

  @override
  String editMetadataAutoFillDoneFromSource(int count, String source) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kolom',
      one: 'kolom',
    );
    return 'Berhasil mengisi $count $_temp0 dari $source';
  }

  @override
  String get editMetadataAutoFillSearching => 'Menelusuri internet...';

  @override
  String get editMetadataAutoFillNoResults =>
      'Tidak ada metadata yang cocok di internet';

  @override
  String get editMetadataAutoFillNoneSelected =>
      'Pilih setidaknya satu tag untuk diisi otomatis';

  @override
  String get editMetadataLyricsSearch => 'Telusuri lirik di internet';

  @override
  String get lyricsPickerTitle => 'Pilih lirik';

  @override
  String get lyricsPickerNeedsTitle => 'Masukkan judul dan artis dulu';

  @override
  String get lyricsPickerNoProviders =>
      'Tak ada provider lirik yang hidup. Hidupkan beberapa di Setelan > Lirik.';

  @override
  String get lyricsPickerWordSynced => 'Per kata';

  @override
  String get lyricsPickerSynced => 'Berwaktu';

  @override
  String get lyricsPickerPlain => 'Lirik biasa';

  @override
  String get lyricsPickerInstrumental => 'Instrumental';

  @override
  String get lyricsPickerNotFound => 'Tak menemukan lirik';

  @override
  String lyricsPickerLineCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count bait',
      one: '1 bait',
    );
    return '$_temp0';
  }

  @override
  String get editMetadataFieldTitle => 'Judul';

  @override
  String get editMetadataFieldArtist => 'Artis';

  @override
  String get editMetadataFieldAlbum => 'Album';

  @override
  String get editMetadataFieldAlbumArtist => 'Artis Album';

  @override
  String get editMetadataFieldDate => 'Tanggal';

  @override
  String get editMetadataFieldTrackNum => 'Trek #';

  @override
  String get editMetadataFieldDiscNum => 'Disk #';

  @override
  String get editMetadataFieldGenre => 'Genre';

  @override
  String get editMetadataFieldIsrc => 'ISRC';

  @override
  String get editMetadataFieldLabel => 'Label';

  @override
  String get editMetadataFieldCopyright => 'Hak Cipta';

  @override
  String get editMetadataFieldCover => 'Foto Cover';

  @override
  String get editMetadataSelectAll => 'Semua';

  @override
  String get editMetadataSelectEmpty => 'Kosong saja';

  @override
  String queueDownloadingCount(int count) {
    return 'Mendownload ($count)';
  }

  @override
  String get queueFilteringIndicator => 'Memfilter...';

  @override
  String queueTrackCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lagu',
      one: '1 lagu',
    );
    return '$_temp0';
  }

  @override
  String queueAlbumCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count album',
      one: '1 album',
    );
    return '$_temp0';
  }

  @override
  String get queueEmptyAlbums => 'Tidak ada hasil download album';

  @override
  String get queueEmptyAlbumsSubtitle =>
      'Download beberapa lagu dari sebuah album untuk melihatnya di sini';

  @override
  String get queueEmptySingles => 'Tidak ada hasil download single';

  @override
  String get queueEmptySinglesSubtitle =>
      'Hasil download single akan muncul di sini';

  @override
  String queuePlaylistCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count playlist',
      one: '1 playlist',
    );
    return '$_temp0';
  }

  @override
  String get queueEmptyPlaylistsSubtitle =>
      'Buat playlist untuk menata lagu Anda';

  @override
  String get libraryDefaultView => 'Tampilan default';

  @override
  String get libraryDefaultViewLastUsed => 'Terakhir digunakan';

  @override
  String get queueEmptyHistory => 'Tidak ada histori download';

  @override
  String get queueEmptyHistorySubtitle =>
      'Hasil download lagu akan muncul di sini';

  @override
  String get selectionAllPlaylistsSelected => 'Semua playlist terpilih';

  @override
  String get selectionTapPlaylistsToSelect => 'Ketuk playlist untuk memilih';

  @override
  String get selectionSelectPlaylistsToDelete => 'Pilih playlist untuk dihapus';

  @override
  String get audioAnalysisTitle => 'Analisis Kualitas Audio';

  @override
  String get audioAnalysisDescription =>
      'Verifikasi kualitas lossless dengan analisis spektrum';

  @override
  String get audioAnalysisAnalyzing => 'Menganalisis audio...';

  @override
  String get audioAnalysisSampleRate => 'Sample Rate';

  @override
  String get audioAnalysisCodec => 'Codec';

  @override
  String get audioAnalysisContainer => 'Container';

  @override
  String get audioAnalysisDecodedFormat => 'Format Terdekode';

  @override
  String get audioAnalysisBitDepth => 'Bit Depth';

  @override
  String get audioAnalysisChannels => 'Channel';

  @override
  String get audioAnalysisDuration => 'Durasi';

  @override
  String get audioAnalysisNyquist => 'Nyquist';

  @override
  String get audioAnalysisFileSize => 'Ukuran';

  @override
  String get audioAnalysisDynamicRange => 'Rentang Dinamis';

  @override
  String get audioAnalysisPeak => 'Peak';

  @override
  String get audioAnalysisRms => 'RMS';

  @override
  String get audioAnalysisLufs => 'LUFS';

  @override
  String get audioAnalysisTruePeak => 'True Peak';

  @override
  String get audioAnalysisClipping => 'Slipping';

  @override
  String get audioAnalysisNoClipping => 'Tak clipping';

  @override
  String get audioAnalysisSpectralCutoff => 'Cutoff Spectral';

  @override
  String get audioAnalysisCutoffNotDetected => 'Tak terdeteksi';

  @override
  String get audioAnalysisChannelStats => 'Stat Per-channel';

  @override
  String get audioAnalysisSamples => 'Sampel';

  @override
  String get audioAnalysisRescan => 'Analisis Ulang';

  @override
  String get audioAnalysisSaveSpectrogram => 'Simpan Spektrogram';

  @override
  String audioAnalysisSpectrogramSaved(String fileName) {
    return 'Spektrogram disimpan ke $fileName';
  }

  @override
  String get downloadRedownloadFakeHiRes => 'Download ulang Hi-Res palsu';

  @override
  String get downloadRedownloadFakeHiResSubtitle =>
      'Dimatikan secara default. Memeriksa download Hi-Res dan menggantinya bila terdeteksi bukan kualitas Hi-Res. Tidak menghapus lagu bila verifikasi atau pemrosesan gagal';

  @override
  String get hiResCheckVerdictFakeCertain => 'Hi-Res Palsu';

  @override
  String get hiResCheckReasonSampleHold =>
      'Data suara terulang: diupsample dengan menggandakan data';

  @override
  String get hiResCheckReasonInterpolation =>
      'Data antar suara diinterpolasi secara linear';

  @override
  String get hiResCheckTitle => 'Keaslian Hi-Res';

  @override
  String get hiResCheckSummary =>
      'Periksa spektrum dan bit depth aktif untuk mendeteksi tanda upsampling atau padding.';

  @override
  String get hiResCheckLimitedBandwidth => 'Bandwidth terbatas';

  @override
  String get hiResCheckNoEvidence => 'Tidak terdeteksi upsampling atau padding';

  @override
  String get hiResCheckEstimatedCutoff => 'Cutoff terestimasi';

  @override
  String get hiResCheckActiveBits => 'Bit aktif/tersimpan';

  @override
  String get hiResCheckBandwidthExplanation =>
      'Cutoff rendah juga dapat berasal dari mastering. Bukan selalu hasil upsampling.';

  @override
  String hiResCheckSampledExplanation(String seconds) {
    return 'Hasil analisis dari $seconds detik audio. Jangan gunakan hasil sebagai bukti keaslian.';
  }

  @override
  String get hiResCheckImagingEvidence =>
      'Ada spektrum band yang saling berbalik yang mungkin ini hasil upsampling.';

  @override
  String hiResCheckRateEvidence(String cutoff) {
    return 'Ada frekuensi yang terputus di $cutoff dan desis yang berarti ini berkualitas rendah.';
  }

  @override
  String hiResCheckSteadyEnergy(String cutoff) {
    return 'Energi di atas $cutoff terlalu stabil di bagian teranalisis dan kemungkinan itu desisan.';
  }

  @override
  String get hiResCheckRun => 'Periksa';

  @override
  String get hiResCheckChecking => 'Memeriksa keaslian Hi-Res...';

  @override
  String get hiResCheckVerdictFake => 'Sepertinya Hi-Res palsu';

  @override
  String get hiResCheckVerdictStandard => 'Kualitas biasa, tidak ada yang aneh';

  @override
  String get hiResCheckVerdictInconclusive =>
      'Tidak yakin: bagian teranalisis terlalu diam atau pendek';

  @override
  String get hiResCheckUnsupported =>
      'Hanya file FLAC dan WAV yang dapat diperiksa';

  @override
  String hiResCheckFailed(String error) {
    return 'Pemeriksaan Hi-Res gagal: $error';
  }

  @override
  String hiResCheckReasonDepth(int declared, int effective) {
    return 'Tertulis $declared-bit tapi hanya $effective bit yang berdata';
  }

  @override
  String get audioAnalysisRescanning => 'Menganalisis ulang audio...';

  @override
  String get extensionsHomeFeedProvider => 'Provider Feed Beranda';

  @override
  String get extensionsHomeFeedCountry => 'Negara beranda';

  @override
  String get extensionsHomeFeedCountryDescription =>
      'Pilih rekomendasi beranda suatu negara tanpa VPN.';

  @override
  String get extensionsHomeFeedDescription =>
      'Pilih ekstensi provider feed beranda di layar utama';

  @override
  String get extensionsHomeFeedAuto => 'Otomatis';

  @override
  String get extensionsHomeFeedAutoSubtitle => 'Pilih otomatis yang terbaik';

  @override
  String get extensionsHomeFeedOff => 'Mati';

  @override
  String get extensionsHomeFeedOffSubtitle =>
      'Jangan tampilkan feed beranda di layar utama';

  @override
  String extensionsHomeFeedUse(String extensionName) {
    return 'Pakai feed beranda $extensionName';
  }

  @override
  String get extensionsNoHomeFeedExtensions => 'Tak ada ekstensi feed beranda';

  @override
  String get cancelDownloadTitle => 'Batalkan download?';

  @override
  String cancelDownloadContent(String trackName) {
    return 'Ini akan membatalkan download \"$trackName\".';
  }

  @override
  String get cancelDownloadKeep => 'Urung';

  @override
  String get queueCancelledTitle => 'Download dibatalkan';

  @override
  String get queueCancelledMessage =>
      'Download sudah dibatalkan. Ulang atau hapus dari antrean.';

  @override
  String get metadataSaveFailedFfmpeg =>
      'Gagal menyimpan metadata lewat FFmpeg';

  @override
  String get metadataSaveFailedStorage =>
      'Gagal mengedit metadata ke penyimpanan';

  @override
  String snackbarFolderPickerFailed(String error) {
    return 'Gagal membuka pemilih folder: $error';
  }

  @override
  String notifDownloadingTrack(String trackName) {
    return 'Mendownload $trackName';
  }

  @override
  String notifFinalizingTrack(String trackName) {
    return 'Menyelesaikan $trackName';
  }

  @override
  String get notifEmbeddingMetadata => 'Menyematkan metadata...';

  @override
  String notifAlreadyInLibraryCount(int completed, int total) {
    return 'Sudah ada di Koleksi ($completed/$total)';
  }

  @override
  String get notifAlreadyInLibrary => 'Sudah ada di Koleksi';

  @override
  String notifDownloadCompleteCount(int completed, int total) {
    return 'Download Berhasil ($completed/$total)';
  }

  @override
  String get notifDownloadComplete => 'Download Berhasil';

  @override
  String notifDownloadsFinished(int completed, int failed) {
    return 'Download Selesai ($completed selesai, $failed gagal)';
  }

  @override
  String get notifVerificationRequiredTitle => 'Butuh verifikasi';

  @override
  String get notifVerificationRequiredBody =>
      'Buka aplikasi untuk menyelesaikan verifikasi dan lanjut download';

  @override
  String get notifAllDownloadsComplete => 'Semua Download Selesai';

  @override
  String notifTracksDownloadedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lagu berhasil didownload',
      one: '1 lagu berhasil didownload',
    );
    return '$_temp0';
  }

  @override
  String notifDownloadsFinishedBody(int completed, int failed) {
    String _temp0 = intl.Intl.pluralLogic(
      completed,
      locale: localeName,
      other: '$completed lagu didownload',
      one: '1 lagu didownload',
    );
    String _temp1 = intl.Intl.pluralLogic(
      failed,
      locale: localeName,
      other: '$failed gagal',
      one: '1 gagal',
    );
    return '$_temp0, $_temp1';
  }

  @override
  String get notifDownloadsCanceledTitle => 'Download dibatalkan';

  @override
  String notifDownloadsCanceledBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count download dibatalkan manual',
      one: '1 download dibatalkan manual',
    );
    return '$_temp0';
  }

  @override
  String get notifScanningLibrary => 'Memindai koleksi lokal';

  @override
  String notifLibraryScanProgressWithTotal(
    int scanned,
    int total,
    int percentage,
  ) {
    return '$scanned/$total file • $percentage%';
  }

  @override
  String notifLibraryScanProgressNoTotal(int scanned) {
    return '$scanned file terpindai';
  }

  @override
  String get notifLibraryScanComplete => 'Pindai koleksi selesai';

  @override
  String notifLibraryScanCompleteBody(int count) {
    return '$count lagu terpindai';
  }

  @override
  String notifLibraryScanExcluded(int count) {
    return '$count dikecualikan';
  }

  @override
  String notifLibraryScanErrors(int count) {
    return '$count eror';
  }

  @override
  String get notifLibraryScanFailed => 'Pindai koleksi gagal';

  @override
  String get notifLibraryScanInterruptedBody =>
      'Pemindaian koleksi sebelumnya terputus. Pindai ulang folder untuk melanjutkan. Lagu yang sudah terindeks tetap tersedia.';

  @override
  String get notifLibraryScanCancelled => 'Pindai koleksi dibatalkan';

  @override
  String get notifLibraryScanStopped => 'Pindai dihentikan sebelum selesai.';

  @override
  String get notifLibraryScanPaused => 'Pindai koleksi terjeda';

  @override
  String notifLibraryScanPausedBody(int count) {
    return '$count file dipindai. Lanjutkan pemindaian lewat setelan Koleksi Lokal.';
  }

  @override
  String notifDownloadingUpdate(String version) {
    return 'Mendownload Toadplayer v$version';
  }

  @override
  String notifUpdateProgress(String received, String total, int percentage) {
    return '$received/${total}MB • $percentage%';
  }

  @override
  String get notifUpdateReady => 'Update Siap';

  @override
  String notifUpdateReadyBody(String version) {
    return 'Toadplayer v$version didownload. Ketuk untuk instal.';
  }

  @override
  String get notifUpdateFailed => 'Update Gagal';

  @override
  String get notifUpdateFailedBody =>
      'Tidak dapat mendownload update. Coba lagi nanti.';

  @override
  String get searchTracks => 'Lagu';

  @override
  String get homeSearchHintDefault =>
      'Telusuri atau tempel URL yang didukung...';

  @override
  String homeSearchHintProvider(String providerName) {
    return 'Telusuri dengan $providerName...';
  }

  @override
  String get homeImportCsvTooltip => 'Impor playlist (CSV, M3U)';

  @override
  String get homeChangeSearchProviderTooltip => 'Ubah provider penelusuran';

  @override
  String get actionPaste => 'Tempel';

  @override
  String get tutorialSearchHint => 'Tempel atau telusuri...';

  @override
  String get tutorialDownloadCompletedSemantics => 'Download selesai';

  @override
  String get tutorialDownloadInProgressSemantics => 'Sedang download';

  @override
  String get tutorialStartDownloadSemantics => 'Mulai download';

  @override
  String get optionsEmbedMetadata => 'Metadata Tersemat';

  @override
  String get optionsEmbedMetadataSubtitleOn =>
      'Edit metadata, foto cover, dan lirik tersemat ke file';

  @override
  String get optionsEmbedMetadataSubtitleOff =>
      'Mati (lanjutan): lewati semua penyematan metadata';

  @override
  String get trackCoverNoEmbeddedArt => 'Tidak ada foto cover tersemat';

  @override
  String get trackCoverReplace => 'Ubah Cover';

  @override
  String get trackCoverPick => 'Pilih Cover';

  @override
  String get trackCoverClearSelected => 'Hapus cover terpilih';

  @override
  String get trackCoverCurrent => 'Cover sekarang';

  @override
  String get trackCoverSelected => 'Cover terpilih';

  @override
  String get trackCoverReplaceNotice =>
      'Cover terpilih akan mengganti cover tersemat bila Anda mengetuk Simpan.';

  @override
  String get trackCoverResolution => 'Resolusi cover';

  @override
  String get trackCoverResolutionHint =>
      'Atur sudut terpanjang saat disimpan. Melebarkan tidak menambah detail foto.';

  @override
  String get trackCoverResizeFailed =>
      'Tidak dapat mengatur ukuran cover. Harap gunakan ukuran atau foto lain.';

  @override
  String get actionStop => 'Stop';

  @override
  String get queueFinalizingDownload => 'Menyelesaikan download';

  @override
  String get queueDownloadNext => 'Download selanjutnya';

  @override
  String get queueMoveUp => 'Pindah ke atas';

  @override
  String get queueMoveDown => 'Pindah ke bawah';

  @override
  String get editMetadataMusicBrainzButton => 'Ambil dari MusicBrainz';

  @override
  String get editMetadataMusicBrainzFilled => 'Diupdate dari MusicBrainz';

  @override
  String get editMetadataMusicBrainzNothing =>
      'Tidak ditemukan dari MusicBrainz';

  @override
  String get editMetadataMusicBrainzNeedsIsrc => 'Butuh tag ISRC';

  @override
  String get nowPlayingRepeatOff => 'Ulangi mati';

  @override
  String get nowPlayingRepeatAll => 'Ulangi semua';

  @override
  String get nowPlayingRepeatOne => 'Ulangi ini';

  @override
  String queueNetworkFailedOffline(int count) {
    return '$count download gagal karena offline';
  }

  @override
  String get queueDownloadedFileMissing => 'Hasil download hilang';

  @override
  String get queueCheckingDownloadedFile => 'Memeriksa hasil download...';

  @override
  String get queueDownloadCompleted => 'Download selesai';

  @override
  String get queueRateLimitTitle => 'Layanan dibatasi';

  @override
  String get queueRateLimitMessage =>
      'Lagu ini mungkin masih tersedia. Tunggu sebentar, kurangi download bersamaan, lalu coba lagi.';

  @override
  String appearanceSelectAccentColor(String hex) {
    return 'Pilih warna aksen $hex';
  }

  @override
  String get logAutoScrollOn => 'Gulir otomatis HIDUP';

  @override
  String get logAutoScrollOff => 'Gulir otomatis MATI';

  @override
  String get logCopyLogs => 'Salin log';

  @override
  String get logClearSearch => 'Hapus penelusuran';

  @override
  String get logIssueIspBlockingLabel => 'TERDETEKSI PEMBLOKIRAN ISP';

  @override
  String get logIssueIspBlockingDescription =>
      'ISP Anda mungkin memblokir akses ke layanan download';

  @override
  String get logIssueIspBlockingSuggestion =>
      'Coba gunakan VPN atau ubah DNS ke 1.1.1.1 atau 8.8.8.8';

  @override
  String get logIssueRateLimitedLabel => 'DIBATASI';

  @override
  String get logIssueRateLimitedDescription =>
      'Terlalu banyak permintaan ke layanan';

  @override
  String get logIssueRateLimitedSuggestion =>
      'Tunggu sebentar sebelum mencoba lagi';

  @override
  String get logIssueNetworkErrorLabel => 'KONEKSI EROR';

  @override
  String get logIssueNetworkErrorDescription => 'Terdeteksi masalah koneksi';

  @override
  String get logIssueNetworkErrorSuggestion => 'Periksa koneksi internet Anda';

  @override
  String get logIssueTrackNotFoundLabel => 'LAGU TIDAK DITEMUKAN';

  @override
  String get logIssueTrackNotFoundDescription =>
      'Beberapa lagu tidak dapat ditemukan di layanan download';

  @override
  String get logIssueTrackNotFoundSuggestion =>
      'Lagu mungkin tidak tersedia dalam kualitas loseless';

  @override
  String get clickableLookingUpArtist => 'Menelusuri artis...';

  @override
  String clickableInformationUnavailable(String type) {
    return '$type informasi tidak tersedia';
  }

  @override
  String get extensionDetailsTags => 'Tag';

  @override
  String get extensionDetailsInformation => 'Informasi';

  @override
  String get extensionUtilityFunctions => 'Fungsi Utilitas';

  @override
  String get actionDismiss => 'Abaikan';

  @override
  String get setupChangeFolderTooltip => 'Ubah folder';

  @override
  String a11yOpenTrackByArtist(String trackName, String artistName) {
    return 'Buka lagu $trackName oleh $artistName';
  }

  @override
  String a11yOpenItem(String itemType, String name) {
    return 'Buka $itemType $name';
  }

  @override
  String a11yOpenItemCount(String title, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'item',
      one: 'item',
    );
    return 'Buka $title, $count $_temp0';
  }

  @override
  String a11yOpenAlbumByArtistTrackCount(
    String albumName,
    String artistName,
    int trackCount,
  ) {
    return 'Buka album $albumName oleh $artistName, $trackCount lagu';
  }

  @override
  String a11yTrackByArtist(String trackName, String artistName) {
    return '$trackName oleh $artistName';
  }

  @override
  String a11ySelectAlbum(String albumName) {
    return 'Pilih album $albumName';
  }

  @override
  String a11yOpenAlbum(String albumName) {
    return 'Buka album $albumName';
  }

  @override
  String get settingsFiles => 'File & Folder';

  @override
  String get settingsFilesSubtitle =>
      'Folder download, nama file, struktur folder';

  @override
  String get settingsMetadata => 'Metadata';

  @override
  String get settingsMetadataSubtitle =>
      'Foto cover, tag, ReplayGain, provider';

  @override
  String get settingsLyrics => 'Lirik';

  @override
  String get settingsLyricsSubtitle => 'Tersemat, mode, provider, opsi bahasa';

  @override
  String get settingsApp => 'Aplikasi';

  @override
  String get settingsAppSubtitle => 'Update, data, repo, debug';

  @override
  String get sectionMetadataProviders => 'Provider';

  @override
  String get sectionDuplicates => 'Duplikat';

  @override
  String get sectionLyricsProviderOptions => 'Opsi Provider';

  @override
  String get metadataProvidersTitle => 'Prioritas Provider Metadata';

  @override
  String get metadataProvidersSubtitle =>
      'Geser untuk mengatur urutan sumber penelusuran dan metadata';

  @override
  String get downloadDeduplication => 'Lewati Lagu yang Sudah Ada';

  @override
  String get downloadDeduplicationEnabled =>
      'Lagu yang sudah ada akan dilewati';

  @override
  String get downloadDeduplicationWithQualityVariants =>
      'File yang sudah ada pada kualitas terpilih akan dilewati';

  @override
  String get downloadDeduplicationDisabled =>
      'Lagu akan tetap didownload walau sudah ada di perangkat';

  @override
  String get downloadQualityVariants => 'Izinkan kualitas berbeda';

  @override
  String get downloadQualityVariantsDescription =>
      'Simpan versi setiap kualitas; tambahkan akhiran kualitas di nama file jika namanya sudah digunakan';

  @override
  String get trackOptionDownloadQualityVariant => 'Download kualitas lain';

  @override
  String get downloadFallbackExtensions => 'Ekstensi Cadangan';

  @override
  String get downloadFallbackExtensionsSubtitle =>
      'Pilih ekstensi yang digunakan sebagai cadangan';

  @override
  String get editMetadataFieldDateHint => 'TTTT-BB-HH atau TTTT';

  @override
  String get editMetadataFieldTrackTotal => 'Total Lagu';

  @override
  String get editMetadataFieldDiscTotal => 'Total Disk';

  @override
  String get editMetadataFieldComposer => 'Komposer';

  @override
  String get editMetadataFieldComment => 'Komentar';

  @override
  String get trackAlbumType => 'Jenis Rilisan';

  @override
  String get editMetadataFieldAlbumTypeHint =>
      'Album, single, EP, kompilasi...';

  @override
  String get editMetadataFieldExplicit => 'Eksplisit';

  @override
  String get editMetadataFieldExplicitHint =>
      'Tandai lagu mengandung konten eksplisit';

  @override
  String get metadataExplicitValue => 'Eksplisit';

  @override
  String get editMetadataFieldUpc => 'UPC/Barcode';

  @override
  String get editMetadataFieldUpcHint => 'Numerik UPC, EAN, atau GTIN';

  @override
  String get editMetadataAdvanced => 'Lanjutan';

  @override
  String get libraryFilterMetadataMissingTrackNumber => 'Nomor lagu hilang';

  @override
  String get libraryFilterMetadataMissingDiscNumber => 'Nomor disk hilang';

  @override
  String get libraryFilterMetadataMissingArtist => 'Nama artis hilang';

  @override
  String get libraryFilterMetadataIncorrectIsrcFormat => 'Format ISRC salah';

  @override
  String get libraryFilterMetadataMissingIsrc => 'ISRC hilang';

  @override
  String get libraryFilterMetadataMissingLabel => 'Nama label hilang';

  @override
  String collectionDeletePlaylistsMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'playlist',
      one: 'playlist',
    );
    return 'Hapus $count $_temp0?';
  }

  @override
  String collectionPlaylistsDeleted(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'playlist',
      one: 'playlist',
    );
    return '$count $_temp0 terhapus';
  }

  @override
  String collectionAddedTracksToPlaylist(int count, String playlistName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'lagu',
      one: 'lagu',
    );
    return 'Menambahkan $count $_temp0 ke $playlistName';
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
      other: 'lagu',
      one: 'lagu',
    );
    return 'Menambahkan $count $_temp0 ke $playlistName ($alreadyCount sudah ada di playlist)';
  }

  @override
  String itemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'item',
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
    return 'Metadata berhasil diupdate ulang ($successCount/$total) - Gagal: $failedCount';
  }

  @override
  String selectionDeleteTracksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'lagu',
      one: 'lagu',
    );
    return 'Hapus $count $_temp0';
  }

  @override
  String queueDownloadSpeedStatus(String speed) {
    return 'Mendownload - ${speed}MB/d';
  }

  @override
  String get queueDownloadStarting => 'Memulai...';

  @override
  String get queueCheckingDownloadSession => 'Memeriksa sesi download...';

  @override
  String get queueResolvingDownloadMetadata => 'Menelusuri metadata lagu...';

  @override
  String get queueResolvingDownloadStream => 'Menyiapkan stream audio...';

  @override
  String get queueWaitingForVerification => 'Menunggu verifikasi...';

  @override
  String get queueResumingAfterVerification =>
      'Melanjutkan setelah verifikasi...';

  @override
  String get a11ySelectTrack => 'Pilih lagu';

  @override
  String get a11yDeselectTrack => 'Batal pilih lagu';

  @override
  String a11yPlayTrackByArtist(String trackName, String artistName) {
    return 'Putar $trackName oleh $artistName';
  }

  @override
  String storeExtensionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ekstensi',
      one: 'ekstensi',
    );
    return '$count $_temp0';
  }

  @override
  String storeRequiresVersion(String version) {
    return 'Harus v$version+';
  }

  @override
  String get logIssueSummary => 'Ringkasan Masalah';

  @override
  String logTotalErrors(int count) {
    return 'Total eror: $count';
  }

  @override
  String logAffectedDomains(String domains) {
    return 'Memengaruhi: $domains';
  }

  @override
  String get libraryScanCancelled => 'Pindai dibatalkan';

  @override
  String get libraryScanCancelledSubtitle =>
      'Anda dapat mencoba lagi saat siap.';

  @override
  String libraryDownloadsHistoryExcluded(int count) {
    return '$count dari histori Download (dikecualikan dari daftar)';
  }

  @override
  String get downloadNativeWorker => 'Worker download native';

  @override
  String get downloadNativeWorkerSubtitle =>
      'Layanan latar belakang Android untuk download ekstensi';

  @override
  String get extensionServiceStatus => 'Status Layanan';

  @override
  String get extensionServiceHealth => 'Kondisi layanan';

  @override
  String extensionHealthChecksConfigured(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'pemeriksaaan',
      one: 'check',
    );
    return '$count $_temp0 berhasil';
  }

  @override
  String get extensionOauthConnectHint =>
      'Ketuk Hubungkan ke Spotify untuk isi kolom.';

  @override
  String extensionLastChecked(String time) {
    return 'Terakhir diperiksa $time';
  }

  @override
  String get extensionRefreshStatus => 'Refresh status';

  @override
  String get extensionCustomUrlHandling => 'Penanganan URL Kustom';

  @override
  String get extensionCustomUrlHandlingSubtitle =>
      'Ekstensi ini dapat menangani link dari situs ini';

  @override
  String get extensionCustomUrlHandlingShareHint =>
      'Bagikan link dari situs ini ke Toadplayer dan ekstensi ini akan menanganinya.';

  @override
  String extensionSettingsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'setelan',
      one: 'setelan',
    );
    return '$count $_temp0';
  }

  @override
  String get extensionHealthOnline => 'Online';

  @override
  String get extensionHealthDegraded => 'Sedang Down';

  @override
  String get extensionHealthOffline => 'Ofline';

  @override
  String get extensionHealthNotConfigured => 'Belum diatur';

  @override
  String get extensionHealthUnknown => 'Tidak Tahu';

  @override
  String get extensionHealthRequired => 'dibutuhkan';

  @override
  String get extensionSettingNotSet => 'Tidak diatur';

  @override
  String get extensionActionFailed => 'Tindakan gagal';

  @override
  String get extensionEnterValue => 'Masukkan isi';

  @override
  String get extensionHealthServiceOnline => 'Layanan online';

  @override
  String get extensionHealthServiceDegraded => 'Layanan sedang down';

  @override
  String get extensionHealthServiceOffline => 'Layanan offline';

  @override
  String get extensionHealthServiceUnknown => 'Status layanan tidak diketahui';

  @override
  String get audioAnalysisStereo => 'Stereo';

  @override
  String get audioAnalysisMono => 'Mono';

  @override
  String trackOpenInService(String serviceName) {
    return 'Buka $serviceName';
  }

  @override
  String get trackLyricsEmbeddedSource => 'Tersemat';

  @override
  String get unknownAlbum => 'Album Tak Dikenal';

  @override
  String get unknownArtist => 'Artis Tak Dikenal';

  @override
  String get permissionAudio => 'Audio';

  @override
  String get permissionStorage => 'Penyimpanan';

  @override
  String get permissionNotification => 'Notifikasi';

  @override
  String get errorInvalidFolderSelected => 'Folder tidak valid';

  @override
  String get storeAnyVersion => 'Mana saja';

  @override
  String get storeCategoryMetadata => 'Metadata';

  @override
  String get storeCategoryDownload => 'Download';

  @override
  String get storeCategoryUtility => 'Utilitas';

  @override
  String get storeCategoryLyrics => 'Lirik';

  @override
  String get storeCategoryIntegration => 'Integrasi';

  @override
  String get artistReleases => 'Rilis';

  @override
  String get editMetadataSelectNone => 'Kosong';

  @override
  String queueRetryAllFailed(int count) {
    return 'Percobaan $count gagal';
  }

  @override
  String get settingsSaveDownloadHistory => 'Simpan histori download';

  @override
  String get settingsSaveDownloadHistorySubtitle =>
      'Simpan download selesai di tampilan histori dan koleksi';

  @override
  String get dialogDisableHistoryTitle => 'Matikan histori download?';

  @override
  String get dialogDisableHistoryMessage =>
      'Histori yang sudah ada akan dihapus. Hasil download akan tetap ada.';

  @override
  String get dialogDisableAndClear => 'Matikan dan hapus';

  @override
  String get openInOtherServices => 'Buka di Layanan Lain';

  @override
  String get shareSheetNoExtensions => 'Tidak ada layanan yang kompatibel';

  @override
  String get shareSheetNotFound => 'Tidak ditemukan';

  @override
  String get shareSheetCopyLink => 'Salin Link';

  @override
  String shareSheetLinkCopied(Object service) {
    return '$service link tersalin';
  }

  @override
  String get libraryPlayback => 'Pemutaran';

  @override
  String get libraryExternalPlayer => 'Pemutar eksternal';

  @override
  String get libraryExternalPlayerSubtitle =>
      'Buka lagu di aplikasi musik lain di perangkatmu';

  @override
  String get libraryBuiltInPreviewPlayer => 'Pemutar bawaan';

  @override
  String get libraryBuiltInPreviewPlayerSubtitle =>
      'Putar musik langsung di Toadplayer';

  @override
  String get nowPlayingTitle => 'Sedang Memutar';

  @override
  String get nowPlayingNothingPlaying => 'Tidak memutar apapun';

  @override
  String get nowPlayingMinimize => 'Perkecil';

  @override
  String get nowPlayingUpNext => 'Selanjutnya';

  @override
  String get nowPlayingAudioOutput => 'Output Audio';

  @override
  String nowPlayingWrittenBy(String writers) {
    return 'Ditulis oleh: $writers';
  }

  @override
  String nowPlayingLyricsProvider(String provider) {
    return 'Lirik: $provider';
  }

  @override
  String get concertGetTickets => 'Dapatkan Tiket';

  @override
  String get concertSetList => 'Daftar Set Konser';

  @override
  String get concertSetListButton => 'Atur Daftar';

  @override
  String get concertAddToCalendar => 'Tambah ke Kalender';

  @override
  String get concertOpenMaps => 'Buka Maps';

  @override
  String get concertDetailsUnavailable =>
      'Detail konser sekarang belum tersedia.';

  @override
  String get concertCalendarUnavailable => 'Tidak dapat membuka kalender.';

  @override
  String get nowPlayingAudioOutputUnavailable =>
      'Tidak dapat membuka setelan output audio.';

  @override
  String get nowPlayingPreviousTrack => 'Lagu Sebelumnya';

  @override
  String get nowPlayingNextTrack => 'Lagu Selanjutnya';

  @override
  String get nowPlayingDetails => 'Detail';

  @override
  String get nowPlayingSleepTimer => 'Timer Tidur';

  @override
  String nowPlayingSleepTimerActive(String time) {
    return 'Berhenti pada $time';
  }

  @override
  String nowPlayingSleepTimerMinutes(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes menit',
      one: '1 menit',
    );
    return '$_temp0';
  }

  @override
  String get nowPlayingSleepTimerOff => 'Matikan timer tidur';

  @override
  String nowPlayingSleepTimerSet(String duration) {
    return 'Timer tidur diatur selama $duration';
  }

  @override
  String get nowPlayingSleepTimerCancelled => 'Timer tidur dimatikan';

  @override
  String get nowPlayingOpenInExternalPlayer => 'Buka di pemutar eksternal';

  @override
  String get nowPlayingHideVolume => 'Sembunyikan volume';

  @override
  String get nowPlayingShowVolume => 'Tampilkan volume';

  @override
  String get nowPlayingTabPlayer => 'Pemutar';

  @override
  String get nowPlayingTabLyrics => 'Lirik';

  @override
  String get nowPlayingNoLyrics => 'Tidak ada lirik';

  @override
  String get nowPlayingInstrumental => 'Jeda instrumental';

  @override
  String get nowPlayingLyricsLanguageOptions => 'Opsi bahasa lirik';

  @override
  String get nowPlayingHidePronunciation => 'Sembunyikan Pengucapan';

  @override
  String get nowPlayingShowPronunciation => 'Tampilkan Pengucapan';

  @override
  String get nowPlayingHideTranslation => 'Sembunyikan Terjemahan';

  @override
  String get nowPlayingShowTranslation => 'Tampilkan Terjemahan';

  @override
  String get nowPlayingSearchLyricsOnline => 'Cari online';

  @override
  String get nowPlayingNoLyricsOnline => 'Lirik tidak ditemukan online';

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
  String get lyricsAiMode => 'Mode Terjemahan';

  @override
  String get lyricsAiModeFast => 'Cepat';

  @override
  String get lyricsAiModeFastDescription =>
      'Menerjemahkan per baris tanpa timing kata. Lebih cepat dengan keluaran lebih sedikit.';

  @override
  String get lyricsAiModeSynced => 'Sinkron';

  @override
  String get lyricsAiModeSyncedDescription =>
      'Menyelaraskan terjemahan dan romanisasi dengan kata serta frasa yang dinyanyikan. Lebih lama dan memerlukan lirik dengan timing kata.';

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
  String get nowPlayingLibraryEmpty => 'Koleksi Anda kosong';

  @override
  String nowPlayingShuffleLibraryFailed(String error) {
    return 'Tidak dapat mengacak koleksi: $error';
  }

  @override
  String get nowPlayingShuffleOn => 'Acak hidup';

  @override
  String get nowPlayingPlayInOrder => 'Putar berurutan';

  @override
  String get nowPlayingShuffleLibrary => 'Acak koleksi';

  @override
  String get nowPlayingQueueEmpty => 'Antrean kosong';

  @override
  String get nowPlayingNoMetadata => 'Metadata tidak tersedia';

  @override
  String get linkDevicesTitle => 'Perangkat';

  @override
  String get linkConnectionConnected => 'Terhubung';

  @override
  String get linkConnectionConnecting => 'Menghubungkan';

  @override
  String get linkConnectionDisconnected => 'Tidak terhubung';

  @override
  String get linkThisPhone => 'Ponsel ini';

  @override
  String linkPlayingOn(String name) {
    return 'Diputar di $name';
  }

  @override
  String linkDesktopDownloads(String name) {
    return 'Download di $name';
  }

  @override
  String linkHandoffStarted(String name) {
    return 'Diputar di $name';
  }

  @override
  String linkHandoffSending(String name) {
    return 'Mengirim lagu ini ke $name...';
  }

  @override
  String linkHandoffMissing(String name, String titles) {
    return 'Diputar di $name. Tidak ditemukan di sana: $titles';
  }

  @override
  String linkHandoffNotFound(String name) {
    return '$name tidak punya satu pun lagu ini';
  }

  @override
  String get linkHandoffNothingPlaying =>
      'Tidak ada yang diputar di ponsel ini';

  @override
  String linkContinueSkipped(String titles) {
    return 'Tidak ada di ponsel ini: $titles';
  }

  @override
  String get linkContinueNotFound =>
      'Tidak ada satu pun lagu ini di ponsel ini';

  @override
  String linkRequestFailed(String name) {
    return 'Tidak dapat menghubungi $name';
  }

  @override
  String linkDownloadOnDesktop(String name) {
    return 'Download di $name';
  }

  @override
  String linkDownloadQueuedOnDesktop(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lagu masuk antrean di $name',
    );
    return '$_temp0';
  }

  @override
  String linkOpenOnDesktop(String name) {
    return 'Buka di $name';
  }

  @override
  String linkOpenedOnDesktop(String name) {
    return 'Dibuka di $name';
  }

  @override
  String linkSendToDesktop(String name) {
    return 'Kirim ke $name';
  }

  @override
  String get linkSaveToPhone => 'Simpan ke ponsel ini';

  @override
  String get linkSavingToPhone => 'Menyimpan ke ponsel ini';

  @override
  String linkSavedToPhone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lagu disimpan ke ponsel ini',
    );
    return '$_temp0';
  }

  @override
  String linkSaveToPhoneFailed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lagu tidak dapat disimpan',
    );
    return '$_temp0';
  }

  @override
  String get linkSaveToPhoneCancelled => 'Penyimpanan dihentikan';

  @override
  String linkTransferPhoneReceiving(int count, String title, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Menyimpan $count lagu dari $name',
      one: 'Menyimpan $title dari $name',
    );
    return '$_temp0';
  }

  @override
  String linkTransferPhoneOffered(int count, String title, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$name mengirim $count lagu ke ponsel ini',
      one: '$name mengirim $title ke ponsel ini',
    );
    return '$_temp0';
  }

  @override
  String get linkTransferPhoneView => 'Lihat';

  @override
  String linkTransferPhoneWith(String name) {
    return 'Transfer dengan $name';
  }

  @override
  String linkTransferPhoneNothing(String name) {
    return 'Tidak ada lagu ini di $name';
  }

  @override
  String linkSendSending(int count, String title, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mengirim $count lagu ke $name',
      one: 'Mengirim $title ke $name',
    );
    return '$_temp0';
  }

  @override
  String linkSendNothing(String name) {
    return 'Tidak ada lagu yang bisa dikirim ke $name';
  }

  @override
  String get linkDownloadStatusQueued => 'Menunggu';

  @override
  String get linkDownloadStatusDownloading => 'Mendownload';

  @override
  String get linkDownloadStatusDone => 'Selesai';

  @override
  String get linkDownloadStatusFailed => 'Gagal';

  @override
  String get announcementUnableToOpenLink =>
      'Tidak dapat membuka link. Coba lagi.';

  @override
  String trackConvertLosslessOutputWithCap(String quality) {
    return 'Output loseless dengan batas $quality';
  }

  @override
  String trackConvertConfirmMessageLosslessCapped(
    String sourceFormat,
    String targetFormat,
    String quality,
  ) {
    return 'Ubah format $sourceFormat ke $targetFormat ($quality)?\n\nOutput tetap menggunakan codec loseless, tapi bit depth/laju sampel akan dibatasi. File asli akan dihapus setelah diubah.';
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
      other: 'lagu',
      one: 'lagu',
    );
    return 'Ubah format $count $_temp0 ke $format ($quality)?\n\nOutput tetap menggunakan codec loseless, tapi bit depth/laju sampel akan dibatasi. File asli akan dihapus setelah diubah.';
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
      'Proxy lirik untuk Musixmatch, Netease, Apple Music, QQ Music, Spotify, Deezer, YouTube, Kugou, dan Genius';

  @override
  String get snackbarPlayingNext => 'Memutar lagu berikutnya';

  @override
  String get snackbarAddedToQueueGeneric => 'Ditambahkan ke antrean';

  @override
  String selectionDeletePlaylistsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'playlist',
      one: 'playlist',
    );
    return 'Hapus $count $_temp0';
  }

  @override
  String get actionShuffle => 'Acak';

  @override
  String get artistShuffleEmpty =>
      'No songs by this artist in your Library yet';

  @override
  String get downloadPrimaryArtistOnlyOn => 'Utama saja: Hidup';

  @override
  String get downloadPrimaryArtistOnlyOff => 'Utama saja: Mati';

  @override
  String get downloadAlbumArtistMetadataPrimaryOnly =>
      'Metadata Artis Album: Utama saja';

  @override
  String get downloadAlbumArtistMetadataFull => 'Metadata Artis Album: Semua';

  @override
  String get trackConvertOriginal => 'Asli';

  @override
  String get trackConvertOriginalQuality => 'Kualitas asli';

  @override
  String get trackConvertLosslessSuffix => 'Loseless';

  @override
  String get trackConvertDithering => 'Dithering';

  @override
  String get trackConvertResampler => 'Resampler';

  @override
  String get trackConvertDitherNone => 'Tidak Ada';

  @override
  String get trackConvertDitherTriangular => 'TPDF';

  @override
  String get trackConvertDitherTriangularHp => 'HP Triangular';

  @override
  String get trackConvertResamplerSwr => 'SWR';

  @override
  String get trackConvertResamplerSoxr => 'SoXR';

  @override
  String get updateSeeReleaseNotes => 'Lihat catatan yang baru untuk detail.';

  @override
  String get unknownTitle => 'Judul tidak diketahui';

  @override
  String get trackPlayNext => 'Putar selanjutnya';

  @override
  String get trackAddToQueue => 'Tambah ke antrean';

  @override
  String snackbarExtensionInstalledEnable(String extensionName) {
    return '$extensionName terinstal. Hidupkan di Setelan > Ekstensi';
  }

  @override
  String snackbarExtensionUpdatedVersion(String extensionName, String version) {
    return '$extensionName diupdate ke v$version';
  }

  @override
  String snackbarFailedToInstallNamed(String extensionName) {
    return 'Gagal menginstal $extensionName';
  }

  @override
  String snackbarFailedToUpdateNamed(String extensionName) {
    return 'Gagal mengupdate $extensionName';
  }

  @override
  String get releaseTypeEp => 'EP';

  @override
  String get releaseTypeSingle => 'SIngle';

  @override
  String get trackCoverOnline => 'Cover internet';

  @override
  String get regionCountryUS => 'Amerika Serikat';

  @override
  String get regionCountryIT => 'Italia';

  @override
  String get regionCountryES => 'Spanyol';

  @override
  String get regionCountryGB => 'Inggris Raya';

  @override
  String get regionCountryFR => 'Prancis';

  @override
  String get regionCountryDE => 'Jerman';

  @override
  String get regionCountryJP => 'Jepang';

  @override
  String get regionCountryKR => 'Korea Selatan';

  @override
  String get regionCountryIN => 'India';

  @override
  String get regionCountryID => 'Indonesia';

  @override
  String get regionCountryBR => 'Brasil';

  @override
  String get regionCountryMX => 'Meksiko';

  @override
  String get regionCountryAU => 'Australia';

  @override
  String get regionCountryCA => 'Kanada';

  @override
  String get regionCountryXK => 'Kosovo';

  @override
  String get extensionVerificationBrowserTitle => 'Browser verifikasi';

  @override
  String get extensionVerificationBrowserSubtitleExternal =>
      'Buka verifikasi di browser default dulu';

  @override
  String get extensionVerificationBrowserSubtitleInApp =>
      'Buka verifikasi di browser aplikasi dulu';

  @override
  String get extensionVerificationBrowserExternal => 'Eksternal';

  @override
  String get extensionVerificationBrowserInApp => 'Aplikasi';

  @override
  String extensionVerificationUnavailable(String extension) {
    return 'Tidak ada halaman verifikasi untuk $extension. Ulang download untuk meminta verifikasi baru.';
  }

  @override
  String get extensionVerificationHelpTitleManual =>
      'Buka verifikasi secara manual';

  @override
  String get extensionVerificationHelpTitleWaiting => 'Menunggu verifikasi';

  @override
  String get extensionVerificationHelpMessageManual =>
      'Toadplayer tidak dapat membuka browser secara otomatis. Buka link ini di browser Anda, atau salin manual.';

  @override
  String get extensionVerificationHelpMessageWaiting =>
      'Jika browser tidak terbuka, atau verifikasi berhasil tapi tidak langsung kembali ke Toadplayer, buka link ini lagu atau salin manual.';

  @override
  String get extensionVerificationClose => 'Tutup';

  @override
  String get extensionVerificationCopyLink => 'Salin link';

  @override
  String get extensionVerificationPasteCallback => 'Tempel callback';

  @override
  String get extensionVerificationLinkCopied => 'Link verifikasi disalin';

  @override
  String get extensionVerificationOpenBrowser => 'Buka browser';

  @override
  String get settingsSearchHint => 'Telusuri setelan';

  @override
  String settingsSearchNoResults(String query) {
    return 'Tidak ada setelan \"$query\"';
  }

  @override
  String get libraryFilterMetadataMissingLyrics => 'Lirik hilang';

  @override
  String get libraryFilterMetadataMissingReplayGain => 'ReplayGain Hilang';

  @override
  String get libraryFilterMetadataHasReplayGain => 'Memiliki ReplayGain';

  @override
  String get libraryFilterIncompleteAlbums => 'Album belum lengkap';

  @override
  String get libraryAlbumCompletenessUnknown =>
      'Kelengkapan album belum diketahui';

  @override
  String libraryAlbumMissingTracks(int present, int expected, int missing) {
    return '$present/$expected lagu · kurang $missing';
  }

  @override
  String get trackOptionCopyTrackName => 'Salin nama lagu';

  @override
  String get trackOptionCopyArtist => 'Salin artis';

  @override
  String get trackOptionCopyTrackAndArtist => 'Salin lagu dan artis';

  @override
  String trackOptionCopyLink(String service) {
    return 'Copy $service link';
  }

  @override
  String get metadataCopyValue => 'Salin isi';

  @override
  String get metadataCopyField => 'Salin isi kolom';

  @override
  String get toadplayerSearch => 'Telusuri';

  @override
  String get toadplayerContinuePlaying => 'Lanjut Memutar';

  @override
  String get metadataCopyAll => 'Salin semua metadata';

  @override
  String get optionsEmbeddedCoverSize => 'Ukuran Cover Tersemat';

  @override
  String get optionsEmbeddedCoverSizeDescription =>
      'Turunkan kualitas foto cover sebelum menyematkannya. Foto yang berada di batas ukuran tidak akan dimodifikasi.';

  @override
  String get toadplayerFavorite => 'Favorit';

  @override
  String get toadplayerGoToArtist => 'Buka Artis';

  @override
  String get toadplayerGetInfo => 'Get Info';

  @override
  String get toadplayerFavorited => 'Terfavorit';

  @override
  String get autoMixDescription =>
      'Padukan musik dengan pencocokan bit dan penyesuaian tempo. Menggunakan crossfade bila beat tidak dapat dicocokkan.';

  @override
  String get gaplessPlayback => 'Gapless playback';

  @override
  String get gaplessPlaybackDescription =>
      'Start the next song the moment one ends, without silence between them. AutoMix replaces it while on.';

  @override
  String get playerCoverStyle => 'Foto cover';

  @override
  String get landscapeLyricsArtwork => 'Cover album di samping lirik';

  @override
  String get landscapeLyricsArtworkDescription =>
      'Tampilkan cover album menggantikan detail lagu pada player Material dalam posisi landscape';

  @override
  String get autoHideLyricsControls => 'Lirik layar penuh otomatis';

  @override
  String get autoHideLyricsControlsDescription =>
      'Sembunyikan kontrol player setelah 5 detik saat lirik terbuka. Nonaktifkan untuk mempertahankan tampilan saat ini';

  @override
  String get compactPlayer => 'Compact player';

  @override
  String get compactPlayerDescription =>
      'When lyrics are left alone, shrink the player to a slim bar so the lyrics get more room. A tap brings the full player back';

  @override
  String get playerCoverStyleDefault => 'Default';

  @override
  String get playerCoverStyleCard => 'Kartu';

  @override
  String get playerCoverStyleDefaultDescription =>
      'Artwork berupa kartu di atas kontrol';

  @override
  String get playerCoverStyleFullScreen => 'Layar penuh';

  @override
  String get playerCoverStyleFullScreenDescription =>
      'Artwork memenuhi bagian atas player lalu memudar menjadi blur. Artwork bergerak di Toadplayer selalu layar penuh';

  @override
  String get musicHaptics => 'Haptik musik';

  @override
  String get musicHapticsDescription =>
      'Getar mengikuti ketukan lagu unduhan dan lokal';

  @override
  String get musicHapticsSensitivity => 'Sensitivitas';

  @override
  String get musicHapticsStrength => 'Kekuatan';

  @override
  String get autoMixOn => 'AutoMix hidup';

  @override
  String get autoMixOff => 'AutoMix mati';

  @override
  String get autoplayOn => 'Autoplay hidup';

  @override
  String get autoplayOff => 'Autoplay mati';

  @override
  String get queueAutoplay => 'Autoplay';

  @override
  String get queueAutoMix => 'AutoMix';

  @override
  String get autoplayFromLibrary => 'Autoplay dari Koleksi Anda';

  @override
  String get autoplayDescription =>
      'Lanjutkan dengan lagu terkait dari Koleksi saat antrean berakhir.';

  @override
  String get autoplayPersonalization => 'Autoplay personal';

  @override
  String get autoplayPersonalizationDescription =>
      'Pelajari lagu yang kamu dengarkan dan lewati secara privat di perangkat ini. Mematikannya menghentikan pembelajaran dan mengembalikan autoplay biasa.';

  @override
  String get autoplayResetLearning => 'Reset pembelajaran rekomendasi';

  @override
  String get autoplayResetLearningConfirmTitle =>
      'Reset pembelajaran rekomendasi?';

  @override
  String get autoplayResetLearningConfirmMessage =>
      'Autoplay akan melupakan apa yang dipelajari dari lagu yang kamu dengar dan lewati. Tindakan ini tidak bisa dibatalkan.';

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

    return 'Peringkat menyesuaikan denganmu setelah $minimumString lagu Autoplay ($countString sejauh ini)';
  }

  @override
  String get autoplayLearningWaiting =>
      'Peringkat standar sampai ada lagu Autoplay terbaru yang kamu dengarkan dan yang kamu lewati';

  @override
  String autoplayLearningTuned(int learned, int starting) {
    return 'Disesuaikan untukmu: akurasi $learned% pada lagu terbarumu (standar $starting%)';
  }

  @override
  String autoplayLearningStandard(int learned, int starting) {
    return 'Peringkat standar: penyesuaian tidak lebih akurat pada lagu terbarumu ($learned% vs $starting%)';
  }

  @override
  String get songAnalysis => 'Analisis lagu';

  @override
  String get songAnalysisDescription =>
      'Pelajari bunyi setiap lagu di Koleksi secara privat di perangkat ini, agar Autoplay memilih lagu yang terdengar seperti yang kamu putar dan menyambung dengan mulus.';

  @override
  String get songAnalysisOnlyWhileCharging => 'Hanya saat mengisi daya';

  @override
  String get songAnalysisOnlyWhileChargingDescription =>
      'Analisis Koleksi hanya saat ponsel ini mengisi daya. Lagu yang sedang diputar tetap dianalisis.';

  @override
  String songAnalysisProgress(int analyzed, int total) {
    final intl.NumberFormat analyzedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String analyzedString = analyzedNumberFormat.format(analyzed);
    final intl.NumberFormat totalNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String totalString = totalNumberFormat.format(total);

    return '$analyzedString dari $totalString lagu telah dianalisis';
  }

  @override
  String get songAnalysisClear => 'Hapus analisis lagu';

  @override
  String get songAnalysisClearConfirmTitle => 'Hapus analisis lagu?';

  @override
  String get songAnalysisClearConfirmMessage =>
      'Autoplay akan melupakan bunyi lagu-lagumu. Selama analisis lagu aktif, Koleksi akan dianalisis ulang.';

  @override
  String get songAnalysisClearConfirm => 'Hapus';

  @override
  String get profileTitle => 'Profil';

  @override
  String get profileSetUp => 'Atur profil Anda';

  @override
  String get profileEdit => 'Edit nama dan foto';

  @override
  String get backupIncludesProfile => 'Termasuk nama dan foto profil';

  @override
  String get profileName => 'Nama';

  @override
  String get profileNameHint => 'Nama Anda';

  @override
  String get profileChangePhoto => 'Pilih foto';

  @override
  String get profileRemovePhoto => 'Hapus foto';

  @override
  String get profilePhotoError => 'Pilih foto yang di bawah 20MB.';

  @override
  String get profileSaveError =>
      'Tidak dapat menyimpan profil Anda. Coba lagi.';

  @override
  String get homeGreetingMorning1 => 'Selamat pagi';

  @override
  String get homeGreetingMorning2 => 'Pagi yang cerah';

  @override
  String get homeGreetingMorning3 => 'Awali harimu';

  @override
  String get homeGreetingAfternoon1 => 'Selamat siang';

  @override
  String get homeGreetingAfternoon2 => 'Siang yang santai';

  @override
  String get homeGreetingAfternoon3 => 'Tetap semangat';

  @override
  String get homeGreetingEvening1 => 'Selamat malam';

  @override
  String get homeGreetingEvening2 => 'Waktunya rileks';

  @override
  String get homeGreetingEvening3 => 'Senja yang syahdu';

  @override
  String get homeGreetingNight1 => 'Selamat malam';

  @override
  String get homeGreetingNight2 => 'Teman begadang';

  @override
  String get homeGreetingNight3 => 'Malam yang tenang';

  @override
  String homeGreetingNamed(String greeting, String name) {
    return '$greeting, $name';
  }

  @override
  String get homeTaglineListening => 'Mau dengar apa hari ini?';

  @override
  String get homeTaglineLink => 'Punya link? Tempel saja di pencarian';

  @override
  String get homeTaglineDiscover => 'Temukan album favoritmu berikutnya';

  @override
  String get homeContinueListening => 'Lanjutkan mendengarkan';

  @override
  String get homeRecentlyPlayed => 'Recently Played';

  @override
  String get homeRecentlyAdded => 'Baru ditambahkan';

  @override
  String get homeOnRepeat => 'Sering diputar';

  @override
  String get homeShortcuts => 'Pintasan';

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
  String get artistUpcomingConcerts => 'Konser Mendatang';

  @override
  String get artistAllUpcomingConcerts => 'Semua Konser Mendatang';

  @override
  String get artistNoUpcomingConcerts => 'Tiada konser mendatang.';

  @override
  String get motionArtwork => 'Artwork bergerak';

  @override
  String get listeningStats => 'Statistik mendengarkan';

  @override
  String get listeningStatsRecord => 'Catat waktu mendengarkan';

  @override
  String get listeningStatsDescription =>
      'Disimpan hanya di perangkat ini, mulai sekarang. Hanya mencatat player bawaan; pause, buffering, dan seek tidak menambah waktu dengar. Pemutaran dihitung setelah 30 detik.';

  @override
  String get listeningStatsEmpty =>
      'Putar musik dengan player bawaan untuk memulai ringkasan mendengarkan. Riwayat sebelumnya tidak dapat dipulihkan.';

  @override
  String listeningStatsDays(int days) {
    return '$days hari';
  }

  @override
  String listeningStatsMinutes(int minutes) {
    return '$minutes menit';
  }

  @override
  String listeningStatsTotals(int plays, int tracks, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      plays,
      locale: localeName,
      other: '$plays putar',
      one: '1 putar',
    );
    String _temp1 = intl.Intl.pluralLogic(
      tracks,
      locale: localeName,
      other: '$tracks lagu',
      one: '1 lagu',
    );
    String _temp2 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days hari aktif',
      one: '1 hari aktif',
    );
    return '$_temp0 · $_temp1 · $_temp2';
  }

  @override
  String get listeningStatsPreviousYear => 'Tahun sebelumnya';

  @override
  String get listeningStatsNextYear => 'Tahun berikutnya';

  @override
  String get listeningStatsActivity => 'Hari mendengarkan terbaru · menit';

  @override
  String get listeningStatsTopArtists => 'Artis teratas';

  @override
  String get listeningStatsTopTracks => 'Lagu teratas';

  @override
  String get listeningStatsLoadError =>
      'Statistik mendengarkan tidak dapat dimuat';

  @override
  String get listeningStatsClear => 'Hapus statistik mendengarkan';

  @override
  String get listeningStatsClearError =>
      'Statistik mendengarkan tidak dapat dihapus. Silakan coba lagi.';

  @override
  String get listeningStatsClearDescription =>
      'Hapus semua statistik mendengarkan di perangkat ini? Musik dan playlist tetap tersimpan.';

  @override
  String get libraryArtistsEmpty =>
      'Artis muncul di sini setelah kamu mengunduh musik atau memindai library lokal.';

  @override
  String get listeningRewind => 'Rewind';

  @override
  String get listeningRewindDescription =>
      'Lihat lagi momen menarik dari minggu dan bulan terakhir';

  @override
  String get listeningRewindChoosePeriod => 'Pilih periode';

  @override
  String listeningRewindLastWeeks(int weeks) {
    return '$weeks minggu terakhir';
  }

  @override
  String listeningRewindLastMonths(int months) {
    return '$months bulan terakhir';
  }

  @override
  String listeningRewindThisYear(int year) {
    return 'Sepanjang $year';
  }

  @override
  String get listeningRewindIntroTitle => 'Rewind kamu';

  @override
  String listeningRewindIntroBody(String start, String end) {
    return 'Kilas balik musik yang kamu putar dari $start sampai $end.';
  }

  @override
  String get listeningRewindMinutesTitle => 'Kamu mendengarkan selama';

  @override
  String listeningRewindMinutesUnit(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: 'menit',
      one: 'menit',
    );
    return '$_temp0';
  }

  @override
  String listeningRewindHours(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: 'Itu sama dengan $hours jam mendengar',
      one: 'Itu sama dengan 1 jam mendengar',
    );
    return '$_temp0';
  }

  @override
  String listeningRewindMore(int percent) {
    return '$percent% lebih banyak dari periode sebelumnya';
  }

  @override
  String listeningRewindLess(int percent) {
    return '$percent% lebih sedikit dari periode sebelumnya';
  }

  @override
  String get listeningRewindSame =>
      'Kurang lebih sama dengan periode sebelumnya';

  @override
  String get listeningRewindTopArtistTitle => 'Artis teratasmu';

  @override
  String listeningRewindArtistShare(int percent) {
    return '$percent% dari waktu mendengarkanmu';
  }

  @override
  String get listeningRewindArtistsTitle => 'Artis yang sering diputar';

  @override
  String get listeningRewindTopTrackTitle => 'Lagu teratasmu';

  @override
  String listeningRewindPlays(int plays) {
    String _temp0 = intl.Intl.pluralLogic(
      plays,
      locale: localeName,
      other: '$plays putar',
      one: '1 putar',
    );
    return '$_temp0';
  }

  @override
  String get listeningRewindTracksTitle => 'Lagu yang terus diulang';

  @override
  String get listeningRewindTopAlbumTitle => 'Album yang terus kamu putar';

  @override
  String get listeningRewindNewArtistsTitle => 'Temuan baru';

  @override
  String listeningRewindNewArtistsBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kamu ketemu $count artis baru',
      one: 'Kamu ketemu 1 artis baru',
    );
    return '$_temp0';
  }

  @override
  String get listeningRewindRhythmTitle => 'Ritme mendengarkanmu';

  @override
  String get listeningRewindPeakDay => 'Hari tersibuk';

  @override
  String get listeningRewindFavoriteDay => 'Hari favorit';

  @override
  String get listeningRewindStreak => 'Streak terpanjang';

  @override
  String listeningRewindStreakDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days hari berturut-turut',
      one: '1 hari',
    );
    return '$_temp0';
  }

  @override
  String get listeningRewindReplayTitle => 'Tak bisa berhenti memutar';

  @override
  String listeningRewindReplayBody(int plays, String date) {
    return 'Kamu memutarnya $plays kali pada $date';
  }

  @override
  String get listeningRewindOutroTitle => 'Itulah Rewind kamu';

  @override
  String get listeningRewindOutroBody =>
      'Terus dengarkan. Rewind berikutnya sudah mulai terbentuk.';

  @override
  String get listeningRewindEmpty =>
      'Belum cukup aktivitas mendengarkan di periode ini. Putar musik lewat pemutar bawaan, lalu kembali lagi nanti.';

  @override
  String get listeningRewindLoadError => 'Gagal memuat Rewind';

  @override
  String listeningRewindSlide(int index, int count) {
    return 'Slide $index dari $count';
  }

  @override
  String get listeningRewindShare => 'Bagikan';

  @override
  String get listeningRewindShareError => 'Gagal membagikan Rewind';

  @override
  String get listeningRewindNext => 'Berikutnya';

  @override
  String get listeningRewindPrevious => 'Sebelumnya';

  @override
  String get listeningRewindMonthlyReady =>
      '4 minggu terakhirmu siap diputar ulang';

  @override
  String listeningRewindYearTitle(String year) {
    return 'Musikmu di $year';
  }

  @override
  String get listeningRewindYearEyebrow => 'Rewind akhir tahun';

  @override
  String get listeningRewindYearBanner =>
      'Artis, lagu, dan momen terbaikmu tahun ini';

  @override
  String get listeningRewindYearIntroBody =>
      'Semua yang kamu putar tahun ini, dari lagu pertama sampai bulan tersibukmu.';

  @override
  String get listeningRewindNumbersTitle => 'Tahunmu dalam angka';

  @override
  String get listeningRewindSongsLabel => 'Lagu';

  @override
  String get listeningRewindArtistsLabel => 'Artis';

  @override
  String get listeningRewindAlbumsLabel => 'Album';

  @override
  String get listeningRewindDaysLabel => 'Hari bermusik';

  @override
  String listeningRewindDaysShare(int percent) {
    return 'Ada musik di $percent% harimu';
  }

  @override
  String get listeningRewindMonthsTitle => 'Bulan demi bulan';

  @override
  String get listeningRewindBiggestMonthLabel => 'Bulan tersibuk';

  @override
  String listeningRewindBiggestMonth(String month) {
    return 'Bulan tersibukmu adalah $month';
  }

  @override
  String get listeningRewindMonthlyArtistsTitle => 'Artis tiap bulan';

  @override
  String get listeningRewindLoyalTitle => 'Selalu menemanimu';

  @override
  String listeningRewindLoyalBody(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Menemanimu di $days hari berbeda',
      one: 'Menemanimu di 1 hari',
    );
    return '$_temp0';
  }

  @override
  String get listeningRewindFirstSongTitle => 'Awal tahunmu';

  @override
  String listeningRewindFirstSongBody(String date) {
    return 'Lagu yang paling sering diputar pada hari pertama kamu mendengarkan, $date';
  }

  @override
  String listeningRewindYearOutroTitle(String year) {
    return 'Itulah $year-mu';
  }

  @override
  String get listeningRewindYearOutroBody =>
      'Sampai jumpa di tahun penuh musik berikutnya.';

  @override
  String get weeklyReleases => 'Rilis baru';

  @override
  String get weeklyReleasesDescription =>
      'Album dan single terbaru dari artis favorit, melalui extension metadata yang terpasang.';

  @override
  String get weeklyReleasesEmpty =>
      'Tidak ditemukan rilis dengan tanggal dalam periode ini. Tambahkan artis favorit atau coba periode lebih panjang.';

  @override
  String get weeklyReleasesUnavailable =>
      'Beberapa artis tidak dapat diperiksa. Hasil tersimpan tetap dipertahankan. Penyedia mungkin tidak memberikan katalog artis atau tanggal rilis lengkap.';

  @override
  String get weeklyReleasesLoadError =>
      'Rilis baru tidak dapat diperiksa. Tarik untuk memuat ulang.';

  @override
  String get motionArtworkDescription =>
      'Putar berulang cover video dari penyedia metadata. Matikan untuk memakai cover diam dan menghemat baterai.';

  @override
  String get libraryLoading => 'Memuat Library…';

  @override
  String get libraryLoadFailed =>
      'Library tidak dapat dimuat. Coba lagi untuk memuat folder tersimpan dan indeks lagu.';

  @override
  String get discordPresenceDescription =>
      'Tampilkan judul, artis, album, dan progres musik dari pemutar bawaan di profil Discord Anda. File audio dan cover lokal tidak diunggah. Status dihapus saat musik dijeda atau dihentikan.';

  @override
  String get discordPresenceDisabled => 'Nonaktif';

  @override
  String get discordPresenceLink => 'Hubungkan akun Discord';

  @override
  String get discordPresenceConnecting => 'Menghubungkan ke Discord…';

  @override
  String get discordPresenceReady => 'Siap saat musik diputar';

  @override
  String get discordPresenceActive => 'Menampilkan lagu saat ini';

  @override
  String get discordPresenceUnavailable =>
      'Discord tidak tersedia. Mencoba lagi saat musik diputar.';

  @override
  String get discordPresenceBuildUnavailable =>
      'SDK Discord tidak tersedia di build ini.';

  @override
  String get discordPresenceAndroidHelp =>
      'Pasang Discord dan masuk di ponsel ini. Izinkan berbagi aktivitas di Discord. Pemutar eksternal tidak didukung.';

  @override
  String get discordPresenceIosHelp =>
      'Hubungkan akun melalui Discord dan izinkan berbagi aktivitas. Ketuk untuk menghubungkan ulang jika otorisasi gagal.';

  @override
  String get discordPresenceDesktopHelp =>
      'Biarkan aplikasi desktop Discord berjalan dan masuk di komputer ini, lalu izinkan berbagi aktivitas di Discord.';

  @override
  String get discordPresenceDisconnect => 'Putuskan dan lupakan akun';

  @override
  String get autoMixSettingsTitle => 'Transisi mix';

  @override
  String get autoMixAutomaticDuration => 'Durasi otomatis';

  @override
  String get autoMixDuration => 'Durasi mix';

  @override
  String get autoMixEffect => 'Efek transisi';

  @override
  String get autoMixEffectAuto => 'Otomatis';

  @override
  String get autoMixEffectCrossfade => 'Crassfade';

  @override
  String get autoMixEffectMuffled => 'Redam';

  @override
  String get autoMixEffectEcho => 'Gema';

  @override
  String get autoMixEffectPitch => 'Nada';

  @override
  String get autoMixEffectCustom => 'Kustom';

  @override
  String get autoMixEffectsHelp =>
      'Efek diterapkan pada akhir lagu yang keluar selama mix. Lagu pendek memakai overlap yang lebih singkat.';

  @override
  String get autoMixSpeed => 'Kecepatan';

  @override
  String get autoMixPitch => 'Nada (semitone)';

  @override
  String get autoMixEcho => 'Gema';

  @override
  String get autoMixLowPass => 'Filter redam';

  @override
  String get autoMixMixing => 'Mixing';

  @override
  String get autoMixCrossfading => 'Crossfade';

  @override
  String get playbackAutomation => 'Pemutaran otomatis';

  @override
  String get playbackPauseOnMute => 'Jeda saat volume nol';

  @override
  String get snackbarPlaybackMuted =>
      'Volume media nol. Lagu dijeda. Tekan play lagi untuk tetap memutar.';

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
      'Jeda saat volume media nol dan lanjutkan saat dinaikkan. Jeda manual tetap dihormati. Hanya untuk keluaran audio standar.';

  @override
  String get playbackOnHeadphonesConnected => 'Putar saat earphone terhubung';

  @override
  String get playbackOnHeadphonesConnectedDescription =>
      'Lanjutkan lagu saat earphone kabel atau Bluetooth terhubung. Pemutaran dijeda saat dilepas. Hanya untuk pemutar bawaan.';

  @override
  String get appearanceCustomFont => 'Font kustom';

  @override
  String get appearanceCustomFontSubtitle =>
      'Impor file TTF atau OTF (maksimal 10 MB). Menggantikan font tema dan sistem.';

  @override
  String get appearanceCustomFontInvalid =>
      'Font tidak dapat dimuat. Pilih file TTF atau OTF yang valid, maksimal 10 MB.';

  @override
  String get appearanceCustomFontReset => 'Gunakan font tema';

  @override
  String get equalizerTitle => 'Equalizer';

  @override
  String get equalizerDescription =>
      '5–31 band, kontrol nada, preamp, dan dinamika';

  @override
  String get equalizerEnable => 'Aktifkan equalizer';

  @override
  String get equalizerBands => 'Band';

  @override
  String get equalizerTone => 'Nada & stereo';

  @override
  String get equalizerPreamp => 'Preamp';

  @override
  String get equalizerBass => 'Bass';

  @override
  String get equalizerTreble => 'Treble';

  @override
  String get equalizerBalance => 'Keseimbangan';

  @override
  String get equalizerDynamics => 'Dinamika';

  @override
  String get equalizerHeadroom => 'Headroom otomatis';

  @override
  String get equalizerHeadroomDescription =>
      'Kurangi penguatan input untuk memberi ruang pada frekuensi yang dinaikkan.';

  @override
  String get equalizerLimiter => 'Limiter puncak';

  @override
  String get equalizerLimiterDescription =>
      'Jaga puncak di bawah −0,5 dBFS untuk mengurangi clipping.';

  @override
  String get equalizerCompressor => 'Compressor';

  @override
  String get equalizerCompressorDescription =>
      'Kurangi selisih antara bagian yang pelan dan keras.';

  @override
  String get equalizerThreshold => 'Threshold';

  @override
  String get equalizerRatio => 'Rasio';

  @override
  String get equalizerAttack => 'Attack';

  @override
  String get equalizerRelease => 'Release';

  @override
  String get equalizerPresets => 'Preset';

  @override
  String get equalizerSavePreset => 'Simpan preset';

  @override
  String get equalizerPresetName => 'Nama preset';

  @override
  String get equalizerImport => 'Impor preset';

  @override
  String get equalizerExport => 'Bagikan preset';

  @override
  String get equalizerImportInvalid =>
      'Pilih preset equalizer Toadplayer yang valid (JSON, maksimal 64 KB).';

  @override
  String get equalizerSaved => 'Preset disimpan';

  @override
  String get equalizerResetTitle => 'Reset equalizer?';

  @override
  String get equalizerResetDescription =>
      'Kembalikan kurva datar serta pengaturan nada dan dinamika bawaan. Preset tersimpan tetap disimpan.';

  @override
  String get equalizerBypass =>
      'Output bit-perfect, Direct USB, dan Hi-Res eksklusif melewati EQ. Nonaktifkan output bit-perfect untuk memakai EQ. Player eksternal mengatur efeknya sendiri.';

  @override
  String get equalizerCurve => 'Kurva EQ (perkiraan)';

  @override
  String get equalizerCurveDescription =>
      'Kurva menunjukkan gain tiap band; respons pastinya bergantung pada mesin output.';

  @override
  String get equalizerEffectivePreamp => 'Gain input setelah headroom';

  @override
  String get equalizerDeletePreset => 'Hapus preset';

  @override
  String get equalizerCustom => 'Kustom';

  @override
  String get equalizerManagePresets => 'Kelola preset';

  @override
  String get lyricsShareTitle => 'Bagikan lirik';

  @override
  String lyricsShareSelectHint(int count) {
    return 'Pilih hingga $count baris';
  }

  @override
  String lyricsShareLimit(int count) {
    return 'Kamu bisa membagikan hingga $count baris';
  }

  @override
  String get lyricsShareAction => 'Bagikan';

  @override
  String get lyricsShareError => 'Gagal membuat gambar lirik';

  @override
  String get lyricsShareBackgroundArtwork => 'Foto cover';

  @override
  String get lyricsShareBackgroundColor => 'Warna cover';

  @override
  String get lyricsShareBackgroundDark => 'Gelap';

  @override
  String get lyricsShareBackgroundLight => 'Terang';

  @override
  String get audioInfoTitle => 'Info audio';

  @override
  String get audioInfoSource => 'File sumber';

  @override
  String get audioInfoSignal => 'Sinyal';

  @override
  String get audioInfoLoudness => 'Kenyaringan';

  @override
  String get audioInfoProcessing => 'Pemrosesan';

  @override
  String get audioInfoOutput => 'Output';

  @override
  String get audioInfoAnalysis => 'Analisis spektrum dan level';

  @override
  String get audioInfoQuality => 'Kualitas';

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
  String get audioInfoChannels => 'Kanal';

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
  String get audioInfoDuration => 'Durasi';

  @override
  String get audioInfoFileSize => 'Ukuran file';

  @override
  String get audioInfoCompression => 'Kompresi';

  @override
  String audioInfoCompressionValue(String percent) {
    return '$percent% dari ukuran tanpa kompresi';
  }

  @override
  String get audioInfoLocation => 'Lokasi';

  @override
  String get audioInfoLocationLocal => 'Penyimpanan perangkat';

  @override
  String get audioInfoLocationShared => 'Folder bersama';

  @override
  String get audioInfoLocationNetwork => 'Penyimpanan jaringan';

  @override
  String audioInfoLocationLink(String device) {
    return '$device via Toadplayer Link';
  }

  @override
  String get audioInfoPcmRate => 'Data rate tanpa kompresi';

  @override
  String get audioInfoFrequencyRange => 'Rentang frekuensi';

  @override
  String audioInfoFrequencyRangeValue(String frequency) {
    return 'Hingga $frequency (Nyquist)';
  }

  @override
  String get audioInfoDynamicRange => 'Rentang dinamis teoretis';

  @override
  String get audioInfoTrackGain => 'Gain lagu';

  @override
  String get audioInfoTrackPeak => 'Puncak lagu';

  @override
  String get audioInfoAlbumGain => 'Gain album';

  @override
  String get audioInfoAlbumPeak => 'Puncak album';

  @override
  String get audioInfoNoGainTags => 'Tidak ada tag ReplayGain';

  @override
  String audioInfoApplied(String gain) {
    return 'Diterapkan $gain';
  }

  @override
  String get audioInfoOn => 'Aktif';

  @override
  String get audioInfoOff => 'Nonaktif';

  @override
  String get audioInfoBypassed => 'Dilewati oleh output langsung';

  @override
  String get audioInfoPlayer => 'Pemutar';

  @override
  String get audioInfoPlayerValue => 'Pemutar bawaan Toadplayer';

  @override
  String get audioInfoSignalPath => 'Jalur sinyal';

  @override
  String get audioInfoPathSystem => 'Mixer sistem';

  @override
  String get audioInfoPathDirect => 'USB langsung, melewati mixer sistem';

  @override
  String get audioInfoPathExclusive =>
      'Output eksklusif, melewati mixer sistem';

  @override
  String get audioInfoDecoder => 'Decoder';

  @override
  String get audioInfoHardware => 'Perangkat keras';

  @override
  String get audioInfoSoftware => 'Perangkat lunak';

  @override
  String audioInfoBands(int count) {
    return '$count band';
  }

  @override
  String get audioInfoTempo => 'Tempo';

  @override
  String get audioInfoResampling => 'Resampling';

  @override
  String get audioInfoResamplingNone => 'Tidak ada, rate sama';

  @override
  String get audioInfoBitPerfect => 'Bit-perfect';

  @override
  String get audioInfoBitPerfectActive => 'Ya, sampel tidak diubah';

  @override
  String get audioInfoBitPerfectNo => 'Tidak, dicampur oleh sistem';

  @override
  String get audioInfoBitPerfectUnverified => 'Not verified';

  @override
  String get audioInfoBitPerfectProcessed => 'No, audio processing is active';

  @override
  String get audioInfoDevice => 'Perangkat';

  @override
  String audioInfoDeviceType(String type) {
    String _temp0 = intl.Intl.selectLogic(type, {
      'speaker': 'Speaker ponsel',
      'earpiece': 'Speaker telepon',
      'wired_headphones': 'Headphone kabel',
      'wired_headset': 'Headset kabel',
      'line': 'Line out',
      'bluetooth': 'Bluetooth',
      'bluetooth_le': 'Bluetooth LE Audio',
      'usb': 'Audio USB',
      'usb_headset': 'Headset USB',
      'hdmi': 'HDMI',
      'dock': 'Dock',
      'cast': 'Cast',
      'hearing_aid': 'Alat bantu dengar',
      'airplay': 'AirPlay',
      'car': 'Audio mobil',
      'other': 'Lainnya',
    });
    return '$_temp0';
  }

  @override
  String get audioInfoOutputRate => 'Sample rate output';

  @override
  String get audioInfoOutputFormat => 'Format output';

  @override
  String get audioInfoBluetoothFormat => 'Format codec Bluetooth';

  @override
  String get audioInfoAndroidNotReported => 'Tidak dilaporkan oleh Android';

  @override
  String get audioInfoBluetoothUnavailable =>
      'Tidak tersedia untuk aplikasi ini';

  @override
  String get audioInfoBluetoothUnavailableHint =>
      'Android dapat menampilkan codec aktif di pengaturan Bluetooth tanpa menyediakan informasinya ke Toadplayer. Codec ini terpisah dari format file lagu.';

  @override
  String get audioAnalysisFileBitrate => 'Bitrate file rata-rata';

  @override
  String get audioAnalysisFileBitrateHint =>
      'Termasuk tag dan overhead container. Nilainya dapat berbeda dari bitrate stream audio dan bukan bitrate Bluetooth.';

  @override
  String get audioInfoSystemDefaultRate => 'Sample rate default sistem';

  @override
  String get audioInfoAndroidPcmRates => 'Sample rate PCM Android';

  @override
  String get audioInfoAndroidPcmFormats => 'Format PCM Android';

  @override
  String get audioInfoSystemDefaultBuffer => 'Buffer default sistem';

  @override
  String get audioInfoDeviceRates => 'Sample rate perangkat';

  @override
  String get audioInfoDeviceFormats => 'Format perangkat';

  @override
  String get audioInfoAnyRate => 'Apa saja';

  @override
  String get audioInfoBuffer => 'Buffer mixer';

  @override
  String get audioInfoLatency => 'Latensi output';

  @override
  String get audioInfoLowLatency => 'Audio latensi rendah';

  @override
  String get audioInfoProAudio => 'Audio pro';

  @override
  String get audioInfoSupported => 'Didukung';

  @override
  String get audioInfoNotSupported => 'Tidak didukung';

  @override
  String get audioInfoSpatial => 'Audio spasial';

  @override
  String get audioInfoHeadTracking => 'Pelacakan kepala';

  @override
  String get audioInfoUnavailable => 'Tidak tersedia';

  @override
  String get audioInfoFixedVolume => 'Diatur oleh perangkat';

  @override
  String get audioInfoCopy => 'Salin laporan';

  @override
  String get audioInfoCopied => 'Info audio disalin';

  @override
  String get lyricsTextSize => 'Ukuran teks lirik';

  @override
  String get lyricsTextPreview => 'Ikuti setiap baris lagu favoritmu';

  @override
  String get lyricsBlur => 'Blur lirik';

  @override
  String get lyricsBlurSubtitle =>
      'Seberapa samar baris di sekitar baris yang sedang diputar';

  @override
  String get lyricsBlurOff => 'Mati';

  @override
  String get lyricsOffset => 'Waktu lirik';

  @override
  String get lyricsOffsetSubtitle =>
      'Tampilkan lirik tersinkron lebih lambat atau lebih cepat, misalnya saat audio Bluetooth tertunda';

  @override
  String get lyricsOffsetNone => 'Sinkron';

  @override
  String lyricsOffsetLater(String seconds) {
    return '$seconds dtk lebih lambat';
  }

  @override
  String lyricsOffsetEarlier(String seconds) {
    return '$seconds dtk lebih cepat';
  }

  @override
  String get appCrashTitle => 'Aplikasi sebelumnya mengalami crash';

  @override
  String get appAnrTitle => 'Aplikasi sebelumnya berhenti merespons';

  @override
  String get appAnrMessage =>
      'Laporan diagnostik telah disimpan. Anda dapat menyalin dan mengirimkannya ke developer untuk membantu pemeriksaan.';

  @override
  String get appCrashMessage =>
      'Laporan crash telah disimpan. Salin dan kirimkan ke developer untuk membantu pemeriksaan.';

  @override
  String get appCrashDetails => 'Lihat error dan log';

  @override
  String get appCrashCopy => 'Salin laporan untuk developer';

  @override
  String get appCrashDismiss => 'Tutup';

  @override
  String get appCrashCopyFailed =>
      'Laporan crash belum bisa disalin. Silakan coba lagi.';

  @override
  String get appCrashDismissFailed =>
      'Laporan crash belum bisa ditutup. Silakan coba lagi.';

  @override
  String get optionsEmbeddedCoverSizeOriginal => 'Resolusi asli';

  @override
  String desktopShortcutTooltip(String action, String shortcut) {
    return '$action ($shortcut)';
  }

  @override
  String get desktopPlayerIdle => 'Tidak ada yang diputar';

  @override
  String get desktopVolumeUp => 'Naikkan volume';

  @override
  String get desktopVolumeDown => 'Turunkan volume';

  @override
  String desktopTableSortedAscending(String column) {
    return '$column, urut naik';
  }

  @override
  String desktopTableSortedDescending(String column) {
    return '$column, urut turun';
  }

  @override
  String get desktopMenuOpen => 'Buka';

  @override
  String get desktopMenuShowDetails => 'Lihat detail';

  @override
  String get desktopDropToImport =>
      'Lepaskan untuk menambahkan ke perpustakaan';

  @override
  String desktopDropImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'folder',
      one: 'folder',
    );
    return 'Menambahkan $count $_temp0 ke koleksi Anda';
  }

  @override
  String get desktopDropNothingToImport =>
      'Lepaskan berkas atau folder musik untuk menambahkannya ke perpustakaan';

  @override
  String get desktopAllPlaylists => 'Semua Playlist';

  @override
  String get desktopMenuSettings => 'Pengaturan…';

  @override
  String get desktopMenuFile => 'Berkas';

  @override
  String get desktopMenuEdit => 'Edit';

  @override
  String get desktopMenuView => 'Tampilan';

  @override
  String get desktopWindowMode => 'Mode jendela';

  @override
  String get desktopWindowed => 'Berjendela';

  @override
  String get desktopWindowFullscreen => 'Layar penuh';

  @override
  String get desktopWindowBorderless => 'Tanpa bingkai';

  @override
  String get desktopExitFullscreen => 'Keluar layar penuh';

  @override
  String get desktopMinimizeWindow => 'Minimalkan jendela';

  @override
  String get desktopZoomWindow => 'Maksimalkan atau pulihkan jendela';

  @override
  String get desktopWindowModeUnavailable =>
      'Mode jendela tidak dapat diubah. Coba lagi setelah perpindahan jendela selesai.';

  @override
  String get desktopMenuControls => 'Kontrol';

  @override
  String get desktopMenuWindow => 'Jendela';

  @override
  String get desktopMenuHelp => 'Bantuan';

  @override
  String get desktopMenuPlayPause => 'Putar/Jeda';

  @override
  String get desktopMenuMiniPlayer => 'Mini Player';

  @override
  String get desktopMiniPlayerExpand => 'Tampilan Jendela Penuh';

  @override
  String get desktopMenuRefresh => 'Refresh';

  @override
  String get desktopMenuProjectPage => 'Halaman proyek';

  @override
  String get desktopDownloadsShowAll => 'Tampilkan semua';

  @override
  String get desktopDownloadsQueued => 'Menunggu';

  @override
  String get desktopDownloadsCancel => 'Batalkan download';

  @override
  String get linkDesktopSettingsTitle => 'Toadplayer di ponsel';

  @override
  String get linkDesktopSettingsSubtitle =>
      'Putar Library dan kendalikan pemutaran dari ponsel';

  @override
  String get linkDesktopEnableTitle => 'Bagikan ke Toadplayer di ponsel';

  @override
  String get linkDesktopEnableSubtitle =>
      'Ponsel dapat menjelajah, memutar, dan download melalui komputer ini di jaringan lokal';

  @override
  String get linkDesktopStatusStarting => 'Memulai';

  @override
  String linkDesktopStatusRunning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ponsel terhubung',
      zero: 'tidak ada ponsel terhubung',
    );
    return 'Aktif, $_temp0';
  }

  @override
  String linkDesktopStatusFailed(String error) {
    return 'Tidak dapat dimulai: $error';
  }

  @override
  String get linkDesktopFirewallHint =>
      'Komputer mungkin bertanya apakah Toadplayer boleh menerima koneksi jaringan masuk. Izinkan agar ponsel dapat terhubung.';

  @override
  String get linkDesktopSectionComputer => 'Komputer ini';

  @override
  String get linkDesktopDeviceName => 'Nama';

  @override
  String get linkDesktopDeviceNameHint =>
      'Ponsel menampilkan nama ini saat menemukan komputer ini';

  @override
  String get linkDesktopAddress => 'Alamat';

  @override
  String get linkDesktopSecurityCode => 'Kode keamanan';

  @override
  String get linkDesktopSecurityCodeHint =>
      'Ponsel menampilkan kode yang sama saat dipasangkan';

  @override
  String linkDesktopCatalogSongs(int count) {
    return '$count lagu dibagikan';
  }

  @override
  String get linkDesktopSectionPhones => 'Ponsel';

  @override
  String get linkDesktopPairPhone => 'Pasangkan ponsel';

  @override
  String get linkDesktopPairPhoneSubtitle =>
      'Tampilkan kode untuk dimasukkan di ponsel';

  @override
  String get linkDesktopNoDevices => 'Belum ada ponsel yang dipasangkan';

  @override
  String get linkDesktopDeviceConnected => 'Terhubung';

  @override
  String linkDesktopDeviceLastSeen(String date) {
    return 'Terakhir terlihat $date';
  }

  @override
  String get linkDesktopDeviceNeverSeen => 'Belum pernah terhubung';

  @override
  String get linkDesktopSubsonicApp => 'Aplikasi Subsonic';

  @override
  String get linkDesktopRevoke => 'Hapus';

  @override
  String linkDesktopRevokeTitle(String name) {
    return 'Hapus $name?';
  }

  @override
  String get linkDesktopRevokeMessage =>
      'Perangkat ini harus dipasangkan lagi sebelum dapat terhubung ke komputer ini.';

  @override
  String linkDesktopRevoked(String name) {
    return '$name dihapus';
  }

  @override
  String get linkDesktopSectionOtherApps => 'Aplikasi lain';

  @override
  String get linkDesktopAddSubsonicApp => 'Tambah aplikasi Subsonic lain';

  @override
  String get linkDesktopAddSubsonicAppSubtitle =>
      'Buat kunci untuk pemutar Subsonic di perangkat lain';

  @override
  String get linkDesktopAppName => 'Nama aplikasi';

  @override
  String get linkDesktopCreateKey => 'Buat kunci';

  @override
  String linkDesktopAppKeyTitle(String name) {
    return 'Hubungkan $name';
  }

  @override
  String get linkDesktopAppKeyMessage =>
      'Masukkan detail ini di aplikasi. Kunci hanya ditampilkan sekarang.';

  @override
  String get linkDesktopServerAddress => 'Alamat server';

  @override
  String get linkDesktopUsername => 'Nama pengguna';

  @override
  String get linkDesktopApiKey => 'Kata sandi atau kunci API';

  @override
  String linkDesktopCopy(String label) {
    return 'Salin $label';
  }

  @override
  String get linkDesktopPairInstructions =>
      'Buka Toadplayer di ponsel, pilih komputer ini, lalu masukkan kode ini.';

  @override
  String linkDesktopPairCheckCode(String code) {
    return 'Pastikan ponsel menampilkan kode keamanan $code.';
  }

  @override
  String linkDesktopPairExpires(String time) {
    return 'Kode berakhir dalam $time';
  }

  @override
  String linkDesktopPaired(String name) {
    return 'Terpasang dengan $name';
  }

  @override
  String get linkDesktopPairExpired =>
      'Kode sudah berakhir. Pasangkan lagi untuk mendapatkan kode baru.';

  @override
  String get linkDesktopPairAttempts =>
      'Terlalu banyak kode salah. Pasangkan lagi untuk mendapatkan kode baru.';

  @override
  String get linkDesktopPairFailed => 'Tidak dapat memulai pemasangan';

  @override
  String get linkDesktopDevicesTitle => 'Ponsel';

  @override
  String get linkDesktopPhoneNothingPlaying => 'Tidak ada yang diputar';

  @override
  String get linkDesktopContinueOnPhone => 'Lanjutkan di ponsel';

  @override
  String get linkDesktopOpenOnPhone => 'Buka link di ponsel';

  @override
  String linkDesktopOpenLinkTitle(String name) {
    return 'Buka link di $name';
  }

  @override
  String get linkDesktopOpenLinkLabel => 'Link';

  @override
  String get linkDesktopOpen => 'Buka';

  @override
  String linkDesktopSentToPhone(String name) {
    return 'Terkirim ke $name';
  }

  @override
  String get linkDesktopNotDelivered => 'Ponsel tidak menerimanya';

  @override
  String get linkDesktopNothingToContinue =>
      'Tidak ada yang diputar di komputer ini';

  @override
  String linkTransferDesktopSendTo(String name) {
    return 'Kirim ke $name';
  }

  @override
  String get linkTransferDesktopSaveHere => 'Simpan ke komputer ini';

  @override
  String linkTransferDesktopSendingSong(String title, String name) {
    return 'Mengirim \"$title\" ke $name';
  }

  @override
  String linkTransferDesktopSendingSongs(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mengirim $count lagu ke $name',
    );
    return '$_temp0';
  }

  @override
  String linkTransferDesktopReceivingSong(String title, String name) {
    return 'Menerima \"$title\" dari $name';
  }

  @override
  String linkTransferDesktopReceivingSongs(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Menerima $count lagu dari $name',
    );
    return '$_temp0';
  }

  @override
  String get linkTransferDesktopView => 'Lihat';

  @override
  String get linkTransferDesktopNothingToSend =>
      'Lagu-lagu ini tidak bisa dikirim sekarang';

  @override
  String get linkTransferDesktopNothingToSave =>
      'Lagu-lagu ini tidak bisa disimpan sekarang';

  @override
  String get desktopScrollBack => 'Gulir ke belakang';

  @override
  String get desktopScrollForward => 'Gulir ke depan';

  @override
  String get settingsKeyboardShortcuts => 'Pintasan Keyboard';

  @override
  String get settingsKeyboardShortcutsSubtitle =>
      'Tombol untuk pemutaran, navigasi dan panel';

  @override
  String get desktopShortcutsNavigation => 'Navigasi';

  @override
  String get desktopShortcutDismiss => 'Tutup dialog atau halaman';

  @override
  String get desktopShortcutForward => 'Maju';

  @override
  String get desktopShortcutToggleSidebar =>
      'Tampilkan atau sembunyikan sidebar';

  @override
  String get linkSettingsTitle => 'Toadplayer di komputer Anda';

  @override
  String get linkSettingsSubtitle =>
      'Putar dan kendalikan pustaka komputer Anda';

  @override
  String get linkPageTitle => 'Komputer';

  @override
  String get linkPageDescription =>
      'Pasangkan dengan Toadplayer di komputer Anda untuk memutar pustakanya di ponsel ini dan mengendalikan yang diputarnya. Kedua perangkat harus berada di jaringan yang sama.';

  @override
  String get linkPairedSection => 'Komputer terpasang';

  @override
  String get linkPhoneSection => 'Ponsel ini';

  @override
  String get linkShareSongsTitle => 'Tampilkan lagu di komputer';

  @override
  String get linkShareSongsSubtitle =>
      'Lagu di ponsel ini muncul di Library komputer dan bisa diputar di sana selama ponsel ini terhubung';

  @override
  String get linkFollowDesktopTitle => 'Ikuti pemutaran komputer';

  @override
  String get linkFollowDesktopSubtitle =>
      'Saat komputer mulai memutar, ponsel ini menampilkan dan mengendalikannya';

  @override
  String get linkNearbySection => 'Di jaringan ini';

  @override
  String get linkSearching => 'Mencari komputer...';

  @override
  String get linkNoneFoundTitle => 'Tidak ada komputer ditemukan';

  @override
  String get linkNoneFound =>
      'Buka Toadplayer di komputer Anda dan aktifkan Bagikan dengan Toadplayer di ponsel Anda di pengaturannya.';

  @override
  String get linkAddManually => 'Tambah lewat alamat';

  @override
  String get linkManualHost => 'Alamat komputer';

  @override
  String get linkManualPort => 'Port';

  @override
  String get linkManualMessage =>
      'Toadplayer di komputer Anda menampilkan alamat dan port di tempat Anda mengaktifkan berbagi.';

  @override
  String get linkContinue => 'Lanjutkan';

  @override
  String get linkStateConnected => 'Terhubung';

  @override
  String get linkStateConnecting => 'Menghubungkan...';

  @override
  String get linkStateDisconnected => 'Tidak terhubung';

  @override
  String get linkStateInactive => 'Ketuk untuk memakai komputer ini';

  @override
  String get linkActive => 'Dipakai';

  @override
  String get linkForget => 'Lupakan';

  @override
  String linkForgetTitle(String name) {
    return 'Lupakan $name?';
  }

  @override
  String get linkForgetMessage =>
      'Ponsel ini berhenti terhubung ke komputer tersebut. Anda dapat memasangkannya lagi nanti.';

  @override
  String get linkForgetRemoveLibrary => 'Hapus juga musiknya dari Pustaka';

  @override
  String linkPinTitle(String name) {
    return 'Pasangkan dengan $name';
  }

  @override
  String get linkPinMessage =>
      'Masukkan PIN 6 digit yang tampil di komputer Anda.';

  @override
  String get linkPinField => 'PIN';

  @override
  String linkPinCode(String code) {
    return 'Komputer Anda menampilkan kode $code di samping PIN. Pasangkan hanya jika kodenya sama.';
  }

  @override
  String get linkPinNotOpen =>
      'Pemasangan belum dibuka. Mulai pemasangan di Toadplayer pada komputer Anda untuk menampilkan PIN.';

  @override
  String get linkPair => 'Pasangkan';

  @override
  String linkPaired(String name) {
    return 'Terpasang dengan $name. Musiknya sedang ditambahkan ke Pustaka.';
  }

  @override
  String get linkPairAgain => 'Pasangkan lagi';

  @override
  String get linkTransfersTitle => 'Transfer';

  @override
  String get linkTransfersInProgress => 'Sedang berjalan';

  @override
  String get linkTransfersFinished => 'Selesai';

  @override
  String get linkTransfersClearFinished => 'Hapus yang selesai';

  @override
  String get linkTransfersEmptyTitle => 'Belum ada transfer';

  @override
  String get linkTransfersEmptyMessage =>
      'Kirim atau simpan lagu dari menu lagu, album, atau pilihan.';

  @override
  String linkTransfersSending(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lagu',
    );
    return 'Mengirim $_temp0 ke $name';
  }

  @override
  String linkTransfersReceiving(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lagu',
    );
    return 'Menerima $_temp0 dari $name';
  }

  @override
  String linkTransfersSendingSong(String title, String name) {
    return 'Mengirim $title ke $name';
  }

  @override
  String linkTransfersReceivingSong(String title, String name) {
    return 'Menerima $title dari $name';
  }

  @override
  String linkTransfersSongsTo(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lagu',
    );
    return '$_temp0 ke $name';
  }

  @override
  String linkTransfersSongsFrom(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lagu',
    );
    return '$_temp0 dari $name';
  }

  @override
  String linkTransfersSongTo(String title, String name) {
    return '$title ke $name';
  }

  @override
  String linkTransfersSongFrom(String title, String name) {
    return '$title dari $name';
  }

  @override
  String linkTransfersPosition(int position, int total) {
    return '$position dari $total';
  }

  @override
  String linkTransfersPercent(int percent) {
    return '$percent%';
  }

  @override
  String get linkTransfersWaiting => 'Menunggu';

  @override
  String linkTransfersSavedCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tersimpan',
    );
    return '$_temp0';
  }

  @override
  String linkTransfersAlreadyThereCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sudah ada',
    );
    return '$_temp0';
  }

  @override
  String linkTransfersFailedCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gagal',
    );
    return '$_temp0';
  }

  @override
  String linkTransfersStopped(int done, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      done,
      locale: localeName,
      other: 'Dihentikan setelah $done dari $total',
      zero: 'Dihentikan',
    );
    return '$_temp0';
  }

  @override
  String get linkTransfersReasonDisconnected => 'Koneksi terputus';

  @override
  String get linkTransfersReasonNoFolder => 'Pilih folder download dulu';

  @override
  String linkTransfersReasonNoFolderPeer(String name) {
    return '$name belum punya folder download';
  }

  @override
  String get linkTransfersReasonBusy => 'Sedang sibuk, coba lagi nanti';

  @override
  String get linkTransfersReasonError => 'Terjadi kesalahan';

  @override
  String get linkTransfersSongSaved => 'Tersimpan';

  @override
  String get linkTransfersSongAlreadyThere => 'Sudah ada';

  @override
  String get linkTransfersSongFailed => 'Gagal';

  @override
  String get linkTransfersSongCopying => 'Menyalin';

  @override
  String get linkTransfersSongNotCopied => 'Tidak disalin';

  @override
  String get linkTransfersStop => 'Hentikan transfer';

  @override
  String linkTransfersActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count transfer',
    );
    return '$_temp0';
  }

  @override
  String linkTransfersFinishedCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count transfer selesai',
    );
    return '$_temp0';
  }

  @override
  String get linkErrorBadPin =>
      'PIN tersebut salah. Periksa PIN di komputer Anda dan coba lagi.';

  @override
  String get linkErrorPairingClosed =>
      'Pemasangan tidak dibuka di komputer Anda. Mulai pemasangan di sana, lalu coba lagi.';

  @override
  String get linkErrorTooManyAttempts =>
      'Terlalu banyak percobaan. Tunggu sebentar, lalu coba lagi.';

  @override
  String get linkErrorCertificateTitle => 'Komputer tidak terverifikasi';

  @override
  String get linkErrorCertificate =>
      'Sertifikat keamanan komputer tidak cocok dengan yang dilaporkannya. Seseorang di jaringan ini mungkin menyadap koneksi, jadi pemasangan dihentikan.';

  @override
  String get linkErrorIncompatible =>
      'Komputer ini menjalankan versi Toadplayer yang tidak dapat dipasangkan dengan ponsel ini. Perbarui Toadplayer di kedua perangkat.';

  @override
  String get linkErrorUnreachable =>
      'Komputer tidak dapat dijangkau. Pastikan Toadplayer terbuka di komputer dan kedua perangkat berada di jaringan yang sama.';

  @override
  String get linkErrorTimeout =>
      'Komputer tidak menjawab tepat waktu. Coba lagi.';

  @override
  String get linkErrorInvalidAddress =>
      'Masukkan alamat dan port yang valid, misalnya 192.168.1.20 dan 47710.';

  @override
  String get linkErrorFailed => 'Pemasangan gagal. Coba lagi.';

  @override
  String get linkLocalNetworkTitle => 'Perlu akses jaringan lokal';

  @override
  String get linkLocalNetworkMessage =>
      'Toadplayer memerlukan akses jaringan lokal untuk menemukan komputer Anda dan terhubung ke sana.';

  @override
  String get linkLocalNetworkAllow => 'Izinkan akses';

  @override
  String get linkWifiOffTitle => 'Tidak terhubung ke Wi-Fi';

  @override
  String get linkWifiOffMessage =>
      'Hubungkan ponsel ini ke jaringan Wi-Fi yang sama dengan komputer Anda.';

  @override
  String linkIssueUnauthorized(String name) {
    return '$name tidak lagi menerima ponsel ini. Pasangkan lagi untuk terhubung kembali.';
  }

  @override
  String linkIssueCertificate(String name) {
    return '$name menampilkan sertifikat keamanan yang berbeda. Pasangkan lagi hanya jika Anda memasang ulang atau mengatur ulang Toadplayer di komputer tersebut.';
  }

  @override
  String linkIssueIncompatible(String name) {
    return 'Perbarui Toadplayer di ponsel ini dan di $name untuk terhubung.';
  }

  @override
  String get playlistEditOrder => 'Ubah urutan';

  @override
  String get playlistEditOrderDescription =>
      'Seret lagu lewat pegangannya, atau sentuh lama, untuk memindahkannya.';

  @override
  String get playlistEditOrderSaved => 'Urutan playlist disimpan';

  @override
  String get collectionOrderSaved => 'Urutan lagu disimpan';

  @override
  String get collectionOrderChanged =>
      'Koleksi ini berubah saat diedit. Silakan atur ulang urutannya.';

  @override
  String get collectionOrderSaveFailed =>
      'Urutan lagu tidak dapat disimpan. Coba lagi.';

  @override
  String get playlistCreateEmpty => 'Playlist kosong';

  @override
  String get playlistCreateEmptySubtitle =>
      'Tambahkan lagu nanti dari daftar mana pun';

  @override
  String get playlistCreateFromFolder => 'Dari folder';

  @override
  String get playlistCreateFromFolderSubtitle =>
      'Semua lagu di satu folder Koleksi Anda';

  @override
  String get playlistImportFile => 'Impor file playlist';

  @override
  String get playlistImportFileSubtitle =>
      'M3U, M3U8, atau CSV, dicocokkan dengan file di perangkat ini';

  @override
  String get playlistFolderPickerTitle => 'Pilih folder';

  @override
  String get playlistFolderPickerEmptyTitle => 'Belum ada folder';

  @override
  String get playlistFolderPickerEmpty =>
      'Belum ada lagu yang dipindai. Tambahkan folder Koleksi lalu pindai terlebih dahulu.';

  @override
  String playlistCreatedWithTracks(String name, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lagu',
      one: '1 lagu',
    );
    return '$name dibuat dengan $_temp0';
  }

  @override
  String playlistImportResult(int count, String name, int matched) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lagu',
      one: '1 lagu',
    );
    return '$_temp0 diimpor ke $name, $matched cocok dengan file di perangkat ini';
  }

  @override
  String get playlistImportNoTracks => 'Tidak ada lagu di file ini';

  @override
  String get playlistImportFailed => 'File playlist ini tidak dapat dibaca';

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
      'Catat aktivitas mendengarkan dan tampilkan lagu yang diputar di Last.fm.';

  @override
  String get lastfmConnect => 'Hubungkan Last.fm';

  @override
  String get lastfmConnecting => 'Menghubungkan ke Last.fm...';

  @override
  String get lastfmFinishConnection => 'Selesaikan koneksi';

  @override
  String get lastfmAuthorizeHelp =>
      'Izinkan akses di browser, lalu kembali ke sini dan pilih Selesaikan koneksi.';

  @override
  String get lastfmScrobbling => 'Scrobbling';

  @override
  String get lastfmScrobblingDescription =>
      'Kirim lagu yang Anda dengarkan lewat pemutar bawaan ke Last.fm.';

  @override
  String get lastfmNowPlaying => 'Tampilkan lagu yang diputar';

  @override
  String get lastfmNowPlayingDescription =>
      'Tampilkan lagu saat ini di profil Last.fm Anda.';

  @override
  String get lastfmDisconnect => 'Putuskan Last.fm';

  @override
  String get lastfmConnectionError =>
      'Last.fm tidak dapat dihubungi. Scrobble yang tersimpan akan dikirim ulang secara otomatis.';

  @override
  String get lastfmStorageError =>
      'Pengaturan Last.fm tidak dapat disimpan. Periksa akses penyimpanan aman perangkat ini lalu coba lagi.';

  @override
  String get lastfmAuthorizationPending =>
      'Akses belum disetujui. Selesaikan izin Toadplayer di browser.';

  @override
  String get lastfmAuthorizationExpired =>
      'Permintaan koneksi ini kedaluwarsa. Hubungkan kembali untuk melanjutkan.';

  @override
  String get lastfmReauthenticate =>
      'Koneksi Last.fm Anda kedaluwarsa. Hubungkan kembali untuk melanjutkan scrobbling.';

  @override
  String get lastfmUnavailable => 'Last.fm tidak tersedia pada build ini.';

  @override
  String get lastfmRejected =>
      'Last.fm menolak scrobble. Periksa tag judul dan artis lagu tersebut.';

  @override
  String lastfmPending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count scrobble menunggu sinkronisasi',
      one: '1 scrobble menunggu sinkronisasi',
    );
    return '$_temp0';
  }

  @override
  String get audioOutputSystem => 'Perangkat ini dan Bluetooth';

  @override
  String get audioOutputCast => 'Cast ke TV';

  @override
  String get audioOutputCastDescription =>
      'Perangkat Google Cast di jaringan Wi-Fi yang sama';

  @override
  String get audioOutputStopCasting => 'Hentikan casting';

  @override
  String get audioOutputCastUnavailable =>
      'Google Cast tidak dapat dibuka. Periksa Google Play services dan akses jaringan lokal.';

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
  String get offlineSave => 'Simpan offline';

  @override
  String get offlineOnDevice => 'Di perangkat ini';

  @override
  String get offlineOnIPhone => 'Di iPhone';

  @override
  String get offlineOnPhone => 'Di ponsel';

  @override
  String get offlineServerOnly => 'Hanya server';

  @override
  String get offlineServerAndDevice => 'Server + perangkat';

  @override
  String get offlineDeviceOnly => 'Hanya perangkat';

  @override
  String get offlineRemove => 'Hapus salinan offline';

  @override
  String get offlineRemoveMessage =>
      'Hapus salinan offline dari perangkat ini? File di server tetap disimpan.';

  @override
  String get offlineDeleteServer => 'Hapus salinan server';

  @override
  String get offlineServerReadOnly =>
      'Koneksi server ini tidak mendukung penghapusan file.';

  @override
  String get offlineDeleteServerMessage =>
      'Hapus file asli dari server? Salinan offline di perangkat ini tetap disimpan.';

  @override
  String get offlineSaving => 'Menyimpan offline';

  @override
  String offlineResult(int saved, int skipped, int failed) {
    return 'Disimpan $saved, sudah tersedia $skipped, gagal $failed';
  }

  @override
  String get offlineFailed =>
      'Gagal menyimpan salinan offline. Periksa koneksi server dan izin folder download.';

  @override
  String get offlineNoSongs =>
      'Tidak ada lagu Library jaringan dalam pilihan ini.';

  @override
  String get offlineCopyUnavailable =>
      'Salinan offline tidak tersedia. Simpan kembali sebelum menghapus salinan server.';

  @override
  String get offlinePlayingLocal => 'Memutar dari perangkat ini';

  @override
  String offlineStreaming(String server) {
    return 'Streaming dari $server';
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
