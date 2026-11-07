// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

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
  String get trackMood => '분위기';

  @override
  String get subsonicAddToLibrary => '서버를 라이브러리에 추가';

  @override
  String get subsonicLibraryAdded => '서버가 라이브러리에 추가됨';

  @override
  String get subsonicLibraryDescription =>
      '서버의 카탈로그와 앨범 아트를 라이브러리에 동기화합니다. 음악 파일은 서버에 그대로 유지됩니다. 카탈로그를 업데이트하려면 로컬 라이브러리 설정에서 다시 스캔하세요';

  @override
  String get subsonicAuthentication => '인증';

  @override
  String get subsonicToken => '솔트 토큰';

  @override
  String get subsonicPasswordAuth => '패스워드';

  @override
  String get subsonicApiKey => 'API 키';

  @override
  String get subsonicUsername => '사용자 이름';

  @override
  String get subsonicPassword => '비밀번호';

  @override
  String get subsonicSearch => '서버 음악 검색...';

  @override
  String get subsonicMoreAlbums => '앨범 더보기';

  @override
  String get subsonicErrorApi =>
      '서버가 이 API 버전 또는 인증 방식을 지원하지 않습니다. 서버 설정과 선택한 로그인 방식을 확인하세요';

  @override
  String get networkDownloadDestination => '네트워크 다운로드 대상';

  @override
  String get networkUseForDownloads => '이 폴더에 다운로드';

  @override
  String get networkDownloadSelected => '선택된 다운로드 대상';

  @override
  String get networkUseLocalDownloads => '로컬 다운로드 폴더 사용';

  @override
  String get networkDownloadAccessFailed => '이 폴더에 쓸 수 없습니다';

  @override
  String get networkUploading => '네트워크 저장소에 업로드 중';

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
      '이 기기에서 음악을 준비한 다음 NAS에 업로드하세요. 업로드가 완료될 때까지 앱을 열어 둔 상태로 유지하세요. 다시 시도하면 준비된 오디오를 다시 사용합니다. 기존 파일은 그대로 유지되며, 같은 이름으로 새로 다운로드한 파일에는 번호가 붙은 접미사가 추가됩니다.';

  @override
  String get networkAddToLibrary => '라이브러리에 폴더 추가';

  @override
  String get networkLibraryAdded => '라이브러리에 폴더가 추가됨';

  @override
  String get networkLibraryDescription =>
      '이 폴더와 그 하위 폴더를 검색합니다. 음악 파일은 서버에 저장되고, 메타데이터와 앨범 아트워크는 이 기기에 저장됩니다. 로컬 라이브러리 설정에서 관리하거나 다시 검색할 수 있습니다';

  @override
  String get networkStorage => '네트워크 저장소';

  @override
  String get networkErrorUnreachable =>
      '서버에 연결할 수 없습니다. 이 휴대폰에서 해당 네트워크에 접속할 수 있는지, 그리고 파일 공유 서비스가 실행 중인지 확인하세요. SMB의 경우 포트 445에 연결할 수 있어야 합니다';

  @override
  String get networkErrorTimeout => '서버가 제때 응답하지 않았습니다. 연결 상태를 확인한 후 다시 시도하세요';

  @override
  String get networkErrorAuthentication =>
      '서버에서 로그인을 거부했습니다. 사용자 이름, 비밀번호 및 도메인을 확인하세요. 서버에서 도메인을 요구하지 않는 한 도메인 입력란은 비워 두세요';

  @override
  String get networkErrorPermission =>
      '이 계정에는 해당 공유 폴더 또는 폴더를 열 수 있는 권한이 없습니다. 서버에서 해당 계정의 읽기 권한을 확인하세요';

  @override
  String get networkErrorLocalPermission =>
      '로컬 네트워크에 접근할 수 없습니다. Android 앱 설정에서 Toadplayer의 주변 기기 접근 권한을 허용한 다음 다시 시도하세요';

  @override
  String get networkErrorShare =>
      '공유 폴더 또는 폴더를 찾을 수 없습니다. SMB의 경우 서버 주소 뒤에 서버의 공유 폴더 이름을 입력하세요 (예시: smb://server/Music/)';

  @override
  String get networkErrorProtocol =>
      '서버와 이 SMB 클라이언트가 지원되는 프로토콜에 합의하지 못하였습니다. 서버에서 SMB2 또는 SMB3를 활성화하세요. SMB1은 지원되지 않습니다';

  @override
  String get networkErrorAddress =>
      '서버 주소를 확인하세요. SMB의 경우 smb://server/share/ 형식을 사용하고, WebDAV 및 HTTP의 경우 http:// 또는 https:// 주소를 사용하세요.';

  @override
  String get networkConnections => '저장된 연결';

  @override
  String get networkServer => '서버';

  @override
  String get networkCredentials => '로그인 (선택 사항)';

  @override
  String get networkRefresh => '새로고침';

  @override
  String get networkStorageDescription =>
      'NAS 또는 음악 서버에 연결하여 폴더를 탐색하세요. 로그인 정보는 이 기기에 안전하게 저장됩니다';

  @override
  String get networkAddConnection => '연결 추가';

  @override
  String get networkEditConnection => '연결 편집';

  @override
  String get networkConnectionName => '이름';

  @override
  String get networkAddress => '서버 또는 오디오 URL';

  @override
  String get networkProtocol => '프로토콜';

  @override
  String get networkUsername => '사용자 이름 (선택 사항)';

  @override
  String get networkPassword => '비밀번호 (선택 사항)';

  @override
  String get networkDomain => '도메인 (선택 사항)';

  @override
  String get networkConnectSave => '연결 및 저장';

  @override
  String get networkErrorCertificate =>
      '서버의 HTTPS 인증서를 확인할 수 없습니다. 이 연결을 편집하여 인증서를 검토하고 신뢰하도록 설정하거나, 서버의 HTTPS 구성을 확인하세요';

  @override
  String get networkCertificatePrompt =>
      '이 서버는 신뢰할 수 없는 HTTPS 인증서를 사용하고 있습니다. 라우터와 NAS 장치는 자체 서명된 인증서를 사용하는 경우가 많습니다. 신뢰하기 전에 서버 주소와 SHA-256 지문을 확인하세요. 인증서 신뢰 설정은 이 서버의 해당 인증서에만 적용되며, 인증서가 변경되면 다시 승인이 필요합니다';

  @override
  String get networkTrustCertificate => '인증서를 신뢰하고 다시 시도';

  @override
  String get networkRemoveConnection => '연결 제거';

  @override
  String get networkNoFiles => '지원되는 음악 파일이나 폴더를 찾을 수 없습니다';

  @override
  String get networkConnectionError =>
      '네트워크 소스에 접근할 수 없습니다. 서버 주소, 로그인 정보 및 연결 상태를 확인한 후 다시 시도하세요';

  @override
  String get extensionAccountTitle => '확장 계정';

  @override
  String get extensionAccountInvalidForm => '확장 기능에서 잘못된 계정 양식을 반환했습니다';

  @override
  String get extensionAccountRestartLogin => '계속하려면 계정 로그인을 다시 시작하세요';

  @override
  String get extensionAccountRequiredValue => '값을 입력하세요';

  @override
  String get extensionAccountInvalidNumber => '유효한 숫자를 입력하세요';

  @override
  String get settingsPlaybackSubtitle => '플레이어, 볼륨, AutoMix, 및 오디오 출력';

  @override
  String get sectionPlayer => '플레이어';

  @override
  String get sectionVolumeAndTransitions => '볼륨 및 전환';

  @override
  String get sectionAudioOutput => '오디오 출력';

  @override
  String get usbBitPerfect => 'Hi-res 및 bit-perfect 오디오';

  @override
  String get usbBitPerfectDescription =>
      '지원되는 출력에서는 소스의 정밀도를 그대로 유지합니다. 아래에서 다이렉트 USB 또는 AAudio 전용 출력을 선택하세요. 그 외의 경우 Android USB 출력은 Android 14 이상에서만 사용할 수 있습니다. 이 설정은 다음 트랙부터 적용되며, AutoMix 또는 볼륨 정규화가 적용되지 않은 상태에서 작동합니다. 다이렉트 USB 출력에서는 휴대전화의 시스템 볼륨 조절이 작동하지 않을 수 있습니다';

  @override
  String get usbHardwareVolume => 'DAC 하드웨어 볼륨';

  @override
  String get usbVolumeWarningTitle => '청취 볼륨을 확인하세요';

  @override
  String get usbVolumeWarning =>
      '다이렉트 USB 오디오는 일반 재생보다 훨씬 크게 출력될 수 있으며, 휴대전화의 볼륨 버튼으로 음량이 조절되지 않을 수 있습니다. 시작하기 전에 DAC 또는 앰프의 볼륨을 낮추세요. 지원되는 경우 Toadplayer는 연결 시 DAC의 볼륨을 최대 −40 dB로 설정합니다. 하지만 이것이 모든 앰프나 헤드폰에서 안전한 청취 음량을 보장하는 것은 아닙니다';

  @override
  String get usbVolumeAccept => '이해했습니다';

  @override
  String get usbVolumeUnavailable =>
      '이 DAC에는 검증된 하드웨어 볼륨 조절 기능이 없기 때문에 재생이 일시 중지되었습니다. DAC 또는 앰프의 볼륨을 낮춘 다음, 필요하다면 고정 볼륨 출력을 활성화하고 트랙을 다시 선택하세요';

  @override
  String get usbFixedVolume => '고정 볼륨 USB 출력 허용';

  @override
  String get usbFixedVolumeDescription =>
      '앱에서 볼륨을 조절할 수 없는 DAC용입니다. 자체 볼륨 조절 기능이 없는 USB 헤드셋에서는 켜지 않은 상태로 유지하세요. 이 설정은 다음 트랙부터 적용됩니다';

  @override
  String get usbFixedVolumeWarning =>
      '이 출력에서는 앱이 볼륨을 낮출 수 없습니다. 오디오가 최대 음량으로 시작할 수 있으며, 휴대전화의 볼륨 슬라이더로도 조절되지 않습니다. DAC 또는 외부 앰프의 볼륨을 먼저 낮춘 후에만 계속 진행하세요. 자체 볼륨 조절 기능이 없는 헤드셋에서는 이 기능을 활성화하지 마세요';

  @override
  String get dapExclusive => 'DAP hi-res (AAudio 전용)';

  @override
  String get dapExclusiveDescription =>
      'FLAC/WAV PCM 파일을 트랙의 원본 샘플레이트와 정밀도 그대로 재생하려면 Oboe/AAudio를 사용합니다. Android 8.1 이상과 호환되는 하드웨어가 필요합니다. 전용 접근 가능 여부를 확인하며, 지원되지 않는 형식은 일반 재생 방식으로 처리됩니다. DSD는 다이렉트 USB 드라이버가 필요합니다. 이 설정은 다음 트랙부터 적용됩니다';

  @override
  String get dapExclusiveUnavailable =>
      '이 트랙과 현재 출력에서는 AAudio 전용 접근을 사용할 수 없습니다. 일반 재생 방식으로 전환합니다. USB DAC을 사용하는 경우 다이렉트 USB 드라이버를 사용해 보세요';

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
  String get usbDirect => '다이렉트 USB 드라이버';

  @override
  String get usbDirectDescription =>
      'FLAC/WAV, DSF/DFF 및 WavPack DSD를 재생하려면 독점 USB 오디오를 사용하며, Android의 USB 권한이 필요합니다. 네이티브 DSD는 인식된 호환 DAC이 필요합니다. 그 외의 PCM 형식은 일반 재생 방식을 사용합니다. 이 설정은 다음 트랙부터 적용됩니다';

  @override
  String get usbDsdOverPcm => 'DSD over PCM (DoP)';

  @override
  String get usbDsdOverPcmDescription =>
      'DAC이 DoP를 명시적으로 지원하는 경우에만 활성화하세요. 네이티브 DSD를 사용할 수 없을 때 DSF/DFF 및 WavPack DSD를 PCM 데이터 안에 담아 전송합니다. 호환되지 않는 기기에서는 잡음이 재생될 수 있으므로, 일반 USB 헤드셋에서는 이 기능을 꺼두세요';

  @override
  String get usbDsdUnsupported => '이 DSD 형식 또는 연결된 DAC은 지원되지 않습니다. 재생이 중지되었습니다';

  @override
  String get usbPermissionDenied => 'USB 권한이 부여되지 않았습니다. 일반 재생을 사용합니다';

  @override
  String get usbBitPerfectPending => '다음 트랙과 호환 가능한 USB 출력이 연결되기를 기다리고 있습니다';

  @override
  String get usbOutputReady =>
      'USB output is ready. Start playback to activate it.';

  @override
  String get usbOutputPreparing => 'Preparing USB audio output...';

  @override
  String get usbOutputCancelled =>
      'USB preparation was cancelled. Select a track to try again.';

  @override
  String get usbBitPerfectNoDevice => 'USB DAC이 연결되어 있지 않습니다. 일반 오디오 출력을 사용합니다';

  @override
  String get usbBitPerfectFallback =>
      '이 기기 또는 오디오 형식은 Bit-Perfect 출력을 지원하지 않습니다. 일반 재생을 사용합니다';

  @override
  String get usbBitPerfectRouteChanged =>
      'USB 오디오 출력 경로가 변경되었습니다. 재생이 일시 중지되었습니다. 다시 연결하려면 트랙을 선택하세요';

  @override
  String get upgradeIntroContinue => '계속';

  @override
  String get cacheMotionArtwork => '오프라인 모션 커버';

  @override
  String get cacheMotionArtworkDesc =>
      '앨범 동영상은 다운로드할 때 함께 저장됩니다. 동영상을 삭제해도 음악 파일과 정적 앨범 커버는 그대로 유지됩니다';

  @override
  String get nowPlayingVolume => '볼륨';

  @override
  String get appearanceStyle => '앱 스타일';

  @override
  String get appearanceAccentRed => '빨간색 (기본값)';

  @override
  String get appearanceAccentOrange => '주황색';

  @override
  String get appearanceAccentGreen => '초록색';

  @override
  String get appearanceAccentTeal => '청록색';

  @override
  String get appearanceAccentBlue => '파란색';

  @override
  String get appearanceAccentPurple => '보라색';

  @override
  String get appearanceAccentPink => '분홍색';

  @override
  String get appearanceGlassClarity => '글래스 투명도';

  @override
  String get appearanceGlassOutlines => '글래스 윤곽선';

  @override
  String get appearanceGlassOutlinesSubtitle =>
      'Toadplayer 글래스 주변에 장식적인 테두리를 표시합니다. 이 기능을 비활성화하면 블러 효과와 굴절 효과는 유지됩니다';

  @override
  String get appearanceGlassClaritySubtitle =>
      'Toadplayer 메뉴와 하단바의 투명도를 조절할 수 있습니다. 텍스트 대비는 유지됩니다';

  @override
  String get appearanceGlassTinted => '색조';

  @override
  String get appearanceGlassClear => '투명';

  @override
  String get appearanceGlassClearPerformance =>
      '매우 투명한 글래스 효과는 전력을 더 많이 사용할 수 있으며, 오래된 기기에서는 화면이 덜 부드럽게 느껴질 수 있습니다. 필요하다면 투명도 수준을 낮추세요';

  @override
  String appearanceGlassClarityBlurOff(String setting) {
    return '이 기기에서 글래스 효과가 불투명하게 표시됩니다. 투명도를 조절하려면 \'$setting\'을 켜세요';
  }

  @override
  String appearanceGlassClarityHighContrast(String setting) {
    return '시스템에서 대비 증가를 요청하여 글래스가 불투명하게 표시됩니다. 그래도 글래스 효과를 사용하려면 ‘$setting’을 켜세요. 텍스트 대비는 유지됩니다.';
  }

  @override
  String get appearanceUseSystemFont => '시스템 글꼴 사용';

  @override
  String get appearanceUseSystemFontSubtitle => '앱 텍스트에 기기 기본 글꼴을 사용합니다';

  @override
  String get appName => 'Toadplayer';

  @override
  String get navHome => '홈';

  @override
  String get navLibrary => '라이브러리';

  @override
  String get navSettings => '설정';

  @override
  String get navStore => '레포';

  @override
  String get homeTitle => '홈';

  @override
  String get homeEmptyTitle => '아직 검색 제공자가 없음';

  @override
  String get homeEmptySubtitle => '계속하려면 확장 기능을 설치하세요';

  @override
  String get homeRecent => '최근 기록';

  @override
  String get searchRecentlySearched => '최근 검색어';

  @override
  String get searchLibraryPrompt => '내 라이브러리 검색';

  @override
  String get searchBrowse => '탐색';

  @override
  String get historyFilterAll => '모두';

  @override
  String get historyFilterAlbums => '앨범';

  @override
  String get historyFilterSingles => '싱글';

  @override
  String get libraryRecentlyAdded => '최근 추가됨';

  @override
  String get libraryDownloads => '다운로드';

  @override
  String get libraryNoActiveDownloads => '진행 중인 다운로드가 없습니다';

  @override
  String get librarySearchHint => '라이브러리 검색';

  @override
  String get libraryEmptyCollection => '음악이 여기에 표시됩니다';

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
  String get libraryFoldersEmptyTitle => '아직 폴더가 없습니다';

  @override
  String get libraryFoldersEmptyMessage =>
      'Download songs or add a music folder in Local Library settings to browse them by folder.';

  @override
  String get libraryFolderMissing => 'This folder is no longer in your Library';

  @override
  String get libraryFoldersLoadFailed => '폴더를 읽을 수 없습니다';

  @override
  String get settingsTitle => '설정';

  @override
  String get settingsDownload => '다운로드';

  @override
  String get settingsAppearance => '디자인';

  @override
  String get settingsExtensions => '확장 기능';

  @override
  String get settingsAbout => '정보';

  @override
  String get downloadTitle => '다운로드';

  @override
  String get downloadAskQualitySubtitle => '다운로드를 할 때마다 음질을 선택하도록 합니다';

  @override
  String get downloadFilenameFormat => '파일 이름 형식';

  @override
  String get downloadSingleFilenameFormat => '싱글 파일 이름 형식';

  @override
  String get downloadSingleFilenameFormatDescription =>
      '싱글 및 EP용 파일 이름 패턴입니다. 앨범 형식과 동일한 태그를 사용합니다';

  @override
  String get downloadFolderOrganization => '폴더 분류 형식';

  @override
  String get downloadFolderTemplate => '사용자 정의 폴더 구조';

  @override
  String get downloadFolderTemplateDescription =>
      '이름 지정 태그와 /를 사용하여 하위 폴더를 구성하세요. 저장하면 기존 앨범 및 싱글의 기본 폴더 구성이 대체됩니다. 폴더 이름이 비어 있으면 \'알 수 없음\'으로 표시됩니다';

  @override
  String get folderOrganizationCustom => '사용자 정의 템플릿';

  @override
  String get folderTemplateInvalid =>
      '지원되는 태그를 사용하여 상대 폴더 경로를 입력하세요. 폴더 이름을 비워 두거나 . 및 ..을 사용할 수 없습니다';

  @override
  String get folderTemplatePreview => '예시 폴더 경로';

  @override
  String get folderTemplatePreviewFailed => '미리듣기를 사용할 수 없음';

  @override
  String get appearanceTitle => '디자인';

  @override
  String get appearanceThemeSystem => '시스템';

  @override
  String get appearanceThemeLight => '밝은';

  @override
  String get appearanceThemeDark => '어두운';

  @override
  String get appearanceDynamicColor => '동적 색상';

  @override
  String get appearanceDynamicColorSubtitle => '배경 화면을 참고하여 강조 색상이 지정됩니다';

  @override
  String get appearanceHistoryView => '기록 정렬 방식';

  @override
  String get appearanceHistoryViewList => '리스트';

  @override
  String get appearanceHistoryViewGrid => '그리드';

  @override
  String get optionsPrimaryProvider => '기본 제공자';

  @override
  String get optionsPrimaryProviderSubtitle => '트랙 또는 앨범 이름으로 검색하는 데 사용되는 서비스';

  @override
  String optionsUsingExtension(String extensionName) {
    return '확장 기능 사용: $extensionName';
  }

  @override
  String get optionsDefaultSearchTab => '기본 검색 탭';

  @override
  String get optionsDefaultSearchTabSubtitle => '새 검색 결과를 표시할 탭을 먼저 선택하세요';

  @override
  String get optionsAutoFallback => '자동 대체';

  @override
  String get optionsAutoFallbackSubtitle => '다운로드가 실패한 경우에 다른 서비스를 사용합니다';

  @override
  String get optionsEmbedLyrics => '가사 삽입';

  @override
  String get optionsEmbedLyricsSubtitle => '다운로드된 트랙과 함께 동기화된 가사를 저장합니다';

  @override
  String get optionsReplayGain => '리플레이게인';

  @override
  String get optionsReplayGainSubtitleOn => '음량 및 삽입된 리플레이게인 태그 스캔 (EBU R128)';

  @override
  String get optionsReplayGainSubtitleOff => '비활성화됨: 음량 정규화 태그 없음';

  @override
  String get trackReplayGain => '리플레이게인 다시 스캔';

  @override
  String get trackReplayGainScanning => '음량을 분석하는 중...';

  @override
  String get trackReplayGainSuccess => '리플레이게인 태그 추가됨';

  @override
  String get trackReplayGainFailed => '리플레이게인 태그 추가 실패';

  @override
  String get trackRemoveReplayGain => '리플레이게인 제거';

  @override
  String get trackRemoveReplayGainSuccess => '리플레이게인 태그 제거됨';

  @override
  String get trackRemoveReplayGainFailed => '리플레이게인 태그 제거 실패';

  @override
  String get replayGainRemoving => '리플레이게인 제거 중...';

  @override
  String replayGainRemoveConfirmMessage(int count) {
    return '$count 개의 트랙에서 트랙 및 앨범 리플레이게인 태그를 제거하시겠습니까? 오디오, 앨범 아트 및 기타 메타데이터는 보존됩니다';
  }

  @override
  String selectionRemoveReplayGainCount(int count) {
    return 'RG 제거 ($count)';
  }

  @override
  String replayGainRemoveBatchSuccess(int success, int total) {
    return '$total 개 중 $success 개의 트랙에서 리플레이게인이 제거됨';
  }

  @override
  String selectionReplayGainCount(int count) {
    return '리플레이게인 ($count)';
  }

  @override
  String get replayGainBatchConfirmTitle => '리플레이게인 추가';

  @override
  String replayGainBatchConfirmMessage(int count) {
    return '음량을 분석하고 $count 개의 트랙에 리플레이게인 태그를 추가하시겠습니까?';
  }

  @override
  String get replayGainBatchAnalyzing => '리플레이게인을 분석하는 중...';

  @override
  String replayGainBatchSuccess(int success, int total) {
    return '$total 개의 트랙 중 $success 개에 리플레이게인이 추가됨';
  }

  @override
  String get replayGainUnsupportedDecoder =>
      '일부 트랙은 리플레이게인 디코더에서 지원하지 않는 오디오 코덱을 사용하기 때문에 분석할 수 없습니다. 해당 파일은 변경되지 않았습니다';

  @override
  String get optionsArtistTagMode => '아티스트 태그 모드';

  @override
  String get metadataSeparators => '메타데이터 구분 기호';

  @override
  String get metadataSeparatorsDescription =>
      '향후 다운로드에서 쉼표 또는 세미콜론으로 구분된 값을 어떻게 결합할지 선택합니다. 사용자 정의 아티스트 구분자는 결합된 태그를 사용하며, \'주요 아티스트만\' 설정은 계속 적용됩니다. & 또는 /가 포함된 이름은 그대로 유지됩니다';

  @override
  String get metadataSeparatorSource => '소스 서식 유지';

  @override
  String get metadataSeparatorComma => '콤마 (,)';

  @override
  String get metadataSeparatorSemicolon => '세미콜론 (;)';

  @override
  String get metadataSeparatorSlash => '슬래시 (/)';

  @override
  String get metadataSeparatorCustom => '사용자 정의 구분 기호';

  @override
  String get metadataSeparatorPreview => '미리보기';

  @override
  String get metadataSeparatorInvalid => '줄 바꿈이나 제어 문자 없이 1~16자를 사용하세요';

  @override
  String get optionsArtistTagModeDescription =>
      '여러 아티스트를 삽입된 태그에 작성하는 방법을 선택하세요';

  @override
  String get optionsArtistTagModeJoined => '단일 결합 값';

  @override
  String get optionsArtistTagModeJoinedSubtitle =>
      '플레이어 호환성을 최대화하려면 \'아티스트 A, 아티스트 B\'와 같이 하나의 아티스트 값을 입력하세요';

  @override
  String get optionsArtistTagModeSplitVorbis => 'FLAC/Opus용 태그 분할';

  @override
  String get optionsArtistTagModeSplitVorbisSubtitle =>
      'FLAC 및 Opus의 경우 아티스트당 하나의 아티스트 태그를 작성하세요. MP3 및 M4A는 병합된 상태로 유지됩니다';

  @override
  String get optionsArtistTagModePrimary => '주요 아티스트만';

  @override
  String get optionsArtistTagModePrimarySubtitle =>
      '모든 형식에서 아티스트 및 앨범 아티스트 필드에 \'아티스트 A\'와 같은 첫 번째 아티스트만 입력하여, 플레이어에 하나의 아티스트만 표시되도록 합니다';

  @override
  String get optionsExtensionStore => '확장 기능 레포';

  @override
  String get optionsExtensionStoreSubtitle => '하단바에서 레포 탭 표시';

  @override
  String get optionsCheckUpdates => '업데이트 확인';

  @override
  String get optionsCheckUpdatesSubtitle => '새 버전이 출시되면 알림';

  @override
  String get optionsUpdateChannel => '업데이트 채널';

  @override
  String get optionsUpdateChannelStable => '안정 버전만 받기';

  @override
  String get optionsUpdateChannelPreview => '베타 버전을 받기';

  @override
  String get optionsUpdateChannelWarning => '베타 버전은 불안정할 수 있습니다';

  @override
  String get optionsClearHistory => '다운로드 기록 지우기';

  @override
  String get optionsClearHistorySubtitle => '기록에서 모든 다운로드된 트랙을 제거합니다';

  @override
  String get optionsDetailedLogging => '상세 로깅';

  @override
  String get optionsDetailedLoggingOn => '상세한 로그가 기록되고 있습니다';

  @override
  String get optionsDetailedLoggingOff => '버그 보고서 활성화';

  @override
  String get extensionsTitle => '확장 기능';

  @override
  String get extensionsDisabled => '비활성화됨';

  @override
  String extensionsVersion(String version) {
    return '버전 $version';
  }

  @override
  String get extensionsUninstall => '제거';

  @override
  String get storeTitle => '확장 기능 레포';

  @override
  String get storeSearch => '확장 기능 검색...';

  @override
  String get storeInstall => '설치';

  @override
  String get storeInstalled => '설치됨';

  @override
  String get storeUpdate => '업데이트';

  @override
  String get aboutTitle => '정보';

  @override
  String get aboutContributors => '개발에 힘써주신 분들';

  @override
  String get aboutMobileDeveloper => '모바일 버전 개발자';

  @override
  String get aboutLogoArtist => '아름다운 로고를 만들어주신 재능 있는 아티스트!';

  @override
  String get aboutTranslators => '번역에 도움주신 분들';

  @override
  String get aboutSpecialThanks => '특별히 감사드리는 분들';

  @override
  String get aboutLinks => '링크';

  @override
  String get aboutMobileSource => '모바일 소스 코드';

  @override
  String get aboutLyricsWebsite => '가사 웹사이트';

  @override
  String get aboutServiceStatus => '서비스 상태';

  @override
  String get aboutReportIssue => '문제 신고';

  @override
  String get aboutReportIssueSubtitle => '발생하는 모든 문제를 신고해 주세요';

  @override
  String get aboutFeatureRequest => '기능 요청';

  @override
  String get aboutFeatureRequestSubtitle => '앱의 새 기능을 제안해 주세요';

  @override
  String get aboutTelegramChannel => '텔레그램 채널';

  @override
  String get aboutTelegramChannelSubtitle => '공지 및 업데이트 안내';

  @override
  String get aboutTelegramChat => '텔레그램 그룹';

  @override
  String get aboutTelegramChatSubtitle => '다른 이용자와 소통';

  @override
  String get aboutSocial => '소셜 네트워크';

  @override
  String get aboutApp => '앱 정보';

  @override
  String get aboutVersion => '버전';

  @override
  String get aboutBinimumDesc =>
      'QQDL 및 HiFi API 개발자입니다. 이 프로젝트는 무손실 다운로드 지원을 형성하는 데 도움을 주셨습니다';

  @override
  String get aboutSachinsenalDesc =>
      'HiFi 프로젝트의 원작자이자, 무손실 음원 소스 연동 기능의 토대를 구축한 개발자입니다';

  @override
  String get aboutUnituneDesc =>
      'Flaze가 개발한 오픈소스 음악 링크 확인 도구로, 플랫폼 간 대체 매칭에 사용됩니다';

  @override
  String get aboutMusicBrainzDesc =>
      'MetaBrainz와 커뮤니티가 관리하는 오픈 음악 데이터베이스로, 음원 간 상호 참조 정보를 기록하는데 사용됩니다';

  @override
  String get aboutSquiglyDesc =>
      'Liam Macmillan이 개발한 범용 음악 링크 서비스로, 플랫폼 간 링크 확인을 위한 최종 대체 수단으로 사용됩니다';

  @override
  String get aboutAppDescription => '음악 메타데이터를 검색하고, 확장 기능을 관리하고, 라이브러리를 정리하세요';

  @override
  String get artistAlbums => '앨범';

  @override
  String get artistSingles => '싱글 및 EP';

  @override
  String get artistCompilations => '컴필레이션';

  @override
  String get artistPopular => '인기';

  @override
  String get artistLatestRelease => 'Latest Release';

  @override
  String get artistTopSongs => 'Top Songs';

  @override
  String artistMonthlyListeners(String count) {
    return '월별 청취자 $count';
  }

  @override
  String get trackMetadataService => '제공자';

  @override
  String get trackMetadataPlay => '재생';

  @override
  String get trackMetadataShare => '공유';

  @override
  String get trackMetadataDelete => '삭제';

  @override
  String get setupGrantPermission => '권한 부여';

  @override
  String get setupSkip => '건너뛰기';

  @override
  String get setupStorageAccessRequired => '저장소 접근 권한 필요';

  @override
  String get setupStorageAccessMessageAndroid11 =>
      'Android 11 이상 버전에서는 선택한 다운로드 폴더에 파일을 저장하려면 \'모든 파일 접근\' 권한이 필요합니다';

  @override
  String get setupOpenSettings => '설정 열기';

  @override
  String get setupPermissionDeniedMessage =>
      '권한이 거부되었습니다. 계속하려면 모든 권한을 허용해 주세요';

  @override
  String setupPermissionRequired(String permissionType) {
    return '\'$permissionType\' 권한 필요';
  }

  @override
  String setupPermissionRequiredMessage(String permissionType) {
    return '최상의 사용 경험을 위해 \'$permissionType\' 권한이 필요합니다. 설정에서 나중에 변경할 수 있습니다';
  }

  @override
  String get setupUseDefaultFolder => '기본 폴더를 사용하시겠습니까?';

  @override
  String get setupNoFolderSelected => '선택된 폴더가 없습니다. 기본 음악 폴더를 사용하시겠습니까?';

  @override
  String get setupUseDefault => '기본값 사용';

  @override
  String get setupDownloadLocationTitle => '다운로드 경로';

  @override
  String get setupDownloadLocationIosMessage =>
      'iOS에서는 다운로드된 파일이 앱의 문서 폴더에 저장됩니다. 파일 앱을 통해 해당 파일에 접근할 수 있습니다';

  @override
  String get setupAppDocumentsFolder => '앱 문서 폴더';

  @override
  String get setupAppDocumentsFolderSubtitle => '권장 사항 - 파일 앱을 통해 접근 가능';

  @override
  String get setupChooseFromFiles => '파일 탐색기에서 선택';

  @override
  String get setupChooseFromFilesSubtitle => 'iCloud 또는 다른 위치를 선택하세요';

  @override
  String get setupIosEmptyFolderWarning =>
      'iOS 제한 사항: 빈 폴더는 선택할 수 없습니다. 파일이 하나 이상 있는 폴더를 선택하세요';

  @override
  String get setupIcloudNotSupported =>
      'iCloud Drive는 지원되지 않습니다. 앱의 문서 폴더를 사용해 주세요';

  @override
  String get setupDownloadInFlac => '무손실 및 Hi-Res 음질으로 음악을 다운로드하세요';

  @override
  String get setupStorageGranted => '저장소 접근 권한이 부여되었습니다!';

  @override
  String get setupStorageRequired => '저장소 접근 권한 필요';

  @override
  String get setupStorageDescription =>
      'Toadplayer는 다운로드된 음악 파일을 저장하기 위해 저장소 접근 권한이 필요합니다';

  @override
  String get setupNotificationGranted => '알림 권한이 부여되었습니다!';

  @override
  String get setupNotificationEnable => '알림 활성화';

  @override
  String get setupFolderChoose => '다운로드 폴더를 선택하세요';

  @override
  String get setupFolderDescription => '다운로드된 음악 파일이 저장될 폴더를 선택하세요';

  @override
  String get setupSelectFolder => '폴더 선택';

  @override
  String get setupEnableNotifications => '알림 활성화';

  @override
  String get setupNotificationBackgroundDescription =>
      '알림으로 다운로드 진행 상황을 확인하세요. 앱이 백그라운드에서 실행 중일 때 다운로드 상태와 완료 여부를 확인할 수 있습니다';

  @override
  String get setupSkipForNow => '건너뛰기';

  @override
  String get setupNearbyEnable => 'Allow Nearby Devices';

  @override
  String get setupNearbyDescription =>
      'Toadplayer Link uses it to find your computer on the same network, and network storage needs it to reach a server at home.';

  @override
  String get setupNearbyGranted => '주변 기기가 허용됨!';

  @override
  String get permissionNearbyDevices => '주변 기기';

  @override
  String get whatsNewLinkNearbyAllow => '주변 기기 허용';

  @override
  String get whatsNewLinkNearbyGranted => '주변 기기가 허용됨';

  @override
  String get whatsNewNearbyTitle => '주변 기기';

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
  String get setupNext => '다음';

  @override
  String get setupGetStarted => '시작하기';

  @override
  String get setupAllowAccessToManageFiles =>
      '다음 화면에서 \'모든 파일 관리 권한 허용\'을 활성화해 주세요';

  @override
  String get setupLanguageTitle => '언어 선택';

  @override
  String get setupLanguageDescription =>
      '앱에서 사용할 언어를 선택하세요. 나중에 설정에서 변경할 수 있습니다';

  @override
  String get setupLanguageSystemDefault => '시스템 기본값';

  @override
  String get dialogCancel => '취소';

  @override
  String get dialogSave => '저장';

  @override
  String get dialogDelete => '삭제';

  @override
  String get dialogRetry => '다시 시도';

  @override
  String get dialogClear => '지우기';

  @override
  String get dialogDone => '완료';

  @override
  String get dialogImport => '불러오기';

  @override
  String get dialogDownload => '다운로드';

  @override
  String get previewPlay => '미리듣기 재생';

  @override
  String get previewStop => '미리듣기 중지';

  @override
  String get previewUnavailable => '미리듣기를 사용할 수 없음';

  @override
  String get dialogDiscard => '폐기';

  @override
  String get dialogRemove => '제거';

  @override
  String get dialogUninstall => '삭제';

  @override
  String get dialogDiscardChanges => '변경 사항 폐기';

  @override
  String get dialogUnsavedChanges => '저장되지 않은 변경 사항이 있습니다. 폐기하시겠습니까?';

  @override
  String get dialogClearAll => '모두 지우기';

  @override
  String get dialogRemoveExtension => '확장 기능 제거';

  @override
  String get dialogRemoveExtensionMessage =>
      '이 확장 기능을 제거하시겠습니까? 이 작업은 되돌릴 수 없습니다';

  @override
  String get dialogUninstallExtension => '확장 기능을 제거하시겠습니까?';

  @override
  String dialogUninstallExtensionMessage(String extensionName) {
    return '\'\'$extensionName\'\'을 제거하시겠습니까?';
  }

  @override
  String get dialogClearHistoryTitle => '기록 지우기';

  @override
  String get dialogClearHistoryMessage =>
      '모든 다운로드 기록을 지우시겠습니까? 이 작업은 되돌릴 수 없습니다';

  @override
  String get dialogDeleteSelectedTitle => '선택 항목 삭제';

  @override
  String dialogDeleteSelectedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '트랙',
      one: '트랙',
    );
    return '기록에서 $count 개의 $_temp0을 삭제하시겠습니까?\n\n저장소에서도 파일이 삭제됩니다';
  }

  @override
  String get dialogImportPlaylistTitle => '재생목록 가져오기';

  @override
  String dialogImportPlaylistMessage(int count) {
    return '$count 개의 트랙이 재생목록 파일에서 발견되었습니다. 다운로드 목록에 추가하시겠습니까?';
  }

  @override
  String csvImportTracks(int count) {
    return 'CSV 파일의 트랙 수: $count';
  }

  @override
  String get collectionExportM3u => 'M3U8로 내보내기';

  @override
  String collectionExportM3uDone(int exported, int total) {
    return '$total 개의 트랙 중 $exported 개 내보내기 완료';
  }

  @override
  String get collectionExportM3uNone => '내보낼 다운로드된 파일이 없음';

  @override
  String get collectionExportM3uFailed => '내보내기 실패';

  @override
  String get trackOpenOn => '음원 플랫폼에서 열기';

  @override
  String get trackOpenOnNoLinks => '이 트랙에 대한 플랫폼 링크를 찾을 수 없습니다';

  @override
  String get libraryReviewDuplicates => '중복된 트랙 보기';

  @override
  String get libraryReviewDuplicatesSubtitle => '중복 저장된 트랙을 찾을 수 있습니다';

  @override
  String get duplicatesTitle => '중복';

  @override
  String get duplicatesEmpty => '중복된 트랙이 없습니다';

  @override
  String get duplicatesKeepBest => '최고 음질 선택';

  @override
  String get duplicatesKeepBestAll => '모두에 대해 최상의 파일 유지';

  @override
  String duplicatesKeepBestAllMessage(int count, int groupCount) {
    String _temp0 = intl.Intl.pluralLogic(
      groupCount,
      locale: localeName,
      other: '트랙',
      one: '트랙',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '복사본',
      one: '복사본',
    );
    return '$groupCount 개의 $_temp0 중 가장 음질이 좋은 복사본을 유지하고, $count 개의 음질이 낮은 $_temp1을 삭제하시겠습니까?\n\n삭제된 파일은 저장소에서 제거됩니다';
  }

  @override
  String duplicatesKeepBestMessage(int count, String trackName) {
    return '\'$trackName\'의 $count 개의 저음질 복사본을 삭제하시겠습니까?';
  }

  @override
  String duplicatesDeleteCopyMessage(String trackName) {
    return '\'$trackName\'의 복사본을 삭제하시겠습니까?';
  }

  @override
  String snackbarAddedToQueue(String trackName) {
    return '\'$trackName\'가 다운로드 목록에 추가됨';
  }

  @override
  String snackbarAddedTracksToQueue(int count) {
    return '다운로드 목록에 $count 개의 트랙이 추가됨';
  }

  @override
  String snackbarAlreadyDownloaded(String trackName) {
    return '\'$trackName\'은 이미 다운로드되어 있음';
  }

  @override
  String snackbarAlreadyInLibrary(String trackName) {
    return '라이브러리에 \'$trackName\'이 이미 존재함';
  }

  @override
  String get snackbarHistoryCleared => '기록 지워짐';

  @override
  String snackbarDeletedTracks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '트랙',
      one: '트랙',
    );
    return '$count 개의 $_temp0이 삭제됨';
  }

  @override
  String snackbarCannotOpenFile(String error) {
    return '파일을 열 수 없음: $error';
  }

  @override
  String get snackbarViewQueue => '다운로드 목록 보기';

  @override
  String snackbarUrlCopied(String platform) {
    return '$platform 링크가 클립보드에 저장됨';
  }

  @override
  String get snackbarFileNotFound => '파일을 찾을 수 없음';

  @override
  String get snackbarSelectExtFile => '.toadplayer-ext 파일을 선택하세요';

  @override
  String get snackbarProviderPrioritySaved => '제공자 우선순위가 저장됨';

  @override
  String get snackbarMetadataProviderSaved => '메타데이터 제공자 우선순위가 저장됨';

  @override
  String snackbarExtensionInstalled(String extensionName) {
    return '\'$extensionName\'이 설치됨';
  }

  @override
  String snackbarExtensionUpdated(String extensionName) {
    return '\'$extensionName\'이 업데이트됨';
  }

  @override
  String get snackbarFailedToInstall => '확장 기능 설치 실패';

  @override
  String get snackbarFailedToUpdate => '확장 기능 업데이트 실패';

  @override
  String get errorRateLimited => '사용 제한됨';

  @override
  String get errorRateLimitedMessage => '요청이 너무 많습니다. 잠시 후 다시 검색해 주세요';

  @override
  String get errorNoTracksFound => '트랙을 찾을 수 없음';

  @override
  String get searchEmptyResultSubtitle => '다른 키워드를 검색해 보세요';

  @override
  String get errorUrlNotRecognized => '링크를 인식할 수 없음';

  @override
  String get errorUrlNotRecognizedMessage =>
      '이 링크는 지원되지 않습니다. URL이 올바른지, 호환되는 확장 기능이 설치되어 있는지 확인하세요';

  @override
  String get errorUrlFetchFailed => '이 링크에서 콘텐츠를 불러오는 데 실패하였습니다. 다시 시도해 주세요';

  @override
  String errorMissingExtensionSource(String item) {
    return '\'$item\'을 불러올 수 없음: 확장 소스가 누락됨';
  }

  @override
  String get actionPause => '일시 중지';

  @override
  String get actionResume => '계속';

  @override
  String get actionCancel => '취소';

  @override
  String get actionSelectAll => '모두 선택';

  @override
  String get actionDeselect => '선택 해제';

  @override
  String selectionSelected(int count) {
    return '$count 개 선택됨';
  }

  @override
  String get selectionAllSelected => '모든 트랙 선택됨';

  @override
  String get selectionSelectToDelete => '삭제할 트랙을 선택';

  @override
  String progressFetchingMetadata(int current, int total) {
    return '메타데이터를 가져오는 중... $current/$total';
  }

  @override
  String get progressReadingCsv => 'CSV 파일을 읽는 중...';

  @override
  String get searchSongs => '노래';

  @override
  String get searchArtists => '아티스트';

  @override
  String get searchAlbums => '앨범';

  @override
  String get searchPlaylists => '재생목록';

  @override
  String get searchShowAll => 'Show all';

  @override
  String searchShowAllCategory(String category) {
    return 'Show all $category';
  }

  @override
  String get searchSortTitle => '결과 정렬';

  @override
  String get searchSortDefault => '기본값';

  @override
  String get searchSortTitleAZ => '제목 (오름차순)';

  @override
  String get searchSortTitleZA => '제목 (내림차순)';

  @override
  String get searchSortArtistAZ => '아티스트 (오름차순)';

  @override
  String get searchSortArtistZA => '아티스트 (내림차순)';

  @override
  String get searchSortDurationShort => '재생시간 (짧은순)';

  @override
  String get searchSortDurationLong => '재생시간 (긴순)';

  @override
  String get searchSortDateOldest => '발매일자 (오래된순)';

  @override
  String get searchSortDateNewest => '발매일자 (최신순)';

  @override
  String get tooltipPlay => '재생';

  @override
  String get filenameFormat => '파일 이름 형식';

  @override
  String get filenameShowAdvancedTags => '고급 태그 표시';

  @override
  String get filenameShowAdvancedTagsDescription =>
      '트랙 패딩 및 날짜 패턴에 대한 서식 있는 태그를 활성화합니다';

  @override
  String get folderOrganizationNone => '분류하지 않음';

  @override
  String get folderOrganizationByPlaylist => '재생목록별';

  @override
  String get folderOrganizationByPlaylistSubtitle => '각 재생목록별 별도 폴더';

  @override
  String get folderOrganizationByArtist => '아티스트별';

  @override
  String get folderOrganizationByAlbum => '앨범별';

  @override
  String get folderOrganizationByArtistAlbum => '아티스트/앨범';

  @override
  String get folderOrganizationDescription => '다운로드된 파일을 폴더로 분류';

  @override
  String get folderOrganizationNoneSubtitle => '다운로드 폴더의 모든 파일';

  @override
  String get folderOrganizationByArtistSubtitle => '각 아티스트별 별도 폴더';

  @override
  String get folderOrganizationByAlbumSubtitle => '각 앨범별 별도 폴더';

  @override
  String get folderOrganizationByArtistAlbumSubtitle => '아티스트 및 앨범용 중첩 폴더';

  @override
  String get updateAvailable => '업데이트 사용 가능';

  @override
  String get updateLater => '나중에';

  @override
  String get updateStartingDownload => '다운로드를 시작하는 중...';

  @override
  String get updateDownloadFailed => '다운로드 실패';

  @override
  String get updateFailedMessage => '업데이트 다운로드 실패';

  @override
  String get updateNewVersionReady => '새 버전이 준비되었습니다';

  @override
  String get updateRequiredTitle => '업데이트 필요';

  @override
  String updateRequiredNotice(int count) {
    return '이 버전은 최신 버전보다 $count 개 이전 버전이며 더 이상 지원되지 않습니다. 앱을 계속 사용하려면 업데이트하세요';
  }

  @override
  String get updateCurrent => '현재 버전';

  @override
  String get updateNew => '새 버전';

  @override
  String get updateDownloading => '다운로드하는 중...';

  @override
  String get updateWhatsNew => '새 기능';

  @override
  String get updateDownloadInstall => '다운로드 및 설치';

  @override
  String get updateDontRemind => '알림 안 함';

  @override
  String get updateViewRelease => '릴리스 보기';

  @override
  String get updateStartingInstaller => '설치 프로그램을 시작하는 중...';

  @override
  String get updateMacInstallHint =>
      '디스크 이미지가 Finder에서 열려 있습니다. Toadplayer를 종료한 다음, 디스크 이미지에서 Toadplayer를 응용 프로그램으로 드래그하여 이전 복사본을 대체하세요';

  @override
  String get updateQuitApp => 'Toadplayer 종료';

  @override
  String get updateReadyToRestart =>
      '업데이트가 설치되었습니다. 사용하려면 Toadplayer를 다시 시작하세요';

  @override
  String get updateRestartNow => '지금 다시 시작';

  @override
  String get providerPriorityTitle => '제공자 우선순위';

  @override
  String get providerPriorityDescription =>
      '드래그하여 다운로드 제공자 순서를 변경하세요. 앱은 트랙을 다운로드할 경우에 위에서 아래 순서대로 제공자 사용 가능 여부를 확인합니다';

  @override
  String get providerPriorityInfo =>
      '첫 ​​번째 제공자에서 트랙을 사용할 수 없는 경우에 앱은 자동으로 다음 제공자 사용 가능 여부를 확인합니다';

  @override
  String get providerPriorityFallbackExtensionsDescription =>
      '자동 대체 중에 사용할 수 있는 설치된 다운로드 확장 기능을 선택하세요';

  @override
  String get providerPriorityFallbackExtensionsHint =>
      '다운로드 제공자 기능이 활성화된 확장 기능만 여기에 나열됩니다';

  @override
  String get providerExtension => '확장 기능';

  @override
  String get metadataProviderPriorityTitle => '메타데이터 우선순위';

  @override
  String get metadataProviderPriorityDescription =>
      '드래그하여 메타데이터 제공자 순서를 변경하세요. 앱은 트랙을 검색하고 메타데이터를 가져올 경우에 위에서 아래 순서대로 제공자 사용 가능 여부를 확인합니다';

  @override
  String get metadataProviderPriorityInfo =>
      'Deezer는 요청 횟수 제한이 없으므로 기본 앱으로 사용하는 것이 좋습니다. Spotify는 요청 횟수가 많아지면 요청 횟수를 제한할 수 있습니다';

  @override
  String get logTitle => '로그';

  @override
  String get logCopied => '로그가 클립보드에 복사됨';

  @override
  String get logSearchHint => '로그 검색...';

  @override
  String get logFilterLevel => '레벨';

  @override
  String get logFilterSection => '필터';

  @override
  String get logShareLogs => '로그 공유';

  @override
  String get logClearLogs => '로그 지우기';

  @override
  String get logClearLogsTitle => '로그 지우기';

  @override
  String get logClearLogsMessage => '모든 로그를 지우시겠습니까?';

  @override
  String get logFilterBySeverity => '심각성에 따라 로그 분류';

  @override
  String get logNoLogsYet => '아직 로그 없음';

  @override
  String get logNoLogsYetSubtitle => '앱을 사용하는 동안에 로그가 여기에 표시됩니다';

  @override
  String logEntriesFiltered(int count) {
    return '항목 ($count 개 필터됨)';
  }

  @override
  String logEntries(int count) {
    return '항목 ($count)';
  }

  @override
  String get channelStable => '안정';

  @override
  String get channelPreview => '베타';

  @override
  String get sectionSearchSource => '검색 출처';

  @override
  String get sectionDownload => '다운로드';

  @override
  String get sectionPerformance => '성능';

  @override
  String get sectionApp => '앱';

  @override
  String get sectionData => '데이터';

  @override
  String get sectionDebug => '디버그';

  @override
  String get sectionService => '서비스';

  @override
  String get sectionAudioQuality => '오디오 음질';

  @override
  String get sectionFileSettings => '파일 설정';

  @override
  String get sectionLyrics => '가사';

  @override
  String get lyricsKeepScreenOn => '가사 보는 동안 화면 켜짐 유지';

  @override
  String get lyricsKeepScreenOnSubtitle =>
      '가사가 열려 있는 동안 재생이 일시정지된 경우를 포함하여 화면이 꺼지지 않도록 합니다';

  @override
  String get lyricsMode => '가사 설정';

  @override
  String get lyricsModeDescription => '다운로드된 파일에 가사를 저장하는 방법을 선택하세요';

  @override
  String get lyricsModeEmbed => '파일에 삽입';

  @override
  String get lyricsModeEmbedSubtitle => 'FLAC 메타데이터 내에 저장됩니다';

  @override
  String get lyricsModeExternal => '외부 .lrc 파일';

  @override
  String get lyricsModeExternalSubtitle => '삼성 뮤직과 같은 플레이어용 별도 .lrc 파일';

  @override
  String get lyricsModeBoth => '둘 다';

  @override
  String get lyricsModeBothSubtitle => '가사를 삽입하고 .lrc 파일을 저장합니다';

  @override
  String get sectionColor => '색상';

  @override
  String get sectionTheme => '테마';

  @override
  String get sectionLayout => '레이아웃';

  @override
  String get sectionLanguage => '언어';

  @override
  String get appearanceLanguage => '앱 언어';

  @override
  String get settingsAppearanceSubtitle => '테마, 색상, 디스플레이';

  @override
  String get settingsDownloadSubtitle => '서비스, 음질, 대체';

  @override
  String get settingsExtensionsSubtitle => '다운로드 제공자 관리';

  @override
  String get settingsLogsSubtitle => '디버깅을 위한 앱 로그 보기';

  @override
  String get loadingSharedLink => '공유된 링크를 불러오는 중...';

  @override
  String get pressBackAgainToExit => '종료하려면 뒤로가기 버튼을 다시 탭하세요';

  @override
  String downloadAllCount(int count) {
    return '모두 다운로드 ($count)';
  }

  @override
  String tracksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 개의 트랙',
      one: '1 개의 트랙',
    );
    return '$_temp0';
  }

  @override
  String get trackCopyFilePath => '파일 경로 복사';

  @override
  String get trackRemoveFromDevice => '기기에서 제거';

  @override
  String get trackLoadLyrics => '가사 불러오기';

  @override
  String get trackMetadata => '메타데이터';

  @override
  String get trackFileInfo => '파일 정보';

  @override
  String get trackLyrics => '가사';

  @override
  String get trackFileNotFound => '파일을 찾을 수 없음';

  @override
  String get trackFileUnavailable =>
      '파일을 현재 사용할 수 없습니다. 저장소 접근 권한을 확인하고 다시 시도하세요';

  @override
  String get trackOpenInDeezer => 'Deezer에서 열기';

  @override
  String get trackOpenInSpotify => 'Spotify에서 열기';

  @override
  String get trackTrackName => '트랙 제목';

  @override
  String get trackArtist => '아티스트';

  @override
  String get trackAlbumArtist => '앨범 아티스트';

  @override
  String get trackAlbum => '앨범';

  @override
  String get trackTrackNumber => '트랙 번호';

  @override
  String get trackDiscNumber => '디스크 번호';

  @override
  String get trackDuration => '재생시간';

  @override
  String get trackAudioQuality => '오디오 음질';

  @override
  String get trackReplayGainTrackGain => '리플레이게인 트랙 게인';

  @override
  String get trackReplayGainTrackPeak => '리플레이게인 트랙 피크';

  @override
  String get trackReplayGainAlbumGain => '리플레이게인 앨범 게인';

  @override
  String get trackReplayGainAlbumPeak => '리플레이게인 앨범 피크';

  @override
  String get libraryQualityLabelFileFormat => '파일 형식';

  @override
  String get trackReleaseDate => '발매일자';

  @override
  String get trackGenre => '장르';

  @override
  String get trackLabel => '레이블';

  @override
  String get trackCopyright => '저작권';

  @override
  String get trackDownloaded => '다운로드됨';

  @override
  String get trackCopyLyrics => '가사 복사';

  @override
  String trackLyricsSource(String source) {
    return '출처: $source';
  }

  @override
  String get trackLyricsNotAvailable => '이 트랙의 가사를 사용할 수 없음';

  @override
  String get trackLyricsNotInFile => '이 파일에서 가사를 찾을 수 없음';

  @override
  String get trackFetchOnlineLyrics => '온라인에서 가져오기';

  @override
  String get trackLyricsTimeout => '요청 시간이 초과되었습니다. 나중에 다시 시도하세요';

  @override
  String get trackLyricsLoadFailed => '가사 불러오기 실패';

  @override
  String get trackEmbedLyrics => '가사 삽입';

  @override
  String get trackLyricsEmbedded => '가사 삽입 성공';

  @override
  String get trackInstrumental => '반주 트랙';

  @override
  String get trackCopiedToClipboard => '클립보드에 복사됨';

  @override
  String get trackDeleteConfirmTitle => '기기에서 제거하시겠습니까?';

  @override
  String get trackDeleteNetworkConfirmMessage =>
      '이렇게 하면 네트워크 저장소에서 파일이 영구적으로 삭제되고 라이브러리와 기록에서도 제거됩니다';

  @override
  String snackbarDeleteTracksFailed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '트랙',
      one: '트랙',
    );
    return '$count 개의 $_temp0을 삭제할 수 없습니다. 저장소 접근 권한을 확인하고 다시 시도하세요';
  }

  @override
  String get trackDeleteConfirmMessage =>
      '이렇게 하면 다운로드된 파일이 영구적으로 삭제되고 기록에서 제거됩니다';

  @override
  String get dateToday => '오늘';

  @override
  String get dateYesterday => '어제';

  @override
  String dateDaysAgo(int count) {
    return '$count 일 전';
  }

  @override
  String dateWeeksAgo(int count) {
    return '$count 주 전';
  }

  @override
  String dateMonthsAgo(int count) {
    return '$count 달 전';
  }

  @override
  String get storeFilterAll => '모두';

  @override
  String get storeFilterMetadata => '메타데이터';

  @override
  String get storeFilterDownload => '다운로드';

  @override
  String get storeFilterUtility => '유틸리티';

  @override
  String get storeFilterLyrics => '가사';

  @override
  String get storeFilterIntegration => '연동';

  @override
  String get storeClearFilters => '필터 초기화';

  @override
  String get storeAddRepoTitle => '확장 기능 레포지토리 추가';

  @override
  String get storeAddRepoDescription =>
      '확장 기능을 찾아보고 설치하려면 registry.json 파일이 포함된 GitHub 레포지토리 URL을 입력하세요';

  @override
  String get storeRepoUrlLabel => '레포지토리 URL';

  @override
  String get storeRepoUrlHint => 'https://github.com/user/repo';

  @override
  String get storeAddRepoButton => '레포지토리 추가';

  @override
  String get storeChangeRepoTooltip => '레포지토리 변경';

  @override
  String get storeRepoDialogTitle => '확장 기능 레포지토리';

  @override
  String get storeRepoDialogCurrent => '현재 레포지토리:';

  @override
  String get storeNewRepoUrlLabel => '새 레포지토리 URL';

  @override
  String get storeLoadError => '레포지토리 불러오기 실패';

  @override
  String get storeEmptyNoExtensions => '사용 가능한 확장 기능이 없음';

  @override
  String get storeEmptyNoResults => '확장 기능을 찾을 수 없음';

  @override
  String get extensionId => 'ID';

  @override
  String get extensionError => '오류';

  @override
  String get extensionCapabilities => '기능';

  @override
  String get extensionMetadataProvider => '메타데이터 제공자';

  @override
  String get extensionDownloadProvider => '다운로드 제공자';

  @override
  String get extensionLyricsProvider => '가사 제공자';

  @override
  String get extensionUrlHandler => 'URL 핸들러';

  @override
  String get extensionQualityOptions => '음질 옵션';

  @override
  String get extensionPostProcessingHooks => '후처리 후크';

  @override
  String get extensionPermissions => '권한';

  @override
  String get extensionSettings => '설정';

  @override
  String get extensionRemoveButton => '확장 기능 제거';

  @override
  String get extensionUpdated => '업데이트됨';

  @override
  String get extensionMinAppVersion => '최소 앱 버전';

  @override
  String get extensionCustomTrackMatching => '사용자 정의 트랙 매칭';

  @override
  String get extensionPostProcessing => '후처리';

  @override
  String extensionHooksAvailable(int count) {
    return '$count 개의 후크 사용 가능';
  }

  @override
  String extensionPatternsCount(int count) {
    return '$count 개의 패턴';
  }

  @override
  String extensionStrategy(String strategy) {
    return '전략: $strategy';
  }

  @override
  String get extensionsProviderPrioritySection => '제공자 우선순위';

  @override
  String get extensionsInstalledSection => '설치된 확장 기능';

  @override
  String get extensionsNoExtensions => '설치된 확장 기능이 없음';

  @override
  String get extensionsNoExtensionsSubtitle =>
      '새 제공자를 추가하려면 .toadplayer-ext 파일을 설치하세요';

  @override
  String get extensionsInstallButton => '확장 기능 설치';

  @override
  String get extensionsInfoTip =>
      '확장 기능은 새 메타데이터와 다운로드 제공자를 추가할 수 있습니다. 신뢰할 수 있는 확장 기능만 설치하세요';

  @override
  String get extensionsInstalledSuccess => '확장 기능 설치 성공';

  @override
  String extensionsInstalledCount(int count) {
    return '$count 개의 확장 기능 설치 성공';
  }

  @override
  String extensionsInstallPartialSuccess(int installed, int attempted) {
    return '$attempted 개의 확장 기능 중 $installed 개가 설치됨';
  }

  @override
  String get extensionsDownloadPriority => '다운로드 우선순위';

  @override
  String get extensionsDownloadPrioritySubtitle => '다운로드 서비스 순서를 설정하세요';

  @override
  String get extensionsFallbackTitle => '대체 확장 기능';

  @override
  String get extensionsFallbackSubtitle => '설치된 다운로드 확장 기능 중 대체로 사용할 항목을 선택하세요';

  @override
  String get extensionsNoDownloadProvider => '다운로드 제공자가 있는 확장 기능이 없음';

  @override
  String get extensionsMetadataPriority => '메타데이터 우선순위';

  @override
  String get extensionsMetadataPrioritySubtitle => '검색 및 메타데이터 출처 순서를 설정하세요';

  @override
  String get extensionsNoMetadataProvider => '메타데이터 제공자가 있는 확장 기능이 없음';

  @override
  String get extensionsSearchProvider => '검색 제공자';

  @override
  String get extensionsNoCustomSearch => '사용자 정의 검색이 있는 확장 기능이 없음';

  @override
  String get extensionsSearchProviderDescription => '트랙 검색에 사용할 서비스를 선택하세요';

  @override
  String get extensionsCustomSearch => '사용자 정의 검색';

  @override
  String get extensionsErrorLoading => '확장 기능 불러오기 오류';

  @override
  String get qualityFlacLossless => 'FLAC 무손실';

  @override
  String get qualityFlacLosslessSubtitle => '16-bit / 44.1kHz';

  @override
  String get qualityHiResFlac => 'Hi-Res FLAC';

  @override
  String get qualityHiResFlacSubtitle => '24-bit / 최대 96kHz';

  @override
  String get qualityHiResFlacMax => 'Hi-Res FLAC Max';

  @override
  String get qualityHiResFlacMaxSubtitle => '24-bit / 최대 192kHz';

  @override
  String get downloadLossyFormat => '손실 압축 형식';

  @override
  String get downloadAutoConvert => '다운로드 후 자동 변환';

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
      '다운로드가 완료되면 더 작은 손실 압축 형식으로 변환합니다. 원본은 변환이 성공한 후에만 교체됩니다';

  @override
  String get downloadAutoConvertFormat => '출력 형식';

  @override
  String get downloadAutoConvertFormatSubtitle =>
      '새로 완료된 다운로드에 사용되는 손실 압축 형식을 선택하세요';

  @override
  String get downloadAutoConvertBitrate => '출력 음질';

  @override
  String get downloadAutoConvertBitrateSubtitle =>
      '비트 전송률이 높을수록 더 많은 디테일을 보존하지만 파일 크기가 커집니다';

  @override
  String get downloadAutoConvertMp3Subtitle => '플레이어 및 기기 전반에 걸쳐 최상의 호환성';

  @override
  String get downloadAutoConvertM4aSubtitle => 'M4A 컨테이너의 효율적인 AAC 오디오';

  @override
  String get downloadAutoConvertOpusSubtitle => '최신 플레이어에 최적화된 효율성';

  @override
  String get downloadAskBeforeDownload => '다운로드 전 확인';

  @override
  String get downloadDirectory => '다운로드 디렉토리';

  @override
  String get downloadSeparateSinglesFolder => '싱글 폴더 별도 다운로드';

  @override
  String get downloadAlbumFolderStructure => '앨범 폴더 구조';

  @override
  String get albumFolderStructureDescription => '앨범 폴더 구조를 선택하세요';

  @override
  String get downloadUseAlbumArtistForFolders => '폴더에 앨범 아티스트 사용';

  @override
  String get downloadUsePrimaryArtistOnly => '폴더에 기본 아티스트만 사용';

  @override
  String get downloadUsePrimaryArtistOnlyEnabled =>
      '폴더 이름에서 피처링 아티스트를 제거합니다 (예: Justin Bieber, Quavo → Justin Bieber)';

  @override
  String get downloadUsePrimaryArtistOnlyDisabled =>
      '폴더 이름에 전체 아티스트 문자열을 사용합니다';

  @override
  String get downloadSelectQuality => '음질 선택';

  @override
  String get downloadFrom => '다운로드 제공자 선택';

  @override
  String get appearanceAmoledDark => '아몰레드 블랙';

  @override
  String get appearanceAmoledDarkSubtitle => '순수 검정 배경화면';

  @override
  String get appearanceHeroAnimations => '히어로 애니메이션';

  @override
  String get appearanceHeroAnimationsSubtitle =>
      '화면 간 이동 시 앨범 커버가 날아가는 애니메이션을 표시합니다 (예시: 플레이어를 실행할 경우)';

  @override
  String get appearanceForceBlur => '항상 블러 효과 사용';

  @override
  String get appearanceForceBlurSubtitle =>
      '기본적으로 비활성화된 기기에서도 하단바 블러 효과를 활성화합니다. 성능이 저하될 수 있습니다';

  @override
  String get queueClearAll => '모두 지우기';

  @override
  String get queueClearAllMessage => '모든 다운로드를 지우시겠습니까?';

  @override
  String get settingsAutoExportFailed => '실패한 다운로드 자동 내보내기';

  @override
  String get settingsAutoExportFailedSubtitle => '실패한 다운로드를 TXT 파일으로 자동 저장합니다';

  @override
  String get settingsDownloadNetwork => '다운로드 네트워크';

  @override
  String get settingsDownloadNetworkAny => 'WiFi + 모바일 네트워크';

  @override
  String get settingsDownloadNetworkWifiOnly => 'WiFi 전용';

  @override
  String get settingsDownloadNetworkSubtitle =>
      '다운로드에 사용할 네트워크를 선택하세요. Wi-Fi 전용으로 설정하면 모바일 데이터 사용 시 다운로드가 일시 중지됩니다';

  @override
  String get settingsConcurrentDownloads => '동시 다운로드';

  @override
  String get settingsConcurrentDownloadsSubtitle =>
      '여러 트랙을 동시에 다운로드하면 속도는 빨라지지만, 일부 제공자는 동시 요청을 제한할 수 있습니다';

  @override
  String get concurrentDownloadsOne => '한 번에 1 개의 트랙';

  @override
  String concurrentDownloadsCount(int count) {
    return '한 번에 최대 $count 개의 트랙';
  }

  @override
  String get albumFolderArtistAlbum => '아티스트 / 앨범';

  @override
  String get albumFolderArtistAlbumSubtitle => '앨범/아티스트 이름/앨범 이름/';

  @override
  String get albumFolderArtistYearAlbum => '아티스트 / [연도] 앨범';

  @override
  String get albumFolderArtistYearAlbumSubtitle => '앨범/아티스트 이름/[2005] 앨범 이름/';

  @override
  String get albumFolderAlbumOnly => '앨범만';

  @override
  String get albumFolderAlbumOnlySubtitle => '앨범/앨범 이름/';

  @override
  String get albumFolderYearAlbum => '[연도] 앨범';

  @override
  String get albumFolderYearAlbumSubtitle => '앨범/[2005] 앨범 이름/';

  @override
  String get albumFolderArtistAlbumSingles => '아티스트 / 앨범 + 싱글';

  @override
  String get albumFolderArtistAlbumSinglesSubtitle => '아티스트/앨범/ 및 아티스트/싱글/';

  @override
  String get albumFolderArtistAlbumFlat => '아티스트 / 앨범 (싱글 플랫)';

  @override
  String get albumFolderArtistAlbumFlatSubtitle => '아티스트/앨범/ 및 아티스트/song.flac';

  @override
  String get downloadedAlbumDeleteSelected => '선택 항목 삭제';

  @override
  String downloadedAlbumDeleteMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '트랙',
      one: '트랙',
    );
    return '앨범에서 $count 개의 $_temp0을 삭제하시겠습니까?\n\n저장소에서도 파일이 삭제됩니다';
  }

  @override
  String downloadedAlbumSelectedCount(int count) {
    return '$count 개 선택됨';
  }

  @override
  String get downloadedAlbumTapToSelect => '트랙을 탭하여 선택하세요';

  @override
  String downloadedAlbumDeleteCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '트랙',
      one: '트랙',
    );
    return '$count 개의 $_temp0 삭제';
  }

  @override
  String get downloadedAlbumSelectToDelete => '삭제할 트랙 선택';

  @override
  String downloadedAlbumDiscHeader(int discNumber) {
    return '디스크 $discNumber';
  }

  @override
  String get recentTypeArtist => '아티스트';

  @override
  String get recentTypeAlbum => '앨범';

  @override
  String get recentTypeSong => '노래';

  @override
  String get recentTypePlaylist => '재생목록';

  @override
  String get recentEmpty => '최근 항목이 없음';

  @override
  String get recentClearAllMessage =>
      '최근 활동을 모두 지우시겠습니까? 다운로드 기록 및 음악 파일은 삭제되지 않습니다';

  @override
  String get recentShowAllDownloads => '모든 다운로드 표시';

  @override
  String recentPlaylistInfo(String name) {
    return '재생목록: $name';
  }

  @override
  String get discographyDownload => '디스코그래피 다운로드';

  @override
  String get discographyDownloadAll => '모두 다운로드';

  @override
  String discographyDownloadAllSubtitle(int count, int albumCount) {
    return '$albumCount 개의 발매 음악에서 $count 개의 트랙';
  }

  @override
  String get discographyAlbumsOnly => '앨범만';

  @override
  String discographyAlbumsOnlySubtitle(int count, int albumCount) {
    return '$albumCount 개의 앨범에서 $count 개의 트랙';
  }

  @override
  String get discographySinglesOnly => '싱글 및 EP만';

  @override
  String discographySinglesOnlySubtitle(int count, int albumCount) {
    return '$albumCount 개의 싱글에서 $count 개의 트랙';
  }

  @override
  String get discographySelectAlbums => '앨범 검색...';

  @override
  String get discographySelectAlbumsSubtitle => '특정 앨범 또는 싱글을 선택하세요';

  @override
  String get discographyFetchingTracks => '트랙을 가져오는 중...';

  @override
  String discographyFetchingAlbum(int current, int total) {
    return '$total 개 중 $current 개를 가져오는 중...';
  }

  @override
  String get discographyDownloadSelected => '선택 항목 다운로드';

  @override
  String discographyAddedToQueue(int count) {
    return '다운로드 목록에 $count 개의 트랙이 추가됨';
  }

  @override
  String discographySkippedDownloaded(int added, int skipped) {
    return '$added 개 추가됨, $skipped 개 이미 다운로드됨';
  }

  @override
  String get discographyNoAlbums => '사용 가능한 앨범이 없음';

  @override
  String get discographyFailedToFetch => '일부 앨범 가져오기 실패';

  @override
  String get sectionStorageAccess => '저장소 접근';

  @override
  String get allFilesAccess => '모든 파일 접근';

  @override
  String get allFilesAccessEnabledSubtitle => '모든 폴더에 쓰기 가능';

  @override
  String get allFilesAccessDisabledSubtitle => '미디어 폴더에만 제한됨';

  @override
  String get allFilesAccessDescription =>
      '사용자 정의 폴더에 저장할 경우에 쓰기 오류가 발생하면 이 옵션을 활성화하세요. Android 13 이상에서는 기본적으로 특정 디렉터리에 대한 접근이 제한됩니다';

  @override
  String get allFilesAccessDeniedMessage =>
      '권한이 거부되었습니다. 시스템 설정에서 \'모든 파일 접근\'를 수동으로 활성화하세요';

  @override
  String get allFilesAccessDisabledMessage =>
      '모든 파일 접근을 비활성화하였습니다. 앱은 제한된 저장소 접근을 사용합니다';

  @override
  String get settingsLocalLibrary => '로컬 라이브러리';

  @override
  String get settingsLocalLibrarySubtitle => '음악 스캔 및 중복 감지';

  @override
  String get settingsCache => '저장소 및 캐시';

  @override
  String get settingsCacheSubtitle => '크기 보기 및 캐시된 데이터 지우기';

  @override
  String get libraryTitle => '로컬 라이브러리';

  @override
  String get libraryScanSettings => '스캔 설정';

  @override
  String get libraryEnableLocalLibrary => '로컬 라이브러리 활성화';

  @override
  String get libraryEnableLocalLibrarySubtitle => '기존 음악을 스캔하고 추적하세요';

  @override
  String get libraryFolder => '라이브러리 폴더';

  @override
  String get libraryFolderHint => '탭하여 폴더를 선택하세요';

  @override
  String get libraryAddFolder => '라이브러리 폴더 추가';

  @override
  String get libraryAddFolderSubtitle => '내부 저장소, SD 카드, SSD 또는 다른 외부 드라이브';

  @override
  String get librarySourceOnline => '온라인';

  @override
  String get librarySourceOffline => '오프라인. 이 트랙을 복원하려면 저장소를 다시 연결하세요';

  @override
  String get librarySourceDisabled => '비활성화됨';

  @override
  String librarySourceScanCount(int scanned, int total, String progress) {
    return '$total 개의 파일 중 $scanned 개 스캔 완료 ($progress%)';
  }

  @override
  String get libraryExternalStorage => '외부 저장소';

  @override
  String get libraryRemoveFolder => '라이브러리 폴더 제거';

  @override
  String get libraryRemoveFolderMessage =>
      'Toadplayer에서 이 폴더와 색인된 트랙을 제거하시겠습니까? 저장소의 오디오 파일은 삭제되지 않습니다';

  @override
  String libraryUnreadableFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 개의 파일을 읽을 수 없습니다',
      one: '1 개의 파일을 읽을 수 없습니다',
    );
    return '$_temp0';
  }

  @override
  String get libraryUnreadableFilesTitle => '읽을 수 없는 파일';

  @override
  String get libraryUnreadableFilesSubtitle =>
      '이 파일은 라이브러리에 추가되지 않았습니다. 파일이 손상되었거나, 아직 다운로드 중이거나, 저장소 앱에 의해 접근이 차단되었을 수 있습니다';

  @override
  String get libraryUnreadableFilesAction => '어떤 파일과 그 이유를 확인하세요';

  @override
  String libraryUnreadableFilesMore(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 개의 파일이 더 나열되지 않았습니다',
      one: '1 개의 파일이 더 나열되지 않았습니다',
    );
    return '$_temp0';
  }

  @override
  String get libraryShowDuplicateIndicator => '중복 표시기 표시';

  @override
  String get libraryShowDuplicateIndicatorSubtitle => '기존 트랙을 검색할 때 표시합니다';

  @override
  String get libraryAutoScan => '자동 스캔';

  @override
  String get libraryAutoScanSubtitle => '라이브러리에서 새 파일을 자동으로 스캔합니다';

  @override
  String get libraryAutoScanOff => '끄기';

  @override
  String get libraryAutoScanOnOpen => '앱을 열 때마다';

  @override
  String get libraryAutoScanDaily => '매일';

  @override
  String get libraryAutoScanWeekly => '주간';

  @override
  String get libraryActions => '작업';

  @override
  String get libraryScan => '라이브러리 스캔';

  @override
  String get libraryScanSubtitle => '오디오 파일 스캔';

  @override
  String get libraryScanSelectFolderFirst => '먼저 폴더를 선택하세요';

  @override
  String get libraryCleanupMissingFiles => '누락된 파일 정리';

  @override
  String get libraryCleanupMissingFilesSubtitle =>
      '더 이상 존재하지 않는 파일에 대한 항목을 제거합니다';

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
  String get libraryClear => '라이브러리 정리';

  @override
  String get libraryClearSubtitle => '스캔된 모든 트랙을 제거합니다';

  @override
  String get libraryClearConfirmTitle => '라이브러리 정리';

  @override
  String get libraryClearConfirmMessage =>
      '이렇게 하면 라이브러리에서 스캔된 모든 트랙이 제거됩니다. 실제 음악 파일은 삭제되지 않습니다';

  @override
  String get libraryAbout => '로컬 라이브러리에 대한 정보';

  @override
  String get libraryAboutDescription =>
      '기존 음악 라이브러리를 검사하여 다운로드 시 중복 곡을 감지합니다. FLAC, ALAC, M4A, MP3, Opus, OGG, WAV, AIFF 및 APE 형식을 지원합니다. 가능한 경우 파일 태그의 메타데이터를 읽어 사용합니다';

  @override
  String libraryTracksUnit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '트랙',
      one: '트랙',
    );
    return '$_temp0';
  }

  @override
  String libraryFilesUnit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '파일',
      one: '파일',
    );
    return '$_temp0';
  }

  @override
  String libraryLastScanned(String time) {
    return '마지막 스캔 시간: $time';
  }

  @override
  String get libraryLastScannedNever => '스캔한 적 없음';

  @override
  String get libraryScanning => '스캔하는 중...';

  @override
  String get libraryScanFinalizing => '라이브러리를 마무리하는 중...';

  @override
  String get libraryScanPaused => '스캔이 일시 중지됨';

  @override
  String libraryScanProgress(String progress, int total) {
    return '$total 개의 파일 중 $progress%';
  }

  @override
  String get libraryInLibrary => 'in 라이브러리';

  @override
  String libraryRemovedMissingFiles(int count) {
    return '라이브러리에서 $count 개의 누락된 파일이 삭제됨';
  }

  @override
  String get libraryCleared => '라이브러리가 초기화됨';

  @override
  String get libraryStorageAccessRequired => '저장소 접근 권한 필요';

  @override
  String get libraryStorageAccessMessage =>
      'Toadplayer는 음악 라이브러리를 스캔하기 위해 저장소 접근 권한이 필요합니다. 설정에서 권한을 부여해 주세요';

  @override
  String get librarySourceDownloaded => '다운로드됨';

  @override
  String get librarySourceLocal => '로컬';

  @override
  String get libraryFilterAll => '모두';

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
  String get libraryFilterDownloaded => '다운로드됨';

  @override
  String get libraryFilterLocal => '로컬';

  @override
  String get libraryFilterTitle => '필터';

  @override
  String get libraryFilterReset => '초기화';

  @override
  String get libraryFilterApply => '적용';

  @override
  String get libraryFilterSource => '출처';

  @override
  String get libraryFilterQuality => '음질';

  @override
  String get libraryFilterQualityHiRes => 'Hi-Res (24bit)';

  @override
  String get libraryFilterQualityCD => 'CD (16bit)';

  @override
  String get libraryFilterQualityLossy => '손실 압축';

  @override
  String get libraryFilterFormat => '형식';

  @override
  String get libraryFilterMetadata => '메타데이터';

  @override
  String get libraryFilterMetadataComplete => '전체 메타데이터';

  @override
  String get libraryFilterMetadataMissingAny => '메타데이터 누락';

  @override
  String get libraryFilterMetadataMissingYear => '연도 누락';

  @override
  String get libraryFilterMetadataMissingGenre => '장르 누락';

  @override
  String get libraryFilterMetadataMissingAlbumArtist => '앨범 아티스트 누락';

  @override
  String get libraryFilterSort => '정렬';

  @override
  String get libraryFilterSortLatest => '최신순';

  @override
  String get libraryFilterSortOldest => '오래된순';

  @override
  String get libraryFilterSortSizeLargest => '크기 (큰 순)';

  @override
  String get libraryFilterSortSizeSmallest => '크기 (작은 순)';

  @override
  String get libraryFilterSortAlbumAsc => '앨범 (오름차순)';

  @override
  String get libraryFilterSortAlbumDesc => '앨범 (내림차순)';

  @override
  String get libraryFilterSortGenreAsc => '장르 (오름차순)';

  @override
  String get libraryFilterSortGenreDesc => '장르 (내림차순)';

  @override
  String get timeJustNow => '방금 전';

  @override
  String timeMinutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 분 전',
      one: '1 분 전',
    );
    return '$_temp0';
  }

  @override
  String timeHoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 시간 전',
      one: '1 시간 전',
    );
    return '$_temp0';
  }

  @override
  String get tutorialWelcomeTitle => 'Toadplayer에 오신 것을 환영합니다!';

  @override
  String get tutorialWelcomeDesc =>
      'Toadplayer에서 확장 기능을 사용하여 음악을 찾고, 원하는 음질을 선택하고, 다운로드를 관리하는 방법을 알아보세요';

  @override
  String get tutorialWelcomeTip1 =>
      '설치된 확장 기능으로 검색하거나 지원되는 음악 링크를 붙여넣어 검색할 수 있습니다';

  @override
  String get tutorialWelcomeTip2 => '다운로드 제공자에서 제공하는 오디오 음질 중에서 선택할 수 있습니다';

  @override
  String get tutorialWelcomeTip3 => '메타데이터, 앨범 커버, 가사 및 발매 정보를 자동으로 삽입할 수 있습니다';

  @override
  String get tutorialSearchTitle => '음악 찾기';

  @override
  String get tutorialSearchDesc => '선택한 확장 기능으로 검색하거나 지원되는 음악 링크를 붙여넣어 검색하세요';

  @override
  String get tutorialDownloadTitle => '음악 다운로드';

  @override
  String get tutorialDownloadDesc =>
      '사용 가능한 음질을 선택하고 다운로드를 시작한 다음 다운로드 목록에서 진행 상황을 확인하세요';

  @override
  String get tutorialLibraryTitle => '내 라이브러리';

  @override
  String get tutorialLibraryDesc => '다운로드하고 로컬에서 스캔한 음악은 라이브러리에 정리됩니다';

  @override
  String get tutorialLibraryTip1 =>
      '라이브러리 다운로드 목록에서 진행 중이거나 대기 중인 다운로드와 완료된 다운로드를 관리할 수 있습니다';

  @override
  String get tutorialLibraryTip2 => '트랙을 탭하여 내부 플레이어로 재생할 수 있습니다';

  @override
  String get tutorialLibraryTip3 => '트랙, 앨범, 재생목록을 리스트 뷰 또는 그리드 뷰로 탐색할 수 있습니다';

  @override
  String get tutorialExtensionsTitle => '확장 기능';

  @override
  String get tutorialExtensionsDesc =>
      '확장 기능을 추가하면 검색, 다운로드, 메타데이터, 가사 및 기타 연동 기능을 사용할 수 있습니다';

  @override
  String get tutorialExtensionsTip1 => '레포 탭을 탐색하여 유용한 확장 기능을 찾을 수 있습니다';

  @override
  String get tutorialExtensionsTip2 =>
      '검색, 다운로드, 메타데이터 및 대체 서비스에 사용할 제공자를 선택할 수 있습니다';

  @override
  String get tutorialExtensionsTip3 =>
      '필요한 경우 계정을 연결하고 확장 기능을 최신 상태로 유지할 수 있습니다';

  @override
  String get tutorialSettingsTitle => '사용자 환경 맞춤 설정';

  @override
  String get tutorialSettingsDesc =>
      '다운로드, 재생, 라이브러리 동작, 디자인, 저장소 등을 세부적으로 설정할 수 있습니다';

  @override
  String get tutorialSettingsTip1 => '다운로드 위치 및 폴더 구성을 변경할 수 있습니다';

  @override
  String get tutorialSettingsTip2 => '음질, 동시 다운로드 수, 파일 이름 및 변환 설정을 지정할 수 있습니다';

  @override
  String get tutorialSettingsTip3 => '앱 테마 및 디자인을 꾸며볼 수 있습니다';

  @override
  String get tutorialReadyMessage =>
      '준비되었습니다. 확장 기능을 선택한 다음 지원되는 링크를 검색하거나 붙여넣으세요';

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
  String get whatsNewLibraryPlaylistsTitle => '더 나은 재생목록';

  @override
  String get whatsNewLibraryPlaylistsBody =>
      'Reorder songs, create a playlist from a folder, or import playlist files.';

  @override
  String get whatsNewFasterTitle => '어디서든 더 빠르게';

  @override
  String get whatsNewFasterDesc =>
      'Quicker and lighter, especially with large libraries.';

  @override
  String get whatsNewFasterLibraryTitle => '더 빠른 라이브러리';

  @override
  String get whatsNewFasterLibraryBody =>
      'Tabs and albums open faster, and scrolling stays smooth.';

  @override
  String get whatsNewFasterNetworkTitle => '더 빠른 네트워크 음악';

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
  String get whatsNewDone => '듣기 시작';

  @override
  String whatsNewAboutTitle(String version) {
    return 'What\'s new in $version';
  }

  @override
  String get libraryForceFullScan => '전제 스캔 강제 실행';

  @override
  String get libraryForceFullScanSubtitle => '캐시를 무시하고 모든 파일을 다시 스캔합니다';

  @override
  String get cleanupOrphanedDownloads => '불필요한 다운로드 파일 정리';

  @override
  String get cleanupOrphanedDownloadsSubtitle =>
      '더 이상 존재하지 않는 파일의 기록 항목을 제거합니다';

  @override
  String cleanupOrphanedDownloadsResult(int count) {
    return '기록에서 $count 개의 불필요한 항목이 제거됨';
  }

  @override
  String get cleanupOrphanedDownloadsNone => '불필요한 항목이 없음';

  @override
  String get cacheTitle => '저장소 및 캐시';

  @override
  String get cacheSummaryTitle => '캐시 요약';

  @override
  String get cacheSummarySubtitle => '캐시를 지워도 다운로드된 음악 파일은 삭제되지 않습니다';

  @override
  String cacheEstimatedTotal(String size) {
    return '예상 캐시 사용량: $size';
  }

  @override
  String get cacheSectionStorage => '캐시된 데이터';

  @override
  String get cacheSectionMaintenance => '유지 관리';

  @override
  String get cacheAppDirectory => '앱 캐시 디렉토리';

  @override
  String get cacheAppDirectoryDesc => 'HTTP 응답, WebView 데이터 및 기타 임시 앱 데이터입니다';

  @override
  String get cacheTempDirectory => '임시 디렉토리';

  @override
  String get cacheTempDirectoryDesc => '다운로드 및 오디오 변환으로 만들어진 임시 파일';

  @override
  String get cacheCoverImage => '앨범 커버 캐시';

  @override
  String get cacheCoverImageDesc => '다운로드된 앨범 및 트랙 앨범 커버입니다. 볼 때 다시 다운로드됩니다';

  @override
  String get cacheLibraryCover => '라이브러리 표지 캐시';

  @override
  String get cacheLibraryCoverDesc =>
      '로컬 음악 파일에서 추출된 앨범 커버입니다. 다음 스캔 시 다시 추출됩니다';

  @override
  String get libraryPlaybackNormalization => '볼륨 정규화';

  @override
  String get libraryPlaybackNormalizationSubtitle =>
      '트랙에 ReplayGain 또는 R128 태그가 있는 경우에 이를 사용하여 트랙 간 음량을 일정하게 맞춥니다';

  @override
  String get playbackNormalizationMode => '게인 모드';

  @override
  String get playbackNormalizationModeTrack => '트랙';

  @override
  String get playbackNormalizationModeAlbum => '앨범';

  @override
  String get playbackNormalizationPreamp => '프리앰프';

  @override
  String playbackNormalizationPreampValue(String gain, String target) {
    return '$gain dB (대상 $target LUFS)';
  }

  @override
  String get playbackNormalizationPreampHint =>
      '값이 낮을수록 재생 음량이 작아집니다. 음량 정규화는 트랙의 음량을 낮추기만 하므로, 소리가 클리핑되는 현상을 방지합니다';

  @override
  String get cacheAudioAnalysis => '오디오 분석 캐시';

  @override
  String get cacheAudioAnalysisDesc =>
      '저장된 스펙트로그램과 분석 결과입니다. 다음에 실행할 경우에 다시 분석합니다';

  @override
  String get cacheExploreFeed => '탐색 피드 캐시';

  @override
  String get cacheExploreFeedDesc =>
      '탐색 탭 콘텐츠(최신 발매 음악, 인기 콘텐츠)는 다음 방문 시 새로 고쳐집니다';

  @override
  String get cacheTrackLookup => '트랙 조회 캐시';

  @override
  String get cacheTrackLookupDesc =>
      '조회된 Spotify/Deezer 트랙 ID입니다. 지우면 속도가 느려질 수 있습니다';

  @override
  String get cacheCleanupUnusedDesc =>
      '누락된 파일에 대한 불필요한 다운로드 기록 및 라이브러리 항목을 제거합니다';

  @override
  String get cacheNoData => '캐시된 데이터가 없음';

  @override
  String cacheSizeWithFiles(String size, int count) {
    return '$count 개의 파일에 $size 사용';
  }

  @override
  String cacheSizeOnly(String size) {
    return '$size';
  }

  @override
  String cacheEntries(int count) {
    return '$count 개의 항목';
  }

  @override
  String cacheClearSuccess(String target) {
    return '지워짐: $target';
  }

  @override
  String get cacheClearConfirmTitle => '캐시를 지우시겠습니까?';

  @override
  String cacheClearConfirmMessage(String target) {
    return '\'$target\'의 캐시된 데이터를 지웁니다. 다운로드된 음악 파일은 삭제되지 않습니다';
  }

  @override
  String get cacheClearAllConfirmTitle => '모든 캐시를 지우시겠습니까?';

  @override
  String get cacheClearAllConfirmMessage =>
      '이 페이지의 모든 캐시 카테고리가 지워집니다. 다운로드된 음악 파일은 삭제되지 않습니다';

  @override
  String get cacheClearAll => '모든 캐시 지우기';

  @override
  String get cacheCleanupUnused => '사용되지 않는 데이터 정리';

  @override
  String get cacheCleanupUnusedSubtitle => '불필요한 다운로드 기록 및 누락된 라이브러리 항목을 제거합니다';

  @override
  String cacheCleanupResult(int downloadCount, int libraryCount) {
    return '정리 완료: $downloadCount 개의 사용되지 않는 다운로드, $libraryCount 개의 누락된 라이브러리 항목';
  }

  @override
  String get cacheRefreshStats => '통계 새로고침';

  @override
  String get trackSaveCoverArt => '앨범 커버 저장';

  @override
  String get trackSaveLyrics => '가사 (.lrc) 저장';

  @override
  String get trackSaveLyricsProgress => '가사를 저장하는 중...';

  @override
  String get trackReEnrich => '보강';

  @override
  String get trackReEnrichBatchSubtitle =>
      '온라인 업데이트 또는 수동 업데이트를 선택한 다음, 변경 사항을 모두 검토한 후 적용하세요';

  @override
  String get trackReEnrichFieldCover => '앨범 커버';

  @override
  String get trackReEnrichFieldLyrics => '가사';

  @override
  String get trackReEnrichFieldBasicTags => '앨범, 앨범 아티스트';

  @override
  String get trackReEnrichFieldTrackInfo => '트랙 및 디스크 번호';

  @override
  String get trackReEnrichFieldReleaseInfo => '데이터 및 ISRC';

  @override
  String get trackReEnrichFieldExtra => '장르, 레이블, 저작권';

  @override
  String get trackReEnrichSelectAll => '모두 선택';

  @override
  String get trackReEnrichModeIsrc => 'ISRC만';

  @override
  String get trackReEnrichModeIsrcSubtitle => '다른 태그를 변경하지 않고 녹화 식별자를 찾아 추가합니다';

  @override
  String get trackReEnrichModeMissing => '누락된 태그 채우기';

  @override
  String get trackReEnrichModeMissingSubtitle => '기존 값을 유지하고 비어 있는 필드만 채웁니다';

  @override
  String get trackReEnrichModeReplace => '선택된 태그 업데이트';

  @override
  String get trackReEnrichModeReplaceSubtitle => '온라인 메타데이터로 대체할 기존 값을 선택하세요';

  @override
  String get trackReEnrichModeManual => '공통 값 설정';

  @override
  String get trackReEnrichModeManualSubtitle => '선택한 모든 트랙에 동일한 값 적용';

  @override
  String get trackReEnrichManualFieldsTitle => '적용할 값';

  @override
  String get trackReEnrichManualHint =>
      '현재 값을 유지하려면 필드를 비워 두세요. 트랙 제목, 번호 및 ISRC는 변경되지 않습니다';

  @override
  String get trackReEnrichFieldsTitle => '업데이트할 태그';

  @override
  String get trackReEnrichReview => '변경 사항 검토';

  @override
  String get trackReEnrichReviewTitle => '메타데이터 변경 사항 검토';

  @override
  String trackReEnrichReviewSubtitle(int changeCount, int trackCount) {
    return '$trackCount 개의 트랙에 걸쳐 제안된 $changeCount 개의 변경 사항';
  }

  @override
  String get trackReEnrichNoChanges => '선택한 트랙에 대한 메타데이터 변경 사항이 없습니다';

  @override
  String get trackReEnrichApplyChanges => '변경 사항 적용';

  @override
  String get trackReEnrichRefreshOnline => '온라인에서 새로고침';

  @override
  String get trackEditMetadata => '메타데이터 편집';

  @override
  String trackCoverSaved(String fileName) {
    return '앨범 커버가 \'$fileName\'에 저장됨';
  }

  @override
  String get trackCoverNoSource => '사용할 수 있는 표지 출처가 없음';

  @override
  String trackLyricsSaved(String fileName) {
    return '가사가 \'$fileName\'에 저장됨';
  }

  @override
  String get trackReEnrichProgress => '메타데이터를 다시 구성하는 중...';

  @override
  String get trackReEnrichSearching => '온라인에서 메타데이터를 검색하는 중...';

  @override
  String get trackReEnrichPreparing => '메타데이터 변경 준비 중...';

  @override
  String get trackReEnrichSuccess => '메타데이터 재구성 성공';

  @override
  String get trackReEnrichMetadataSaved => '메타데이터 저장됨';

  @override
  String get trackReEnrichLyricsUpdated => '가사 업데이트됨';

  @override
  String get trackReEnrichLyricsPreserved => '새 가사가 없습니다; 기존 가사가 유지됩니다';

  @override
  String get trackReEnrichLyricsDisabled =>
      '가사가 업데이트되지 않았습니다. 설정에서 가사 다운로드가 비활성화되어 있습니다';

  @override
  String get trackReEnrichFfmpegFailed => 'FFmpeg 메타데이터 삽입 실패';

  @override
  String get queueFlacAction => 'FLAC 다운로드 목록';

  @override
  String queueFlacConfirmMessage(int count) {
    return '선택한 트랙에 대한 온라인 일치 항목을 검색하고 FLAC을 다운로드 목록에 추가합니다\n\n기존 파일은 수정되거나 삭제되지 않습니다\n\n신뢰도가 높은 일치 항목만 자동으로 대기열에 추가됩니다\n\n$count 개가 선택되었습니다';
  }

  @override
  String get queueFlacNoReliableMatches =>
      '선택한 항목에 대한 신뢰할 수 있는 온라인 일치 항목을 찾을 수 없음';

  @override
  String queueFlacQueuedWithSkipped(int addedCount, int skippedCount) {
    return '다운로드 목록에 $addedCount 개의 트랙을 추가하고, $skippedCount 개의 트랙을 건너뜀';
  }

  @override
  String trackSaveFailed(String error) {
    return '실패: $error';
  }

  @override
  String get trackConvertFormat => '형식 변환';

  @override
  String get trackConvertTitle => '오디오 변환';

  @override
  String get trackConvertTargetFormat => '변경될 형식';

  @override
  String get trackConvertBitrate => '비트레이트';

  @override
  String get trackConvertKeepOriginal => '원본 파일 유지';

  @override
  String get trackConvertKeepOriginalDescription =>
      '변환된 파일을 별도의 라이브러리 항목으로 추가합니다';

  @override
  String get trackConvertConfirmTitle => '변환 확인';

  @override
  String trackConvertConfirmMessage(
    String sourceFormat,
    String targetFormat,
    String bitrate,
  ) {
    return '$bitrate 비트레이트로 $sourceFormat에서 $targetFormat으로 변환하시겠습니까?\n\n변환 후 원본 파일이 삭제됩니다';
  }

  @override
  String trackConvertConfirmMessageLossless(
    String sourceFormat,
    String targetFormat,
  ) {
    return '$sourceFormat에서 $targetFormat으로 변환하시겠습니까? (무손실 — 음질 손실 없음)\n\n변환 후에 원본 파일이 삭제됩니다';
  }

  @override
  String trackConvertConfirmKeepOriginal(
    String sourceFormat,
    String targetFormat,
  ) {
    return '$sourceFormat에서 $targetFormat으로 변환하시겠습니까?\n\n원본 파일은 유지되고 변환된 파일은 별도의 라이브러리 항목으로 추가됩니다';
  }

  @override
  String get trackConvertLosslessHint => '무손실 변환 — 음질 손실 없음';

  @override
  String get trackConvertConverting => '오디오를 변환하는 중...';

  @override
  String trackConvertSuccess(String format) {
    return '$format으로 변환 성공';
  }

  @override
  String get trackConvertFailed => '변환 실패';

  @override
  String get cueSplitTitle => 'CUE 시트 분할';

  @override
  String cueSplitAlbum(String album) {
    return '앨범: $album';
  }

  @override
  String cueSplitArtist(String artist) {
    return '아티스트: $artist';
  }

  @override
  String cueSplitTrackCount(int count) {
    return '$count 개의 트랙';
  }

  @override
  String get cueSplitConfirmTitle => 'CUE 앨범 분할';

  @override
  String cueSplitConfirmMessage(String album, int count) {
    return '\'$album\'을 $count 개의 개별 FLAC 파일로 분할하시겠습니까?\n\n파일은 동일한 디렉토리에 저장됩니다';
  }

  @override
  String cueSplitSplitting(int current, int total) {
    return 'CUE 시트를 분할하는 중... ($current/$total)';
  }

  @override
  String cueSplitSuccess(int count) {
    return '$count 개의 트랙 분할 성공';
  }

  @override
  String get cueSplitFailed => 'CUE 분할 실패';

  @override
  String get cueSplitNoAudioFile => '이 CUE 시트에 대한 오디오 파일을 찾을 수 없음';

  @override
  String get cueSplitButton => '트랙으로 분할';

  @override
  String get actionCreate => '만들기';

  @override
  String get collectionFoldersTitle => '내 폴더';

  @override
  String get collectionWishlist => '위시리스트';

  @override
  String get collectionLoved => '좋아요 표시한 음악';

  @override
  String get collectionFavoriteArtists => '좋아하는 아티스트';

  @override
  String get collectionPlaylist => '재생목록';

  @override
  String get collectionAddToPlaylist => '재생목록에 추가';

  @override
  String get collectionCreatePlaylist => '재생목록 만들기';

  @override
  String get collectionNoPlaylistsYet => '아직 재생목록이 없음';

  @override
  String collectionPlaylistTracks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 개의 트랙',
      one: '1 개의 트랙',
    );
    return '$_temp0';
  }

  @override
  String collectionArtistCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 명의 아티스트',
      one: '1 명의 아티스트',
    );
    return '$_temp0';
  }

  @override
  String collectionAddedToPlaylist(String playlistName) {
    return '\'$playlistName\'에 추가됨';
  }

  @override
  String collectionAlreadyInPlaylist(String playlistName) {
    return '이미 \'$playlistName\'에 있음';
  }

  @override
  String get collectionPlaylistNameHint => '재생목록 이름';

  @override
  String get collectionPlaylistNameRequired => '재생목록 이름은 필수입니다';

  @override
  String get collectionRenamePlaylist => '재생목록 이름 변경';

  @override
  String get collectionDeletePlaylist => '재생목록 삭제';

  @override
  String get collectionPlaylistRenamed => '재생목록 이름 변경 완료';

  @override
  String get collectionWishlistEmptyTitle => '위시리스트가 비어 있음';

  @override
  String get collectionWishlistEmptySubtitle =>
      '나중에 다운로드할 트랙을 저장하려면 트랙에서 +를 탭하세요';

  @override
  String get collectionLovedEmptyTitle => '\'좋아요 표시한 음악\' 폴더가 비어 있음';

  @override
  String get collectionLovedEmptySubtitle => '트랙에 하트를 탭하여 \'좋아요\'를 유지하세요';

  @override
  String get collectionFavoriteArtistsEmptyTitle => '아직 좋아하는 아티스트가 없음';

  @override
  String get collectionFavoriteArtistsEmptySubtitle =>
      '아티스트 페이지에서 하트를 탭하여 여기에 추가하세요';

  @override
  String get collectionPlaylistEmptyTitle => '재생목록이 비어 있음';

  @override
  String get collectionPlaylistEmptySubtitle => '아무 트랙에서 +를 길게 탭하여 여기에 추가하세요';

  @override
  String get collectionRemoveFromPlaylist => '재생목록에서 제거';

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
  String get collectionRemoveFromFolder => '폴더에서 제거';

  @override
  String collectionAddedToLoved(String trackName) {
    return '\'$trackName\'이 \'좋아요 표시한 음악\'에 추가됨';
  }

  @override
  String collectionRemovedFromLoved(String trackName) {
    return '\'$trackName\'이 \'좋아요 표시한 음악\'에서 제거됨';
  }

  @override
  String collectionAddedToWishlist(String trackName) {
    return '\'$trackName\'가 위시리스트에 추가됨';
  }

  @override
  String collectionRemovedFromWishlist(String trackName) {
    return '\'$trackName\'가 위시리스트에서 제거됨';
  }

  @override
  String collectionAddedToFavoriteArtists(String artistName) {
    return '\'$artistName\'가 좋아하는 아티스트에 추가됨';
  }

  @override
  String collectionRemovedFromFavoriteArtists(String artistName) {
    return '\'$artistName\'가 좋아하는 아티스트에서 제거됨';
  }

  @override
  String get trackOptionAddToLoved => '좋아요 표시한 음악에 추가';

  @override
  String get trackOptionRemoveFromLoved => '좋아요 표시한 음악에서 제거';

  @override
  String get trackOptionAddToWishlist => '위시리스트에 추가';

  @override
  String get trackOptionRemoveFromWishlist => '위시리스트에서 제거';

  @override
  String get artistOptionAddToFavorites => '즐겨찾는 아티스트에 추가';

  @override
  String get artistOptionRemoveFromFavorites => '즐겨찾는 아티스트에서 제거';

  @override
  String get collectionPlaylistChangeCover => '앨범 커버 변경';

  @override
  String get collectionPlaylistRemoveCover => '앨범 커버 제거';

  @override
  String selectionConvertCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '트랙',
      one: '트랙',
    );
    return '$count 개의 $_temp0 변환';
  }

  @override
  String get selectionConvertNoConvertible => '선택된 변환할 수 있는 트랙이 없음';

  @override
  String get selectionBatchConvertConfirmTitle => '일괄 변환';

  @override
  String selectionBatchConvertConfirmMessage(
    int count,
    String format,
    String bitrate,
  ) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '트랙',
      one: '트랙',
    );
    return '$count 개의 $_temp0을 $bitrate 비트레이트로 $format으로 변환하시겠습니까?\n\n변환 후 원본 파일이 삭제됩니다';
  }

  @override
  String selectionBatchConvertConfirmMessageLossless(int count, String format) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '트랙',
      one: '트랙',
    );
    return '$count 개의 $_temp0을 $format으로 변환하시겠습니까? (무손실 — 음질 손실 없음)\n\n변환 후 원본 파일이 삭제됩니다';
  }

  @override
  String selectionBatchConvertConfirmKeepOriginal(int count, String format) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '트랙',
      one: '트랙',
    );
    return '$count 개의 $_temp0을 $format으로 변환하시겠습니까?\n\n원본 파일은 유지되고 변환된 파일은 별도의 라이브러리 항목으로 추가됩니다';
  }

  @override
  String selectionBatchConvertSuccess(int success, int total, String format) {
    return '$total 개 중 $success 개를 $format로 변환 완료';
  }

  @override
  String downloadedAlbumDownloadedCount(int count) {
    return '$count 개의 트랙 다운로드됨';
  }

  @override
  String get downloadUseAlbumArtistForFoldersAlbumSubtitle =>
      '앨범 아티스트 태그를 기준으로 폴더 이름을 지정합니다';

  @override
  String get downloadUseAlbumArtistForFoldersTrackSubtitle =>
      '트랙 아티스트 태그로 이름이 지정된 폴더';

  @override
  String get lyricsProvidersTitle => '가사 제공자 우선순위';

  @override
  String get lyricsProvidersDescription =>
      '가사 출처를 활성화, 비활성화 및 재정렬할 수 있습니다. 가사를 찾을 때까지 위에서 아래 순서대로 제공자 사용 가능 여부를 확인합니다';

  @override
  String get lyricsProvidersInfoText =>
      '확장 기능의 가사 제공자는 내부 가사 제공자보다 먼저 실행됩니다. 하나 이상의 제공자가 활성화되어 있어야 합니다';

  @override
  String lyricsProvidersEnabledSection(int count) {
    return '활성화됨 ($count)';
  }

  @override
  String lyricsProvidersDisabledSection(int count) {
    return '비활성화됨 ($count)';
  }

  @override
  String get lyricsProvidersAtLeastOne => '최소 한 개의 제공자가 활성화된 상태로 유지되어야 합니다';

  @override
  String get lyricsProvidersSaved => '가사 제공자 우선순위가 저장됨';

  @override
  String get lyricsProvidersDiscardContent => '저장되지 않은 변경 사항은 손실됩니다';

  @override
  String get lyricsProviderLrclibDesc => '오픈 소스 동기화 가사 데이터베이스';

  @override
  String get lyricsProviderNeteaseDesc => 'NetEase Cloud Music (아시아 노래에 적합)';

  @override
  String get lyricsProviderMusixmatchDesc => '최대 규모의 가사 데이터베이스 (다국어 지원)';

  @override
  String get lyricsProviderAppleMusicDesc => '단어별 동기화 가사 (프록시 경유)';

  @override
  String get lyricsProviderQqMusicDesc => 'QQ Music (중국 노래에 적합, 직접 API)';

  @override
  String get lyricsProviderLyricsPlusDesc =>
      '단어별 노래방 가사 (Apple/Musixmatch/Spotify/QQ, 프록시 이용)';

  @override
  String get lyricsProviderToadLrcDesc => 'Toad-LRC의 Apple Music 가사 (단어별)';

  @override
  String get lyricsProviderLrcRedDesc => '녹음과 일치하는 Apple Music 가사 (단어별)';

  @override
  String get lyricsProviderBetterLyricsDesc => '인기곡 Apple Music 가사 (단어별)';

  @override
  String get lyricsProviderExtensionDesc => '확장 기능 제공자';

  @override
  String get safMigrationTitle => '저장소 업데이트 필요';

  @override
  String get safMigrationMessage1 =>
      'Toadplayer는 이제 다운로드에 Android 저장소 접근 프레임워크(SAF)를 사용합니다. 이로써 Android 10 이상에서 \'권한 거부\' 오류가 해결됩니다';

  @override
  String get safMigrationMessage2 => '새 저장소 시스템으로 전환하려면 다운로드 폴더를 다시 선택하세요';

  @override
  String get safMigrationSuccess => '다운로드 폴더가 SAF 모드로 업데이트됨';

  @override
  String get settingsDonate => '개발 후원';

  @override
  String get settingsDonateSubtitle => '개발자에게 커피 한 잔 사주세요';

  @override
  String get settingsBackup => '백업 및 복원';

  @override
  String get settingsBackupSubtitle => '라이브러리, 기록 및 설정을 새 기기로 옮겨보세요';

  @override
  String get backupTitle => '백업 및 복원';

  @override
  String get backupExportSectionTitle => '백업 생성';

  @override
  String get backupExportSectionDescription =>
      '설정, 다운로드 기록, 좋아요 표시한 음악, 위시리스트, 즐겨찾는 아티스트 및 재생목록을 하나의 파일로 저장하여 보관하거나 다른 휴대전화로 옮길 수 있습니다';

  @override
  String get backupExportButton => '백업 파일 생성';

  @override
  String get backupImportSectionTitle => '백업 복원';

  @override
  String get backupImportSectionDescription =>
      '데이터를 복원할 백업 파일을 선택하세요. 이 작업을 수행하면 현재 기기에 저장된 설정, 기록 및 라이브러리가 백업 파일의 내용으로 대체됩니다';

  @override
  String get backupImportButton => '백업 파일 선택';

  @override
  String get backupCreated => '백업 생성 완료';

  @override
  String get backupCreateFailed => '백업 생성 실패';

  @override
  String get backupRestoreConfirmTitle => '이 백업을 복원하시겠습니까?';

  @override
  String get backupRestoreConfirmButton => '복원';

  @override
  String get backupRestored => '백업 복원 성공';

  @override
  String get backupRestoreFailed => '백업 복원 실패';

  @override
  String get backupInvalidFile => '이 파일은 유효한 Toadplayer 백업이 아닙니다';

  @override
  String get backupRestoreRestartHint => '모든 변경 사항을 적용하려면 앱을 다시 시작하세요';

  @override
  String get backupContentsTitle => '백업 콘텐츠';

  @override
  String get backupSettingsOnly => '설정 만';

  @override
  String get backupSelectHistory => '다운로드 기록';

  @override
  String get backupSelectCollections => '라이브러리 컬렉션';

  @override
  String get backupSelectCollectionsDescription =>
      '좋아요 표시한 음악, 위시리스트, 즐겨찾는 아티스트, 재생목록 및 재생목록 커버';

  @override
  String get backupSelectExtensions => '확장 기능 및 설정';

  @override
  String get backupSelectedExportDescription =>
      '선택한 카테고리를 백업 파일에 저장합니다. 오디오 파일은 포함되지 않습니다';

  @override
  String get backupSelectAtLeastOne => '백업을 생성하려면 최소 하나 이상의 카테고리를 선택하세요';

  @override
  String get backupSelectedRestoreMessage =>
      '아래 나열된 카테고리만 복원됩니다. 이 백업에 포함되지 않은 카테고리는 변경되지 않습니다. 복원하면 기존 데이터가 덮어쓰여질 수 있으며 되돌릴 수 없습니다';

  @override
  String get backupContentsSettings => '앱 설정';

  @override
  String backupContentsHistory(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '항목',
      one: '항목',
    );
    return '$count 개의 기록 $_temp0';
  }

  @override
  String backupContentsLiked(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '음악',
      one: '음악',
    );
    return '$count 개의 좋아요 표시한 $_temp0';
  }

  @override
  String backupContentsWishlist(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '트랙',
      one: '트랙',
    );
    return '$count 개의 위시리스트 $_temp0';
  }

  @override
  String backupContentsPlaylists(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 개의 재생목록',
      one: '1 개의 재생목록',
    );
    return '$_temp0';
  }

  @override
  String backupContentsArtists(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 명의 좋아하는 아티스트',
      one: '1 명의 좋아하는 아티스트',
    );
    return '$_temp0';
  }

  @override
  String backupContentsExtensions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 개의 확장 기능',
      one: '1 개의 확장 기능',
    );
    return '$_temp0';
  }

  @override
  String get backupIncludeSecrets => '확장 기능 자격 증명 포함';

  @override
  String get backupIncludeSecretsDescription =>
      '확장 기능의 토큰과 API 키가 백업 파일에 함께 저장됩니다. 백업 파일은 안전하게 보관하세요. 비활성화하면 복원 후 다시 입력해야 합니다';

  @override
  String backupExtensionsRestoreFailed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '확장 기능',
      one: '확장 기능',
    );
    return '$count 개의 $_temp0을 다시 설치할 수 없습니다. 레포에서 수동으로 설치하세요';
  }

  @override
  String get tooltipLoveAll => '모두 좋아요 표시';

  @override
  String get tooltipAddToPlaylist => '재생목록에 추가';

  @override
  String snackbarRemovedTracksFromLoved(int count) {
    return '\'좋아요 표시한 음악\'에서 $count 개의 트랙이 제거됨';
  }

  @override
  String snackbarAddedTracksToLoved(int count) {
    return '\'좋아요 표시한 음악\'에 $count 개의 트랙이 추가됨';
  }

  @override
  String get dialogDownloadAllTitle => '모두 다운로드';

  @override
  String dialogDownloadAllMessage(int count) {
    return '$count 개의 트랙을 다운로드하시겠습니까?';
  }

  @override
  String get homeSkipAlreadyDownloaded => '이미 다운로드된 노래 건너뛰기';

  @override
  String get homeGoToAlbum => '앨범으로 이동';

  @override
  String get homeAlbumInfoUnavailable => '앨범 정보를 사용할 수 없음';

  @override
  String get snackbarLoadingCueSheet => 'CUE 시트를 불러오는 중...';

  @override
  String get snackbarMetadataSaved => '메타데이터 저장 성공';

  @override
  String get snackbarFailedToEmbedLyrics => '가사 삽입 실패';

  @override
  String get snackbarFailedToWriteStorage => '저장소 다시 쓰기 실패';

  @override
  String snackbarError(String error) {
    return '오류: $error';
  }

  @override
  String get snackbarNoActionDefined => '이 버튼에 대해 정의된 작업이 없음';

  @override
  String get noTracksFoundForAlbum => '이 앨범에서 트랙을 찾을 수 없음';

  @override
  String get downloadLocationSubtitle => '다운로드된 트랙을 저장할 위치를 선택하세요';

  @override
  String get storageAutomaticFolder => '자동 폴더';

  @override
  String get storageAutomaticDownloadFolder =>
      '쓰기 가능하면 Download/Toadplayer을 사용하고, 그렇지 않으면 앱 저장소를 사용합니다';

  @override
  String get storageSafRecommended => '폴더 선택 (추천)';

  @override
  String get storageDownloadFolderHint =>
      '안드로이드 폴더 선택기에서 Download 폴더를 열고 Toadplayer을 선택하세요.\n해당 폴더가 없다면 \'새 폴더\'를 사용해 만든 다음, \'이 폴더 사용\'을 탭하여 접근 권한을 허용하세요';

  @override
  String get downloadFolderAccessLostTitle => '다운로드 폴더 접근 손실';

  @override
  String get downloadFolderAccessLostSubtitle => '폴더를 다시 선택할 때까지 다운로드할 수 없음';

  @override
  String get downloadFolderReselect => '폴더 다시 선택';

  @override
  String get downloadErrorSafPermissionLost =>
      'SAF 권한이 잘못되었거나 취소되었습니다. 설정에서 다운로드 위치를 다시 설정하세요';

  @override
  String get downloadErrorFolderAccessLost =>
      '다운로드 폴더 접근 권한이 없습니다. 설정에서 다운로드 폴더를 다시 설정하세요';

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
    return '\'$artist\', \'$title\', \'$album\', \'$track\', \'$year\', \'$date\', \'$disc\'를 자리표시자로 사용하세요';
  }

  @override
  String get downloadFilenameInsertTag => '태그를 삽입하려면 탭하세요:';

  @override
  String get downloadSeparateSinglesEnabled => '싱글과 EP를 별도의 폴더에 저장합니다';

  @override
  String get downloadSeparateSinglesDisabled => '싱글과 앨범을 같은 폴더에 저장합니다';

  @override
  String get downloadArtistNameFilters => '아티스트 이름 필터';

  @override
  String get downloadCreatePlaylistSourceFolder => '재생목록 소스 폴더';

  @override
  String get downloadCreatePlaylistSourceFolderEnabled =>
      '각 재생목록에 대한 하위 폴더를 만듭니다';

  @override
  String get downloadCreatePlaylistSourceFolderDisabled =>
      '모든 트랙을 다운로드 폴더에 직접 저장합니다';

  @override
  String get downloadCreatePlaylistSourceFolderRedundant => '폴더 구성 설정에 의해 처리됨';

  @override
  String get downloadSongLinkRegion => 'SongLink 지역';

  @override
  String get downloadNetworkCompatibilityMode => '네트워크 호환 모드';

  @override
  String get downloadNetworkCompatibilityModeEnabled =>
      '레거시 HTTP 엔드포인트 허용; TLS 인증서 검증은 계속 활성화됨';

  @override
  String get downloadNetworkCompatibilityModeDisabled => '표준 ​​네트워크 설정 사용';

  @override
  String get downloadAllowLocalNetwork => '로컬 네트워크 접근 허용';

  @override
  String get downloadAllowLocalNetworkEnabled =>
      '로컬/사설 주소에 대한 요청이 허용됨 (로컬 프록시 또는 사용자 지정 DNS용)';

  @override
  String get downloadAllowLocalNetworkDisabled => '보안을 위해 로컬/사설 주소가 차단됨';

  @override
  String get downloadSelectServiceToEnable =>
      '이 옵션을 활성화하려면 음질 옵션이 있는 공급자를 선택하세요';

  @override
  String get downloadEmbedLyricsDisabled => '먼저 메타데이터 삽입을 활성화하세요';

  @override
  String get downloadNeteaseIncludeTranslation => 'Netease: 번역 포함';

  @override
  String get downloadNeteaseIncludeTranslationEnabled => '중국어 번역 포함';

  @override
  String get downloadNeteaseIncludeTranslationDisabled => '원본 가사만';

  @override
  String get downloadNeteaseIncludeRomanization => 'Netease: 로마자 표기 포함';

  @override
  String get downloadNeteaseIncludeRomanizationEnabled => '로마자 표기 포함';

  @override
  String get downloadNeteaseIncludeRomanizationDisabled => '로마자 표기 없음';

  @override
  String get downloadAppleQqMultiPerson => 'Apple / QQ: 다인용 가사';

  @override
  String get downloadAppleQqMultiPersonEnabled => '듀엣 및 그룹 트랙이 포함된 스피커 레이블';

  @override
  String get downloadAppleQqMultiPersonDisabled => '스피커 레이블이 없는 표준 가사';

  @override
  String get downloadAppleElrcWordSync => 'Apple Music eLRC 단어 동기화';

  @override
  String get downloadAppleElrcWordSyncEnabled => '단어별 타임스탬프 원본 유지';

  @override
  String get downloadAppleElrcWordSyncDisabled => '더 안전한 Apple Music 가사 (줄 단위)';

  @override
  String get downloadMusixmatchLanguage => 'Musixmatch 언어';

  @override
  String get downloadMusixmatchLanguageAuto => '자동 (원본 언어)';

  @override
  String get downloadFilterContributing => '참여 아티스트 필터';

  @override
  String get downloadFilterContributingEnabled =>
      '앨범 아티스트 폴더명에서 참여 아티스트를 제외합니다';

  @override
  String get downloadFilterContributingDisabled => '전체 앨범 아티스트 문자열을 사용합니다';

  @override
  String get downloadProvidersNoneEnabled => '활성화된 제공자가 없음';

  @override
  String get downloadMusixmatchLanguageCode => '언어 코드';

  @override
  String get downloadMusixmatchLanguageHint => '예시: en, de, ja';

  @override
  String get downloadMusixmatchLanguageDesc =>
      'Musixmatch에서 번역된 가사를 요청하려면 BCP-47 언어 코드를 입력하세요 (예시: ko, en, ja)';

  @override
  String get downloadMusixmatchAuto => '자동';

  @override
  String get downloadNetworkAnySubtitle => 'Wi-Fi 또는 모바일 네트워크 사용';

  @override
  String get downloadNetworkWifiOnlySubtitle => '모바일 네트워크 사용 시 다운로드 일시 중지';

  @override
  String get downloadSongLinkRegionDesc =>
      'SongLink를 통해 트랙 링크를 해결할 경우에 사용되는 지역입니다. 스트리밍 서비스를 이용할 수 있는 국가를 선택하세요';

  @override
  String get snackbarUnsupportedAudioFormat => '지원되지 않는 오디오 형식';

  @override
  String get cacheRefresh => '새로고침';

  @override
  String dialogDownloadPlaylistsMessage(int trackCount, int playlistCount) {
    String _temp0 = intl.Intl.pluralLogic(
      playlistCount,
      locale: localeName,
      other: '재생록록',
      one: '재생목록',
    );
    String _temp1 = intl.Intl.pluralLogic(
      trackCount,
      locale: localeName,
      other: '트랙',
      one: '트랙',
    );
    return '$playlistCount 개의 $_temp0에서 $trackCount 개의 $_temp1을 다운로드하시겠습니까?';
  }

  @override
  String bulkDownloadPlaylistsButton(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '재생목록',
      one: '재생목록',
    );
    return '$count 개의 $_temp0 다운로드';
  }

  @override
  String get bulkDownloadSelectPlaylists => '다운로드할 재생목록 선택';

  @override
  String get snackbarSelectedPlaylistsEmpty => '선택한 재생목록에 트랙이 없음';

  @override
  String playlistsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 개의 재생목록',
      one: '1 개의 재생목록',
    );
    return '$_temp0';
  }

  @override
  String get editMetadataAutoFill => '온라인에서 자동 채우기';

  @override
  String get editMetadataAutoFillDesc =>
      '메타데이터 확장 기능을 선택하고, 필드를 지정한 다음, 적용하기 전에 해당 데이터를 확인';

  @override
  String get editMetadataAutoFillSource => '메타데이터 출처';

  @override
  String get editMetadataAutoFillSourceAutomatic => '자동 (제공자 우선순위)';

  @override
  String get editMetadataAutoFillFind => '메타데이터 찾기';

  @override
  String editMetadataAutoFillPreview(String source) {
    return '$source의 데이터';
  }

  @override
  String get editMetadataAutoFillCoverAvailable => '커버 아트워크 사용 가능';

  @override
  String get editMetadataAutoFillApply => '선택된 데이터 적용';

  @override
  String editMetadataAutoFillDoneFromSource(int count, String source) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '필드',
      one: '필드',
    );
    return '$source에서 $count 개의 $_temp0가 채워짐';
  }

  @override
  String get editMetadataAutoFillSearching => '온라인에서 검색하는 중...';

  @override
  String get editMetadataAutoFillNoResults => '온라인에서 일치하는 메타데이터를 찾을 수 없음';

  @override
  String get editMetadataAutoFillNoneSelected => '자동 채우기를 위해 하나 이상의 필드를 선택하세요';

  @override
  String get editMetadataLyricsSearch => '온라인에서 가사 찾기';

  @override
  String get lyricsPickerTitle => '가사 선택';

  @override
  String get lyricsPickerNeedsTitle => '제목 및 아티스트를 먼저 입력하세요';

  @override
  String get lyricsPickerNoProviders =>
      '가사 제공자가 활성화되어 있지 않습니다. \'설정 > 가사\'에서 활성화하세요';

  @override
  String get lyricsPickerWordSynced => '단어 동기화됨';

  @override
  String get lyricsPickerSynced => '동기화됨';

  @override
  String get lyricsPickerPlain => '평문';

  @override
  String get lyricsPickerInstrumental => '연주곡';

  @override
  String get lyricsPickerNotFound => '가사를 찾을 수 없습니다';

  @override
  String lyricsPickerLineCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 줄',
      one: '1 줄',
    );
    return '$_temp0';
  }

  @override
  String get editMetadataFieldTitle => '제목';

  @override
  String get editMetadataFieldArtist => '아티스트';

  @override
  String get editMetadataFieldAlbum => '앨범';

  @override
  String get editMetadataFieldAlbumArtist => '앨범 아티스트';

  @override
  String get editMetadataFieldDate => '날짜';

  @override
  String get editMetadataFieldTrackNum => '트랙 #';

  @override
  String get editMetadataFieldDiscNum => '디스크 #';

  @override
  String get editMetadataFieldGenre => '장르';

  @override
  String get editMetadataFieldIsrc => 'ISRC';

  @override
  String get editMetadataFieldLabel => '레이블';

  @override
  String get editMetadataFieldCopyright => '저작권';

  @override
  String get editMetadataFieldCover => '앨범 커버';

  @override
  String get editMetadataSelectAll => '모두';

  @override
  String get editMetadataSelectEmpty => '비어 있음만';

  @override
  String queueDownloadingCount(int count) {
    return '다운로드하는 중 ($count)';
  }

  @override
  String get queueFilteringIndicator => '필터링하는 중...';

  @override
  String queueTrackCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 개의 트랙',
      one: '1 개의 트랙',
    );
    return '$_temp0';
  }

  @override
  String queueAlbumCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 개의 앨범',
      one: '1 개의 앨범',
    );
    return '$_temp0';
  }

  @override
  String get queueEmptyAlbums => '앨범 다운로드가 없음';

  @override
  String get queueEmptyAlbumsSubtitle => '앨범에서 여러 트랙을 다운로드하면 여기에 표시됩니다';

  @override
  String get queueEmptySingles => '싱글 다운로드가 없음';

  @override
  String get queueEmptySinglesSubtitle => '싱글 트랙 다운로드는 여기에 표시됩니다';

  @override
  String queuePlaylistCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 개의 재생목록',
      one: '1 개의 재생목록',
    );
    return '$_temp0';
  }

  @override
  String get queueEmptyPlaylistsSubtitle => '트랙을 정리하려면 재생목록을 만드세요';

  @override
  String get libraryDefaultView => '기본 보기';

  @override
  String get libraryDefaultViewLastUsed => '최근 사용';

  @override
  String get queueEmptyHistory => '다운로드 기록이 없음';

  @override
  String get queueEmptyHistorySubtitle => '다운로드된 트랙이 여기에 표시됩니다';

  @override
  String get selectionAllPlaylistsSelected => '모든 재생목록이 선택됨';

  @override
  String get selectionTapPlaylistsToSelect => '선택할 재생목록을 탭하세요';

  @override
  String get selectionSelectPlaylistsToDelete => '삭제할 재생 목록 선택';

  @override
  String get audioAnalysisTitle => '오디오 음질 분석';

  @override
  String get audioAnalysisDescription => '스펙트럼 분석으로 무손실 음질을 확인합니다';

  @override
  String get audioAnalysisAnalyzing => '오디오를 분석하는 중...';

  @override
  String get audioAnalysisSampleRate => '샘플링 레이트';

  @override
  String get audioAnalysisCodec => '코덱';

  @override
  String get audioAnalysisContainer => '컨테이너';

  @override
  String get audioAnalysisDecodedFormat => '디코딩 형식';

  @override
  String get audioAnalysisBitDepth => '비트 심도';

  @override
  String get audioAnalysisChannels => '채널';

  @override
  String get audioAnalysisDuration => '재생시간';

  @override
  String get audioAnalysisNyquist => '나이퀴스트';

  @override
  String get audioAnalysisFileSize => '크기';

  @override
  String get audioAnalysisDynamicRange => '다이나믹 레인지';

  @override
  String get audioAnalysisPeak => '최대 피크';

  @override
  String get audioAnalysisRms => 'RMS';

  @override
  String get audioAnalysisLufs => 'LUFS';

  @override
  String get audioAnalysisTruePeak => '트루 피크';

  @override
  String get audioAnalysisClipping => '클리핑';

  @override
  String get audioAnalysisNoClipping => '클리핑 없음';

  @override
  String get audioAnalysisSpectralCutoff => '주파수 컷오프';

  @override
  String get audioAnalysisCutoffNotDetected => '감지되지 않음';

  @override
  String get audioAnalysisChannelStats => '채널별 통계';

  @override
  String get audioAnalysisSamples => '샘플';

  @override
  String get audioAnalysisRescan => '다시 분석';

  @override
  String get audioAnalysisSaveSpectrogram => '스펙트럼 저장';

  @override
  String audioAnalysisSpectrogramSaved(String fileName) {
    return '스펙트럼이 \'$fileName\'에 저장됨';
  }

  @override
  String get downloadRedownloadFakeHiRes => '가짜 Hi-Res 다시 다운로드';

  @override
  String get downloadRedownloadFakeHiResSubtitle =>
      '기본적으로 비활성화되어 있습니다. Hi-Res 다운로드를 확인하고, 모든 오디오 샘플이 그대로 보존된 것이 확인될 때만 교체합니다. 검증이나 처리에 실패하면 원본을 그대로 유지합니다';

  @override
  String get hiResCheckVerdictFakeCertain => '가짜 Hi-Res';

  @override
  String get hiResCheckReasonSampleHold => '모든 샘플이 반복됨: 복제 방식으로 업샘플링됨';

  @override
  String get hiResCheckReasonInterpolation => '샘플 사이의 값이 선형 보간됨';

  @override
  String get hiResCheckTitle => 'Hi-Res 진위 여부';

  @override
  String get hiResCheckSummary => '스펙트럼과 활성 비트 깊이를 검사하여 업샘플링 또는 패딩의 징후를 확인합니다';

  @override
  String get hiResCheckLimitedBandwidth => '대역폭이 제한됨';

  @override
  String get hiResCheckNoEvidence => '업샘플링 또는 패딩이 감지되지 않음';

  @override
  String get hiResCheckEstimatedCutoff => '추정되는 컷오프 주파수';

  @override
  String get hiResCheckActiveBits => '활성화된 / 저장된 비트';

  @override
  String get hiResCheckBandwidthExplanation =>
      '더 낮은 컷오프는 마스터링 과정에서 발생할 수 있습니다. 이것만으로 업샘플링이라고 단정할 수는 없습니다';

  @override
  String hiResCheckSampledExplanation(String seconds) {
    return '$seconds 초 분량의 오디오를 기반으로 분석하였습니다. 이 분석만으로 원본 마스터를 인증할 수는 없습니다';
  }

  @override
  String get hiResCheckImagingEvidence => '스펙트럼에 업샘플링과 일치하는 미러링된 대역이 나타납니다';

  @override
  String hiResCheckRateEvidence(String cutoff) {
    return '$cutoff 부근에서 급격한 롤오프가 나타나며, 측정된 노이즈 플로어를 고려하면 더 낮은 샘플레이트의 소스에서 비롯되었을 가능성이 있습니다';
  }

  @override
  String hiResCheckSteadyEnergy(String cutoff) {
    return '$cutoff 이상의 에너지는 분석 구간에서 대부분 일정하며, 노이즈일 가능성이 있습니다';
  }

  @override
  String get hiResCheckRun => '검사';

  @override
  String get hiResCheckChecking => 'Hi-Res 진위 여부 검사 중...';

  @override
  String get hiResCheckVerdictFake => '가짜 Hi-Res일 가능성이 높음';

  @override
  String get hiResCheckVerdictStandard => '일반 음질이며, 특별히 의심되는 사항이 없음';

  @override
  String get hiResCheckVerdictInconclusive =>
      '판단할 수 없음: 분석한 구간의 음량이 너무 작거나 길이가 너무 짧음';

  @override
  String get hiResCheckUnsupported => 'FLAC 및 WAV 파일만 확인할 수 있음';

  @override
  String hiResCheckFailed(String error) {
    return 'Hi-Res 검사 실패: $error';
  }

  @override
  String hiResCheckReasonDepth(int declared, int effective) {
    return '$declared-비트를 선언했지만 실제 데이터는 $effective 비트만 전달합니다';
  }

  @override
  String get audioAnalysisRescanning => '오디오를 다시 분석하는 중...';

  @override
  String get extensionsHomeFeedProvider => '홈 피드 제공자';

  @override
  String get extensionsHomeFeedCountry => '홈 피드 국가';

  @override
  String get extensionsHomeFeedCountryDescription => 'VPN 없이 국가의 홈 추천을 선택하세요';

  @override
  String get extensionsHomeFeedDescription => '메인 화면에 홈 피드를 제공하는 확장 기능을 선택하세요';

  @override
  String get extensionsHomeFeedAuto => '자동';

  @override
  String get extensionsHomeFeedAutoSubtitle => '사용 가능한 최적의 항목을 자동으로 선택합니다';

  @override
  String get extensionsHomeFeedOff => '끄기';

  @override
  String get extensionsHomeFeedOffSubtitle => '메인 화면에 홈 피드를 표시하지 않습니다';

  @override
  String extensionsHomeFeedUse(String extensionName) {
    return '$extensionName 홈 피드 사용';
  }

  @override
  String get extensionsNoHomeFeedExtensions => '홈 피드가 있는 확장 기능이 없음';

  @override
  String get cancelDownloadTitle => '다운로드를 취소하시겠습니까?';

  @override
  String cancelDownloadContent(String trackName) {
    return '\'$trackName\'에 대한 활성 다운로드를 취소합니다';
  }

  @override
  String get cancelDownloadKeep => '유지';

  @override
  String get queueCancelledTitle => '다운로드 취소됨';

  @override
  String get queueCancelledMessage =>
      '이 다운로드가 취소되었습니다. 다시 시도하거나, 다운로드 목록에서 제거하세요';

  @override
  String get metadataSaveFailedFfmpeg => 'FFmpeg를 통해 메타데이터 저장 실패';

  @override
  String get metadataSaveFailedStorage => '저장소에 메타데이터 다시 쓰기 실패';

  @override
  String snackbarFolderPickerFailed(String error) {
    return '폴더 선택기 열기 실패: $error';
  }

  @override
  String notifDownloadingTrack(String trackName) {
    return '\'$trackName\'를 다운로드하는 중';
  }

  @override
  String notifFinalizingTrack(String trackName) {
    return '\'$trackName\'를 마무리하는 중';
  }

  @override
  String get notifEmbeddingMetadata => '메타데이터를 삽입하는 중...';

  @override
  String notifAlreadyInLibraryCount(int completed, int total) {
    return '이미 라이브러리에 있음 ($completed/$total)';
  }

  @override
  String get notifAlreadyInLibrary => '이미 라이브러리에 있음';

  @override
  String notifDownloadCompleteCount(int completed, int total) {
    return '다운로드 완료 ($completed/$total)';
  }

  @override
  String get notifDownloadComplete => '다운로드 완료';

  @override
  String notifDownloadsFinished(int completed, int failed) {
    return '다운로드 완료 ($completed 개 완료, $failed 개 실패)';
  }

  @override
  String get notifVerificationRequiredTitle => '인증 필요';

  @override
  String get notifVerificationRequiredBody => '앱을 실행하여 인증을 완료하고 다운로드를 재개하세요';

  @override
  String get notifAllDownloadsComplete => '모든 다운로드 완료';

  @override
  String notifTracksDownloadedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 개의 트랙 다운로드 성공',
      one: '1 개의 트랙 다운로드 성공',
    );
    return '$_temp0';
  }

  @override
  String notifDownloadsFinishedBody(int completed, int failed) {
    String _temp0 = intl.Intl.pluralLogic(
      completed,
      locale: localeName,
      other: '$completed 개의 트랙 다운로드 성공',
      one: '1 개의 트랙 다운로드 성공',
    );
    String _temp1 = intl.Intl.pluralLogic(
      failed,
      locale: localeName,
      other: '$failed 개 실패',
      one: '1 개 실패',
    );
    return '$_temp0, $_temp1';
  }

  @override
  String get notifDownloadsCanceledTitle => '다운로드 취소됨';

  @override
  String notifDownloadsCanceledBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 개의 다운로드가 사용자에 의해 취소됨',
      one: '1 개의 다운로드가 사용자에 의해 취소됨',
    );
    return '$_temp0';
  }

  @override
  String get notifScanningLibrary => '로컬 라이브러리를 스캔하는 중';

  @override
  String notifLibraryScanProgressWithTotal(
    int scanned,
    int total,
    int percentage,
  ) {
    return '$scanned/$total 개의 파일 • $percentage%';
  }

  @override
  String notifLibraryScanProgressNoTotal(int scanned) {
    return '$scanned 게의 파일이 스캔됨';
  }

  @override
  String get notifLibraryScanComplete => '라이브러리 스캔 완료';

  @override
  String notifLibraryScanCompleteBody(int count) {
    return '$count 개의 트랙이 색인됨';
  }

  @override
  String notifLibraryScanExcluded(int count) {
    return '$count 개가 제외됨';
  }

  @override
  String notifLibraryScanErrors(int count) {
    return '$count 개의 오류';
  }

  @override
  String get notifLibraryScanFailed => '라이브러리 스캔 실패';

  @override
  String get notifLibraryScanInterruptedBody =>
      '이전 라이브러리 스캔이 중단되었습니다. 계속하려면 폴더를 다시 스캔하세요. 색인된 트랙은 계속 사용할 수 있습니다';

  @override
  String get notifLibraryScanCancelled => '라이브러리 스캔이 취소됨';

  @override
  String get notifLibraryScanStopped => '스캔이 완료되기 전에 중단되었습니다';

  @override
  String get notifLibraryScanPaused => '라이브러리 스캔이 일시 중지됨';

  @override
  String notifLibraryScanPausedBody(int count) {
    return '$count 개의 파일을 스캔하였습니다. 여기에서 계속하려면 로컬 라이브러리 설정에서 다시 시작하세요';
  }

  @override
  String notifDownloadingUpdate(String version) {
    return 'Toadplayer v$version을 다운로드하는 중';
  }

  @override
  String notifUpdateProgress(String received, String total, int percentage) {
    return '$received / $total MB • $percentage%';
  }

  @override
  String get notifUpdateReady => '업데이트 준비 완료';

  @override
  String notifUpdateReadyBody(String version) {
    return 'Toadplayer v$version 다운로드 완료. 설치하려면 탭하세요';
  }

  @override
  String get notifUpdateFailed => '업데이트 실패';

  @override
  String get notifUpdateFailedBody => '업데이트를 다운로드할 수 없습니다. 나중에 다시 시도하세요';

  @override
  String get searchTracks => '트랙';

  @override
  String get homeSearchHintDefault => '지원되는 URL을 붙여넣거나 검색...';

  @override
  String homeSearchHintProvider(String providerName) {
    return '$providerName으로 검색...';
  }

  @override
  String get homeImportCsvTooltip => '재생목록 가져오기 (CSV, M3U)';

  @override
  String get homeChangeSearchProviderTooltip => '검색 제공자 변경';

  @override
  String get actionPaste => '붙여넣기';

  @override
  String get tutorialSearchHint => '붙여넣기 또는 검색하기...';

  @override
  String get tutorialDownloadCompletedSemantics => '다운로드 완료';

  @override
  String get tutorialDownloadInProgressSemantics => '다운로드를 진행하는 중';

  @override
  String get tutorialStartDownloadSemantics => '다운로드 시작';

  @override
  String get optionsEmbedMetadata => '메타데이터 삽입';

  @override
  String get optionsEmbedMetadataSubtitleOn => '메타데이터, 앨범 커버 및 삽입된 가사를 파일에 기록';

  @override
  String get optionsEmbedMetadataSubtitleOff => '비활성화됨 (고급): 모든 메타데이터 삽입 건너뛰기';

  @override
  String get trackCoverNoEmbeddedArt => '삽입된 앨범 커버가 없음';

  @override
  String get trackCoverReplace => '표지 교체';

  @override
  String get trackCoverPick => '표지 선택';

  @override
  String get trackCoverClearSelected => '선택된 표지 지우기';

  @override
  String get trackCoverCurrent => '현재 표지';

  @override
  String get trackCoverSelected => '선택된 표지';

  @override
  String get trackCoverReplaceNotice => '저장을 탭하면 선택한 표지가 현재 삽입된 표지를 대체합니다';

  @override
  String get trackCoverResolution => '커버 해상도';

  @override
  String get trackCoverResolutionHint =>
      '저장할 때 이미지의 긴 변 길이를 설정합니다. 확대해도 이미지의 세부 정보는 늘어나지 않습니다';

  @override
  String get trackCoverResizeFailed =>
      '앨범 커버를 원하는 크기로 조정할 수 없습니다. 다른 크기나 이미지를 사용해 보세요';

  @override
  String get actionStop => '중지';

  @override
  String get queueFinalizingDownload => '다운로드를 마무리하는 중';

  @override
  String get queueDownloadNext => '다음 다운로드';

  @override
  String get queueMoveUp => '위로 이동';

  @override
  String get queueMoveDown => '아래로 이동';

  @override
  String get editMetadataMusicBrainzButton => 'MusicBrainz에서 가져오기';

  @override
  String get editMetadataMusicBrainzFilled => 'MusicBrainz에서 업데이트됨';

  @override
  String get editMetadataMusicBrainzNothing => 'MusicBrainZ에서 발견되지 않음';

  @override
  String get editMetadataMusicBrainzNeedsIsrc => 'ISRC 태그 필요';

  @override
  String get nowPlayingRepeatOff => '반복 끄기';

  @override
  String get nowPlayingRepeatAll => '모두 반복';

  @override
  String get nowPlayingRepeatOne => '한 곡 반복';

  @override
  String queueNetworkFailedOffline(int count) {
    return '오프라인 중에 $count 개의 다운로드 실패';
  }

  @override
  String get queueDownloadedFileMissing => '다운로드된 파일이 없음';

  @override
  String get queueCheckingDownloadedFile => '다운로드된 파일을 확인하는 중...';

  @override
  String get queueDownloadCompleted => '다운로드 완료';

  @override
  String get queueRateLimitTitle => '서비스 사용 제한됨';

  @override
  String get queueRateLimitMessage =>
      '이 트랙은 아직 사용 가능할 수 있습니다. 몇 분 기다렸다가 병렬 다운로드를 줄인 후에 다시 시도하세요';

  @override
  String appearanceSelectAccentColor(String hex) {
    return '강조 색상 $hex 선택';
  }

  @override
  String get logAutoScrollOn => '자동 스크롤: ON';

  @override
  String get logAutoScrollOff => '자동 스크롤: OFF';

  @override
  String get logCopyLogs => '로그 복사';

  @override
  String get logClearSearch => '로그 지우기';

  @override
  String get logIssueIspBlockingLabel => 'ISP 차단 감지됨';

  @override
  String get logIssueIspBlockingDescription => 'ISP에서 다운로드 서비스 접속을 차단했을 수 있습니다';

  @override
  String get logIssueIspBlockingSuggestion =>
      'VPN을 사용하거나 DNS를 1.1.1.1 또는 8.8.8.8로 변경해 보세요';

  @override
  String get logIssueRateLimitedLabel => '사용 제한';

  @override
  String get logIssueRateLimitedDescription => '서비스에 대한 요청이 너무 많습니다';

  @override
  String get logIssueRateLimitedSuggestion => '몇 분 기다린 후에 다시 시도하세요';

  @override
  String get logIssueNetworkErrorLabel => '네트워크 오류';

  @override
  String get logIssueNetworkErrorDescription => '연결 문제가 감지됨';

  @override
  String get logIssueNetworkErrorSuggestion => '인터넷 연결 상태를 확인하세요';

  @override
  String get logIssueTrackNotFoundLabel => '트랙을 찾을 수 없음';

  @override
  String get logIssueTrackNotFoundDescription => '일부 트랙은 다운로드 서비스에서 찾을 수 없음';

  @override
  String get logIssueTrackNotFoundSuggestion => '트랙이 무손실 음질로 제공되지 않을 수 있습니다';

  @override
  String get clickableLookingUpArtist => '아티스트를 검색하는 중...';

  @override
  String clickableInformationUnavailable(String type) {
    return '$type 정보를 사용할 수 없음';
  }

  @override
  String get extensionDetailsTags => '태그';

  @override
  String get extensionDetailsInformation => '정보';

  @override
  String get extensionUtilityFunctions => '유틸리티 함수';

  @override
  String get actionDismiss => '닫기';

  @override
  String get setupChangeFolderTooltip => '폴더 변경';

  @override
  String a11yOpenTrackByArtist(String trackName, String artistName) {
    return '\'$artistName\'의 트랙 \'$trackName\' 열기';
  }

  @override
  String a11yOpenItem(String itemType, String name) {
    return '$itemType $name 열기';
  }

  @override
  String a11yOpenItemCount(String title, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '항목',
      one: '항목',
    );
    return '$title, $count 개의 $_temp0 열기';
  }

  @override
  String a11yOpenAlbumByArtistTrackCount(
    String albumName,
    String artistName,
    int trackCount,
  ) {
    return '\'$artistName\'의 앨범 \'$albumName\' 열기 ($trackCount 번째 곡)';
  }

  @override
  String a11yTrackByArtist(String trackName, String artistName) {
    return '\'$artistName\'의 \'$trackName\'';
  }

  @override
  String a11ySelectAlbum(String albumName) {
    return '앨범 \'$albumName\' 선택';
  }

  @override
  String a11yOpenAlbum(String albumName) {
    return '앨범 \'$albumName\' 열기';
  }

  @override
  String get settingsFiles => '파일 및 폴더';

  @override
  String get settingsFilesSubtitle => '다운로드 위치, 파일 이름, 폴더 구조';

  @override
  String get settingsMetadata => '메타데이터';

  @override
  String get settingsMetadataSubtitle => '앨범 커버, 태그, 리플레이게인, 제공자';

  @override
  String get settingsLyrics => '가사';

  @override
  String get settingsLyricsSubtitle => '삽입, 모드, 제공자, 언어 옵션';

  @override
  String get settingsApp => '앱';

  @override
  String get settingsAppSubtitle => '업데이트, 데이터, 확장 기능 레포, 디버그';

  @override
  String get sectionMetadataProviders => '제공자';

  @override
  String get sectionDuplicates => '중복';

  @override
  String get sectionLyricsProviderOptions => '제공자 옵션';

  @override
  String get metadataProvidersTitle => '메타데이터 제공자 우선순위';

  @override
  String get metadataProvidersSubtitle => '드래그하여 검색 및 메타데이터 출처 순서를 설정하세요';

  @override
  String get downloadDeduplication => '중복 다운로드 건너뛰기';

  @override
  String get downloadDeduplicationEnabled => '이미 다운로드된 트랙은 건너뜁니다';

  @override
  String get downloadDeduplicationWithQualityVariants => '선택된 음질의 기존 파일은 건너뜁니다';

  @override
  String get downloadDeduplicationDisabled => '기록과 관계없이 모든 트랙이 다운로드됩니다';

  @override
  String get downloadQualityVariants => '다양한 음질 버전 허용';

  @override
  String get downloadQualityVariantsDescription =>
      '모든 화질 버전을 유지하고, 같은 파일 이름이 이미 있는 경우에만 측정된 화질을 파일 이름에 추가합니다';

  @override
  String get trackOptionDownloadQualityVariant => '다른 음질 다운로드';

  @override
  String get downloadFallbackExtensions => '대체 확장 기능';

  @override
  String get downloadFallbackExtensionsSubtitle =>
      '대체 확장 기능으로 사용할 확장 기능을 선택하세요';

  @override
  String get editMetadataFieldDateHint => 'YYYY-MM-DD 또는 YYYY';

  @override
  String get editMetadataFieldTrackTotal => '전체 트랙 수';

  @override
  String get editMetadataFieldDiscTotal => '전체 디스크 수';

  @override
  String get editMetadataFieldComposer => '작곡가';

  @override
  String get editMetadataFieldComment => '주석';

  @override
  String get trackAlbumType => '발매 유형';

  @override
  String get editMetadataFieldAlbumTypeHint => '앨범, 싱글, EP, 컴필레이션...';

  @override
  String get editMetadataFieldExplicit => '성인용';

  @override
  String get editMetadataFieldExplicitHint => '이 트랙에 성인용 콘텐츠가 포함되어 있음을 표시합니다';

  @override
  String get metadataExplicitValue => '성인용';

  @override
  String get editMetadataFieldUpc => 'UPC / 바코드';

  @override
  String get editMetadataFieldUpcHint => '숫자 UPC, EAN, 또는 GTIN';

  @override
  String get editMetadataAdvanced => '고급';

  @override
  String get libraryFilterMetadataMissingTrackNumber => '트랙 번호 누락';

  @override
  String get libraryFilterMetadataMissingDiscNumber => '디스크 번호 누락';

  @override
  String get libraryFilterMetadataMissingArtist => '아티스트 누락';

  @override
  String get libraryFilterMetadataIncorrectIsrcFormat => 'ISRC 형식이 잘못됨';

  @override
  String get libraryFilterMetadataMissingIsrc => 'ISRC 누락';

  @override
  String get libraryFilterMetadataMissingLabel => '레이블 누락';

  @override
  String collectionDeletePlaylistsMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '재생목록',
      one: '재생목록',
    );
    return '$count 개의 $_temp0을 삭제하시겠습니까?';
  }

  @override
  String collectionPlaylistsDeleted(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '재생목록',
      one: '재생목록',
    );
    return '$count 개의 $_temp0이 삭제됨';
  }

  @override
  String collectionAddedTracksToPlaylist(int count, String playlistName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '트랙',
      one: '트랙',
    );
    return '\'\'$playlistName\'\'에 $count 개의 $_temp0이 추가됨';
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
      other: '트랙',
      one: '트랙',
    );
    return '\'\'$playlistName\'\'에 $count 개의 $_temp0이 추가됨 ($alreadyCount 개의 트랙은 이미 재생목록에 있음)';
  }

  @override
  String itemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '항목',
      one: '항목',
    );
    return '$count 개의 $_temp0';
  }

  @override
  String trackReEnrichSuccessWithFailures(
    int successCount,
    int total,
    int failedCount,
  ) {
    return '메타데이터 재구성 성공 ($successCount/$total) - 실패: $failedCount';
  }

  @override
  String selectionDeleteTracksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '트랙',
      one: '트랙',
    );
    return '$count 개의 $_temp0 삭제';
  }

  @override
  String queueDownloadSpeedStatus(String speed) {
    return '다운로드하는 중 - $speed MB/s';
  }

  @override
  String get queueDownloadStarting => '시작하는 중...';

  @override
  String get queueCheckingDownloadSession => '다운로드 세션을 확인하는 중...';

  @override
  String get queueResolvingDownloadMetadata => '트랙 메타데이터를 확인하는 중...';

  @override
  String get queueResolvingDownloadStream => '오디오 스트림을 준비하는 중...';

  @override
  String get queueWaitingForVerification => '확인을 기다리는 중...';

  @override
  String get queueResumingAfterVerification => '확인 후 재개하는 중...';

  @override
  String get a11ySelectTrack => '트랙 선택';

  @override
  String get a11yDeselectTrack => '트랙 선택 해제';

  @override
  String a11yPlayTrackByArtist(String trackName, String artistName) {
    return '\'$artistName\'의 \'$trackName\' 재생';
  }

  @override
  String storeExtensionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '확장 기능',
      one: '확장 기능',
    );
    return '$count 개의 $_temp0';
  }

  @override
  String storeRequiresVersion(String version) {
    return 'v$version 이상 필요';
  }

  @override
  String get logIssueSummary => '문제 요약';

  @override
  String logTotalErrors(int count) {
    return '총 오류 수: $count';
  }

  @override
  String logAffectedDomains(String domains) {
    return '영향받은 도메인: $domains';
  }

  @override
  String get libraryScanCancelled => '스캔이 취소됨';

  @override
  String get libraryScanCancelledSubtitle => '준비가 되면 스캔을 다시 시도할 수 있습니다';

  @override
  String libraryDownloadsHistoryExcluded(int count) {
    return '다운로드 기록에서 $count 개 (목록에서 제외됨)';
  }

  @override
  String get downloadNativeWorker => '기본 다운로드 워커';

  @override
  String get downloadNativeWorkerSubtitle => '확장 기능 다운로드를 위한 Android 백그라운드 서비스';

  @override
  String get extensionServiceStatus => '서비스 상태';

  @override
  String get extensionServiceHealth => '서비스 상태';

  @override
  String extensionHealthChecksConfigured(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '검사',
      one: '검사',
    );
    return '$count 개의 $_temp0가 설정됨';
  }

  @override
  String get extensionOauthConnectHint => 'Spotify에 연결을 탭하여 이 필드를 채우세요';

  @override
  String extensionLastChecked(String time) {
    return '마지막 확인 시간: $time';
  }

  @override
  String get extensionRefreshStatus => '상태 새로고침';

  @override
  String get extensionCustomUrlHandling => '사용자 정의 URL 처리';

  @override
  String get extensionCustomUrlHandlingSubtitle =>
      '이 확장 기능은 다음 사이트의 링크를 처리할 수 있습니다';

  @override
  String get extensionCustomUrlHandlingShareHint =>
      '이 사이트의 링크를 Toadplayer로 공유하면 이 확장 기능이 처리합니다';

  @override
  String extensionSettingsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '설정',
      one: '설정',
    );
    return '$count 개의 $_temp0';
  }

  @override
  String get extensionHealthOnline => '온라인';

  @override
  String get extensionHealthDegraded => '저하됨';

  @override
  String get extensionHealthOffline => '오프라인';

  @override
  String get extensionHealthNotConfigured => '설정되지 않음';

  @override
  String get extensionHealthUnknown => '알 수 없음';

  @override
  String get extensionHealthRequired => '필수';

  @override
  String get extensionSettingNotSet => '설정되지 않음';

  @override
  String get extensionActionFailed => '작업 실패';

  @override
  String get extensionEnterValue => '값을 입력하세요';

  @override
  String get extensionHealthServiceOnline => '서비스 온라인';

  @override
  String get extensionHealthServiceDegraded => '서비스 저하됨';

  @override
  String get extensionHealthServiceOffline => '서비스 오프라인';

  @override
  String get extensionHealthServiceUnknown => '서비스 상태 알 수 없음';

  @override
  String get audioAnalysisStereo => '스테레오';

  @override
  String get audioAnalysisMono => '모노';

  @override
  String trackOpenInService(String serviceName) {
    return '$serviceName에서 열기';
  }

  @override
  String get trackLyricsEmbeddedSource => '삽입';

  @override
  String get unknownAlbum => '알 수 없는 앨범';

  @override
  String get unknownArtist => '알 수 없는 아티스트';

  @override
  String get permissionAudio => '오디오';

  @override
  String get permissionStorage => '저장소';

  @override
  String get permissionNotification => '알림';

  @override
  String get errorInvalidFolderSelected => '잘못된 폴더가 선택됨';

  @override
  String get storeAnyVersion => '모든';

  @override
  String get storeCategoryMetadata => '메타데이터';

  @override
  String get storeCategoryDownload => '다운로드';

  @override
  String get storeCategoryUtility => '유틸리티';

  @override
  String get storeCategoryLyrics => '가사';

  @override
  String get storeCategoryIntegration => '연동';

  @override
  String get artistReleases => '발매 음악';

  @override
  String get editMetadataSelectNone => '없음';

  @override
  String queueRetryAllFailed(int count) {
    return '재시도 $count 번 실패';
  }

  @override
  String get settingsSaveDownloadHistory => '다운로드 기록 저장';

  @override
  String get settingsSaveDownloadHistorySubtitle =>
      '완료된 다운로드를 기록 및 라이브러리 보기에 유지합니다';

  @override
  String get dialogDisableHistoryTitle => '다운로드 기록을 끄시겠습니까?';

  @override
  String get dialogDisableHistoryMessage => '기존 기록이 삭제됩니다. 다운로드된 파일은 삭제되지 않습니다';

  @override
  String get dialogDisableAndClear => '끄고 지우기';

  @override
  String get openInOtherServices => '다른 서비스에서 열기';

  @override
  String get shareSheetNoExtensions => '호환되는 다른 서비스가 없음';

  @override
  String get shareSheetNotFound => '찾을 수 없음';

  @override
  String get shareSheetCopyLink => '링크 복사';

  @override
  String shareSheetLinkCopied(Object service) {
    return '$service 링크가 복사됨';
  }

  @override
  String get libraryPlayback => '재생';

  @override
  String get libraryExternalPlayer => '외부 플레이어';

  @override
  String get libraryExternalPlayerSubtitle =>
      '감상용으로 권장됩니다. 최고 음질, 갭리스 재생, EQ 및 다양한 오디오 형식을 지원합니다';

  @override
  String get libraryBuiltInPreviewPlayer => '내부 플레이어';

  @override
  String get libraryBuiltInPreviewPlayerSubtitle => 'Toadplayer에서 바로 음악을 재생합니다';

  @override
  String get nowPlayingTitle => '현재 재생 중';

  @override
  String get nowPlayingNothingPlaying => '재생 중인 노래가 없음';

  @override
  String get nowPlayingMinimize => '최소화';

  @override
  String get nowPlayingUpNext => '다음 곡';

  @override
  String get nowPlayingAudioOutput => '오디오 출력';

  @override
  String nowPlayingWrittenBy(String writers) {
    return '작성자: $writers';
  }

  @override
  String nowPlayingLyricsProvider(String provider) {
    return '가사: $provider';
  }

  @override
  String get concertGetTickets => '티켓 구매';

  @override
  String get concertSetList => '콘서트 세트리스트';

  @override
  String get concertSetListButton => '세트리스트';

  @override
  String get concertAddToCalendar => '캘린더에 추가';

  @override
  String get concertOpenMaps => '지도 열기';

  @override
  String get concertDetailsUnavailable => '콘서트 세부 정보를 현재 사용할 수 없습니다';

  @override
  String get concertCalendarUnavailable => '캘린더를 열 수 없습니다';

  @override
  String get nowPlayingAudioOutputUnavailable => '오디오 출력 설정을 열 수 없습니다';

  @override
  String get nowPlayingPreviousTrack => '이전 트랙';

  @override
  String get nowPlayingNextTrack => '다음 트랙';

  @override
  String get nowPlayingDetails => '트랙 세부 정보';

  @override
  String get nowPlayingSleepTimer => '취침 타이머';

  @override
  String nowPlayingSleepTimerActive(String time) {
    return '$time에 종료';
  }

  @override
  String nowPlayingSleepTimerMinutes(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes 분',
      one: '1 분',
    );
    return '$_temp0';
  }

  @override
  String get nowPlayingSleepTimerOff => '취침 타이머 끄기';

  @override
  String nowPlayingSleepTimerSet(String duration) {
    return '$duration 동안 취침 타이머가 설정됨';
  }

  @override
  String get nowPlayingSleepTimerCancelled => '취침 타이머 꺼짐';

  @override
  String get nowPlayingOpenInExternalPlayer => '외부 플레이어에서 열기';

  @override
  String get nowPlayingHideVolume => '볼륨 숨기기';

  @override
  String get nowPlayingShowVolume => '볼륨 보이기';

  @override
  String get nowPlayingTabPlayer => '플레이어';

  @override
  String get nowPlayingTabLyrics => '가사';

  @override
  String get nowPlayingNoLyrics => '이 파일에는 가사가 없음';

  @override
  String get nowPlayingInstrumental => '연주곡';

  @override
  String get nowPlayingLyricsLanguageOptions => '가시 언어 옵션';

  @override
  String get nowPlayingHidePronunciation => '발음 숨기기';

  @override
  String get nowPlayingShowPronunciation => '발음 보기';

  @override
  String get nowPlayingHideTranslation => '번역 숨기기';

  @override
  String get nowPlayingShowTranslation => '번역 보기';

  @override
  String get nowPlayingSearchLyricsOnline => '온라인 검색';

  @override
  String get nowPlayingNoLyricsOnline => '온라인에서 가사를 찾을 수 없습니다';

  @override
  String nowPlayingTranslateLyricsTo(String language) {
    return 'Translate to $language';
  }

  @override
  String get nowPlayingTranslateOtherLanguage => 'Other Language…';

  @override
  String get nowPlayingCancelTranslation => '번역 취소';

  @override
  String nowPlayingTranslatingLyrics(int percent) {
    return '가사를 번역하는 중, $percent%';
  }

  @override
  String get lyricsTranslateSheetTitle => '번역 대상';

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
    return '이 가사는 이미 $language로 번역되어 있습니다';
  }

  @override
  String get lyricsAiTranslation => 'AI 번역';

  @override
  String get lyricsAiTranslationOff => 'Not set up';

  @override
  String get lyricsAiTranslationNotice =>
      'Lyrics you translate are sent to the provider you choose, using your own API key. The provider\'s terms and pricing apply. Translations are saved on this device and never change your lyric files.';

  @override
  String get lyricsAiSectionProvider => '제공자';

  @override
  String get lyricsAiSectionTranslation => '번역';

  @override
  String get lyricsAiProvider => '제공자';

  @override
  String get lyricsAiProviderCustom => '사용자 정의 서버';

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
  String get lyricsAiApiKey => 'API 키';

  @override
  String get lyricsAiApiKeyOptional => '로컬 서버용 선택 사항';

  @override
  String lyricsAiApiKeySaved(String suffix) {
    return '저장됨, \'$suffix\'로 끝남';
  }

  @override
  String lyricsAiApiKeyDescription(String provider) {
    return 'Kept in this device\'s secure storage and only sent to $provider.';
  }

  @override
  String get lyricsAiModel => '모델';

  @override
  String lyricsAiModelDefault(String model) {
    return '기본값 ($model)';
  }

  @override
  String get lyricsAiModelHint => '모델 ID';

  @override
  String get lyricsAiModelUseDefault => '기본값 사용';

  @override
  String get lyricsAiModelLoad => '모델 불러오기';

  @override
  String get lyricsAiModelsEmpty => '제공자에 모델이 없습니다';

  @override
  String get lyricsAiTestConnection => '연결 테스트';

  @override
  String get lyricsAiTestConnectionSubtitle => '키와 모델을 확인하기 위해 한 줄을 번역합니다';

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
  String get nowPlayingLibraryEmpty => '라이브러리가 비어 있음';

  @override
  String nowPlayingShuffleLibraryFailed(String error) {
    return '라이브러리에서 셔플을 사용할 수 없음: $error';
  }

  @override
  String get nowPlayingShuffleOn => '셔플 켜기';

  @override
  String get nowPlayingPlayInOrder => '순서대로 재생';

  @override
  String get nowPlayingShuffleLibrary => '라이브러리 셔플';

  @override
  String get nowPlayingQueueEmpty => '현재 재생목록이 비어 있음';

  @override
  String get nowPlayingNoMetadata => '사용할 수 있는 메타데이터가 없음';

  @override
  String get linkDevicesTitle => 'Devices';

  @override
  String get linkConnectionConnected => '연결됨';

  @override
  String get linkConnectionConnecting => '연결하는 중';

  @override
  String get linkConnectionDisconnected => '연결되지 않음';

  @override
  String get linkThisPhone => '이 휴대폰';

  @override
  String linkPlayingOn(String name) {
    return '$name에서 재생 중';
  }

  @override
  String linkDesktopDownloads(String name) {
    return '$name에서 다운로드';
  }

  @override
  String linkHandoffStarted(String name) {
    return '$name에서 재생 중';
  }

  @override
  String linkHandoffSending(String name) {
    return '이 노래를 \'$name\'에게 전송 중...';
  }

  @override
  String linkHandoffMissing(String name, String titles) {
    return '$name에서 재생 중입니다. 찾을 수 없음: $titles';
  }

  @override
  String linkHandoffNotFound(String name) {
    return '\'$name\'에는 이러한 트랙이 없습니다';
  }

  @override
  String get linkHandoffNothingPlaying => '이 휴대폰에서 재생 중인 음악이 없습니다';

  @override
  String linkContinueSkipped(String titles) {
    return '이 휴대폰에 없음: $titles';
  }

  @override
  String get linkContinueNotFound => '이 휴대폰에는 이러한 트랙이 없음';

  @override
  String linkRequestFailed(String name) {
    return '$name에 연결할 수 없음';
  }

  @override
  String linkDownloadOnDesktop(String name) {
    return '$name에서 다운로드';
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
    return '$name에서 열기';
  }

  @override
  String linkOpenedOnDesktop(String name) {
    return '$name에서 열림';
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
  String get linkDownloadStatusFailed => '실패';

  @override
  String get announcementUnableToOpenLink => '링크를 열 수 없습니다. 다시 시도해 주세요';

  @override
  String trackConvertLosslessOutputWithCap(String quality) {
    return '$quality 제한이 있는 무손실 출력';
  }

  @override
  String trackConvertConfirmMessageLosslessCapped(
    String sourceFormat,
    String targetFormat,
    String quality,
  ) {
    return '$sourceFormat에서 $targetFormat($quality)으로 변환하시겠습니까?\n\n출력은 무손실 코덱을 유지하지만 비트 심도/샘플 속도가 제한됩니다. 변환 후 원본 파일이 삭제됩니다';
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
      other: '트랙',
      one: '트랙',
    );
    return '$count 개의 $_temp0을 $format($quality)으로 변환하시겠습니까?\n\n출력은 무손실 코덱을 유지하지만 비트 심도/샘플 속도가 제한됩니다. 변환 후 원본 파일이 삭제됩니다';
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
      'Musixmatch, Netease, Apple Music, QQ Music, Spotify, Deezer, YouTube, Kugou 및 Genius용 가사 프록시';

  @override
  String get snackbarPlayingNext => '다음 곡 재생';

  @override
  String get snackbarAddedToQueueGeneric => '현재 재생목록에 추가됨';

  @override
  String selectionDeletePlaylistsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '재생목록',
      one: '재생목록',
    );
    return '$count 개의 $_temp0 삭제';
  }

  @override
  String get actionShuffle => '셔플';

  @override
  String get artistShuffleEmpty =>
      'No songs by this artist in your Library yet';

  @override
  String get downloadPrimaryArtistOnlyOn => '기본 아티스트만: ON';

  @override
  String get downloadPrimaryArtistOnlyOff => '기본 아티스트만: OFF';

  @override
  String get downloadAlbumArtistMetadataPrimaryOnly => '앨범 아티스트 메타데이터: 기본만';

  @override
  String get downloadAlbumArtistMetadataFull => '앨범 아티스트 메타데이터: 전체';

  @override
  String get trackConvertOriginal => '원본';

  @override
  String get trackConvertOriginalQuality => '원본 음질';

  @override
  String get trackConvertLosslessSuffix => '무손실';

  @override
  String get trackConvertDithering => '디더링';

  @override
  String get trackConvertResampler => '리샘플러';

  @override
  String get trackConvertDitherNone => '없음';

  @override
  String get trackConvertDitherTriangular => 'TPDF';

  @override
  String get trackConvertDitherTriangularHp => '삼각형 HP';

  @override
  String get trackConvertResamplerSwr => 'SWR';

  @override
  String get trackConvertResamplerSoxr => 'SoXr';

  @override
  String get updateSeeReleaseNotes => '자세한 내용은 릴리스 노트를 참조하세요';

  @override
  String get unknownTitle => '알 수 없는 제목';

  @override
  String get trackPlayNext => '다음 곡 재생';

  @override
  String get trackAddToQueue => '현재 재생목록에 추가';

  @override
  String snackbarExtensionInstalledEnable(String extensionName) {
    return '\'$extensionName\'이 설치됨. \'설정 > 확장 기능\'에서 활성화하세요';
  }

  @override
  String snackbarExtensionUpdatedVersion(String extensionName, String version) {
    return '\'$extensionName\'이 v$version으로 업데이트됨';
  }

  @override
  String snackbarFailedToInstallNamed(String extensionName) {
    return '$extensionName 설치 실패';
  }

  @override
  String snackbarFailedToUpdateNamed(String extensionName) {
    return '$extensionName 업데이트 실패';
  }

  @override
  String get releaseTypeEp => 'EP';

  @override
  String get releaseTypeSingle => '싱글';

  @override
  String get trackCoverOnline => '온라인 표지';

  @override
  String get regionCountryUS => '미국';

  @override
  String get regionCountryIT => '이탈리아';

  @override
  String get regionCountryES => '스페인';

  @override
  String get regionCountryGB => '영국';

  @override
  String get regionCountryFR => '프랑스';

  @override
  String get regionCountryDE => '독일';

  @override
  String get regionCountryJP => '일본';

  @override
  String get regionCountryKR => '한국';

  @override
  String get regionCountryIN => '인도';

  @override
  String get regionCountryID => '인도네시아';

  @override
  String get regionCountryBR => '브라질';

  @override
  String get regionCountryMX => '멕시코';

  @override
  String get regionCountryAU => '호주';

  @override
  String get regionCountryCA => '캐나다';

  @override
  String get regionCountryXK => '코소보';

  @override
  String get extensionVerificationBrowserTitle => '인증 브라우저';

  @override
  String get extensionVerificationBrowserSubtitleExternal =>
      '인증을 기본 브라우저에서 먼저 실행합니다';

  @override
  String get extensionVerificationBrowserSubtitleInApp =>
      '인증을 앱 내 브라우저에서 먼저 실행합니다';

  @override
  String get extensionVerificationBrowserExternal => '외부';

  @override
  String get extensionVerificationBrowserInApp => '내부';

  @override
  String extensionVerificationUnavailable(String extension) {
    return '\'$extension\'에 대한 인증 페이지를 사용할 수 없습니다. 새 인증을 요청하려면 다운로드를 다시 시도하세요';
  }

  @override
  String get extensionVerificationHelpTitleManual => '수동으로 인증 열기';

  @override
  String get extensionVerificationHelpTitleWaiting => '아직 인증을 기다리는 중';

  @override
  String get extensionVerificationHelpMessageManual =>
      'Toadplayer에서 브라우저를 자동으로 열지 못하였습니다. 아래 링크를 브라우저에서 열거나 직접 복사하세요';

  @override
  String get extensionVerificationHelpMessageWaiting =>
      '브라우저가 열리지 않거나 인증을 완료한 후에도 Toadplayer로 돌아가지 않는다면, 아래 링크를 다시 열거나 직접 복사하세요';

  @override
  String get extensionVerificationClose => '닫기';

  @override
  String get extensionVerificationCopyLink => '링크 복사';

  @override
  String get extensionVerificationPasteCallback => '콜백 붙혀넣게';

  @override
  String get extensionVerificationLinkCopied => '인증 링크가 복사됨';

  @override
  String get extensionVerificationOpenBrowser => '브라우저 열기';

  @override
  String get settingsSearchHint => '설정 검색';

  @override
  String settingsSearchNoResults(String query) {
    return '\'$query\'과 일치하는 설정이 없음';
  }

  @override
  String get libraryFilterMetadataMissingLyrics => '가사 누락';

  @override
  String get libraryFilterMetadataMissingReplayGain => '리플레이게인 누락';

  @override
  String get libraryFilterMetadataHasReplayGain => '리플레이게인 있음';

  @override
  String get libraryFilterIncompleteAlbums => '불완전한 앨범';

  @override
  String get libraryAlbumCompletenessUnknown => '앨범 완성도 알 수 없음';

  @override
  String libraryAlbumMissingTracks(int present, int expected, int missing) {
    return '$present/$expected 트랙 · $missing 누락';
  }

  @override
  String get trackOptionCopyTrackName => '트랙 제목 복사';

  @override
  String get trackOptionCopyArtist => '아티스트 복사';

  @override
  String get trackOptionCopyTrackAndArtist => '트랙 및 아티스트 복사';

  @override
  String trackOptionCopyLink(String service) {
    return 'Copy $service link';
  }

  @override
  String get metadataCopyValue => '값 복사';

  @override
  String get metadataCopyField => '필드 및 값 복사';

  @override
  String get toadplayerSearch => '검색';

  @override
  String get toadplayerContinuePlaying => '계속 재생';

  @override
  String get metadataCopyAll => '모든 메타데이터 복사';

  @override
  String get optionsEmbeddedCoverSize => '내장된 앨범 커버 크기';

  @override
  String get optionsEmbeddedCoverSizeDescription =>
      '원격으로 다운로드된 앨범 커버를 삽입하기 전에 크기를 줄입니다. 이미 제한 내에 있는 이미지는 변경되지 않습니다';

  @override
  String get toadplayerFavorite => '즐겨찾기';

  @override
  String get toadplayerGoToArtist => '아티스트로 이동';

  @override
  String get toadplayerGetInfo => 'Get Info';

  @override
  String get toadplayerFavorited => '즐겨추가에 추가됨';

  @override
  String get autoMixDescription =>
      '곡을 비트에 맞춰 믹싱하고, 음정은 유지한 채 템포를 조절합니다. 비트를 맞출 수 없는 경우에는 크로스페이드를 사용합니다';

  @override
  String get gaplessPlayback => '끊김 없는 재생';

  @override
  String get gaplessPlaybackDescription =>
      'Start the next song the moment one ends, without silence between them. AutoMix replaces it while on.';

  @override
  String get playerCoverStyle => '커버 아트';

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
  String get compactPlayer => '소형 플레이어';

  @override
  String get compactPlayerDescription =>
      'When lyrics are left alone, shrink the player to a slim bar so the lyrics get more room. A tap brings the full player back';

  @override
  String get playerCoverStyleDefault => '기본값';

  @override
  String get playerCoverStyleCard => '카드';

  @override
  String get playerCoverStyleDefaultDescription => '컨트롤 위에 카드 형태로 표시되는 아트워크';

  @override
  String get playerCoverStyleFullScreen => '전체 화면';

  @override
  String get playerCoverStyleFullScreenDescription =>
      '아트워크가 플레이어 상단을 채우고 흐릿하게 페이드 인됩니다. 모션 아트워크는 Toadplayer에서 항상 전체 화면으로 표시됩니다';

  @override
  String get musicHaptics => '음악 햅틱';

  @override
  String get musicHapticsDescription => '다운로드한 노래와 로컬 음악의 비트에 맞춰 진동합니다';

  @override
  String get musicHapticsSensitivity => '감도';

  @override
  String get musicHapticsStrength => '강도';

  @override
  String get autoMixOn => 'AutoMix 켜기';

  @override
  String get autoMixOff => 'AutoMix 끄기';

  @override
  String get autoplayOn => '자동재생 켜기';

  @override
  String get autoplayOff => '자동재생 끄기';

  @override
  String get queueAutoplay => 'Autoplay';

  @override
  String get queueAutoMix => 'AutoMix';

  @override
  String get autoplayFromLibrary => '라이브러리에서 자동재생';

  @override
  String get autoplayDescription => '다운로드 목록이 끝나면 라이브러리에 있는 관련 노래를 이어서 재생합니다';

  @override
  String get autoplayPersonalization => '개인 맞춤 자동 재생';

  @override
  String get autoplayPersonalizationDescription =>
      '이 기기에서 듣거나 건너뛴 노래를 바탕으로 취향을 학습합니다. 이 기능을 비활성화하면 취향 학습이 중단되고 일반 자동 재생으로 돌아갑니다. 학습 데이터는 이 기기에서만 비공개로 처리됩니다';

  @override
  String get autoplayResetLearning => '추천 학습 초기화';

  @override
  String get autoplayResetLearningConfirmTitle => '추천 학습을 초기화하시겠습니까?';

  @override
  String get autoplayResetLearningConfirmMessage =>
      '자동 재생은 청취에서 학습한 내용을 잊고 건너뜁니다. 이 작업은 되돌릴 수 없습니다';

  @override
  String get autoplayResetLearningConfirm => '초기화';

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
  String get songAnalysis => '노래 분석';

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
  String get profileTitle => '프로필';

  @override
  String get profileSetUp => '프로필 설정';

  @override
  String get profileEdit => '이름 및 사진 편집';

  @override
  String get backupIncludesProfile => '프로필 이름과 사진 포함';

  @override
  String get profileName => '이름';

  @override
  String get profileNameHint => '당신의 이름을 입력하세요';

  @override
  String get profileChangePhoto => '사진 선택';

  @override
  String get profileRemovePhoto => '사진 삭제';

  @override
  String get profilePhotoError => '20MB보다 작은 유효한 이미지를 선택하세요';

  @override
  String get profileSaveError => '프로필을 저장할 수 없습니다. 다시 시도하세요';

  @override
  String get homeGreetingMorning1 => '좋은 아침이에요';

  @override
  String get homeGreetingMorning2 => '활기차게 하루를 시작해요';

  @override
  String get homeGreetingMorning3 => '새로운 하루를 시작해요';

  @override
  String get homeGreetingAfternoon1 => '좋은 오후예요';

  @override
  String get homeGreetingAfternoon2 => '기분 좋은 오후예요';

  @override
  String get homeGreetingAfternoon3 => '좋은 분위기 그대로 이어가요';

  @override
  String get homeGreetingEvening1 => '좋은 저녁이에요';

  @override
  String get homeGreetingEvening2 => '편안한 시간 보내세요';

  @override
  String get homeGreetingEvening3 => '아름다운 저녁이에요';

  @override
  String get homeGreetingNight1 => '좋은 밤이에요';

  @override
  String get homeGreetingNight2 => '깊어가는 밤, 함께해요';

  @override
  String get homeGreetingNight3 => '평온한 밤 보내세요';

  @override
  String homeGreetingNamed(String greeting, String name) {
    return '$greeting, $name';
  }

  @override
  String get homeTaglineListening => '무엇을 듣고 있나요?';

  @override
  String get homeTaglineLink => '링크가 있으신가요? 검색창에 넣어주세요';

  @override
  String get homeTaglineDiscover => '다음으로 좋아하는 앨범을 찾아보세요';

  @override
  String get homeContinueListening => '계속 듣기';

  @override
  String get homeRecentlyPlayed => 'Recently Played';

  @override
  String get homeRecentlyAdded => '최근 추가됨';

  @override
  String get homeOnRepeat => '반복 재생';

  @override
  String get homeShortcuts => '바로가기';

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
  String get artistUpcomingConcerts => '예정된 콘서트';

  @override
  String get artistAllUpcomingConcerts => '모든 예정된 콘서트';

  @override
  String get artistNoUpcomingConcerts => '예정된 콘서트가 없습니다';

  @override
  String get motionArtwork => '애니메이션 아트워크';

  @override
  String get listeningStats => '청취 통계';

  @override
  String get listeningStatsRecord => '청취 기록';

  @override
  String get listeningStatsDescription =>
      '지금부터 이 기기에만 저장됩니다. 내부 플레이어의 재생 기록만 기록하며, 일시정지, 버퍼링 및 탐색은 청취 시간에 포함되지 않습니다. 30초 이상 재생하면 한 번의 재생으로 기록됩니다';

  @override
  String get listeningStatsEmpty =>
      '내부 플레이어로 음악을 재생하여 청취 기록 요약을 시작하세요. 이전에 들은 기록은 복구할 수 없습니다';

  @override
  String listeningStatsDays(int days) {
    return '$days 일';
  }

  @override
  String listeningStatsMinutes(int minutes) {
    return '$minutes 분';
  }

  @override
  String listeningStatsTotals(int plays, int tracks, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      plays,
      locale: localeName,
      other: '$plays 회 재생',
      one: '1 회 재생',
    );
    String _temp1 = intl.Intl.pluralLogic(
      tracks,
      locale: localeName,
      other: '$tracks 개의 트랙',
      one: '1 개의 트랙',
    );
    String _temp2 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days 일 활동',
      one: '1 일 활동',
    );
    return '$_temp0 · $_temp1 · $_temp2';
  }

  @override
  String get listeningStatsPreviousYear => '이전 연도';

  @override
  String get listeningStatsNextYear => '다음 연도';

  @override
  String get listeningStatsActivity => '최근 청취 일수 · 분';

  @override
  String get listeningStatsTopArtists => '인기 아티스트';

  @override
  String get listeningStatsTopTracks => '인기 트랙';

  @override
  String get listeningStatsLoadError => '청취 통계를 불러올 수 없습니다';

  @override
  String get listeningStatsClear => '청취 통계 지우기';

  @override
  String get listeningStatsClearError => '청취 통계 지울 수 없습니다. 다시 시도하세요';

  @override
  String get listeningStatsClearDescription =>
      '이 기기에서 모든 청취 통계를 삭제하시겠습니까? 음악과 재생목록은 유지됩니다';

  @override
  String get libraryArtistsEmpty =>
      '음악을 다운로드하거나 로컬 라이브러리를 검색하면 여기에 아티스트가 표시됩니다';

  @override
  String get listeningRewind => '되감기';

  @override
  String get listeningRewindDescription => '최근 몇 주, 몇 달 동안의 하이라이트를 다시 경험하세요';

  @override
  String get listeningRewindChoosePeriod => '기간 선택';

  @override
  String listeningRewindLastWeeks(int weeks) {
    return '지난 $weeks 주';
  }

  @override
  String listeningRewindLastMonths(int months) {
    return '지난 $months 달';
  }

  @override
  String listeningRewindThisYear(int year) {
    return '$year 년 동안';
  }

  @override
  String get listeningRewindIntroTitle => '되돌아보기';

  @override
  String listeningRewindIntroBody(String start, String end) {
    return '$start 부터 $end까지 재생한 내용을 되돌아봅니다';
  }

  @override
  String get listeningRewindMinutesTitle => '재생 시간';

  @override
  String listeningRewindMinutesUnit(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '분',
      one: '분',
    );
    return '$_temp0';
  }

  @override
  String listeningRewindHours(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '대략 $hours 시간 분량의 음악',
      one: '대략 1 시간 분량의 음악',
    );
    return '$_temp0';
  }

  @override
  String listeningRewindMore(int percent) {
    return '이전 기간보다 $percent% 더 많음';
  }

  @override
  String listeningRewindLess(int percent) {
    return '이전 기간보다 $percent% 더 적음';
  }

  @override
  String get listeningRewindSame => '이전 기간과 거의 동일';

  @override
  String get listeningRewindTopArtistTitle => '가장 좋아하는 아티스트';

  @override
  String listeningRewindArtistShare(int percent) {
    return '청취 시간의 $percent%';
  }

  @override
  String get listeningRewindArtistsTitle => '로테이션 아티스트';

  @override
  String get listeningRewindTopTrackTitle => '가장 좋아하는 노래';

  @override
  String listeningRewindPlays(int plays) {
    String _temp0 = intl.Intl.pluralLogic(
      plays,
      locale: localeName,
      other: '$plays 재생',
      one: '1 재생',
    );
    return '$_temp0';
  }

  @override
  String get listeningRewindTracksTitle => '반복 재생 중인 노래';

  @override
  String get listeningRewindTopAlbumTitle => '계속해서 다시 듣게 된 앨범';

  @override
  String get listeningRewindNewArtistsTitle => '새로운 발견';

  @override
  String listeningRewindNewArtistsBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '새로운 아티스트 $count 명을 찾았습니다',
      one: '새로운 아티스트 1 명을 찾았습니다',
    );
    return '$_temp0';
  }

  @override
  String get listeningRewindRhythmTitle => '청취 리듬';

  @override
  String get listeningRewindPeakDay => '가장 많이 들었던 날';

  @override
  String get listeningRewindFavoriteDay => '좋아하는 날';

  @override
  String get listeningRewindStreak => '최장 연속 기록';

  @override
  String listeningRewindStreakDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days 일 연속 재생',
      one: '1 일',
    );
    return '$_temp0';
  }

  @override
  String get listeningRewindReplayTitle => '재생을 멈출 수 없습니다';

  @override
  String listeningRewindReplayBody(int plays, String date) {
    return '$date 에 $plays 번 재생했습니다';
  }

  @override
  String get listeningRewindOutroTitle => '당신의 되돌아보기입니다';

  @override
  String get listeningRewindOutroBody => '계속 들어보세요. 다음 되돌아보기가 이미 완성되어 가고 있습니다';

  @override
  String get listeningRewindEmpty =>
      '아직 이 기간의 음악 감상 기록이 충분하지 않습니다. 내부 플레이어로 음악을 재생한 후 나중에 다시 확인하세요';

  @override
  String get listeningRewindLoadError => '되돌아보기를 불러올 수 없습니다';

  @override
  String listeningRewindSlide(int index, int count) {
    return '$count 의 $index 슬라이드';
  }

  @override
  String get listeningRewindShare => '공유';

  @override
  String get listeningRewindShareError => '리와인드를 공유할 수 없습니다';

  @override
  String get listeningRewindNext => '다음';

  @override
  String get listeningRewindPrevious => '이전';

  @override
  String get listeningRewindMonthlyReady => '지난 4주를 다시 재생할 준비가 되었습니다';

  @override
  String listeningRewindYearTitle(String year) {
    return '$year 음악';
  }

  @override
  String get listeningRewindYearEyebrow => '연말 되돌아보기';

  @override
  String get listeningRewindYearBanner => '올해 최고의 아티스트, 노래, 순간들';

  @override
  String get listeningRewindYearIntroBody =>
      '첫 ​​곡부터 가장 많이 들었던 달까지, 올해 들었던 모든 것';

  @override
  String get listeningRewindNumbersTitle => '숫자로 보는 한 해';

  @override
  String get listeningRewindSongsLabel => '노래';

  @override
  String get listeningRewindArtistsLabel => '아티스트';

  @override
  String get listeningRewindAlbumsLabel => '앨범';

  @override
  String get listeningRewindDaysLabel => '음악 감상 일수';

  @override
  String listeningRewindDaysShare(int percent) {
    return '하루 중 $percent%의 시간에 음악을 들었습니다';
  }

  @override
  String get listeningRewindMonthsTitle => '월별';

  @override
  String get listeningRewindBiggestMonthLabel => '가장 많이 듣은 달';

  @override
  String listeningRewindBiggestMonth(String month) {
    return '가장 많이 들었던 달은 $month입니다';
  }

  @override
  String get listeningRewindMonthlyArtistsTitle => '이달의 아티스트';

  @override
  String get listeningRewindLoyalTitle => '항상 당신 곁에';

  @override
  String listeningRewindLoyalBody(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days 일 동안 함께했어요',
      one: '하루 동안 함께했어요',
    );
    return '$_temp0';
  }

  @override
  String get listeningRewindFirstSongTitle => '한 해가 시작된 곳';

  @override
  String listeningRewindFirstSongBody(String date) {
    return '첫 ​​청취일에 가장 많이 재생한 노래, $date';
  }

  @override
  String listeningRewindYearOutroTitle(String year) {
    return '$year 년 음악 기록입니다';
  }

  @override
  String get listeningRewindYearOutroBody => '멋진 음악으로 가득한 또 한 해를 축하합니다';

  @override
  String get weeklyReleases => '새 릴리스';

  @override
  String get weeklyReleasesDescription =>
      '설치된 메타데이터 확장 기능에서 제공하는, 좋아하는 아티스트의 최신 앨범과 싱글입니다';

  @override
  String get weeklyReleasesEmpty =>
      '이 기간에는 발매일자가 확인된 음원이 없습니다. 좋아하는 아티스트를 추가하거나 더 긴 기간을 선택해 보세요';

  @override
  String get weeklyReleasesUnavailable =>
      '일부 아티스트는 확인할 수 없습니다. 해당 아티스트의 기존 저장 결과는 그대로 유지됩니다. 제공자에 따라 아티스트의 전체 음원 목록이나 정확한 발매일자를 제공하지 않을 수 있습니다';

  @override
  String get weeklyReleasesLoadError => '새 릴리스를 확인할 수 없습니다. 아래로 당겨 새로고침하세요';

  @override
  String get motionArtworkDescription =>
      '메타데이터 제공자에서 제공하는 앨범 커버의 반복 재생 동영상입니다. 비활성화하면 정지 이미지를 사용하여 배터리 소모를 줄일 수 있습니다';

  @override
  String get libraryLoading => '라이브러리를 불러오는 중…';

  @override
  String get libraryLoadFailed =>
      '라이브러리를 불러올 수 없습니다. 저장된 폴더와 트랙 목록을 다시 불러오려면 다시 시도하세요';

  @override
  String get discordPresenceDescription =>
      '내부 플레이어에서 재생한 음악의 제목, 아티스트, 앨범 및 재생 진행 상황을 Discord 프로필에 공유합니다. 로컬 오디오 파일과 앨범 아트워크는 절대 업로드되지 않습니다. 재생을 일시 정지하거나 중지하면 공유 정보가 삭제됩니다';

  @override
  String get discordPresenceDisabled => '비활성화됨';

  @override
  String get discordPresenceLink => 'Discord 계정 연결';

  @override
  String get discordPresenceConnecting => 'Discord에 연결하는 중…';

  @override
  String get discordPresenceReady => '음악 재생 준비';

  @override
  String get discordPresenceActive => '현재 트랙을 공유하는 중';

  @override
  String get discordPresenceUnavailable =>
      'Discord를 사용할 수 없습니다. 재생 중 다시 연결을 시도하고 있습니다';

  @override
  String get discordPresenceBuildUnavailable =>
      '이 빌드에서는 Discord SDK를 사용할 수 없습니다';

  @override
  String get discordPresenceAndroidHelp =>
      '이 휴대폰에 Discord를 설치하고 로그인하세요. Discord에서 활동 공유를 허용하세요. 외부 플레이어는 지원되지 않습니다';

  @override
  String get discordPresenceIosHelp =>
      'Discord를 통해 계정을 연결하고 활동 공유를 허용하세요. 인증에 실패하면 다시 연결하려면 탭하세요.';

  @override
  String get discordPresenceDesktopHelp =>
      '이 컴퓨터에서 Discord 데스크톱 앱을 실행하고 로그인된 상태로 유지하세요. 또한 Discord에서 활동 공유를 허용하세요';

  @override
  String get discordPresenceDisconnect => '계정 연결 해제 및 삭제';

  @override
  String get autoMixSettingsTitle => '믹스 전환';

  @override
  String get autoMixAutomaticDuration => '자동 지속 시간';

  @override
  String get autoMixDuration => '믹스 지속 시간';

  @override
  String get autoMixEffect => '전환 효과';

  @override
  String get autoMixEffectAuto => '자동';

  @override
  String get autoMixEffectCrossfade => '크로스페이드';

  @override
  String get autoMixEffectMuffled => '머플';

  @override
  String get autoMixEffectEcho => '에코';

  @override
  String get autoMixEffectPitch => '피치';

  @override
  String get autoMixEffectCustom => '사용자 정의';

  @override
  String get autoMixEffectsHelp =>
      '믹스 재생 중 현재 재생 중인 곡의 끝부분에 효과가 적용됩니다. 재생 시간이 짧은 곡은 겹치는 구간도 더 짧게 적용됩니다';

  @override
  String get autoMixSpeed => '속도';

  @override
  String get autoMixPitch => '피치 (반음)';

  @override
  String get autoMixEcho => '에코';

  @override
  String get autoMixLowPass => '머플 필터';

  @override
  String get autoMixMixing => '믹싱';

  @override
  String get autoMixCrossfading => '크로스페이드';

  @override
  String get playbackAutomation => '자동 재생';

  @override
  String get playbackPauseOnMute => '음소거 시 일시 정지';

  @override
  String get snackbarPlaybackMuted =>
      '미디어 음량이 0입니다. 재생이 일시 정지되었습니다. 계속하려면 다시 재생 버튼을 누르세요.';

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
      '미디어 음량이 0이 되면 일시 정지하고, 음량을 높이면 재생을 다시 시작합니다. 수동으로 일시 정지한 경우에는 일시 정지 상태를 유지합니다. 일반 오디오 출력에서만 작동합니다';

  @override
  String get playbackOnHeadphonesConnected => '헤드폰 연결 시 재생';

  @override
  String get playbackOnHeadphonesConnectedDescription =>
      '유선 또는 Bluetooth 헤드폰이 연결되면 현재 재생 중인 곡을 이어서 재생합니다. 연결이 해제되면 재생이 일시 정지됩니다. 내부 플레이어에서만 작동합니다';

  @override
  String get appearanceCustomFont => '사용자 정의 글꼴';

  @override
  String get appearanceCustomFontSubtitle =>
      'TTF 또는 OTF 파일을 가져옵니다 (최대 10MB). 테마 및 시스템 글꼴을 덮어씁니다';

  @override
  String get appearanceCustomFontInvalid =>
      '이 글꼴을 불러올 수 없습니다. 10MB 이하의 유효한 TTF 또는 OTF 파일을 선택하세요';

  @override
  String get appearanceCustomFontReset => '테마 글꼴 사용';

  @override
  String get equalizerTitle => '이퀄라이저';

  @override
  String get equalizerDescription => '5–31 밴드, 음색 조절, 프리앰프 및 다이내믹스';

  @override
  String get equalizerEnable => '이퀄라이저 활성화';

  @override
  String get equalizerBands => '밴드';

  @override
  String get equalizerTone => '톤 및 스테레오';

  @override
  String get equalizerPreamp => '프리밴드';

  @override
  String get equalizerBass => '베이스';

  @override
  String get equalizerTreble => '고음';

  @override
  String get equalizerBalance => '밸런스';

  @override
  String get equalizerDynamics => '다이내믹스';

  @override
  String get equalizerHeadroom => '오토매틱 헤드룸';

  @override
  String get equalizerHeadroomDescription => '주파수를 증폭할 여유를 확보하려면 입력 게인을 낮추세요';

  @override
  String get equalizerLimiter => '피크 리미터';

  @override
  String get equalizerLimiterDescription =>
      '클리핑을 줄이려면 피크 레벨을 −0.5 dBFS 미만으로 유지하세요';

  @override
  String get equalizerCompressor => '콤프레서';

  @override
  String get equalizerCompressorDescription =>
      '조용한 부분과 큰 소리가 나는 부분의 음량 차이를 줄입니다';

  @override
  String get equalizerThreshold => '임계값';

  @override
  String get equalizerRatio => '비율';

  @override
  String get equalizerAttack => '어택';

  @override
  String get equalizerRelease => '릴리스';

  @override
  String get equalizerPresets => '프리셋';

  @override
  String get equalizerSavePreset => '프리셋 저장';

  @override
  String get equalizerPresetName => '프리셋 이름';

  @override
  String get equalizerImport => '프리셋 가져오기';

  @override
  String get equalizerExport => '프리셋 공유';

  @override
  String get equalizerImportInvalid =>
      '유효한 Toadplayer 이퀄라이저 프리셋을 선택하세요 (JSON, 최대 64KB)';

  @override
  String get equalizerSaved => '프리셋이 저장됨';

  @override
  String get equalizerResetTitle => '이퀄라이저를 초기화하시겠습니까?';

  @override
  String get equalizerResetDescription =>
      '평탄한 이퀄라이저 곡선과 기본 음색 및 다이내믹 설정으로 복원합니다. 저장된 프리셋은 유지됩니다';

  @override
  String get equalizerBypass =>
      '비트 퍼펙트, 다이렉트 USB 및 독점 Hi-Res 출력에서는 이퀄라이저가 적용되지 않습니다. 이퀄라이저를 사용하려면 비트 퍼펙트 출력을 비활성화하세요. 외부 플레이어는 자체 효과를 관리합니다';

  @override
  String get equalizerCurve => 'EQ 곡선 (예상됨)';

  @override
  String get equalizerCurveDescription =>
      '곡선은 각 밴드의 게인 값을 나타냅니다. 실제 주파수 응답은 출력 엔진에 따라 달라집니다';

  @override
  String get equalizerEffectivePreamp => '헤드룸 후 입력 게인';

  @override
  String get equalizerDeletePreset => '프레셋 삭제';

  @override
  String get equalizerCustom => '사용자 정의';

  @override
  String get equalizerManagePresets => '프리셋 관리';

  @override
  String get lyricsShareTitle => '가사 공유';

  @override
  String lyricsShareSelectHint(int count) {
    return '최대 $count 줄 선택하세요';
  }

  @override
  String lyricsShareLimit(int count) {
    return '최대 $count 줄까지 공유할 수 있습니다';
  }

  @override
  String get lyricsShareAction => '공유';

  @override
  String get lyricsShareError => '가사 이미지를 만들 수 없습니다';

  @override
  String get lyricsShareBackgroundArtwork => '아트워크';

  @override
  String get lyricsShareBackgroundColor => '커버 색상';

  @override
  String get lyricsShareBackgroundDark => '어두움';

  @override
  String get lyricsShareBackgroundLight => '밝음';

  @override
  String get audioInfoTitle => '오디오 정보';

  @override
  String get audioInfoSource => '소스 파일';

  @override
  String get audioInfoSignal => '시그널';

  @override
  String get audioInfoLoudness => '음량';

  @override
  String get audioInfoProcessing => '처리 중';

  @override
  String get audioInfoOutput => '출력';

  @override
  String get audioInfoAnalysis => '스펙트럼 및 레벨 분석';

  @override
  String get audioInfoQuality => '음질';

  @override
  String get audioInfoHiResLossless => 'Hi-Res 무손실';

  @override
  String get audioInfoLossless => '무손실';

  @override
  String get audioInfoLossy => '손실';

  @override
  String get audioInfoFormat => '형식';

  @override
  String get audioInfoCodec => '코덱';

  @override
  String get audioInfoSampleRate => '샘플 레이트';

  @override
  String get audioInfoBitDepth => '비트 심도';

  @override
  String get audioInfoChannels => '채널';

  @override
  String audioInfoChannelCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 채널',
      two: '스테레오',
      one: '모노',
    );
    return '$_temp0';
  }

  @override
  String get audioInfoBitrate => '비트 전송룔';

  @override
  String get audioInfoDuration => '재생 시간';

  @override
  String get audioInfoFileSize => '파일 크기';

  @override
  String get audioInfoCompression => '압축';

  @override
  String audioInfoCompressionValue(String percent) {
    return '압축 해제 크기의 $percent%';
  }

  @override
  String get audioInfoLocation => '위치';

  @override
  String get audioInfoLocationLocal => '기기 저장소';

  @override
  String get audioInfoLocationShared => '공유된 폴더';

  @override
  String get audioInfoLocationNetwork => '네트워크 저장소';

  @override
  String audioInfoLocationLink(String device) {
    return '$device via Toadplayer Link';
  }

  @override
  String get audioInfoPcmRate => '비압축 데이터 전송률';

  @override
  String get audioInfoFrequencyRange => '주파수 범위';

  @override
  String audioInfoFrequencyRangeValue(String frequency) {
    return '최대 $frequency (나이퀴스트)';
  }

  @override
  String get audioInfoDynamicRange => '이론적 동적 ​​범위';

  @override
  String get audioInfoTrackGain => '트랙 게인';

  @override
  String get audioInfoTrackPeak => '트랙 피크';

  @override
  String get audioInfoAlbumGain => '앨범 게인';

  @override
  String get audioInfoAlbumPeak => '앨범 피크';

  @override
  String get audioInfoNoGainTags => '리플레이 게인 태그 없음';

  @override
  String audioInfoApplied(String gain) {
    return '적용된 $gain';
  }

  @override
  String get audioInfoOn => '켜짐';

  @override
  String get audioInfoOff => '꺼짐';

  @override
  String get audioInfoBypassed => '직접 출력으로 우회됨';

  @override
  String get audioInfoPlayer => '플레이어';

  @override
  String get audioInfoPlayerValue => 'Toadplayer 내부 플레이어';

  @override
  String get audioInfoSignalPath => '시그널 경로';

  @override
  String get audioInfoPathSystem => '시스템 믹서';

  @override
  String get audioInfoPathDirect => '다이렉트 USB, 시스템 믹서 우회';

  @override
  String get audioInfoPathExclusive => '시스템 믹서를 우회하는 전용 출력';

  @override
  String get audioInfoDecoder => '디코더';

  @override
  String get audioInfoHardware => '하드웨어';

  @override
  String get audioInfoSoftware => '소프트웨어';

  @override
  String audioInfoBands(int count) {
    return '$count 밴드';
  }

  @override
  String get audioInfoTempo => '템포';

  @override
  String get audioInfoResampling => '리샘플링';

  @override
  String get audioInfoResamplingNone => '없음, 속도 일치';

  @override
  String get audioInfoBitPerfect => '비트-퍼펙트';

  @override
  String get audioInfoBitPerfectActive => '예, 변경되지 않은 샘플';

  @override
  String get audioInfoBitPerfectNo => '아니요, 시스템에서 믹싱';

  @override
  String get audioInfoBitPerfectUnverified => 'Not verified';

  @override
  String get audioInfoBitPerfectProcessed => 'No, audio processing is active';

  @override
  String get audioInfoDevice => '기기';

  @override
  String audioInfoDeviceType(String type) {
    String _temp0 = intl.Intl.selectLogic(type, {
      'speaker': '휴대폰 스피커',
      'earpiece': '이어피스',
      'wired_headphones': '유선 헤드폰',
      'wired_headset': '유선 헤드셋',
      'line': '라인 출력',
      'bluetooth': '블루투스Bluetooth',
      'bluetooth_le': '블루투스 LE 오디오',
      'usb': 'USB 오디오',
      'usb_headset': 'USB 헤드셋',
      'hdmi': 'HDMI',
      'dock': '도킹 스테이션',
      'cast': '캐스트',
      'hearing_aid': '보청기',
      'airplay': '에어플레이',
      'car': '차량용 오디오',
      'other': '기타',
    });
    return '$_temp0';
  }

  @override
  String get audioInfoOutputRate => '출력 샘플 레이트';

  @override
  String get audioInfoOutputFormat => '출력 형식';

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
  String get audioInfoDeviceRates => '기기 샘플 레이트';

  @override
  String get audioInfoDeviceFormats => '기기 형식';

  @override
  String get audioInfoAnyRate => '모두';

  @override
  String get audioInfoBuffer => '믹서 버퍼';

  @override
  String get audioInfoLatency => '출력 지연';

  @override
  String get audioInfoLowLatency => '저지연 오디오';

  @override
  String get audioInfoProAudio => '프로 오디오';

  @override
  String get audioInfoSupported => '지원됨';

  @override
  String get audioInfoNotSupported => '지원되지 않음';

  @override
  String get audioInfoSpatial => '공간 오디오';

  @override
  String get audioInfoHeadTracking => '해드 트래킹';

  @override
  String get audioInfoUnavailable => '사용 불가';

  @override
  String get audioInfoFixedVolume => '기기에서 제어됨';

  @override
  String get audioInfoCopy => '보고서 복사';

  @override
  String get audioInfoCopied => '오디오 정보가 복사됨';

  @override
  String get lyricsTextSize => '가사 텍스트 사이즈';

  @override
  String get lyricsTextPreview => '좋아하는 노래의 모든 가사를 따라가 보세요';

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
  String get appCrashTitle => '앱이 이전에 충돌함';

  @override
  String get appAnrTitle => '앱이 이전에 응답하지 않았음';

  @override
  String get appAnrMessage =>
      '진단 보고서가 저장되었습니다. 문제를 조사하는 데 도움이 되도록 보고서를 복사하여 개발자에게 보낼 수 있습니다';

  @override
  String get appCrashMessage =>
      '충돌 보고서가 저장되었습니다. 보고서를 복사하여 개발자에게 보내 조사에 도움을 주세요';

  @override
  String get appCrashDetails => '오류 및 로그 보기';

  @override
  String get appCrashCopy => '개발자를 위해 보고서 복사';

  @override
  String get appCrashDismiss => '닫기';

  @override
  String get appCrashCopyFailed => '충돌 보고서를 복사할 수 없습니다. 다시 시도하세요';

  @override
  String get appCrashDismissFailed => '충돌 보고서를 해제할 수 없습니다. 다시 시도하세요';

  @override
  String get optionsEmbeddedCoverSizeOriginal => '원본 해상도';

  @override
  String desktopShortcutTooltip(String action, String shortcut) {
    return '$action ($shortcut)';
  }

  @override
  String get desktopPlayerIdle => '지금 재생 중';

  @override
  String get desktopVolumeUp => '볼륨 올리기';

  @override
  String get desktopVolumeDown => '볼륨 낮추기';

  @override
  String desktopTableSortedAscending(String column) {
    return '$column, 오름차순 정렬';
  }

  @override
  String desktopTableSortedDescending(String column) {
    return '$column, 내림차순 정렬';
  }

  @override
  String get desktopMenuOpen => '열기';

  @override
  String get desktopMenuShowDetails => '세부 정보 표시';

  @override
  String get desktopDropToImport => '드롭하여 라이브러리에 추가';

  @override
  String desktopDropImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '폴더',
      one: '폴더',
    );
    return '라이브러리에 $count 개의 $_temp0 추가하는 중';
  }

  @override
  String get desktopDropNothingToImport => '음악 파일이나 폴더를 드롭하여 라이브러리에 추가하세요';

  @override
  String get desktopAllPlaylists => '모든 재생목록';

  @override
  String get desktopMenuSettings => '설정…';

  @override
  String get desktopMenuFile => '파일';

  @override
  String get desktopMenuEdit => '편집';

  @override
  String get desktopMenuView => '보기';

  @override
  String get desktopWindowMode => '창 모드';

  @override
  String get desktopWindowed => '창 모드';

  @override
  String get desktopWindowFullscreen => '전체 화면';

  @override
  String get desktopWindowBorderless => '테두리 없음';

  @override
  String get desktopExitFullscreen => '전체 화면 종료';

  @override
  String get desktopMinimizeWindow => '창 최소화';

  @override
  String get desktopZoomWindow => '창 최소화 및 복원';

  @override
  String get desktopWindowModeUnavailable =>
      '창 모드를 변경할 수 없습니다. 현재 진행 중인 창 전환이 완료된 후 다시 시도하세요';

  @override
  String get desktopMenuControls => '컨트롤';

  @override
  String get desktopMenuWindow => '창';

  @override
  String get desktopMenuHelp => '도움말';

  @override
  String get desktopMenuPlayPause => '재생/일시정지';

  @override
  String get desktopMenuMiniPlayer => '미니 플레이어';

  @override
  String get desktopMiniPlayerExpand => '전체 화면 창 보기';

  @override
  String get desktopMenuRefresh => '새로고침';

  @override
  String get desktopMenuProjectPage => '프로젝트 페이지';

  @override
  String get desktopDownloadsShowAll => '모두 보기';

  @override
  String get desktopDownloadsQueued => '기다리는 중';

  @override
  String get desktopDownloadsCancel => '다운로드를 취소하시겠습니까';

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
  String get desktopScrollBack => '뒤로 스크롤';

  @override
  String get desktopScrollForward => '앞으로 스크롤';

  @override
  String get settingsKeyboardShortcuts => '키보드 단축기';

  @override
  String get settingsKeyboardShortcutsSubtitle => '재생, 탐색 및 패널용 키';

  @override
  String get desktopShortcutsNavigation => '탐색';

  @override
  String get desktopShortcutDismiss => '대화 상자 또는 페이지 닫기';

  @override
  String get desktopShortcutForward => 'Forward';

  @override
  String get desktopShortcutToggleSidebar => '사이드바 표시 또는 숨기기';

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
