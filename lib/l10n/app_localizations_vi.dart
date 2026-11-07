// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

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
      'Sử dụng bộ lưu trữ tiện ích mở rộng không bảo mật';

  @override
  String get extensionsUnsecuredStorageDescription =>
      'Chạy tiện ích mở rộng không cần chuỗi khóa Linux. Khóa được lưu cục bộ, nghĩa là bất kỳ ai có quyền truy cập vào file ứng dụng đều có thể đọc thông tin đăng nhập của tiện ích. Tắt nghĩa là sử dụng chuỗi khóa hệ thống.';

  @override
  String get extensionsStorageKeyringRequired =>
      'Dữ liệu tiện ích mở rộng hiện có cần khóa gốc của nó. Hãy mở khóa chuỗi khóa hệ thống một lần, sau đó bật lại bộ lưu trữ không bảo mật. Dữ liệu của bạn đã được giữ nguyên.';

  @override
  String get extensionsStorageKeyConflict =>
      'Khóa cục bộ và khóa chuỗi khóa hệ thống khác nhau. Bộ lưu trữ chưa bị thay đổi và cả hai khóa đã được giữ nguyên.';

  @override
  String get extensionsStorageKeyringUnavailable =>
      'Chuỗi khóa hệ thống không khả dụng hoặc đang bị khóa. Hãy khởi động hoặc mở khóa nó trước khi chuyển sang bộ lưu trữ bảo mật. Khóa cục bộ của bạn đã được giữ nguyên.';

  @override
  String linkFileActionOn(String action, String name) {
    return '$action trên $name';
  }

  @override
  String linkFileActionsDescription(String name) {
    return 'Các thay đổi sẽ áp dụng cho tệp nhạc trên $name. Công việc đã chấp nhận vẫn tiếp tục nếu điện thoại này mất kết nối.';
  }

  @override
  String linkFileDeleteConfirm(int count, String name) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tệp nhạc',
      one: 'tệp nhạc',
    );
    return 'Xóa $count $_temp0 khỏi $name? Hành động này sẽ xóa các tệp khỏi bộ lưu trữ của máy tính đó.';
  }

  @override
  String get linkFileJobs => 'Thay đổi tệp';

  @override
  String linkFileJobsSubtitle(String name) {
    return 'Chỉnh sửa, chuyển đổi và xóa trên $name';
  }

  @override
  String get linkFileJobsEmpty => 'Chưa có thay đổi tệp nào';

  @override
  String get linkFileJobsEmptyMessage =>
      'Các chỉnh sửa, chuyển đổi và thao tác xóa mà bạn thực hiện trên tệp nhạc của máy tính từ điện thoại này sẽ xuất hiện ở đây.';

  @override
  String get linkDesktopFileJobsSubtitle =>
      'Yêu cầu thay đổi từ điện thoại của bạn';

  @override
  String get linkDesktopFileJobsEmptyMessage =>
      'Các yêu cầu chỉnh sửa, chuyển đổi và xóa được gửi từ điện thoại của bạn sẽ xuất hiện ở đây.';

  @override
  String linkFileJobRequestedBy(String name) {
    return 'Từ $name';
  }

  @override
  String get linkFileJobsView => 'Xem';

  @override
  String get linkFileJobsUnsupported =>
      'Cập nhật Toadplayer trên máy tính của bạn để quản lý các tệp nhạc từ điện thoại này.';

  @override
  String get linkFileSelectionOneDevice =>
      'Chọn bài hát từ một máy tính được liên kết tại một thời điểm (tối đa 100 bài hát).';

  @override
  String linkFileJobProgress(int finished, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: 'bài hát',
      one: 'bài hát',
    );
    return 'Đã xong $finished/$total $_temp0\n';
  }

  @override
  String linkFileJobFailedCount(int count) {
    return '$count thất bại';
  }

  @override
  String linkFileJobFinished(String action, String name) {
    return '$action đã hoàn tất trên $name';
  }

  @override
  String get linkFileDeleting => 'Đang xoá';

  @override
  String get linkFileReading => 'Đang đọc thẻ...';

  @override
  String get linkFileSavingCover => 'Đang lưu ảnh bìa...';

  @override
  String get linkFileCancelHint => 'Dừng sau bài hát hiện tại';

  @override
  String get linkFileJobCancelled => 'Đã dừng';

  @override
  String get linkFileJobQueued => 'Đang xếp hàng';

  @override
  String get linkFileJobCompleted => 'Đã hoàn thành';

  @override
  String get linkFileChanged =>
      'Tệp đã thay đổi kể từ bản xem trước. Hãy xem lại trước khi lưu.';

  @override
  String get linkFileOperationFailed =>
      'Không thể hoàn tất thao tác. Hãy kiểm tra nhật ký của máy tính để biết chi tiết.';

  @override
  String get trackBpm => 'BPM';

  @override
  String get trackMood => 'Tâm trạng';

  @override
  String get subsonicAddToLibrary => 'Thêm máy chủ vào Thư viện';

  @override
  String get subsonicLibraryAdded => 'Máy chủ đã được thêm vào Thư viện ';

  @override
  String get subsonicLibraryDescription =>
      'Đồng bộ danh mục và ảnh bìa máy chủ vào Thư viện. Nhạc vẫn nằm trên máy chủ của bạn. Quét lại trong cài đặt Thư viện cục bộ để cập nhật danh mục.';

  @override
  String get subsonicAuthentication => 'Xác thực';

  @override
  String get subsonicToken => 'Salted token';

  @override
  String get subsonicPasswordAuth => 'Mật khẩu';

  @override
  String get subsonicApiKey => 'Khoá API';

  @override
  String get subsonicUsername => 'Tên người dùng';

  @override
  String get subsonicPassword => 'Mật khẩu';

  @override
  String get subsonicSearch => 'Tìm kiếm nhạc trên máy chủ...';

  @override
  String get subsonicMoreAlbums => 'Thêm album';

  @override
  String get subsonicErrorApi =>
      'Máy chủ không hỗ trợ phiên bản API hoặc phương thức xác thực này. Kiểm tra cài đặt máy chủ và phương thức đăng nhập đã chọn.';

  @override
  String get networkDownloadDestination => 'Điểm đến tải xuống từ mạng';

  @override
  String get networkUseForDownloads => 'Tải nhạc về thư mục này';

  @override
  String get networkDownloadSelected => 'Đích lưu tải xuống đã chọn';

  @override
  String get networkUseLocalDownloads => 'Sử dụng thư mục tải xuống trên máy';

  @override
  String get networkDownloadAccessFailed =>
      'Không thể ghi dữ liệu vào thư mục này.';

  @override
  String get networkUploading => 'Đang tải lên ổ đĩa mạng';

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
      'Chuẩn bị bài hát trên thiết bị này rồi tải lên NAS của bạn. Hãy giữ ứng dụng mở cho đến khi tải lên hoàn tất. Khi thử lại, ứng dụng sẽ dùng lại tệp âm thanh đã chuẩn bị. Tệp đã có sẽ được giữ nguyên; tệp mới trùng tên sẽ được đánh số thứ tự kèm theo.';

  @override
  String get networkAddToLibrary => 'Thêm thư mục vào Thư viện';

  @override
  String get networkLibraryAdded => 'Đã thêm thư mục vào Thư viện';

  @override
  String get networkLibraryDescription =>
      'Quét thư mục này cùng các thư mục con. Tệp nhạc vẫn nằm trên máy chủ của bạn; chỉ Metadata và ảnh bìa được lưu trên thiết bị này. Bạn có thể quản lý hoặc quét lại trong cài đặt Thư viện trên máy.';

  @override
  String get networkStorage => 'Ổ đĩa mạng';

  @override
  String get networkErrorUnreachable =>
      'Không thể kết nối tới máy chủ. Hãy kiểm tra xem điện thoại đã vào đúng mạng và  dịch vụ chia sẻ tệp đã bật chưa. Với giao thức SMB, cổng 445 phải mở.';

  @override
  String get networkErrorTimeout =>
      'Máy chủ không phản hồi. Hãy kiểm tra lại kết nối mạng và thử lại.';

  @override
  String get networkErrorAuthentication =>
      'Máy chủ từ chối đăng nhập. Hãy kiểm tra lại tên đăng nhập, mật khẩu và tên miền. Để trống ô Domain trừ khi máy chủ của bạn bắt buộc.';

  @override
  String get networkErrorPermission =>
      'Tài khoản này không có quyền mở thư mục chia sẻ này. Hãy kiểm tra quyền đọc của tài khoản trên máy chủ.';

  @override
  String get networkErrorLocalPermission =>
      'Không cho phép truy cập mạng cục bộ. Hãy bật thiết bị lân cận cho Toadplayer trong phần cài đặt ứng dụng Android, sau đó thử lại.';

  @override
  String get networkErrorShare =>
      'Không tìm thấy thư mục chia sẻ. Với SMB, hãy nhập tên thư mục chia sẻ ngay sau địa chỉ máy chủ, ví dụ: smb://server/Music/.';

  @override
  String get networkErrorProtocol =>
      'Máy chủ và trình kết nối SMB không thống nhất được giao thức hỗ trợ. Vui lòng bật SMB2 hoặc SMB3 trên máy chủ. SMB1 không được hỗ trợ.';

  @override
  String get networkErrorAddress =>
      'Hãy kiểm tra lại địa chỉ máy chủ. Dùng định dạng smb://server/share/ cho SMB, hoặc địa chỉ http:// hay https:// cho WebDAV và HTTP.';

  @override
  String get networkConnections => 'Kết nối đã lưu';

  @override
  String get networkServer => 'Máy chủ';

  @override
  String get networkCredentials => 'Đăng nhập (không bắt buộc)';

  @override
  String get networkRefresh => 'Tải lại';

  @override
  String get networkStorageDescription =>
      'Kết nối với NAS hoặc máy chủ nhạc của bạn để duyệt thư mục. Thông tin đăng nhập được lưu bảo mật trên thiết bị này.';

  @override
  String get networkAddConnection => 'Thêm kết nối';

  @override
  String get networkEditConnection => 'Sửa kết nối';

  @override
  String get networkConnectionName => 'Tên';

  @override
  String get networkAddress => 'Địa chỉ máy chủ hoặc URL âm thanh';

  @override
  String get networkProtocol => 'Giao thức';

  @override
  String get networkUsername => 'Tên đăng nhập (không bắt buộc)';

  @override
  String get networkPassword => 'Mật khẩu (không bắt buộc)';

  @override
  String get networkDomain => 'Tên miền/Domain (không bắt buộc)';

  @override
  String get networkConnectSave => 'Kết nối & lưu';

  @override
  String get networkErrorCertificate =>
      'Không thể xác minh chứng chỉ HTTPS của máy chủ. Hãy sửa kết nối này để kiểm tra và tin cậy chứng chỉ, hoặc kiểm tra lại cấu hình HTTPS trên máy chủ.';

  @override
  String get networkCertificatePrompt =>
      'Máy chủ này sử dụng chứng chỉ HTTPS chưa được xác thực. Các thiết bị định tuyến (Router) và ổ mạng NAS thường dùng chứng chỉ tự ký (self-signed). Hãy kiểm tra kỹ địa chỉ máy chủ và mã vân tay SHA-256 trước khi chọn tin cậy. Việc tin cậy chỉ áp dụng riêng cho chứng chỉ này trên máy chủ đó; nếu chứng chỉ thay đổi sẽ cần xác nhận lại.';

  @override
  String get networkTrustCertificate => 'Tin cậy chứng chỉ này và thử lại';

  @override
  String get networkRemoveConnection => 'Xóa kết nối';

  @override
  String get networkNoFiles =>
      'Không tìm thấy tệp nhạc hoặc thư mục được hỗ trợ nào.';

  @override
  String get networkConnectionError =>
      'Không thể truy cập nguồn mạng. Hãy kiểm tra lại địa chỉ máy chủ, thông tin đăng nhập và kết nối mạng rồi thử lại.';

  @override
  String get extensionAccountTitle => 'Tài khoản tiện ích mở rộng';

  @override
  String get extensionAccountInvalidForm =>
      'Tiện ích mở rộng trả về biểu mẫu tài khoản không hợp lệ.';

  @override
  String get extensionAccountRestartLogin =>
      'Hãy khởi động lại bước đăng nhập tài khoản để tiếp tục.';

  @override
  String get extensionAccountRequiredValue => 'Vui lòng nhập một giá trị.';

  @override
  String get extensionAccountInvalidNumber => 'Vui lòng nhập một số hợp lệ.';

  @override
  String get settingsPlaybackSubtitle =>
      'Trình phát, âm lượng, AutoMix và đầu ra âm thanh';

  @override
  String get sectionPlayer => 'Trình phát nhạc';

  @override
  String get sectionVolumeAndTransitions => 'Trình phát tích hợp SpotiFLAC';

  @override
  String get sectionAudioOutput => 'Đầu ra âm thanh';

  @override
  String get usbBitPerfect => 'Âm thanh Hi-Res và Bit-perfect';

  @override
  String get usbBitPerfectDescription =>
      'Giữ nguyên độ chính xác gốc của nguồn nhạc trên các đầu ra tương thích. Hãy chọn Direct USB hoặc AAudio độc quyền bên dưới; nếu không, đầu ra USB chuẩn của Android yêu cầu Android 14 trở lên. Áp dụng từ bài tiếp theo, không dùng AutoMix hay chuẩn hóa âm lượng. Phím âm lượng hệ thống có thể không điều chỉnh được Direct USB.';

  @override
  String get usbHardwareVolume => 'Âm lượng phần cứng DAC';

  @override
  String get usbVolumeWarningTitle => 'Kiểm tra âm lượng nghe của bạn';

  @override
  String get usbVolumeWarning =>
      'Âm thanh truyền trực tiếp qua USB có thể lớn hơn nhiều so với trình phát thông thường, các nút âm lượng trên điện thoại có thể không điều chỉnh được mức âm thanh này. Hãy giảm âm lượng trên DAC hoặc bộ khuếch đại ​​trước khi bắt đầu. Khi tương thíc, SpotiFLAC sẽ tự động thiết lập mức âm lượng của DAC về tối đa là −40 dB ngay khi kết nối; tuy nhiên, điều này không đảm bảo mức âm lượng sẽ an toàn cho mọi loại thiết bị, bộ khuếch đại hoặc tai nghe.';

  @override
  String get usbVolumeAccept => 'Tôi đã hiểu';

  @override
  String get usbVolumeUnavailable =>
      'Đã tạm dừng phát vì DAC này không có bộ chỉnh âm lượng phần cứng được xác nhận. Hãy giảm âm lượng trên DAC hoặc ampli trước, sau đó bật đầu ra âm lượng cố định nếu cần rồi chọn phát lại bài hát.';

  @override
  String get usbFixedVolume => 'Cho phép đầu ra USB âm lượng cố định';

  @override
  String get usbFixedVolumeDescription =>
      'Dành cho các bộ giải mã DAC không cho phép ứng dụng điều chỉnh âm lượng phần cứng. Hãy tắt tùy chọn này nếu bạn dùng tai nghe USB không có nút chỉnh âm lượng riêng. Áp dụng từ bài hát tiếp theo.';

  @override
  String get usbFixedVolumeWarning =>
      'Ứng dụng không thể giảm âm lượng trên đầu ra này. Nhạc có thể phát ở mức âm lượng tối đa (100%) và thanh trượt âm lượng của điện thoại sẽ không có tác dụng. Chỉ tiếp tục sau khi bạn đã vặn nhỏ âm lượng trên DAC hoặc ampli rời. Tuyệt đối không bật tùy chọn này cho tai nghe không có nút chỉnh âm lượng riêng.';

  @override
  String get dapExclusive => 'DAP Hi-Res (AAudio độc quyền)';

  @override
  String get dapExclusiveDescription =>
      'Sử dụng Oboe/AAudio ở đúng tần số lấy mẫu và độ sâu bit gốc của bản nhạc cho tệp FLAC/WAV PCM. Yêu cầu Android 8.1 trở lên và phần cứng tương thích. Ứng dụng sẽ ưu tiên kiểm tra chế độ truy cập độc quyền (Exclusive); các định dạng không hỗ trợ sẽ phát bình thường. Nhạc DSD cần trình điều khiển Direct USB. Áp dụng từ bài hát tiếp theo.';

  @override
  String get dapExclusiveUnavailable =>
      'Chế độ AAudio độc quyền không khả dụng cho bài hát và đầu ra hiện tại. Đang phát ở chế độ thông thường. Nếu dùng USB DAC, hãy thử bật trình điều khiển Direct USB.';

  @override
  String get exclusiveOutputWindows => 'Chế độ độc quyền WASAPI';

  @override
  String get exclusiveOutputMacos =>
      'Truy cập độc quyền (chế độ chiếm quyền độc quyền)';

  @override
  String get exclusiveOutputLinux => 'Đầu ra ALSA trực tiếp';

  @override
  String get exclusiveOutputDescriptionWindows =>
      'Bỏ qua bộ trộn Windows để đầu ra khớp với tần số lấy mẫu và độ sâu bit của từng bài hát. Các ứng dụng khác không thể phát âm thanh khi Toadplayer đang giữ thiết bị. Tự động trộn và bản xem trước sẽ tắt ở chế độ này. Để có đầu ra chuẩn bit (bit-perfect), hãy giữ âm lượng ở mức 100% với bộ cân chỉnh âm thanh (equalizer) và tính năng chuẩn hóa (normalization) tắt.';

  @override
  String get exclusiveOutputDescriptionMacos =>
      'Giữ thiết bị đầu ra chỉ dành riêng cho Toadplayer và chuyển đổi theo tần số lấy mẫu và độ sâu bit của từng bài hát, để Core Audio không thực hiện việc lấy mẫu lại. Các ứng dụng khác không thể phát âm thanh khi Toadplayer đang giữ thiết bị. Tự động trộn (AutoMix) và các bản xem trước sẽ tắt ở chế độ này. Để có đầu ra chuẩn bit (bit-perfect), hãy giữ âm lượng ở mức 100% với bộ cân chỉnh âm thanh (equalizer) và tính năng chuẩn hóa (normalization) tắt.\n';

  @override
  String get exclusiveOutputDescriptionLinux =>
      'Phát trực tiếp tới thiết bị phần cứng ALSA, bỏ qua PipeWire hoặc PulseAudio, để đầu ra khớp với tần số lấy mẫu và độ sâu bit của từng bài hát. Thiết bị phải ở trạng thái rảnh: máy chủ âm thanh sẽ giải phóng card đang nhàn rỗi sau vài giây, hoặc đặt cấu hình của card thành Tắt. Tự động trộn (AutoMix) và các bản xem trước sẽ tắt ở chế độ này.';

  @override
  String get exclusiveOutputPending => 'Chiếm thiết bị khi phát';

  @override
  String get exclusiveOutputActive => 'Đang phát ở chế độ độc quyền';

  @override
  String get exclusiveOutputUnavailableWindows =>
      'Thiết bị từ chối quyền truy cập độc quyền, vì vậy bài hát này được phát qua bộ trộn Windows. Hãy đóng các ứng dụng khác đang sử dụng thiết bị, hoặc cho phép điều khiển độc quyền trong thuộc tính âm thanh Windows của thiết bị.';

  @override
  String get exclusiveOutputUnavailableMacos =>
      'Ứng dụng khác đang giữ thiết bị đầu ra, vì vậy bài hát này được phát qua bộ trộn hệ thống.';

  @override
  String get exclusiveOutputUnavailableLinux =>
      'Thiết bị ALSA đang bận, thường do máy chủ âm thanh chiếm giữ, vì vậy bài hát này được phát qua đó. Hãy đặt cấu hình của card thành Tắt trong cài đặt âm thanh, hoặc chọn thiết bị khác.';

  @override
  String get exclusiveOutputDevice => 'Thiết bị đầu ra';

  @override
  String get exclusiveOutputDeviceFirst => 'Card âm thanh đầu tiên';

  @override
  String get exclusiveOutputNoDevices =>
      'Không tìm thấy thiết bị phát ALSA nào';

  @override
  String get usbDirect => 'Trình điều khiển Direct USB';

  @override
  String get usbDirectDescription =>
      'Sử dụng chế độ âm thanh USB độc quyền cho FLAC/WAV, DSF/DFF và WavPack DSD thông qua quyền USB của Android. Phát Native DSD yêu cầu DAC tương thích được nhận diện. Các định dạng PCM khác sẽ phát ở chế độ thông thường. Áp dụng từ bài hát tiếp theo.';

  @override
  String get usbDsdOverPcm => 'DSD over PCM (DoP)';

  @override
  String get usbDsdOverPcmDescription =>
      'Chỉ bật nếu thiết bị DAC của bạn có hỗ trợ rõ ràng chuẩn DoP. Tính năng này đóng gói tín hiệu DSF/DFF và WavPack DSD vào luồng PCM khi không phát được Native DSD. Thiết bị không tương thích có thể phát ra tiếng sôi nhiễu; hãy tắt đối với các loại tai nghe USB thông thường.';

  @override
  String get usbDsdUnsupported =>
      'Định dạng DSD này hoặc thiết bị DAC đang kết nối không được hỗ trợ. Đã dừng phát nhạc.';

  @override
  String get usbPermissionDenied =>
      'Chưa được cấp quyền truy cập USB. Đang phát ở chế độ thông thường.';

  @override
  String get usbBitPerfectPending =>
      'Đang chờ chuyển sang bài tiếp theo và thiết bị đầu ra USB tương thích.';

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
      'Chưa kết nối USB DAC. Đang sử dụng đầu ra âm thanh thông thường.';

  @override
  String get usbBitPerfectFallback =>
      'Thiết bị hoặc định dạng âm thanh này không hỗ trợ đầu ra Bit-perfect. Đang dùng chế độ phát thông thường.';

  @override
  String get usbBitPerfectRouteChanged =>
      'Đường truyền âm thanh USB đã thay đổi nên nhạc tạm dừng; hãy chọn lại bài hát để kết nối lại.';

  @override
  String get upgradeIntroContinue => 'Tiếp tục';

  @override
  String get cacheMotionArtwork => 'Ảnh bìa động ngoại tuyến';

  @override
  String get cacheMotionArtworkDesc =>
      'Video ảnh bìa động của album được lưu kèm khi tải nhạc. Nếu xóa chúng, các tệp nhạc và ảnh bìa tĩnh của bạn vẫn được giữ nguyên.';

  @override
  String get nowPlayingVolume => 'Âm lượng';

  @override
  String get appearanceStyle => 'Phong cách giao diện';

  @override
  String get appearanceAccentRed => 'Đỏ (mặc định)';

  @override
  String get appearanceAccentOrange => 'Cam';

  @override
  String get appearanceAccentGreen => 'Xanh lá';

  @override
  String get appearanceAccentTeal => 'Xanh ngọc';

  @override
  String get appearanceAccentBlue => 'Xanh dương';

  @override
  String get appearanceAccentPurple => 'Tím';

  @override
  String get appearanceAccentPink => 'Hồng';

  @override
  String get appearanceGlassClarity => 'Độ trong suốt hiệu ứng kính';

  @override
  String get appearanceGlassOutlines => 'Viền hiệu ứng kính';

  @override
  String get appearanceGlassOutlinesSubtitle =>
      'Hiển thị đường viền trang trí quanh các khung kính của Toadplayer. Khi tắt, hiệu ứng làm mờ và khúc xạ vẫn được giữ nguyên.';

  @override
  String get appearanceGlassClaritySubtitle =>
      'Điều chỉnh độ trong suốt của các menu và thanh điều hướng trong Toadplayer. Độ tương phản của chữ vẫn được giữ rõ nét.';

  @override
  String get appearanceGlassTinted => 'Phủ màu';

  @override
  String get appearanceGlassClear => 'Xóa';

  @override
  String get appearanceGlassClearPerformance =>
      'Hiệu ứng kính trong suốt cao có thể tốn pin hơn và giảm độ mượt trên các máy đời cũ. Hãy giảm độ trong suốt nếu cần.';

  @override
  String appearanceGlassClarityBlurOff(String setting) {
    return 'Hiệu ứng kính đang bị làm đục trên thiết bị này. Hãy bật “$setting” để điều chỉnh độ trong suốt.';
  }

  @override
  String appearanceGlassClarityHighContrast(String setting) {
    return 'Hệ thống đang bật chế độ tăng độ tương phản nên hiệu ứng kính được làm đục. Hãy bật “$setting” để vẫn bật hiệu ứng kính; độ tương phản của chữ vẫn được đảm bảo.';
  }

  @override
  String get appearanceUseSystemFont => 'Dùng phông chữ hệ thống';

  @override
  String get appearanceUseSystemFontSubtitle =>
      'Sử dụng kiểu chữ mặc định của thiết bị cho toàn bộ văn bản trong ứng dụng.';

  @override
  String get appName => 'Toadplayer';

  @override
  String get navHome => 'Trang chủ';

  @override
  String get navLibrary => 'Thư viện';

  @override
  String get navSettings => 'Cài đặt';

  @override
  String get navStore => 'Repo';

  @override
  String get homeTitle => 'Trang chủ';

  @override
  String get homeEmptyTitle => 'Chưa có nguồn tìm kiếm nào';

  @override
  String get homeEmptySubtitle =>
      'Hãy cài đặt một tiện ích mở rộng để tiếp tục.';

  @override
  String get homeRecent => 'Gần đây';

  @override
  String get searchRecentlySearched => 'Đã tìm kiếm gần đây';

  @override
  String get searchLibraryPrompt => 'Tìm kiếm trong Thư viện của bạn';

  @override
  String get searchBrowse => 'Duyệt';

  @override
  String get historyFilterAll => 'Tất cả';

  @override
  String get historyFilterAlbums => 'Album';

  @override
  String get historyFilterSingles => 'Đĩa đơn';

  @override
  String get libraryRecentlyAdded => 'Mới thêm gần đây';

  @override
  String get libraryDownloads => 'Tải xuống';

  @override
  String get libraryNoActiveDownloads => 'Không có lượt tải nào đang chạy';

  @override
  String get librarySearchHint => 'Tìm trong thư viện của bạn';

  @override
  String get libraryEmptyCollection => 'Nhạc của bạn sẽ xuất hiện tại đây';

  @override
  String get libraryFolders => 'Thư mục';

  @override
  String libraryFolderCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count thư mục',
      one: '1 thư mục',
    );
    return '$_temp0';
  }

  @override
  String get libraryFoldersEmptyTitle => 'Chưa có thư mục nào';

  @override
  String get libraryFoldersEmptyMessage =>
      'Tải nhạc hoặc thêm thư mục nhạc trong cài đặt Thư viện cục bộ để duyệt theo thư mục.';

  @override
  String get libraryFolderMissing =>
      'Thư mục này không còn trong Thư viện của bạn';

  @override
  String get libraryFoldersLoadFailed => 'Không thể đọc các thư mục của bạn';

  @override
  String get settingsTitle => 'Cài đặt';

  @override
  String get settingsDownload => 'Tải xuống';

  @override
  String get settingsAppearance => 'Giao diện & Hiển thị';

  @override
  String get settingsExtensions => 'Tiện ích mở rộng';

  @override
  String get settingsAbout => 'Giới thiệu';

  @override
  String get downloadTitle => 'Tải xuống';

  @override
  String get downloadAskQualitySubtitle =>
      'Hiện bảng chọn chất lượng trước mỗi lần tải';

  @override
  String get downloadFilenameFormat => 'Định dạng tên tệp';

  @override
  String get downloadSingleFilenameFormat => 'Định dạng tên tệp Đĩa đơn';

  @override
  String get downloadSingleFilenameFormatDescription =>
      'Mẫu đặt tên tệp cho đĩa đơn và EP. Sử dụng cùng hệ thống tag với định dạng album.';

  @override
  String get downloadFolderOrganization => 'Sắp xếp thư mục';

  @override
  String get downloadFolderTemplate => 'Cấu trúc thư mục tải về tùy chỉnh';

  @override
  String get downloadFolderTemplateDescription =>
      'Người dùng tự đặt các thẻ và/hoặc các thư mục con. Lưu sẽ ghi đè tùy chỉnh gốc của các album và nghệ sĩ. Thư mục trống sẽ được đặt là \"Unknown\".';

  @override
  String get folderOrganizationCustom => 'Mẫu tùy chỉnh';

  @override
  String get folderTemplateInvalid =>
      'Nhập đường dẫn thư mục tương đối cùng với các thẻ được hỗ trợ. Thư mục trống, . và .. không được phép.';

  @override
  String get folderTemplatePreview => 'Đường dẫn thư mục ví dụ';

  @override
  String get folderTemplatePreviewFailed => 'Không có bản nghe thử';

  @override
  String get appearanceTitle => 'Giao diện & Hiển thị';

  @override
  String get appearanceThemeSystem => 'Hệ thống';

  @override
  String get appearanceThemeLight => 'Sáng';

  @override
  String get appearanceThemeDark => 'Tối';

  @override
  String get appearanceDynamicColor => 'Màu sắc động (Material You)';

  @override
  String get appearanceDynamicColorSubtitle =>
      'Lấy tông màu tự động từ hình nền thiết bị';

  @override
  String get appearanceHistoryView => 'Kiểu xem lịch sử';

  @override
  String get appearanceHistoryViewList => 'Danh sách';

  @override
  String get appearanceHistoryViewGrid => 'Lưới';

  @override
  String get optionsPrimaryProvider => 'Nguồn chính';

  @override
  String get optionsPrimaryProviderSubtitle =>
      'Dịch vụ dùng khi tìm kiếm theo tên bài hát hoặc album';

  @override
  String optionsUsingExtension(String extensionName) {
    return 'Đang dùng tiện ích: $extensionName';
  }

  @override
  String get optionsDefaultSearchTab => 'Tab tìm kiếm mặc định';

  @override
  String get optionsDefaultSearchTabSubtitle =>
      'Chọn tab sẽ mở ra đầu tiên khi hiển thị kết quả tìm kiếm mới.';

  @override
  String get optionsAutoFallback => 'Tự động chuyển nguồn dự phòng';

  @override
  String get optionsAutoFallbackSubtitle =>
      'Tự động thử nguồn khác nếu tải xuống thất bại';

  @override
  String get optionsEmbedLyrics => 'Nhúng lời bài hát';

  @override
  String get optionsEmbedLyricsSubtitle =>
      'Lưu lời bài hát đồng bộ kèm theo các bản nhạc tải về';

  @override
  String get optionsReplayGain => 'ReplayGain';

  @override
  String get optionsReplayGainSubtitleOn =>
      'Quét độ lớn âm lượng và nhúng tag ReplayGain (chuẩn EBU R128)';

  @override
  String get optionsReplayGainSubtitleOff =>
      'Tắt: không nhúng tag cân bằng âm lượng';

  @override
  String get trackReplayGain => 'Quét lại ReplayGain';

  @override
  String get trackReplayGainScanning => 'Đang phân tích độ lớn âm lượng...';

  @override
  String get trackReplayGainSuccess => 'Đã thêm tag ReplayGain';

  @override
  String get trackReplayGainFailed => 'Không thể thêm tag ReplayGain';

  @override
  String get trackRemoveReplayGain => 'Xóa ReplayGain';

  @override
  String get trackRemoveReplayGainSuccess => 'Đã xóa tag ReplayGain';

  @override
  String get trackRemoveReplayGainFailed => 'Không thể xóa tag ReplayGain';

  @override
  String get replayGainRemoving => 'Đang xóa tag ReplayGain...';

  @override
  String replayGainRemoveConfirmMessage(int count) {
    return 'Xóa tag ReplayGain của bài hát và album khỏi $count bài hát? Âm thanh, ảnh bìa và các metadata khác vẫn được giữ nguyên.';
  }

  @override
  String selectionRemoveReplayGainCount(int count) {
    return 'Xóa RG ($count)';
  }

  @override
  String replayGainRemoveBatchSuccess(int success, int total) {
    return 'Đã xóa ReplayGain khỏi $success of $total tracks';
  }

  @override
  String selectionReplayGainCount(int count) {
    return 'ReplayGain ($count)';
  }

  @override
  String get replayGainBatchConfirmTitle => 'Thêm ReplayGain';

  @override
  String replayGainBatchConfirmMessage(int count) {
    return 'Phân tích độ lớn âm lượng và ghi tag ReplayGain cho $count bài hát?';
  }

  @override
  String get replayGainBatchAnalyzing => 'Đang phân tích ReplayGain...';

  @override
  String replayGainBatchSuccess(int success, int total) {
    return 'Đã thêm ReplayGain vào $success of $total tracks';
  }

  @override
  String get replayGainUnsupportedDecoder =>
      'Một số bài hát không thể phân tích do codec âm thanh chưa được bộ giải mã ReplayGain hỗ trợ. Các tệp này vẫn được giữ nguyên.';

  @override
  String get optionsArtistTagMode => 'Chế độ ghi tag Nghệ sĩ';

  @override
  String get metadataSeparators => 'Ký tự phân tách metadata';

  @override
  String get metadataSeparatorsDescription =>
      'Chọn cách nối các giá trị phân tách bằng dấu phẩy hoặc chấm phẩy cho những bài tải về sau này. Ký tự phân tách nghệ sĩ tùy chỉnh sẽ dùng thẻ gộp chung; tùy chọn Chỉ nghệ sĩ chính vẫn được áp dụng. Những tên nghệ sĩ có sẵn dấu & hoặc / sẽ được giữ nguyên.';

  @override
  String get metadataSeparatorSource => 'Giữ nguyên định dạng gốc';

  @override
  String get metadataSeparatorComma => 'Dấu phẩy (,)';

  @override
  String get metadataSeparatorSemicolon => 'Dấu chấm phẩy (;)';

  @override
  String get metadataSeparatorSlash => 'Dấu gạch chéo (/)';

  @override
  String get metadataSeparatorCustom => 'Ký tự phân tách tùy chỉnh';

  @override
  String get metadataSeparatorPreview => 'Thử nghiệm';

  @override
  String get metadataSeparatorInvalid =>
      'Sử dụng từ 1–16 ký tự, không chứa dấu xuống dòng hoặc ký tự điều khiển.';

  @override
  String get optionsArtistTagModeDescription =>
      'Chọn cách ghi tên nhiều nghệ sĩ vào tag nhúng trong tệp nhạc.';

  @override
  String get optionsArtistTagModeJoined => 'Gộp chung thành một giá trị';

  @override
  String get optionsArtistTagModeJoinedSubtitle =>
      'Gộp chung thành một thẻ ARTIST duy nhất dạng \"Nghệ sĩ A, Nghệ sĩ B\" để tương thích tốt nhất với mọi trình phát nhạc.';

  @override
  String get optionsArtistTagModeSplitVorbis =>
      'Tách riêng từng tag cho FLAC/Opus';

  @override
  String get optionsArtistTagModeSplitVorbisSubtitle =>
      'Ghi tách riêng từng tag nghệ sĩ cho định dạng FLAC và Opus; riêng MP3 và M4A vẫn gộp chung.';

  @override
  String get optionsArtistTagModePrimary => 'Chỉ ghi nghệ sĩ chính';

  @override
  String get optionsArtistTagModePrimarySubtitle =>
      'Chỉ ghi tên nghệ sĩ đầu tiên (ví dụ \"Nghệ sĩ A\") vào cả trường Artist và Album Artist trên mọi định dạng, giúp các trình phát chỉ hiển thị một nghệ sĩ duy nhất.';

  @override
  String get optionsExtensionStore => 'Kho tiện ích (Repo)';

  @override
  String get optionsExtensionStoreSubtitle =>
      'Hiện tab Kho tiện ích trên thanh điều hướng';

  @override
  String get optionsCheckUpdates => 'Kiểm tra cập nhật';

  @override
  String get optionsCheckUpdatesSubtitle => 'Thông báo khi có phiên bản mới';

  @override
  String get optionsUpdateChannel => 'Kênh cập nhật';

  @override
  String get optionsUpdateChannelStable => 'Chỉ nhận bản phát hành ổn định';

  @override
  String get optionsUpdateChannelPreview => 'Nhận các bản phát hành thử nghiệm';

  @override
  String get optionsUpdateChannelWarning =>
      'Bản thử nghiệm có thể chứa lỗi hoặc tính năng chưa hoàn thiện';

  @override
  String get optionsClearHistory => 'Xóa lịch sử tải xuống';

  @override
  String get optionsClearHistorySubtitle =>
      'Xóa toàn bộ bài hát đã tải khỏi danh sách lịch sử';

  @override
  String get optionsDetailedLogging => 'Ghi nhật ký chi tiết';

  @override
  String get optionsDetailedLoggingOn => 'Đang ghi lại nhật ký chi tiết';

  @override
  String get optionsDetailedLoggingOff =>
      'Bật khi cần ghi nhận lỗi để gửi báo cáo';

  @override
  String get extensionsTitle => 'Tiện ích mở rộng';

  @override
  String get extensionsDisabled => 'Đã tắt';

  @override
  String extensionsVersion(String version) {
    return 'Phiên bản $version';
  }

  @override
  String get extensionsUninstall => 'Gỡ cài đặt';

  @override
  String get storeTitle => 'Kho tiện ích (Repo)';

  @override
  String get storeSearch => 'Tìm kiếm tiện ích...';

  @override
  String get storeInstall => 'Cài đặt';

  @override
  String get storeInstalled => 'Đã cài đặt';

  @override
  String get storeUpdate => 'Cập nhật';

  @override
  String get aboutTitle => 'Giới thiệu';

  @override
  String get aboutContributors => 'Người đóng góp';

  @override
  String get aboutMobileDeveloper => 'Nhà phát triển bản di động';

  @override
  String get aboutLogoArtist =>
      'Họa sĩ tài năng đã thiết kế logo tuyệt đẹp cho ứng dụng!';

  @override
  String get aboutTranslators => 'Đội ngũ biên dịch';

  @override
  String get aboutSpecialThanks => 'Lời cảm ơn đặc biệt';

  @override
  String get aboutLinks => 'Liên kết';

  @override
  String get aboutMobileSource => 'Mã nguồn bản di động';

  @override
  String get aboutLyricsWebsite => 'Trang web lời bài hát';

  @override
  String get aboutServiceStatus => 'Trạng thái dịch vụ';

  @override
  String get aboutReportIssue => 'Báo lỗi / Sự cố';

  @override
  String get aboutReportIssueSubtitle => 'Báo cáo lỗi hoặc sự cố bạn gặp phải';

  @override
  String get aboutFeatureRequest => 'Đề xuất tính năng';

  @override
  String get aboutFeatureRequestSubtitle =>
      'Đề xuất tính năng mới cho ứng dụng';

  @override
  String get aboutTelegramChannel => 'Kênh Telegram';

  @override
  String get aboutTelegramChannelSubtitle => 'Thông báo và cập nhật mới';

  @override
  String get aboutTelegramChat => 'Cộng đồng Telegram';

  @override
  String get aboutTelegramChatSubtitle =>
      'Trò chuyện cùng cộng đồng người dùng';

  @override
  String get aboutSocial => 'Mạng xã hội';

  @override
  String get aboutApp => 'Ứng dụng';

  @override
  String get aboutVersion => 'Phiên bản';

  @override
  String get aboutBinimumDesc =>
      'Tác giả của QQDL & HiFi API — dự án góp phần định hình tính năng tải nhạc Lossless.';

  @override
  String get aboutSachinsenalDesc =>
      'Tác giả dự án HiFi nguyên bản — nền tảng cho việc tích hợp các nguồn nhạc Lossless.';

  @override
  String get aboutUnituneDesc =>
      'Trình phân giải liên kết nhạc mã nguồn mở của Flaze, dùng để đối chiếu dự phòng đa nền tảng.';

  @override
  String get aboutMusicBrainzDesc =>
      'Cơ sở dữ liệu âm nhạc mở do MetaBrainz và cộng đồng duy trì, dùng để đối chiếu chéo thông tin bản thu.';

  @override
  String get aboutSquiglyDesc =>
      'Dịch vụ chuyển đổi liên kết nhạc đa nền tảng của Liam Macmillan, được dùng làm phương án dự phòng cuối cùng.';

  @override
  String get aboutAppDescription =>
      'Tra cứu metadata âm nhạc, quản lý tiện ích mở rộng và sắp xếp thư viện của bạn.';

  @override
  String get artistAlbums => 'Album';

  @override
  String get artistSingles => 'Đĩa đơn & EP';

  @override
  String get artistCompilations => 'Tuyển tập';

  @override
  String get artistPopular => 'Phổ biến';

  @override
  String get artistLatestRelease => 'Latest Release';

  @override
  String get artistTopSongs => 'Top Songs';

  @override
  String artistMonthlyListeners(String count) {
    return '$count người nghe hàng tháng';
  }

  @override
  String get trackMetadataService => 'Dịch vụ';

  @override
  String get trackMetadataPlay => 'Phát';

  @override
  String get trackMetadataShare => 'Chia sẻ';

  @override
  String get trackMetadataDelete => 'Xóa';

  @override
  String get setupGrantPermission => 'Cấp quyền';

  @override
  String get setupSkip => 'Bỏ qua lúc này';

  @override
  String get setupStorageAccessRequired => 'Cần cấp quyền truy cập bộ nhớ';

  @override
  String get setupStorageAccessMessageAndroid11 =>
      'Android 11+ yêu cầu quyền \"Truy cập tất cả tệp\" để lưu nhạc vào thư mục tải xuống bạn đã chọn.';

  @override
  String get setupOpenSettings => 'Mở Cài đặt';

  @override
  String get setupPermissionDeniedMessage =>
      'Quyền truy cập bị từ chối. Vui lòng cấp đầy đủ quyền để tiếp tục.';

  @override
  String setupPermissionRequired(String permissionType) {
    return '$permissionType Cần cấp quyền';
  }

  @override
  String setupPermissionRequiredMessage(String permissionType) {
    return '$permissionType là quyền cần thiết để có trải nghiệm tốt nhất. Bạn có thể thay đổi sau trong Cài đặt.';
  }

  @override
  String get setupUseDefaultFolder => 'Dùng thư mục mặc định?';

  @override
  String get setupNoFolderSelected =>
      'Bạn chưa chọn thư mục nào. Bạn có muốn dùng thư mục Music mặc định không?';

  @override
  String get setupUseDefault => 'Dùng mặc định';

  @override
  String get setupDownloadLocationTitle => 'Vị trí tải xuống';

  @override
  String get setupDownloadLocationIosMessage =>
      'Trên iOS, các tệp tải xuống được lưu trong thư mục Documents của ứng dụng. Bạn có thể truy cập chúng thông qua ứng dụng Tệp.';

  @override
  String get setupAppDocumentsFolder => 'Thư mục Documents của ứng dụng';

  @override
  String get setupAppDocumentsFolderSubtitle =>
      'Khuyên dùng – có thể truy cập qua ứng dụng Tệp';

  @override
  String get setupChooseFromFiles => 'Chọn từ ứng dụng Tệp';

  @override
  String get setupChooseFromFilesSubtitle => 'Chọn iCloud hoặc vị trí khác';

  @override
  String get setupIosEmptyFolderWarning =>
      'giới hạn của iOS: Không thể chọn thư mục trống. Hãy chọn thư mục có ít nhất một tệp.';

  @override
  String get setupIcloudNotSupported =>
      'không hỗ trợ iCloud Drive. Vui lòng sử dụng thư mục Documents của ứng dụng.';

  @override
  String get setupDownloadInFlac =>
      'Tải nhạc chất lượng cao chuẩn Lossless và Hi-Res';

  @override
  String get setupStorageGranted => 'Đã cấp quyền truy cập bộ nhớ!';

  @override
  String get setupStorageRequired => 'Cần cấp quyền truy cập bộ nhớ';

  @override
  String get setupStorageDescription =>
      'Toadplayer cần quyền truy cập bộ nhớ để lưu các tệp nhạc đã tải về.';

  @override
  String get setupNotificationGranted => 'Đã cấp quyền gửi thông báo!';

  @override
  String get setupNotificationEnable => 'Bật thông báo';

  @override
  String get setupFolderChoose => 'Chọn thư mục tải xuống';

  @override
  String get setupFolderDescription =>
      'Chọn thư mục để lưu các tệp nhạc tải xuống.';

  @override
  String get setupSelectFolder => 'Chọn thư mục';

  @override
  String get setupEnableNotifications => 'Bật thông báo';

  @override
  String get setupNotificationBackgroundDescription =>
      'Nhận thông báo về tiến độ và khi tải nhạc hoàn tất, giúp bạn dễ dàng theo dõi ngay cả khi ứng dụng chạy ngầm.';

  @override
  String get setupSkipForNow => 'Bỏ qua lúc này';

  @override
  String get setupNearbyEnable => 'Cho phép thiết bị lân cận';

  @override
  String get setupNearbyDescription =>
      'Toadplayer Link dùng tính năng này để tìm máy tính của bạn trên cùng mạng, và lưu trữ mạng cần nó để kết nối tới máy chủ tại nhà.';

  @override
  String get setupNearbyGranted => 'Đã cho phép thiết bị lân cận!';

  @override
  String get permissionNearbyDevices => 'Các thiết bị lân cận';

  @override
  String get whatsNewLinkNearbyAllow => 'Cho phép thiết bị lân cận';

  @override
  String get whatsNewLinkNearbyGranted => 'Cho phép các thiết bị lân cận';

  @override
  String get whatsNewNearbyTitle => 'Các thiết bị lân cận';

  @override
  String get whatsNewNearbyDesc =>
      'Android sẽ hỏi trước khi cho phép một ứng dụng truy cập các thiết bị khác trong mạng của bạn. Toadplayer cần quyền này để:';

  @override
  String get whatsNewNearbyLinkTitle => 'Tìm máy tính của bạn';

  @override
  String get whatsNewNearbyLinkBody =>
      'Toadplayer Link tìm kiếm máy tính của bạn trên cùng mạng Wi-Fi và duy trì kết nối với máy tính đó.';

  @override
  String get whatsNewNearbyStorageTitle => 'Lưu trữ mạng';

  @override
  String get whatsNewNearbyStorageBody =>
      'Phát nhạc từ NAS hoặc máy chủ tại nhà qua SMB hoặc WebDAV.';

  @override
  String get whatsNewNearbyPrivateTitle => 'Chỉ các thiết bị của riêng bạn';

  @override
  String get whatsNewNearbyPrivateBody =>
      'Toadplayer chỉ dùng tính năng này để kết nối với các thiết bị trên mạng của bạn, chứ không bao giờ để tìm vị trí của bạn.';

  @override
  String get whatsNewNearbyRefused =>
      'Không được phép. Toadplayer Link và tính năng lưu trữ mạng vẫn tắt cho đến khi bạn cho phép thiết bị lân cận cho Toadplayer trong cài đặt Android.';

  @override
  String get setupNext => 'Tiếp theo';

  @override
  String get setupGetStarted => 'Bắt đầu ngay';

  @override
  String get setupAllowAccessToManageFiles =>
      'Vui lòng bật \"Cho phép quyền quản lý tất cả tệp\" ở màn hình tiếp theo.';

  @override
  String get setupLanguageTitle => 'Chọn ngôn ngữ';

  @override
  String get setupLanguageDescription =>
      'Chọn ngôn ngữ hiển thị cho ứng dụng. Bạn có thể thay đổi bất cứ lúc nào trong Cài đặt.';

  @override
  String get setupLanguageSystemDefault => 'Mặc định hệ thống';

  @override
  String get dialogCancel => 'Hủy';

  @override
  String get dialogSave => 'Lưu';

  @override
  String get dialogDelete => 'Xóa';

  @override
  String get dialogRetry => 'Thử lại';

  @override
  String get dialogClear => 'Xóa';

  @override
  String get dialogDone => 'Xong';

  @override
  String get dialogImport => 'Nhập';

  @override
  String get dialogDownload => 'Tải xuống';

  @override
  String get previewPlay => 'Nghe thử';

  @override
  String get previewStop => 'Dừng nghe thử';

  @override
  String get previewUnavailable => 'Không có bản nghe thử';

  @override
  String get dialogDiscard => 'Hủy bỏ';

  @override
  String get dialogRemove => 'Gỡ bỏ';

  @override
  String get dialogUninstall => 'Gỡ cài đặt';

  @override
  String get dialogDiscardChanges => 'Hủy bỏ thay đổi?';

  @override
  String get dialogUnsavedChanges =>
      'Bạn có thay đổi chưa lưu. Bạn có muốn hủy bỏ những thay đổi này không?';

  @override
  String get dialogClearAll => 'Xóa tất cả';

  @override
  String get dialogRemoveExtension => 'Gỡ tiện ích mở rộng';

  @override
  String get dialogRemoveExtensionMessage =>
      'Bạn có chắc muốn gỡ bỏ tiện ích mở rộng này? Không thể hoàn tác.';

  @override
  String get dialogUninstallExtension => 'Gỡ cài đặt tiện ích?';

  @override
  String dialogUninstallExtensionMessage(String extensionName) {
    return 'Bạn có chắc muốn gỡ bỏ $extensionName?';
  }

  @override
  String get dialogClearHistoryTitle => 'Xóa lịch sử';

  @override
  String get dialogClearHistoryMessage =>
      'Bạn có chắc muốn xóa toàn bộ lịch sử tải xuống? Hành động này không thể hoàn tác.';

  @override
  String get dialogDeleteSelectedTitle => 'Xóa mục đã chọn';

  @override
  String dialogDeleteSelectedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    return 'Xóa $count $_temp0 from history?\n\nThis will also delete the files from storage.';
  }

  @override
  String get dialogImportPlaylistTitle => 'Nhập danh sách phát';

  @override
  String dialogImportPlaylistMessage(int count) {
    return 'Tìm thấy $count bài hát trong tệp danh sách phát. Bạn có muốn thêm vào hàng chờ tải xuống không?';
  }

  @override
  String csvImportTracks(int count) {
    return '$count bản nhạc từ CSV';
  }

  @override
  String get collectionExportM3u => 'Xuất ra tệp M3U8';

  @override
  String collectionExportM3uDone(int exported, int total) {
    return 'Đã xuất $exported of $total tracks';
  }

  @override
  String get collectionExportM3uNone => 'Không có tệp đã tải nào để xuất';

  @override
  String get collectionExportM3uFailed => 'Xuất tệp thất bại';

  @override
  String get trackOpenOn => 'Mở trên...';

  @override
  String get trackOpenOnNoLinks =>
      'Không tìm thấy liên kết nền tảng nào cho bài hát này.';

  @override
  String get libraryReviewDuplicates => 'Xem lại các bài trùng lặp';

  @override
  String get libraryReviewDuplicatesSubtitle =>
      'Tìm những bài hát bị lưu trùng nhiều lần trong máy';

  @override
  String get duplicatesTitle => 'Bài trùng lặp';

  @override
  String get duplicatesEmpty => 'Không tìm thấy bài hát nào bị trùng lặp.';

  @override
  String get duplicatesKeepBest => 'Giữ bản tốt nhất';

  @override
  String get duplicatesKeepBestAll => 'Giữ bản tốt nhất cho tất cả';

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
      other: 'bản sao',
      one: 'copy',
    );
    return 'Keep the best copy of $groupCount $_temp0 and delete $count lower-quality $_temp1?\n\nThe deleted files will be removed from storage.';
  }

  @override
  String duplicatesKeepBestMessage(int count, String trackName) {
    return 'Xóa $count bản chất lượng thấp hơn của \"$trackName\"?';
  }

  @override
  String duplicatesDeleteCopyMessage(String trackName) {
    return 'Xóa bản sao này của \"$trackName\"?';
  }

  @override
  String snackbarAddedToQueue(String trackName) {
    return 'Đã thêm \"$trackName\" vào hàng chờ';
  }

  @override
  String snackbarAddedTracksToQueue(int count) {
    return 'Đã thêm $count bài hát vào hàng chờ';
  }

  @override
  String snackbarAlreadyDownloaded(String trackName) {
    return '“$trackName\" đã được tải về trước đó';
  }

  @override
  String snackbarAlreadyInLibrary(String trackName) {
    return '“$trackName\" đã có sẵn trong thư viện của bạn';
  }

  @override
  String get snackbarHistoryCleared => 'Đã xóa lịch sử';

  @override
  String snackbarDeletedTracks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'bài hát',
      one: 'bài hát',
    );
    return 'Đã xóa $count $_temp0';
  }

  @override
  String snackbarCannotOpenFile(String error) {
    return 'Không thể mở tệp: $error';
  }

  @override
  String get snackbarViewQueue => 'Xem hàng chờ';

  @override
  String snackbarUrlCopied(String platform) {
    return '$platform Đã sao chép URL vào bộ nhớ tạm';
  }

  @override
  String get snackbarFileNotFound => 'Không tìm thấy tệp';

  @override
  String get snackbarSelectExtFile => 'Vui lòng chọn một tệp .toadplayer-ext';

  @override
  String get snackbarProviderPrioritySaved => 'Đã lưu thứ tự ưu tiên nguồn';

  @override
  String get snackbarMetadataProviderSaved =>
      'Đã lưu thứ tự ưu tiên nguồn Metadata';

  @override
  String snackbarExtensionInstalled(String extensionName) {
    return '$extensionName đã được cài đặt.';
  }

  @override
  String snackbarExtensionUpdated(String extensionName) {
    return '$extensionName đã được cập nhật.';
  }

  @override
  String get snackbarFailedToInstall => 'Cài đặt tiện ích thất bại';

  @override
  String get snackbarFailedToUpdate => 'Cập nhật tiện ích thất bại';

  @override
  String get errorRateLimited => 'Tạm giới hạn truy vấn';

  @override
  String get errorRateLimitedMessage =>
      'Quá nhiều yêu cầu cùng lúc. Vui lòng đợi ít phút rồi tìm kiếm lại.';

  @override
  String get errorNoTracksFound => 'Không tìm thấy bài hát nào';

  @override
  String get searchEmptyResultSubtitle => 'Hãy thử từ khóa khác';

  @override
  String get errorUrlNotRecognized => 'Không nhận diện được liên kết';

  @override
  String get errorUrlNotRecognizedMessage =>
      'Liên kết này chưa được hỗ trợ. Hãy kiểm tra lại URL và đảm bảo bạn đã cài tiện ích mở rộng tương thích.';

  @override
  String get errorUrlFetchFailed =>
      'Không thể tải nội dung từ liên kết này. Vui lòng thử lại.';

  @override
  String errorMissingExtensionSource(String item) {
    return 'Không thể tải $item: thiếu nguồn tiện ích mở rộng';
  }

  @override
  String get actionPause => 'Tạm dừng';

  @override
  String get actionResume => 'Tiếp tục';

  @override
  String get actionCancel => 'Hủy';

  @override
  String get actionSelectAll => 'Chọn tất cả';

  @override
  String get actionDeselect => 'Bỏ chọn';

  @override
  String selectionSelected(int count) {
    return '$count đã chọn';
  }

  @override
  String get selectionAllSelected => 'Đã chọn tất cả bài hát';

  @override
  String get selectionSelectToDelete => 'Chọn bài hát cần xóa';

  @override
  String progressFetchingMetadata(int current, int total) {
    return 'Đang lấy metadata... $current/$total';
  }

  @override
  String get progressReadingCsv => 'Đang đọc tệp CSV...';

  @override
  String get searchSongs => 'Bài hát';

  @override
  String get searchArtists => 'Nghệ sĩ';

  @override
  String get searchAlbums => 'Album';

  @override
  String get searchPlaylists => 'Danh sách phát';

  @override
  String get searchShowAll => 'Hiển thị tất cả';

  @override
  String searchShowAllCategory(String category) {
    return 'Hiển thị tất cả $category';
  }

  @override
  String get searchSortTitle => 'Sắp xếp kết quả';

  @override
  String get searchSortDefault => 'Mặc định';

  @override
  String get searchSortTitleAZ => 'Tiêu đề (A-Z)';

  @override
  String get searchSortTitleZA => 'Tiêu đề (Z-A)';

  @override
  String get searchSortArtistAZ => 'Nghệ sĩ (A-Z)';

  @override
  String get searchSortArtistZA => 'Nghệ sĩ (Z-A)';

  @override
  String get searchSortDurationShort => 'Thời lượng (Ngắn nhất)';

  @override
  String get searchSortDurationLong => 'Thời lượng (Dài nhất)';

  @override
  String get searchSortDateOldest => 'Ngày phát hành (Cũ nhất)';

  @override
  String get searchSortDateNewest => 'Ngày phát hành (Mới nhất)';

  @override
  String get tooltipPlay => 'Phát';

  @override
  String get filenameFormat => 'Định dạng tên tệp';

  @override
  String get filenameShowAdvancedTags => 'Hiện các tag nâng cao';

  @override
  String get filenameShowAdvancedTagsDescription =>
      'Bật định dạng tag nâng cao để đánh số thứ tự bài (01, 02...) và mẫu ngày tháng';

  @override
  String get folderOrganizationNone => 'Không chia thư mục';

  @override
  String get folderOrganizationByPlaylist => 'Theo danh sách phát';

  @override
  String get folderOrganizationByPlaylistSubtitle =>
      'Tạo thư mục riêng cho từng danh sách phát';

  @override
  String get folderOrganizationByArtist => 'Theo Nghệ sĩ';

  @override
  String get folderOrganizationByAlbum => 'Theo Album';

  @override
  String get folderOrganizationByArtistAlbum => 'Nghệ sĩ/Album';

  @override
  String get folderOrganizationDescription =>
      'Tự động sắp xếp tệp tải về vào các thư mục';

  @override
  String get folderOrganizationNoneSubtitle =>
      'Lưu chung tất cả tệp trong thư mục tải xuống';

  @override
  String get folderOrganizationByArtistSubtitle =>
      'Tạo thư mục riêng cho từng nghệ sĩ';

  @override
  String get folderOrganizationByAlbumSubtitle =>
      'Tạo thư mục riêng cho từng album';

  @override
  String get folderOrganizationByArtistAlbumSubtitle =>
      'Thư mục lồng nhau theo Nghệ sĩ rồi đến Album';

  @override
  String get updateAvailable => 'Có bản cập nhật mới';

  @override
  String get updateLater => 'Để sau';

  @override
  String get updateStartingDownload => 'Đang bắt đầu tải...';

  @override
  String get updateDownloadFailed => 'Tải xuống thất bại';

  @override
  String get updateFailedMessage => 'Không thể tải bản cập nhật';

  @override
  String get updateNewVersionReady => 'Phiên bản mới đã sẵn sàng';

  @override
  String get updateRequiredTitle => 'Yêu cầu cập nhật';

  @override
  String updateRequiredNotice(int count) {
    return 'Phiên bản này đã cũ hơn $count phiên bản so với hiện tại và không còn được hỗ trợ. Vui lòng cập nhật để tiếp tục sử dụng ứng dụng.';
  }

  @override
  String get updateCurrent => 'Hiện tại';

  @override
  String get updateNew => 'Mới';

  @override
  String get updateDownloading => 'Đang tải xuống...';

  @override
  String get updateWhatsNew => 'Có gì mới';

  @override
  String get updateDownloadInstall => 'Tải về & Cài đặt';

  @override
  String get updateDontRemind => 'Không nhắc lại';

  @override
  String get updateViewRelease => 'Xem bản phát hành';

  @override
  String get updateStartingInstaller => 'Đang khởi chạy trình cài đặt...';

  @override
  String get updateMacInstallHint =>
      'Tệp ảnh đĩa đã mở trong Finder. Hãy thoát Toadplayer, sau đó kéo Toadplayer từ ảnh đĩa vào Applications và thay thế bản cũ.';

  @override
  String get updateQuitApp => 'Thoát Toadplayer';

  @override
  String get updateReadyToRestart =>
      'Bản cập nhật đã được cài đặt. Hãy khởi động lại Toadplayer để sử dụng.';

  @override
  String get updateRestartNow => 'Khởi động lại ngay';

  @override
  String get providerPriorityTitle => 'Thứ tự ưu tiên nguồn';

  @override
  String get providerPriorityDescription =>
      'Kéo để sắp xếp lại thứ tự ưu tiên các nguồn tải nhạc. Ứng dụng sẽ thử lần lượt từ trên xuống dưới khi tải bài hát.';

  @override
  String get providerPriorityInfo =>
      'Nếu không tìm thấy bài hát ở nguồn đầu tiên, ứng dụng sẽ tự động chuyển sang thử ở nguồn tiếp theo.';

  @override
  String get providerPriorityFallbackExtensionsDescription =>
      'Chọn những tiện ích tải nhạc đã cài nào được phép dùng khi tự động chuyển nguồn dự phòng.';

  @override
  String get providerPriorityFallbackExtensionsHint =>
      'Chỉ những tiện ích đang bật và có hỗ trợ tính năng tải nhạc mới hiển thị tại đây.';

  @override
  String get providerExtension => 'Tiện ích mở rộng';

  @override
  String get metadataProviderPriorityTitle => 'Thứ tự ưu tiên Metadata';

  @override
  String get metadataProviderPriorityDescription =>
      'Kéo để sắp xếp lại thứ tự nguồn metadata. Ứng dụng sẽ ưu tiên tìm bài hát và lấy metadata theo thứ tự từ trên xuống dưới.';

  @override
  String get metadataProviderPriorityInfo =>
      'Deezer không giới hạn số lượt truy vấn nên được khuyên dùng làm nguồn chính. Spotify có thể tạm giới hạn nếu gửi quá nhiều yêu cầu liên tục.';

  @override
  String get logTitle => 'Nhật ký';

  @override
  String get logCopied => 'Đã sao chép nhật ký vào bộ nhớ tạm';

  @override
  String get logSearchHint => 'Tìm trong nhật ký...';

  @override
  String get logFilterLevel => 'Mức tín hiệu';

  @override
  String get logFilterSection => 'Lọc';

  @override
  String get logShareLogs => 'Chia sẻ nhật ký';

  @override
  String get logClearLogs => 'Xóa nhật ký';

  @override
  String get logClearLogsTitle => 'Xóa nhật ký';

  @override
  String get logClearLogsMessage => 'Bạn có chắc muốn xóa toàn bộ nhật ký?';

  @override
  String get logFilterBySeverity => 'Lọc nhật ký theo mức độ';

  @override
  String get logNoLogsYet => 'Chưa có nhật ký nào';

  @override
  String get logNoLogsYetSubtitle =>
      'Nhật ký hoạt động sẽ hiển thị tại đây trong quá trình bạn dùng ứng dụng';

  @override
  String logEntriesFiltered(int count) {
    return 'Mục nhật ký ($count đã lọc)';
  }

  @override
  String logEntries(int count) {
    return 'Mục nhật ký ($count)';
  }

  @override
  String get channelStable => 'Ổn định';

  @override
  String get channelPreview => 'Thử nghiệm';

  @override
  String get sectionSearchSource => 'Nguồn tìm kiếm';

  @override
  String get sectionDownload => 'Tải xuống';

  @override
  String get sectionPerformance => 'Hiệu năng';

  @override
  String get sectionApp => 'Ứng dụng';

  @override
  String get sectionData => 'Dữ liệu';

  @override
  String get sectionDebug => 'Gỡ lỗi';

  @override
  String get sectionService => 'Dịch vụ';

  @override
  String get sectionAudioQuality => 'Chất lượng âm thanh';

  @override
  String get sectionFileSettings => 'Cài đặt tệp';

  @override
  String get sectionLyrics => 'Lời bài hát';

  @override
  String get lyricsKeepScreenOn => 'Giữ sáng màn hình khi đang xem lời bài hát';

  @override
  String get lyricsKeepScreenOnSubtitle =>
      'Không tự tắt màn hình khi đang mở khung lời bài hát, kể cả khi nhạc đang tạm dừng.';

  @override
  String get lyricsMode => 'Chế độ lưu lời bài hát';

  @override
  String get lyricsModeDescription =>
      'Chọn phương thức lưu lời bài hát kèm theo nhạc tải về';

  @override
  String get lyricsModeEmbed => 'Nhúng trực tiếp vào tệp';

  @override
  String get lyricsModeEmbedSubtitle =>
      'Lời bài hát được lưu trực tiếp trong metadata của tệp FLAC';

  @override
  String get lyricsModeExternal => 'Tệp .lrc rời bên ngoài';

  @override
  String get lyricsModeExternalSubtitle =>
      'Lưu tệp .lrc rời cho các trình phát như Samsung Music';

  @override
  String get lyricsModeBoth => 'Cả hai';

  @override
  String get lyricsModeBothSubtitle => 'Vừa nhúng vào tệp vừa lưu tệp .lrc rời';

  @override
  String get sectionColor => 'Màu sắc';

  @override
  String get sectionTheme => 'Giao diện';

  @override
  String get sectionLayout => 'Bố cục';

  @override
  String get sectionLanguage => 'Ngôn ngữ';

  @override
  String get appearanceLanguage => 'Ngôn ngữ ứng dụng';

  @override
  String get settingsAppearanceSubtitle => 'Giao diện, màu sắc, hiển thị';

  @override
  String get settingsDownloadSubtitle => 'Dịch vụ, chất lượng, nguồn dự phòng';

  @override
  String get settingsExtensionsSubtitle => 'Quản lý nguồn tải nhạc';

  @override
  String get settingsLogsSubtitle => 'Xem nhật ký ứng dụng để gỡ lỗi';

  @override
  String get loadingSharedLink => 'Đang tải liên kết được chia sẻ...';

  @override
  String get pressBackAgainToExit => 'Nhấn Quay lại lần nữa để thoát';

  @override
  String downloadAllCount(int count) {
    return 'Tải tất cả ($count)';
  }

  @override
  String tracksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tracks',
      one: '1 bài hát',
    );
    return '$_temp0';
  }

  @override
  String get trackCopyFilePath => 'Sao chép đường dẫn tệp';

  @override
  String get trackRemoveFromDevice => 'Xóa khỏi thiết bị';

  @override
  String get trackLoadLyrics => 'Tải lời bài hát';

  @override
  String get trackMetadata => 'Siêu dữ liệu';

  @override
  String get trackFileInfo => 'Thông tin tệp';

  @override
  String get trackLyrics => 'Lời bài hát';

  @override
  String get trackFileNotFound => 'Không tìm thấy tệp';

  @override
  String get trackFileUnavailable =>
      'Tệp hiện không khả dụng. Hãy kiểm tra lại quyền truy cập bộ nhớ rồi thử lại.';

  @override
  String get trackOpenInDeezer => 'Mở trong Deezer';

  @override
  String get trackOpenInSpotify => 'Mở trong Spotify';

  @override
  String get trackTrackName => 'Tên bài hát';

  @override
  String get trackArtist => 'Nghệ sĩ';

  @override
  String get trackAlbumArtist => 'Nghệ sĩ album';

  @override
  String get trackAlbum => 'Album';

  @override
  String get trackTrackNumber => 'Số thứ tự bài';

  @override
  String get trackDiscNumber => 'Số thứ tự đĩa';

  @override
  String get trackDuration => 'Thời lượng';

  @override
  String get trackAudioQuality => 'Chất lượng âm thanh';

  @override
  String get trackReplayGainTrackGain => 'ReplayGain Track Gain';

  @override
  String get trackReplayGainTrackPeak => 'ReplayGain Track Peak';

  @override
  String get trackReplayGainAlbumGain => 'ReplayGain Album Gain';

  @override
  String get trackReplayGainAlbumPeak => 'ReplayGain Album Peak';

  @override
  String get libraryQualityLabelFileFormat => 'Định dạng tệp';

  @override
  String get trackReleaseDate => 'Ngày phát hành';

  @override
  String get trackGenre => 'Thể loại';

  @override
  String get trackLabel => 'Hãng đĩa';

  @override
  String get trackCopyright => 'Bản quyền';

  @override
  String get trackDownloaded => 'Đã tải xuống';

  @override
  String get trackCopyLyrics => 'Sao chép lời bài hát';

  @override
  String trackLyricsSource(String source) {
    return 'Nguồn: $source';
  }

  @override
  String get trackLyricsNotAvailable => 'Chưa có lời bài hát cho bản nhạc này';

  @override
  String get trackLyricsNotInFile => 'Không tìm thấy lời bài hát trong tệp này';

  @override
  String get trackFetchOnlineLyrics => 'Tải dữ liệu trực tuyến';

  @override
  String get trackLyricsTimeout =>
      'Yêu cầu đã quá thời gian phản hồi. Vui lòng thử lại sau.';

  @override
  String get trackLyricsLoadFailed => 'Không thể tải lời bài hát';

  @override
  String get trackEmbedLyrics => 'Nhúng lời bài hát';

  @override
  String get trackLyricsEmbedded => 'Đã nhúng lời bài hát thành công';

  @override
  String get trackInstrumental => 'Bản nhạc không lời';

  @override
  String get trackCopiedToClipboard => 'Đã sao chép vào bộ nhớ tạm';

  @override
  String get trackDeleteConfirmTitle => 'Xóa khỏi thiết bị?';

  @override
  String get trackDeleteNetworkConfirmMessage =>
      'Thao tác này sẽ xóa vĩnh viễn tệp nhạc khỏi ổ đĩa mạng (NAS) của bạn, đồng thời gỡ khỏi thư viện và lịch sử.';

  @override
  String snackbarDeleteTracksFailed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    return 'Không thể xóa $count $_temp0. Check storage access and try again.';
  }

  @override
  String get trackDeleteConfirmMessage =>
      'Thao tác này sẽ xóa vĩnh viễn tệp nhạc đã tải xuống và gỡ khỏi lịch sử của bạn.';

  @override
  String get dateToday => 'Hôm nay';

  @override
  String get dateYesterday => 'Hôm qua';

  @override
  String dateDaysAgo(int count) {
    return '$count ngày trước';
  }

  @override
  String dateWeeksAgo(int count) {
    return '$count tuần trước';
  }

  @override
  String dateMonthsAgo(int count) {
    return '$count tháng trước';
  }

  @override
  String get storeFilterAll => 'Tất cả';

  @override
  String get storeFilterMetadata => 'Metadata';

  @override
  String get storeFilterDownload => 'Tải xuống';

  @override
  String get storeFilterUtility => 'Tiện ích công cụ';

  @override
  String get storeFilterLyrics => 'Lời bài hát';

  @override
  String get storeFilterIntegration => 'Mức tín hiệu';

  @override
  String get storeClearFilters => 'Xóa bộ lọc';

  @override
  String get storeAddRepoTitle => 'Thêm kho tiện ích mở rộng';

  @override
  String get storeAddRepoDescription =>
      'Nhập URL kho lưu trữ GitHub có chứa tệp registry.json để duyệt và cài đặt tiện ích mở rộng.';

  @override
  String get storeRepoUrlLabel => 'URL kho tiện ích';

  @override
  String get storeRepoUrlHint => 'https://github.com/user/repo';

  @override
  String get storeAddRepoButton => 'Thêm kho tiện ích';

  @override
  String get storeChangeRepoTooltip => 'Đổi kho tiện ích';

  @override
  String get storeRepoDialogTitle => 'Kho tiện ích';

  @override
  String get storeRepoDialogCurrent => 'Kho tiện ích hiện tại:';

  @override
  String get storeNewRepoUrlLabel => 'URL kho tiện ích mới';

  @override
  String get storeLoadError => 'Không thể tải kho tiện ích';

  @override
  String get storeEmptyNoExtensions => 'Không có tiện ích mở rộng nào';

  @override
  String get storeEmptyNoResults => 'Không tìm thấy tiện ích mở rộng nào';

  @override
  String get extensionId => 'ID';

  @override
  String get extensionError => 'Lỗi';

  @override
  String get extensionCapabilities => 'Tính năng hỗ trợ';

  @override
  String get extensionMetadataProvider => 'Nguồn Metadata';

  @override
  String get extensionDownloadProvider => 'Nguồn tải xuống';

  @override
  String get extensionLyricsProvider => 'Nguồn lời bài hát';

  @override
  String get extensionUrlHandler => 'Bộ xử lý URL';

  @override
  String get extensionQualityOptions => 'Tùy chọn chất lượng';

  @override
  String get extensionPostProcessingHooks => 'Móc nối xử lý hậu kỳ';

  @override
  String get extensionPermissions => 'Quyền truy cập';

  @override
  String get extensionSettings => 'Cài đặt';

  @override
  String get extensionRemoveButton => 'Gỡ tiện ích mở rộng';

  @override
  String get extensionUpdated => 'Đã cập nhật';

  @override
  String get extensionMinAppVersion => 'Phiên bản ứng dụng tối thiểu';

  @override
  String get extensionCustomTrackMatching => 'Đối chiếu bài hát tùy chỉnh';

  @override
  String get extensionPostProcessing => 'Xử lý hậu kỳ';

  @override
  String extensionHooksAvailable(int count) {
    return '$count hook khả dụng';
  }

  @override
  String extensionPatternsCount(int count) {
    return '$count mẫu';
  }

  @override
  String extensionStrategy(String strategy) {
    return 'Chiến lược: $strategy';
  }

  @override
  String get extensionsProviderPrioritySection => 'Thứ tự ưu tiên nguồn';

  @override
  String get extensionsInstalledSection => 'Tiện ích đã cài đặt';

  @override
  String get extensionsNoExtensions => 'Chưa cài đặt tiện ích nào';

  @override
  String get extensionsNoExtensionsSubtitle =>
      'Cài đặt các tệp .toadplayer-ext để thêm nhà cung cấp nguồn mới';

  @override
  String get extensionsInstallButton => 'Cài đặt tiện ích mở rộng';

  @override
  String get extensionsInfoTip =>
      'Tiện ích mở rộng giúp bổ sung nguồn tải nhạc và metadata. Chỉ nên cài đặt tiện ích từ các nguồn đáng tin cậy.';

  @override
  String get extensionsInstalledSuccess => 'Cài đặt tiện ích thành công';

  @override
  String extensionsInstalledCount(int count) {
    return '$count tiện ích đã được cài đặt thành công';
  }

  @override
  String extensionsInstallPartialSuccess(int installed, int attempted) {
    return 'Đã cài $installed of $attempted extensions';
  }

  @override
  String get extensionsDownloadPriority => 'Thứ tự ưu tiên tải xuống';

  @override
  String get extensionsDownloadPrioritySubtitle =>
      'Thiết lập thứ tự ưu tiên dịch vụ tải nhạc';

  @override
  String get extensionsFallbackTitle => 'Tiện ích dự phòng';

  @override
  String get extensionsFallbackSubtitle =>
      'Chọn những tiện ích tải nhạc nào được phép dùng làm nguồn dự phòng';

  @override
  String get extensionsNoDownloadProvider =>
      'Chưa có tiện ích nào hỗ trợ tải nhạc';

  @override
  String get extensionsMetadataPriority => 'Thứ tự ưu tiên Metadata';

  @override
  String get extensionsMetadataPrioritySubtitle =>
      'Thiết lập thứ tự ưu tiên nguồn tìm kiếm & metadata';

  @override
  String get extensionsNoMetadataProvider =>
      'Chưa có tiện ích nào cung cấp metadata';

  @override
  String get extensionsSearchProvider => 'Nguồn tìm kiếm';

  @override
  String get extensionsNoCustomSearch =>
      'Chưa có tiện ích nào hỗ trợ tìm kiếm tùy chỉnh';

  @override
  String get extensionsSearchProviderDescription =>
      'Chọn dịch vụ dùng để tìm kiếm bài hát';

  @override
  String get extensionsCustomSearch => 'Tìm kiếm tùy chỉnh';

  @override
  String get extensionsErrorLoading => 'Lỗi khi tải tiện ích mở rộng';

  @override
  String get qualityFlacLossless => 'FLAC Lossless';

  @override
  String get qualityFlacLosslessSubtitle => '16-bit / 44.1kHz';

  @override
  String get qualityHiResFlac => 'Hi-Res FLAC';

  @override
  String get qualityHiResFlacSubtitle => '24-bit / tối đa 96kHz';

  @override
  String get qualityHiResFlacMax => 'Hi-Res FLAC Tối đa';

  @override
  String get qualityHiResFlacMaxSubtitle => '24-bit / tối đa 192kHz';

  @override
  String get downloadLossyFormat => 'Định dạng nén mất dữ liệu';

  @override
  String get downloadAutoConvert =>
      'Tự động chuyển đổi định dạng sau khi tải xong';

  @override
  String get downloadAutoConvertAllFormatsSubtitle =>
      'Chuyển đổi các tệp tải xuống hoàn tất hoặc giới hạn độ sâu bit và tần số mẫu FLAC. Bản gốc chỉ được thay thế sau khi chuyển đổi thành công.';

  @override
  String get downloadAutoConvertOutputSubtitle =>
      'Chọn định dạng đầu ra cho các tệp tải xuống mới hoàn tất.';

  @override
  String get downloadAutoConvertFlacSubtitle =>
      'FLAC không mất dữ liệu với giới hạn chất lượng. Độ sâu bit và tần số mẫu thấp hơn được giữ nguyên.';

  @override
  String get downloadAutoConvertMaxBitDepth => 'Độ sâu bit tối đa';

  @override
  String get downloadAutoConvertMaxSampleRate => 'Tần số mẫu tối đa';

  @override
  String get downloadAutoConvertFlacLimitsSubtitle =>
      'Đây là các giới hạn trên. Ví dụ, một nguồn 44,1 kHz vẫn giữ nguyên ở 44,1 kHz khi chọn 48 kHz. Các nguồn có tổn hao (lossy) được giữ nguyên định dạng ban đầu.';

  @override
  String get downloadAutoConvertSubtitle =>
      'Tự động chuyển các bài vừa tải xong sang định dạng nén gọn nhẹ hơn. Tệp gốc chỉ bị thay thế sau khi chuyển đổi thành công.';

  @override
  String get downloadAutoConvertFormat => 'Định dạng đầu ra';

  @override
  String get downloadAutoConvertFormatSubtitle =>
      'Chọn định dạng nén sẽ dùng cho các bản nhạc tải xong mới.';

  @override
  String get downloadAutoConvertBitrate => 'Chất lượng đầu ra';

  @override
  String get downloadAutoConvertBitrateSubtitle =>
      'Bitrate càng cao càng giữ được nhiều chi tiết âm thanh nhưng dung lượng tệp sẽ lớn hơn.';

  @override
  String get downloadAutoConvertMp3Subtitle =>
      'Độ tương thích tốt nhất trên mọi trình phát và thiết bị';

  @override
  String get downloadAutoConvertM4aSubtitle =>
      'Âm thanh AAC hiệu suất cao đóng gói trong định dạng M4A';

  @override
  String get downloadAutoConvertOpusSubtitle =>
      'Hiệu suất tối ưu nhất cho các trình phát hiện đại';

  @override
  String get downloadAskBeforeDownload => 'Hỏi chất lượng trước mỗi lần tải';

  @override
  String get downloadDirectory => 'Thư mục tải xuống';

  @override
  String get downloadSeparateSinglesFolder => 'Tách riêng thư mục Đĩa đơn';

  @override
  String get downloadAlbumFolderStructure => 'Cấu trúc thư mục Album';

  @override
  String get albumFolderStructureDescription =>
      'Chọn cách sắp xếp cấu trúc thư mục album';

  @override
  String get downloadUseAlbumArtistForFolders =>
      'Dùng Nghệ sĩ album để đặt tên thư mục';

  @override
  String get downloadUsePrimaryArtistOnly =>
      'Chỉ lấy tên nghệ sĩ chính để đặt tên thư mục';

  @override
  String get downloadUsePrimaryArtistOnlyEnabled =>
      'Lược bỏ tên nghệ sĩ góp giọng khỏi tên thư mục (ví dụ: Justin Bieber, Quavo → Justin Bieber)';

  @override
  String get downloadUsePrimaryArtistOnlyDisabled =>
      'Dùng toàn bộ chuỗi tên nghệ sĩ để đặt tên thư mục';

  @override
  String get downloadSelectQuality => 'Chọn chất lượng';

  @override
  String get downloadFrom => 'Nguồn tải xuống';

  @override
  String get appearanceAmoledDark => ' Đen tuyền AMOLED';

  @override
  String get appearanceAmoledDarkSubtitle => 'Nền đen tuyệt đối';

  @override
  String get appearanceHeroAnimations => 'Hiệu ứng chuyển cảnh Hero';

  @override
  String get appearanceHeroAnimationsSubtitle =>
      'Hiệu ứng chuyển động ảnh bìa mượt mà giữa các màn hình, ví dụ khi mở trình phát';

  @override
  String get appearanceForceBlur => 'Luôn bật hiệu ứng làm mờ';

  @override
  String get appearanceForceBlurSubtitle =>
      'Bật hiệu ứng làm mờ thanh điều hướng ngay cả trên các thiết bị mặc định tắt. Có thể ảnh hưởng nhẹ tới hiệu năng.';

  @override
  String get queueClearAll => 'Xóa tất cả';

  @override
  String get queueClearAllMessage =>
      'Bạn có chắc muốn xóa toàn bộ danh sách tải xuống?';

  @override
  String get settingsAutoExportFailed => 'Tự động xuất danh sách tải lỗi';

  @override
  String get settingsAutoExportFailedSubtitle =>
      'Tự động lưu danh sách tải lỗi ra tệp TXT';

  @override
  String get settingsDownloadNetwork => 'Mạng tải xuống';

  @override
  String get settingsDownloadNetworkAny => 'Wi-Fi + Dữ liệu di động';

  @override
  String get settingsDownloadNetworkWifiOnly => 'Chỉ Wi-Fi';

  @override
  String get settingsDownloadNetworkSubtitle =>
      'Chọn kết nối mạng được phép tải nhạc. Nếu chọn Chỉ Wi-Fi, quá trình tải sẽ tự tạm dừng khi chuyển sang dữ liệu di động.';

  @override
  String get settingsConcurrentDownloads => 'Số luồng tải đồng thời';

  @override
  String get settingsConcurrentDownloadsSubtitle =>
      'Tải nhiều bài cùng lúc giúp tiết kiệm thời gian hơn, nhưng một số nguồn nhạc có thể tạm giới hạn nếu gửi quá nhiều yêu cầu song song.';

  @override
  String get concurrentDownloadsOne => 'Xử lý tuần tự từng bài';

  @override
  String concurrentDownloadsCount(int count) {
    return 'Tối đa $count bài cùng lúc';
  }

  @override
  String get albumFolderArtistAlbum => 'Nghệ sĩ / Album';

  @override
  String get albumFolderArtistAlbumSubtitle => 'Albums/Tên Nghệ Sĩ/Tên Album/';

  @override
  String get albumFolderArtistYearAlbum => 'Nghệ sĩ / [Năm] Album';

  @override
  String get albumFolderArtistYearAlbumSubtitle =>
      'Albums/Tên Nghệ Sĩ/[2005] Tên Album/';

  @override
  String get albumFolderAlbumOnly => 'Chỉ tên Album';

  @override
  String get albumFolderAlbumOnlySubtitle => 'Albums/Tên Album/';

  @override
  String get albumFolderYearAlbum => '[Năm] Album';

  @override
  String get albumFolderYearAlbumSubtitle => 'Albums/[2005] Tên Album/';

  @override
  String get albumFolderArtistAlbumSingles => 'Nghệ sĩ / Album + Singles';

  @override
  String get albumFolderArtistAlbumSinglesSubtitle =>
      'Nghệ sĩ/Album/ và Nghệ sĩ/Singles/';

  @override
  String get albumFolderArtistAlbumFlat =>
      'Nghệ sĩ / Album (Lưu phẳng các bài Single)';

  @override
  String get albumFolderArtistAlbumFlatSubtitle =>
      'Nghệ sĩ/Album/ và Nghệ sĩ/bài_hát.flac';

  @override
  String get downloadedAlbumDeleteSelected => 'Xóa mục đã chọn';

  @override
  String downloadedAlbumDeleteMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    return 'Xóa $count $_temp0 from this album?\n\nThis will also delete the files from storage.';
  }

  @override
  String downloadedAlbumSelectedCount(int count) {
    return '$count đã chọn';
  }

  @override
  String get downloadedAlbumTapToSelect => 'Chạm vào bài hát để chọn';

  @override
  String downloadedAlbumDeleteCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    return 'Xóa $count $_temp0';
  }

  @override
  String get downloadedAlbumSelectToDelete => 'Chọn bài hát cần xóa';

  @override
  String downloadedAlbumDiscHeader(int discNumber) {
    return 'Đĩa $discNumber';
  }

  @override
  String get recentTypeArtist => 'Nghệ sĩ';

  @override
  String get recentTypeAlbum => 'Album';

  @override
  String get recentTypeSong => 'Bài hát';

  @override
  String get recentTypePlaylist => 'Danh sách phát';

  @override
  String get recentEmpty => 'Chưa có mục gần đây nào';

  @override
  String get recentClearAllMessage =>
      'Xóa toàn bộ hoạt động gần đây? Lịch sử tải xuống và các tệp nhạc sẽ không bị xóa.';

  @override
  String get recentShowAllDownloads => 'Hiện tất cả mục tải xuống';

  @override
  String recentPlaylistInfo(String name) {
    return 'Danh sách phát: $name';
  }

  @override
  String get discographyDownload => 'Tải toàn bộ sự nghiệp';

  @override
  String get discographyDownloadAll => 'Tải xuống tất cả';

  @override
  String discographyDownloadAllSubtitle(int count, int albumCount) {
    return '$count bài hát từ $albumCount bản phát hành';
  }

  @override
  String get discographyAlbumsOnly => 'Chỉ Album';

  @override
  String discographyAlbumsOnlySubtitle(int count, int albumCount) {
    return '$count bài hát từ $albumCount album';
  }

  @override
  String get discographySinglesOnly => 'Chỉ Đĩa đơn & EP';

  @override
  String discographySinglesOnlySubtitle(int count, int albumCount) {
    return '$count bài hát từ $albumCount đĩa đơn';
  }

  @override
  String get discographySelectAlbums => 'Chọn Album...';

  @override
  String get discographySelectAlbumsSubtitle =>
      'Chọn từng album hoặc đĩa đơn cụ thể';

  @override
  String get discographyFetchingTracks => 'Đang lấy danh sách bài hát...';

  @override
  String discographyFetchingAlbum(int current, int total) {
    return 'Đang lấy dữ liệu $current of $total...';
  }

  @override
  String get discographyDownloadSelected => 'Tải các mục đã chọn';

  @override
  String discographyAddedToQueue(int count) {
    return 'Đã thêm $count bài hát vào hàng chờ';
  }

  @override
  String discographySkippedDownloaded(int added, int skipped) {
    return '$added đã thêm, $skipped đã được tải trước đó';
  }

  @override
  String get discographyNoAlbums => 'Không có album nào';

  @override
  String get discographyFailedToFetch => 'Không thể lấy thông tin một số album';

  @override
  String get sectionStorageAccess => 'Quyền truy cập bộ nhớ';

  @override
  String get allFilesAccess => 'Quyền truy cập tất cả tệp';

  @override
  String get allFilesAccessEnabledSubtitle =>
      'Có thể ghi vào bất kỳ thư mục nào';

  @override
  String get allFilesAccessDisabledSubtitle =>
      'Chỉ giới hạn trong các thư mục nhạc/media';

  @override
  String get allFilesAccessDescription =>
      'Bật tùy chọn này nếu bạn gặp lỗi ghi tệp khi lưu vào thư mục tùy chỉnh. Android 13+ mặc định hạn chế quyền truy cập vào một số thư mục.';

  @override
  String get allFilesAccessDeniedMessage =>
      'Quyền truy cập đã bị từ chối. Vui lòng bật quyền \'Truy cập tất cả tệp\' thủ công trong cài đặt hệ thống.';

  @override
  String get allFilesAccessDisabledMessage =>
      'Chưa bật quyền Truy cập tất cả tệp. Ứng dụng sẽ dùng chế độ truy cập bộ nhớ giới hạn.';

  @override
  String get settingsLocalLibrary => 'Thư viện trên máy';

  @override
  String get settingsLocalLibrarySubtitle =>
      'Quét nhạc trên máy & phát hiện bài trùng lặp';

  @override
  String get settingsCache => 'Bộ nhớ & Bộ nhớ đệm';

  @override
  String get settingsCacheSubtitle =>
      'Xem dung lượng và dọn dẹp dữ liệu bộ nhớ đệm';

  @override
  String get libraryTitle => 'Thư viện trên máy';

  @override
  String get libraryScanSettings => 'Cài đặt quét nhạc';

  @override
  String get libraryEnableLocalLibrary => 'Bật Thư viện trên máy';

  @override
  String get libraryEnableLocalLibrarySubtitle =>
      'Quét và quản lý bộ sưu tập nhạc có sẵn trên máy';

  @override
  String get libraryFolder => 'Thư mục Thư viện';

  @override
  String get libraryFolderHint => 'Chạm để chọn thư mục';

  @override
  String get libraryAddFolder => 'Thêm thư mục thư viện';

  @override
  String get libraryAddFolderSubtitle =>
      'Bộ nhớ trong, thẻ nhớ SD, ổ cứng SSD hoặc thiết bị lưu trữ ngoài khác';

  @override
  String get librarySourceOnline => 'Trực tuyến';

  @override
  String get librarySourceOffline =>
      'Đang ngoại tuyến. Hãy kết nối lại bộ nhớ để khôi phục các bài hát này';

  @override
  String get librarySourceDisabled => 'Đã tắt';

  @override
  String librarySourceScanCount(int scanned, int total, String progress) {
    return '$scanned of $total tệp đã quét ($progress%)';
  }

  @override
  String get libraryExternalStorage => 'Bộ nhớ ngoài';

  @override
  String get libraryRemoveFolder => 'Gỡ thư mục thư viện';

  @override
  String get libraryRemoveFolderMessage =>
      'Xóa thư mục này và các bài hát đã lập chỉ mục khỏi Toadplayer? Các tệp âm thanh trong bộ nhớ sẽ không bị xóa.';

  @override
  String libraryUnreadableFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Không thể đọc $count tệp',
      one: 'Không thể đọc 1 tệp',
    );
    return '$_temp0';
  }

  @override
  String get libraryUnreadableFilesTitle => 'Tệp không đọc được';

  @override
  String get libraryUnreadableFilesSubtitle =>
      'Các tệp này đã bị bỏ qua khỏi thư viện của bạn. Chúng có thể bị hỏng, đang trong quá trình tải xuống hoặc bị ứng dụng lưu trữ chặn.';

  @override
  String get libraryUnreadableFilesAction => 'Xem danh sách tệp và lý do';

  @override
  String libraryUnreadableFilesMore(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Còn $count tệp khác chưa được liệt kê',
      one: 'Còn 1 tệp khác chưa được liệt kê',
    );
    return '$_temp0';
  }

  @override
  String get libraryShowDuplicateIndicator => 'Hiện cảnh báo bài hát trùng lặp';

  @override
  String get libraryShowDuplicateIndicatorSubtitle =>
      'Hiển thị khi tìm kiếm bài hát đã có sẵn';

  @override
  String get libraryAutoScan => 'Tự động quét';

  @override
  String get libraryAutoScanSubtitle =>
      'Tự động quét thư viện để tìm các tệp nhạc mới';

  @override
  String get libraryAutoScanOff => 'Tắt';

  @override
  String get libraryAutoScanOnOpen => 'Mỗi khi mở ứng dụng';

  @override
  String get libraryAutoScanDaily => 'Hàng ngày';

  @override
  String get libraryAutoScanWeekly => 'Hàng tuần';

  @override
  String get libraryActions => 'Thao tác';

  @override
  String get libraryScan => 'Quét Thư viện';

  @override
  String get libraryScanSubtitle => 'Quét tìm tệp âm thanh';

  @override
  String get libraryScanSelectFolderFirst => 'Vui lòng chọn một thư mục trước';

  @override
  String get libraryCleanupMissingFiles => 'Dọn dẹp tệp bị thiếu';

  @override
  String get libraryCleanupMissingFilesSubtitle =>
      'Xóa các mục trong thư viện của những tệp không còn tồn tại trên bộ nhớ';

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
  String get libraryClear => 'Xóa dữ liệu Thư viện';

  @override
  String get libraryClearSubtitle =>
      'Xóa toàn bộ bài hát đã quét khỏi danh sách';

  @override
  String get libraryClearConfirmTitle => 'Xóa dữ liệu Thư viện';

  @override
  String get libraryClearConfirmMessage =>
      'Thao tác này sẽ xóa toàn bộ danh sách bài hát đã quét khỏi thư viện ứng dụng. Các tệp nhạc thực tế trong máy sẽ không bị xóa.';

  @override
  String get libraryAbout => 'Giới thiệu về Thư viện trên máy';

  @override
  String get libraryAboutDescription =>
      'Quét bộ sưu tập nhạc hiện có của bạn để phát hiện các tệp trùng lặp trong quá trình tải xuống. Hỗ trợ các định dạng FLAC, ALAC, M4A, MP3, Opus, OGG, WAV, AIFF và APE. Siêu dữ liệu (metadata) được đọc từ các thẻ (tag) của tệp nếu có.';

  @override
  String libraryTracksUnit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'bài hát',
      one: 'bài hát',
    );
    return '$_temp0';
  }

  @override
  String libraryFilesUnit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tệp',
      one: 'tệp',
    );
    return '$_temp0';
  }

  @override
  String libraryLastScanned(String time) {
    return 'Quét lần cuối: $time';
  }

  @override
  String get libraryLastScannedNever => 'Không bao giờ';

  @override
  String get libraryScanning => 'Đang quét...';

  @override
  String get libraryScanFinalizing => 'Đang hoàn tất cập nhật thư viện...';

  @override
  String get libraryScanPaused => 'Đã tạm dừng quét';

  @override
  String libraryScanProgress(String progress, int total) {
    return '$progress% trong tổng $total files';
  }

  @override
  String get libraryInLibrary => 'Đã có trong Thư viện';

  @override
  String libraryRemovedMissingFiles(int count) {
    return 'Đã xóa $count missing files from library';
  }

  @override
  String get libraryCleared => 'Đã xóa dữ liệu thư viện';

  @override
  String get libraryStorageAccessRequired => 'Cần cấp quyền truy cập bộ nhớ';

  @override
  String get libraryStorageAccessMessage =>
      'Toadplayer cần quyền truy cập bộ nhớ để quét thư viện nhạc của bạn. Vui lòng cấp quyền trong phần cài đặt.';

  @override
  String get librarySourceDownloaded => 'Đã tải xuống';

  @override
  String get librarySourceLocal => 'Trên máy';

  @override
  String get libraryFilterAll => 'Tất cả';

  @override
  String get libraryReEnrichAll => 'Cập nhật lại toàn bộ thông tin bài hát';

  @override
  String get libraryReEnrichAllSubtitle =>
      'Tìm kiếm và điền thông tin chi tiết (metadata) cho mọi bài hát trong Thư viện của bạn, sau đó xem lại các thay đổi';

  @override
  String get libraryReEnrichAllEmpty =>
      'Không có bài hát nào để cập nhật lại. Các bài hát từ kết nối mạng không được bao gồm.';

  @override
  String get libraryReEnrichAllBusy =>
      'Vui lòng chờ quá trình quét Thư viện hoàn tất, sau đó thử lại.';

  @override
  String get libraryFilterDownloaded => 'Đã tải xuống';

  @override
  String get libraryFilterLocal => 'Trên máy';

  @override
  String get libraryFilterTitle => 'Bộ lọc';

  @override
  String get libraryFilterReset => 'Đặt lại';

  @override
  String get libraryFilterApply => 'Áp dụng';

  @override
  String get libraryFilterSource => 'Nguồn';

  @override
  String get libraryFilterQuality => 'Chất lượng';

  @override
  String get libraryFilterQualityHiRes => 'Hi-Res (24-bit)';

  @override
  String get libraryFilterQualityCD => 'CD (16-bit)';

  @override
  String get libraryFilterQualityLossy => 'Nén mất dữ liệu';

  @override
  String get libraryFilterFormat => 'Định dạng';

  @override
  String get libraryFilterMetadata => 'Metadata';

  @override
  String get libraryFilterMetadataComplete => 'Metadata đầy đủ';

  @override
  String get libraryFilterMetadataMissingAny => 'Thiếu Metadata đầy đủ';

  @override
  String get libraryFilterMetadataMissingYear => 'Thiếu năm phát hành';

  @override
  String get libraryFilterMetadataMissingGenre => 'Thiếu thể loại';

  @override
  String get libraryFilterMetadataMissingAlbumArtist => 'Thiếu nghệ sĩ album';

  @override
  String get libraryFilterSort => 'Sắp xếp';

  @override
  String get libraryFilterSortLatest => 'Mới nhất';

  @override
  String get libraryFilterSortOldest => 'Cũ nhất';

  @override
  String get libraryFilterSortSizeLargest => 'Dung lượng (Lớn nhất trước)';

  @override
  String get libraryFilterSortSizeSmallest => 'Dung lượng (Nhỏ nhất trước)';

  @override
  String get libraryFilterSortAlbumAsc => 'Album (A-Z)';

  @override
  String get libraryFilterSortAlbumDesc => 'Album (Z-A)';

  @override
  String get libraryFilterSortGenreAsc => 'Thể loại (A-Z)';

  @override
  String get libraryFilterSortGenreDesc => 'Thể loại (Z-A)';

  @override
  String get timeJustNow => 'Vừa xong';

  @override
  String timeMinutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutes ago',
      one: '1 phút trước',
    );
    return '$_temp0';
  }

  @override
  String timeHoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hours ago',
      one: '1 giờ trước',
    );
    return '$_temp0';
  }

  @override
  String get tutorialWelcomeTitle => 'Chào mừng bạn đến với Toadplayer!';

  @override
  String get tutorialWelcomeDesc =>
      'Tìm hiểu cách tìm nhạc bằng các tiện ích mở rộng, chọn chất lượng mong muốn và quản lý tải xuống trong Toadplayer.';

  @override
  String get tutorialWelcomeTip1 =>
      'Tìm kiếm bằng tiện ích đã cài hoặc dán liên kết nhạc được hỗ trợ';

  @override
  String get tutorialWelcomeTip2 =>
      'Chọn chất lượng âm thanh do nguồn tải xuống cung cấp';

  @override
  String get tutorialWelcomeTip3 =>
      'Tự động nhúng metadata, ảnh bìa, lời bài hát và thông tin phát hành';

  @override
  String get tutorialSearchTitle => 'Tìm kiếm nhạc';

  @override
  String get tutorialSearchDesc =>
      'Tìm kiếm bằng tiện ích bạn đã chọn hoặc dán trực tiếp liên kết nhạc được hỗ trợ.';

  @override
  String get tutorialDownloadTitle => 'Tải nhạc';

  @override
  String get tutorialDownloadDesc =>
      'Chọn chất lượng mong muốn, bắt đầu tải về và theo dõi tiến trình ngay trong hàng chờ.';

  @override
  String get tutorialLibraryTitle => 'Thư viện của bạn';

  @override
  String get tutorialLibraryDesc =>
      'Nhạc tải về và nhạc quét từ bộ nhớ máy đều được sắp xếp gọn gàng trong Thư viện của bạn.';

  @override
  String get tutorialLibraryTip1 =>
      'Quản lý các mục đang tải, chờ tải và đã hoàn tất ngay trong hàng chờ Thư viện';

  @override
  String get tutorialLibraryTip2 =>
      'Chạm vào một bài hát để phát bằng trình phát tích hợp';

  @override
  String get tutorialLibraryTip3 =>
      'Duyệt xem bài hát, album và danh sách phát dưới dạng danh sách hoặc dạng lưới';

  @override
  String get tutorialExtensionsTitle => 'Tiện ích mở rộng';

  @override
  String get tutorialExtensionsDesc =>
      'Tiện ích mở rộng giúp bổ sung nguồn tìm kiếm, tải nhạc, metadata, lời bài hát và nhiều tích hợp khác.';

  @override
  String get tutorialExtensionsTip1 =>
      'Duyệt tab Kho tiện ích để khám phá các tiện ích mở rộng hữu ích';

  @override
  String get tutorialExtensionsTip2 =>
      'Chọn nguồn cung cấp cho việc tìm kiếm, tải nhạc, metadata và nguồn dự phòng';

  @override
  String get tutorialExtensionsTip3 =>
      'Kết nối tài khoản khi cần thiết và luôn cập nhật các tiện ích mở rộng';

  @override
  String get tutorialSettingsTitle => 'Tùy chỉnh trải nghiệm của bạn';

  @override
  String get tutorialSettingsDesc =>
      'Tinh chỉnh toàn diện cài đặt tải nhạc, trình phát, hoạt động của Thư viện, giao diện và bộ nhớ lưu trữ.';

  @override
  String get tutorialSettingsTip1 =>
      'Thay đổi vị trí lưu và cách sắp xếp thư mục tải về';

  @override
  String get tutorialSettingsTip2 =>
      'Thiết lập chất lượng, số luồng tải đồng thời, quy tắc đặt tên tệp và tùy chọn chuyển đổi';

  @override
  String get tutorialSettingsTip3 =>
      'Tùy biến giao diện và phong cách hiển thị của ứng dụng';

  @override
  String get tutorialReadyMessage =>
      'Mọi thứ đã sẵn sàng! Hãy chọn tiện ích mở rộng, sau đó tìm kiếm bài hát hoặc dán liên kết nhạc bạn muốn tải.';

  @override
  String whatsNewIntroTitle(String version) {
    return 'Toadplayer phiên bản $version đã có';
  }

  @override
  String get whatsNewIntroDesc =>
      'Bản cập nhật lớn nhất từ trước đến nay của chúng tôi. Dưới đây là cái nhìn nhanh về những điểm mới.';

  @override
  String get whatsNewLinkTitle => 'Toadplayer Link';

  @override
  String get whatsNewLinkDesc =>
      'Ghép đôi điện thoại và máy tính của bạn trên cùng một mạng. Toadplayer Link đang trong giai đoạn thử nghiệm.';

  @override
  String get whatsNewLinkPlayTitle => 'Phát nhạc trên các thiết bị';

  @override
  String get whatsNewLinkPlayBody =>
      'Duyệt qua thư viện của máy tính trên điện thoại, điều khiển nội dung đang phát và chuyển đổi quá trình phát mà không bị mất vị trí.';

  @override
  String get whatsNewLinkTransferTitle => 'Chuyển bài hát theo cả hai hướng';

  @override
  String get whatsNewLinkTransferBody =>
      'Gửi bài hát đến máy tính của bạn hoặc lưu về điện thoại, ngay từ menu bài hát.';

  @override
  String get whatsNewLinkSyncTitle => 'Đồng bộ liên tục';

  @override
  String get whatsNewLinkSyncBody =>
      'Bộ sưu tập và lịch sử nghe nhạc luôn đồng bộ trên các thiết bị đã ghép đôi.';

  @override
  String get whatsNewHomeTitle => 'Trang chủ tự học hỏi theo thói quen';

  @override
  String get whatsNewHomeDesc =>
      'Các bản hòa âm và tính năng tự động phát giờ đây sẽ tuân theo cách bạn thực sự nghe nhạc.';

  @override
  String get whatsNewHomeMixesTitle => 'Bản hòa âm từ Thư viện của bạn';

  @override
  String get whatsNewHomeMixesBody =>
      'Các bản hòa âm mới được tạo từ chính các bài hát của bạn, bao gồm một bản hòa âm cho từng thể loại.';

  @override
  String get whatsNewHomeAutoplayTitle => 'Tự động phát thông minh hơn';

  @override
  String get whatsNewHomeAutoplayBody =>
      'Tính năng tự động phát bám sát phiên nghe nhạc của bạn và học hỏi từ các bài hát yêu thích, danh sách phát cũng như các lượt phát lại.';

  @override
  String get whatsNewHomeAnalysisTitle => 'Phân tích bài hát';

  @override
  String get whatsNewHomeAnalysisBody =>
      'Toadplayer có thể phân tích âm thanh của các bài hát để đưa ra lựa chọn phù hợp hơn. Tính năng này sẽ tắt cho đến khi bạn bật nó trong phần Cài đặt.';

  @override
  String get whatsNewPlayerTitle => 'Trình phát và lời bài hát';

  @override
  String get whatsNewPlayerDesc =>
      'Phát nhạc mượt mà hơn và hiển thị lời bài hát bằng bất kỳ ngôn ngữ nào.';

  @override
  String get whatsNewPlayerGaplessTitle => 'Phát liền mạch';

  @override
  String get whatsNewPlayerGaplessBody =>
      'Các album phát liền mạch từ bài hát này sang bài hát tiếp theo mà không có khoảng dừng.';

  @override
  String get whatsNewPlayerTranslateTitle => 'Dịch lời bài hát';

  @override
  String get whatsNewPlayerTranslateBody =>
      'Sử dụng nhà cung cấp AI do bạn thiết lập để dịch hoặc phiên âm lời bài hát.';

  @override
  String get whatsNewPlayerTimingTitle => 'Căn chỉnh lời bài hát';

  @override
  String get whatsNewPlayerTimingBody =>
      'Điều chỉnh lời bài hát đồng bộ sớm hơn hoặc muộn hơn khi bị lệch so với bài hát.';

  @override
  String get whatsNewPlayerAutoTitle => 'Android Auto';

  @override
  String get whatsNewPlayerAutoBody =>
      'Duyệt và phát nhạc từ Thư viện của bạn ngay trên màn hình xe hơi.';

  @override
  String get whatsNewPlayerExclusiveTitle => 'Xuất âm thanh độc quyền';

  @override
  String get whatsNewPlayerExclusiveBody =>
      'Gửi âm thanh trực tiếp đến thiết bị đầu ra mà không qua bộ trộn của hệ thống.';

  @override
  String get whatsNewLibraryTitle => 'Thư viện và tìm kiếm';

  @override
  String get whatsNewLibraryDesc =>
      'Những cách mới để tìm kiếm và tổ chức nhạc của bạn.';

  @override
  String get whatsNewLibraryFoldersTitle => 'Duyệt theo thư mục';

  @override
  String get whatsNewLibraryFoldersBody =>
      'Khám phá Thư viện theo đúng cấu trúc lưu trữ trên đĩa.';

  @override
  String get whatsNewLibrarySuggestionsTitle => 'Gợi ý bài hát';

  @override
  String get whatsNewLibrarySuggestionsBody =>
      'Các album, đĩa đơn và danh sách phát giờ đây sẽ gợi ý những bài hát phù hợp.';

  @override
  String get whatsNewLibraryRecognizeTitle => 'Nhận diện bài hát';

  @override
  String get whatsNewLibraryRecognizeBody =>
      'Chạm vào biểu tượng micro trong mục Tìm kiếm để nhận diện bài hát đang phát xung quanh.';

  @override
  String get whatsNewLibraryPlaylistsTitle => 'Danh sách phát tốt hơn';

  @override
  String get whatsNewLibraryPlaylistsBody =>
      'Sắp xếp lại bài hát, tạo danh sách phát từ thư mục hoặc nhập tệp danh sách phát.';

  @override
  String get whatsNewFasterTitle => 'Mọi thứ nhanh hơn';

  @override
  String get whatsNewFasterDesc =>
      'Nhanh hơn và nhẹ nhàng hơn, đặc biệt là với các thư viện lớn.';

  @override
  String get whatsNewFasterLibraryTitle => 'Thư viện nhanh hơn';

  @override
  String get whatsNewFasterLibraryBody =>
      'Các thẻ và album mở nhanh hơn, cuộn trang luôn mượt mà.';

  @override
  String get whatsNewFasterNetworkTitle => 'Phát nhạc qua mạng nhanh hơn';

  @override
  String get whatsNewFasterNetworkBody =>
      'Chia sẻ mạng quét nhanh hơn nhiều và máy chủ Subsonic đồng bộ hóa với số lượng yêu cầu ít hơn hẳn.';

  @override
  String get whatsNewFasterQueueTitle => 'Hàng chờ lớn lưu trữ bền vững';

  @override
  String get whatsNewFasterQueueBody =>
      'Hàng chờ lớn lưu nhanh chóng và khôi phục lại sau khi khởi động lại.';

  @override
  String get whatsNewFasterBackgroundTitle =>
      'Ít tốn tài nguyên hơn khi chạy nền';

  @override
  String get whatsNewFasterBackgroundBody =>
      'Ứng dụng khởi động nhanh hơn và hoạt động nhẹ nhàng hơn khi đang phát nhạc.';

  @override
  String get whatsNewDone => 'Bắt đầu nghe nhạc';

  @override
  String whatsNewAboutTitle(String version) {
    return 'Có gì mới trong v$version';
  }

  @override
  String get libraryForceFullScan => 'Buộc quét lại toàn bộ';

  @override
  String get libraryForceFullScanSubtitle =>
      'Quét lại toàn bộ tệp, bỏ qua bộ nhớ đệm';

  @override
  String get cleanupOrphanedDownloads => 'Dọn dẹp mục tải về không liên kết';

  @override
  String get cleanupOrphanedDownloadsSubtitle =>
      'Xóa các mục lịch sử của những tệp nhạc không còn tồn tại trên máy';

  @override
  String cleanupOrphanedDownloadsResult(int count) {
    return 'Đã xóa $count mục không liên kết khỏi lịch sử';
  }

  @override
  String get cleanupOrphanedDownloadsNone =>
      'Không tìm thấy mục không liên kết nào';

  @override
  String get cacheTitle => 'Bộ nhớ & Bộ nhớ đệm';

  @override
  String get cacheSummaryTitle => 'Tổng quan bộ nhớ đệm';

  @override
  String get cacheSummarySubtitle =>
      'Việc xóa bộ nhớ đệm sẽ không làm mất các tệp nhạc đã tải về.';

  @override
  String cacheEstimatedTotal(String size) {
    return 'Dung lượng bộ nhớ đệm ước tính: $size';
  }

  @override
  String get cacheSectionStorage => 'Dữ liệu bộ nhớ đệm';

  @override
  String get cacheSectionMaintenance => 'Bảo trì & Dọn dẹp';

  @override
  String get cacheAppDirectory => 'Thư mục bộ nhớ đệm ứng dụng';

  @override
  String get cacheAppDirectoryDesc =>
      'Phản hồi HTTP, dữ liệu WebView và các dữ liệu tạm khác của ứng dụng.';

  @override
  String get cacheTempDirectory => 'Thư mục tạm';

  @override
  String get cacheTempDirectoryDesc =>
      'Tệp tạm phát sinh khi tải nhạc và chuyển đổi định dạng âm thanh.';

  @override
  String get cacheCoverImage => 'Bộ nhớ đệm ảnh bìa';

  @override
  String get cacheCoverImageDesc =>
      'Ảnh bìa bài hát và album đã tải về. Sẽ tự tải lại khi xem.';

  @override
  String get cacheLibraryCover => 'Bộ nhớ đệm ảnh bìa thư viện';

  @override
  String get cacheLibraryCoverDesc =>
      'Ảnh bìa trích xuất từ các tệp nhạc trên máy. Sẽ tự trích xuất lại ở lần quét tiếp theo.';

  @override
  String get libraryPlaybackNormalization => 'Chuẩn hóa âm lượng';

  @override
  String get libraryPlaybackNormalizationSubtitle =>
      'Cân bằng độ lớn âm lượng giữa các bài hát dựa trên tag ReplayGain hoặc R128 nếu có';

  @override
  String get playbackNormalizationMode => 'Chế độ khuếch đại';

  @override
  String get playbackNormalizationModeTrack => 'Bài số';

  @override
  String get playbackNormalizationModeAlbum => 'Album';

  @override
  String get playbackNormalizationPreamp => 'Tiền khuếch đại';

  @override
  String playbackNormalizationPreampValue(String gain, String target) {
    return '$gain dB (mục tiêu $target LUFS)';
  }

  @override
  String get playbackNormalizationPreampHint =>
      'Giá trị thấp hơn sẽ phát nhỏ hơn. Tính năng chuẩn hóa âm lượng chỉ giảm mức âm của bài hát nên sẽ không bao giờ bị vỡ tiếng.';

  @override
  String get cacheAudioAnalysis => 'Bộ nhớ đệm phân tích âm thanh';

  @override
  String get cacheAudioAnalysisDesc =>
      'Ảnh phổ âm thanh và kết quả phân tích đã lưu. Sẽ phân tích lại ở lần mở tiếp theo.';

  @override
  String get cacheExploreFeed => 'Bộ nhớ đệm trang Khám phá';

  @override
  String get cacheExploreFeedDesc =>
      'Nội dung tab Khám phá (nhạc mới, thịnh hành). Sẽ tự làm mới ở lần mở tiếp theo.';

  @override
  String get cacheTrackLookup => 'Bộ nhớ đệm tra cứu bài hát';

  @override
  String get cacheTrackLookupDesc =>
      'Bộ đệm tra cứu ID bài hát Spotify/Deezer. Nếu xóa, vài lượt tìm kiếm đầu tiên sau đó có thể chậm hơn một chút.';

  @override
  String get cacheCleanupUnusedDesc =>
      'Xóa lịch sử tải về không liên kết và các mục thư viện của những tệp không còn tồn tại.';

  @override
  String get cacheNoData => 'Không có dữ liệu bộ nhớ đệm';

  @override
  String cacheSizeWithFiles(String size, int count) {
    return '$size trong $count tệp';
  }

  @override
  String cacheSizeOnly(String size) {
    return '$size';
  }

  @override
  String cacheEntries(int count) {
    return '$count mục';
  }

  @override
  String cacheClearSuccess(String target) {
    return 'Đã dọn dẹp: $target';
  }

  @override
  String get cacheClearConfirmTitle => 'Xóa bộ nhớ đệm?';

  @override
  String cacheClearConfirmMessage(String target) {
    return 'Thao tác này sẽ xóa dữ liệu bộ nhớ đệm của $target. Các tệp nhạc đã tải xuống sẽ không bị xóa.';
  }

  @override
  String get cacheClearAllConfirmTitle => 'Xóa toàn bộ bộ nhớ đệm?';

  @override
  String get cacheClearAllConfirmMessage =>
      'Thao tác này sẽ xóa toàn bộ các mục bộ nhớ đệm trên trang này. Các tệp nhạc đã tải xuống sẽ không bị xóa.';

  @override
  String get cacheClearAll => 'Xóa toàn bộ bộ nhớ đệm';

  @override
  String get cacheCleanupUnused => 'Dọn dẹp dữ liệu không sử dụng';

  @override
  String get cacheCleanupUnusedSubtitle =>
      'Dọn dẹp lịch sử tải về không liên kết và các mục thư viện bị mất tệp';

  @override
  String cacheCleanupResult(int downloadCount, int libraryCount) {
    return 'Đã dọn dẹp xong: $downloadCount mục tải về không liên kết, $libraryCount mục thư viện bị thiếu tệp';
  }

  @override
  String get cacheRefreshStats => 'Làm mới thống kê';

  @override
  String get trackSaveCoverArt => 'Lưu ảnh bìa';

  @override
  String get trackSaveLyrics => 'Lưu lời bài hát (.lrc)';

  @override
  String get trackSaveLyricsProgress => 'Đang lưu lời bài hát...';

  @override
  String get trackReEnrich => 'Tái làm giàu dữ liệu';

  @override
  String get trackReEnrichBatchSubtitle =>
      'Chọn cập nhật trực tuyến hoặc chỉnh sửa thủ công, sau đó kiểm tra lại từng thay đổi trước khi ghi vào tệp';

  @override
  String get trackReEnrichFieldCover => 'Ảnh bìa';

  @override
  String get trackReEnrichFieldLyrics => 'Lời bài hát';

  @override
  String get trackReEnrichFieldBasicTags => 'Album, Nghệ sĩ album';

  @override
  String get trackReEnrichFieldTrackInfo => 'Số thứ tự Bài & Đĩa';

  @override
  String get trackReEnrichFieldReleaseInfo => 'Ngày phát hành & ISRC';

  @override
  String get trackReEnrichFieldExtra => 'Thể loại, Hãng đĩa, Bản quyền';

  @override
  String get trackReEnrichSelectAll => 'Chọn tất cả';

  @override
  String get trackReEnrichModeIsrc => 'Chỉ mã ISRC';

  @override
  String get trackReEnrichModeIsrcSubtitle =>
      'Tìm và bổ sung mã định danh bản thu mà không làm thay đổi các tag khác';

  @override
  String get trackReEnrichModeMissing => 'Điền các tag còn thiếu';

  @override
  String get trackReEnrichModeMissingSubtitle =>
      'Giữ nguyên các giá trị sẵn có và chỉ điền vào những trường đang trống';

  @override
  String get trackReEnrichModeReplace =>
      'Giữ nguyên các giá trị sẵn có và chỉ điền vào những trường đang trống';

  @override
  String get trackReEnrichModeReplaceSubtitle =>
      'Chọn những trường dữ liệu nào được phép ghi đè bởi metadata trực tuyến';

  @override
  String get trackReEnrichModeManual => 'Thiết lập giá trị chung';

  @override
  String get trackReEnrichModeManualSubtitle =>
      'Áp dụng cùng một giá trị chung cho tất cả bài hát đã chọn';

  @override
  String get trackReEnrichManualFieldsTitle => 'Giá trị sẽ áp dụng';

  @override
  String get trackReEnrichManualHint =>
      'Để trống trường nếu muốn giữ nguyên giá trị hiện tại. Tên bài hát, số thứ tự bài và mã ISRC sẽ không thay đổi.';

  @override
  String get trackReEnrichFieldsTitle => 'Các tag cần cập nhật';

  @override
  String get trackReEnrichReview => 'Xem lại thay đổi';

  @override
  String get trackReEnrichReviewTitle => 'Xem lại các thay đổi metadata';

  @override
  String trackReEnrichReviewSubtitle(int changeCount, int trackCount) {
    return '$changeCount thay đổi đề xuất trên $trackCount tracks';
  }

  @override
  String get trackReEnrichNoChanges =>
      'Không có thay đổi metadata nào cho các bài hát đã chọn.';

  @override
  String get trackReEnrichApplyChanges => 'Áp dụng thay đổi';

  @override
  String get trackReEnrichRefreshOnline => 'Làm mới từ trực tuyến';

  @override
  String get trackEditMetadata => 'Chỉnh sửa Metadata';

  @override
  String trackCoverSaved(String fileName) {
    return 'Đã lưu ảnh bìa vào $fileName';
  }

  @override
  String get trackCoverNoSource => 'Không có nguồn ảnh bìa khả dụng';

  @override
  String trackLyricsSaved(String fileName) {
    return 'Đã lưu lời bài hát vào $fileName';
  }

  @override
  String get trackReEnrichProgress => 'Đang làm giàu lại metadata...';

  @override
  String get trackReEnrichSearching => 'Đang tìm kiếm metadata trực tuyến...';

  @override
  String get trackReEnrichPreparing => 'Đang chuẩn bị thay đổi metadata...';

  @override
  String get trackReEnrichSuccess => 'Đã làm giàu lại metadata thành công';

  @override
  String get trackReEnrichMetadataSaved =>
      'Lược bỏ tên nghệ sĩ góp giọng khỏi tên thư mục (ví dụ: Justin Bieber, Quavo → Justin Bieber)';

  @override
  String get trackReEnrichLyricsUpdated => 'Đã cập nhật lời bài hát';

  @override
  String get trackReEnrichLyricsPreserved =>
      'Không tìm thấy lời bài hát mới; giữ nguyên lời hiện tại';

  @override
  String get trackReEnrichLyricsDisabled =>
      'Chưa cập nhật lời bài hát: tính năng tải lời bài hát đang tắt trong Cài đặt';

  @override
  String get trackReEnrichFfmpegFailed => 'Nhúng metadata bằng FFmpeg thất bại';

  @override
  String get queueFlacAction => 'Đưa bản FLAC vào hàng chờ';

  @override
  String queueFlacConfirmMessage(int count) {
    return 'Tìm bản nhạc khớp trực tuyến cho các bài đã chọn và đưa bản tải FLAC vào hàng chờ.\n\nCác tệp hiện có sẽ không bị sửa đổi hay xóa đi.\n\nChỉ những kết quả có độ chính xác cao mới được tự động thêm vào hàng chờ.\n\n$count đã chọn';
  }

  @override
  String get queueFlacNoReliableMatches =>
      'Không tìm thấy kết quả trực tuyến nào đủ tin cậy cho mục đã chọn';

  @override
  String queueFlacQueuedWithSkipped(int addedCount, int skippedCount) {
    return 'Đã thêm $addedCount bài vào hàng chờ, đã bỏ qua $skippedCount';
  }

  @override
  String trackSaveFailed(String error) {
    return 'Thất bại: $error';
  }

  @override
  String get trackConvertFormat => 'Chuyển đổi định dạng';

  @override
  String get trackConvertTitle => 'Chuyển đổi âm thanh';

  @override
  String get trackConvertTargetFormat => 'Định dạng đích';

  @override
  String get trackConvertBitrate => 'Tốc độ bit';

  @override
  String get trackConvertKeepOriginal => 'Giữ lại tệp gốc';

  @override
  String get trackConvertKeepOriginalDescription =>
      'Thêm tệp sau khi chuyển đổi thành một mục riêng trong thư viện';

  @override
  String get trackConvertConfirmTitle => 'Xác nhận chuyển đổi';

  @override
  String trackConvertConfirmMessage(
    String sourceFormat,
    String targetFormat,
    String bitrate,
  ) {
    return 'Chuyển đổi từ $sourceFormat to $targetFormat at $bitrate?\n\nTệp gốc sẽ bị xóa sau khi chuyển đổi.';
  }

  @override
  String trackConvertConfirmMessageLossless(
    String sourceFormat,
    String targetFormat,
  ) {
    return 'Chuyển đổi từ $sourceFormat to $targetFormat? (Lossless — không suy giảm chất lượng)\n\nTệp gốc sẽ bị xóa sau khi chuyển đổi.';
  }

  @override
  String trackConvertConfirmKeepOriginal(
    String sourceFormat,
    String targetFormat,
  ) {
    return 'Chuyển đổi từ $sourceFormat to $targetFormat?\n\nTệp gốc sẽ được giữ nguyên và tệp sau khi chuyển đổi sẽ được thêm thành mục riêng trong thư viện.';
  }

  @override
  String get trackConvertLosslessHint =>
      'Chuyển đổi Lossless — giữ nguyên 100% chất lượng';

  @override
  String get trackConvertConverting => 'Đang chuyển đổi định dạng âm thanh...';

  @override
  String trackConvertSuccess(String format) {
    return 'Đã chuyển đổi sang $format thành công';
  }

  @override
  String get trackConvertFailed => 'Chuyển đổi định dạng thất bại';

  @override
  String get cueSplitTitle => 'Tách tệp CUE Sheet';

  @override
  String cueSplitAlbum(String album) {
    return 'Album: $album';
  }

  @override
  String cueSplitArtist(String artist) {
    return 'Nghệ sĩ: $artist';
  }

  @override
  String cueSplitTrackCount(int count) {
    return '$count bài hát';
  }

  @override
  String get cueSplitConfirmTitle => 'Tách Album CUE';

  @override
  String cueSplitConfirmMessage(String album, int count) {
    return 'Tách \"$album\" thành $count tệp FLAC riêng lẻ?\n\nCác tệp sau khi tách sẽ được lưu trong cùng thư mục.';
  }

  @override
  String cueSplitSplitting(int current, int total) {
    return 'Đang tách tệp CUE sheet... ($current/$total)';
  }

  @override
  String cueSplitSuccess(int count) {
    return 'Tách thành $count bài hát thành công';
  }

  @override
  String get cueSplitFailed => 'Tách tệp CUE thất bại';

  @override
  String get cueSplitNoAudioFile =>
      'Không tìm thấy tệp âm thanh gốc cho tệp CUE sheet này';

  @override
  String get cueSplitButton => 'Tách thành từng bài';

  @override
  String get actionCreate => 'Tạo mới';

  @override
  String get collectionFoldersTitle => 'Thư mục của tôi';

  @override
  String get collectionWishlist => 'Danh sách chờ';

  @override
  String get collectionLoved => 'Yêu thích';

  @override
  String get collectionFavoriteArtists => 'Nghệ sĩ yêu thích';

  @override
  String get collectionPlaylist => 'Danh sách phát';

  @override
  String get collectionAddToPlaylist => 'Thêm vào danh sách phát';

  @override
  String get collectionCreatePlaylist => 'Tạo danh sách phát';

  @override
  String get collectionNoPlaylistsYet => 'Chưa có danh sách phát nào';

  @override
  String collectionPlaylistTracks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tracks',
      one: '1 bài hát',
    );
    return '$_temp0';
  }

  @override
  String collectionArtistCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count artists',
      one: '1 nghệ sĩ',
    );
    return '$_temp0';
  }

  @override
  String collectionAddedToPlaylist(String playlistName) {
    return 'Đã thêm vào \"$playlistName“';
  }

  @override
  String collectionAlreadyInPlaylist(String playlistName) {
    return 'Đã có sẵn trong \"$playlistName“';
  }

  @override
  String get collectionPlaylistNameHint => 'Tên danh sách phát';

  @override
  String get collectionPlaylistNameRequired =>
      'Vui lòng nhập tên danh sách phát';

  @override
  String get collectionRenamePlaylist => 'Đổi tên danh sách phát';

  @override
  String get collectionDeletePlaylist => 'Xóa danh sách phát';

  @override
  String get collectionPlaylistRenamed => 'Đã đổi tên danh sách phát';

  @override
  String get collectionWishlistEmptyTitle => 'Danh sách chờ đang trống';

  @override
  String get collectionWishlistEmptySubtitle =>
      'Chạm nút + trên bài hát để lưu vào danh sách chờ tải sau';

  @override
  String get collectionLovedEmptyTitle => 'Mục Yêu thích đang trống';

  @override
  String get collectionLovedEmptySubtitle =>
      'Chạm biểu tượng trái tim trên bài hát để lưu vào mục Yêu thích';

  @override
  String get collectionFavoriteArtistsEmptyTitle =>
      'Chưa có nghệ sĩ yêu thích nào';

  @override
  String get collectionFavoriteArtistsEmptySubtitle =>
      'Chạm vào biểu tượng trái tim trên trang nghệ sĩ để lưu họ vào đây';

  @override
  String get collectionPlaylistEmptyTitle => 'Danh sách phát đang trống';

  @override
  String get collectionPlaylistEmptySubtitle =>
      'Nhấn giữ nút + trên bất kỳ bài hát nào để thêm vào đây';

  @override
  String get collectionRemoveFromPlaylist => 'Xóa khỏi danh sách phát';

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
  String get collectionRemoveFromFolder => 'Xóa khỏi thư mục';

  @override
  String collectionAddedToLoved(String trackName) {
    return '“$trackName\" đã được thêm vào Yêu thích';
  }

  @override
  String collectionRemovedFromLoved(String trackName) {
    return '“$trackName\" đã được xóa khỏi Yêu thích';
  }

  @override
  String collectionAddedToWishlist(String trackName) {
    return '“$trackName\" đã được thêm vào Wishlist';
  }

  @override
  String collectionRemovedFromWishlist(String trackName) {
    return '“$trackName\" đã được xóa khỏi Danh sách chờ';
  }

  @override
  String collectionAddedToFavoriteArtists(String artistName) {
    return '“$artistName\" đã được thêm vào Nghệ sĩ yêu thích';
  }

  @override
  String collectionRemovedFromFavoriteArtists(String artistName) {
    return '“$artistName\" đã được xóa khỏi Nghệ sĩ yêu thích';
  }

  @override
  String get trackOptionAddToLoved => 'Thêm vào Yêu thích';

  @override
  String get trackOptionRemoveFromLoved => 'Xóa khỏi Yêu thích';

  @override
  String get trackOptionAddToWishlist => 'Thêm vào Danh sách chờ';

  @override
  String get trackOptionRemoveFromWishlist => 'Xóa khỏi Danh sách chờ';

  @override
  String get artistOptionAddToFavorites => 'Thêm vào Nghệ sĩ yêu thích';

  @override
  String get artistOptionRemoveFromFavorites => 'Xóa khỏi Nghệ sĩ yêu thích';

  @override
  String get collectionPlaylistChangeCover => 'Đổi ảnh bìa';

  @override
  String get collectionPlaylistRemoveCover => 'Xóa ảnh bìa';

  @override
  String selectionConvertCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    return 'Chuyển đổi $count $_temp0';
  }

  @override
  String get selectionConvertNoConvertible =>
      'Chưa chọn bài hát nào có thể chuyển đổi';

  @override
  String get selectionBatchConvertConfirmTitle => 'Chuyển đổi hàng loạt';

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
    return 'Chuyển đổi $count $_temp0 to $format at $bitrate?\n\nCác tệp gốc sẽ bị xóa sau khi chuyển đổi.';
  }

  @override
  String selectionBatchConvertConfirmMessageLossless(int count, String format) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    return 'Chuyển đổi $count $_temp0 to $format? (Lossless — không suy giảm chất lượng)\n\nCác tệp gốc sẽ bị xóa sau khi chuyển đổi.';
  }

  @override
  String selectionBatchConvertConfirmKeepOriginal(int count, String format) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    return 'Chuyển đổi $count $_temp0 to $format?\n\nCác tệp gốc sẽ được giữ nguyên và tệp sau khi chuyển đổi sẽ được thêm thành mục riêng trong thư viện.';
  }

  @override
  String selectionBatchConvertSuccess(int success, int total, String format) {
    return 'Đã chuyển đổi $success of $total bài hát sang $format';
  }

  @override
  String downloadedAlbumDownloadedCount(int count) {
    return '$count đã tải xuống';
  }

  @override
  String get downloadUseAlbumArtistForFoldersAlbumSubtitle =>
      'Đặt tên thư mục theo tag Nghệ sĩ album';

  @override
  String get downloadUseAlbumArtistForFoldersTrackSubtitle =>
      'Đặt tên thư mục theo tag Nghệ sĩ bài hát';

  @override
  String get lyricsProvidersTitle => 'Thứ tự ưu tiên nguồn lời bài hát';

  @override
  String get lyricsProvidersDescription =>
      'Bật, tắt và sắp xếp thứ tự nguồn lời bài hát. Ứng dụng sẽ tìm lần lượt từ trên xuống dưới cho đến khi có lời.';

  @override
  String get lyricsProvidersInfoText =>
      'Nguồn lời bài hát từ tiện ích mở rộng sẽ được ưu tiên chạy trước các nguồn tích hợp sẵn. Phải bật ít nhất một nguồn.';

  @override
  String lyricsProvidersEnabledSection(int count) {
    return 'Đã bật ($count)';
  }

  @override
  String lyricsProvidersDisabledSection(int count) {
    return 'Đã tắt ($count)';
  }

  @override
  String get lyricsProvidersAtLeastOne => 'Phải bật ít nhất một nguồn cung cấp';

  @override
  String get lyricsProvidersSaved => 'Đã lưu thứ tự ưu tiên nguồn lời bài hát';

  @override
  String get lyricsProvidersDiscardContent =>
      'Bạn có thay đổi chưa lưu, nếu thoát sẽ bị mất.';

  @override
  String get lyricsProviderLrclibDesc =>
      'Cơ sở dữ liệu lời bài hát đồng bộ mã nguồn mở';

  @override
  String get lyricsProviderNeteaseDesc =>
      'NetEase Cloud Music (tốt cho nhạc châu Á)';

  @override
  String get lyricsProviderMusixmatchDesc =>
      'Cơ sở dữ liệu lời bài hát lớn nhất (hỗ trợ đa ngôn ngữ)';

  @override
  String get lyricsProviderAppleMusicDesc =>
      'Lời bài hát đồng bộ từng chữ (qua proxy)';

  @override
  String get lyricsProviderQqMusicDesc =>
      'QQ Music (tốt cho nhạc Hoa, API trực tiếp)';

  @override
  String get lyricsProviderLyricsPlusDesc =>
      'Lời bài hát karaoke theo từng chữ (Apple/Musixmatch/Spotify/QQ, qua proxy)';

  @override
  String get lyricsProviderToadLrcDesc =>
      'Lời bài hát theo từng chữ Apple Music từ nguồn Toad-LRC';

  @override
  String get lyricsProviderLrcRedDesc =>
      'Lời bài hát theo từng chữ từ Apple Music, khớp theo bản thu âm';

  @override
  String get lyricsProviderBetterLyricsDesc =>
      'Lời bài hát từng chữ từ Apple Music cho các ca khúc phổ biến';

  @override
  String get lyricsProviderExtensionDesc => 'Nguồn từ tiện ích mở rộng';

  @override
  String get safMigrationTitle => 'Cần cập nhật quyền truy cập bộ nhớ';

  @override
  String get safMigrationMessage1 =>
      'Toadplayer hiện sử dụng Android Storage Access Framework (SAF) cho các lượt tải xuống. Điều này giúp khắc phục lỗi \"permission denied\" trên Android 10 trở lên.';

  @override
  String get safMigrationMessage2 =>
      'Vui lòng chọn lại thư mục tải xuống để chuyển sang hệ thống lưu trữ mới.';

  @override
  String get safMigrationSuccess =>
      'Đã cập nhật thư mục tải về sang chế độ SAF';

  @override
  String get settingsDonate => 'Ủng hộ nhà phát triển';

  @override
  String get settingsDonateSubtitle => 'Mời nhà phát triển một ly cà phê';

  @override
  String get settingsBackup => 'Sao lưu & Khôi phục';

  @override
  String get settingsBackupSubtitle =>
      'Chuyển thư viện, lịch sử và cài đặt của bạn sang thiết bị mới';

  @override
  String get backupTitle => 'Sao lưu & Khôi phục';

  @override
  String get backupExportSectionTitle => 'Tạo bản sao lưu';

  @override
  String get backupExportSectionDescription =>
      'Lưu toàn bộ cài đặt, lịch sử tải nhạc, bài hát yêu thích, danh sách chờ, nghệ sĩ yêu thích và danh sách phát vào một tệp duy nhất để cất giữ hoặc chuyển sang điện thoại khác.';

  @override
  String get backupExportButton => 'Tạo tệp sao lưu';

  @override
  String get backupImportSectionTitle => 'Khôi phục bản sao lưu';

  @override
  String get backupImportSectionDescription =>
      'Chọn tệp sao lưu để khôi phục dữ liệu. Thao tác này sẽ thay thế cài đặt, lịch sử và thư viện hiện tại trên thiết bị.';

  @override
  String get backupImportButton => 'Chọn tệp sao lưu';

  @override
  String get backupCreated => 'Đã tạo bản sao lưu';

  @override
  String get backupCreateFailed => 'Không thể tạo bản sao lưu';

  @override
  String get backupRestoreConfirmTitle => 'Khôi phục bản sao lưu này?';

  @override
  String get backupRestoreConfirmButton => 'Khôi phục';

  @override
  String get backupRestored => 'Đã khôi phục bản sao lưu thành công';

  @override
  String get backupRestoreFailed => 'Khôi phục bản sao lưu thất bại';

  @override
  String get backupInvalidFile =>
      'Tệp này không phải là bản sao lưu Toadplayer hợp lệ';

  @override
  String get backupRestoreRestartHint =>
      'Hãy khởi động lại ứng dụng để đảm bảo mọi thay đổi được áp dụng đầy đủ.';

  @override
  String get backupContentsTitle => 'Nội dung bản sao lưu';

  @override
  String get backupSettingsOnly => 'Chỉ cài đặt ứng dụng';

  @override
  String get backupSelectHistory => 'Lịch sử tải xuống';

  @override
  String get backupSelectCollections => 'Bộ sưu tập thư viện';

  @override
  String get backupSelectCollectionsDescription =>
      'Bài hát yêu thích, danh sách chờ, nghệ sĩ yêu thích, danh sách phát và ảnh bìa danh sách phát.';

  @override
  String get backupSelectExtensions => 'Tiện ích mở rộng và cài đặt của chúng';

  @override
  String get backupSelectedExportDescription =>
      'Lưu các danh mục đã chọn vào một tệp sao lưu. Không bao gồm các tệp âm thanh.';

  @override
  String get backupSelectAtLeastOne =>
      'Hãy chọn ít nhất một danh mục để tạo bản sao lưu.';

  @override
  String get backupSelectedRestoreMessage =>
      'Chỉ những danh mục liệt kê bên dưới mới được khôi phục. Các danh mục không có trong bản sao lưu này sẽ giữ nguyên. Việc khôi phục có thể ghi đè dữ liệu hiện tại và không thể hoàn tác.';

  @override
  String get backupContentsSettings => 'Cài đặt ứng dụng';

  @override
  String backupContentsHistory(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mục',
      one: 'mục',
    );
    return '$count $_temp0 trong lịch sử';
  }

  @override
  String backupContentsLiked(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'bài hát',
      one: 'bài hát',
    );
    return '$count $_temp0 đã thích';
  }

  @override
  String backupContentsWishlist(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'bài hát',
      one: 'bài hát',
    );
    return '$count $_temp0 trong danh sách mong muốn';
  }

  @override
  String backupContentsPlaylists(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count danh sách phát',
      one: '1 danh sách phát',
    );
    return '$_temp0';
  }

  @override
  String backupContentsArtists(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count favorite artists',
      one: '1 nghệ sĩ yêu thích',
    );
    return '$_temp0';
  }

  @override
  String backupContentsExtensions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count extensions',
      one: '1 tiện ích mở rộng',
    );
    return '$_temp0';
  }

  @override
  String get backupIncludeSecrets => 'Bao gồm thông tin đăng nhập tiện ích';

  @override
  String get backupIncludeSecretsDescription =>
      'Token và khóa API của các tiện ích sẽ được lưu kèm trong tệp sao lưu. Hãy bảo mật tệp này. Nếu tắt, bạn sẽ cần nhập lại sau khi khôi phục.';

  @override
  String backupExtensionsRestoreFailed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'extensions',
      one: 'tiện ích mở rộng',
    );
    return '$count $_temp0 could not be reinstalled. Install them manually from the repo.';
  }

  @override
  String get tooltipLoveAll => 'Thích tất cả';

  @override
  String get tooltipAddToPlaylist => 'Thêm vào danh sách phát';

  @override
  String snackbarRemovedTracksFromLoved(int count) {
    return 'Đã xóa $count bài hát khỏi mục Yêu thích';
  }

  @override
  String snackbarAddedTracksToLoved(int count) {
    return 'Đã thêm $count bài hát vào mục Yêu thích';
  }

  @override
  String get dialogDownloadAllTitle => 'Tải xuống tất cả';

  @override
  String dialogDownloadAllMessage(int count) {
    return 'Tải xuống $count bài hát?';
  }

  @override
  String get homeSkipAlreadyDownloaded => 'Bỏ qua những bài hát đã tải';

  @override
  String get homeGoToAlbum => 'Đi tới Album';

  @override
  String get homeAlbumInfoUnavailable => 'Chưa có thông tin album';

  @override
  String get snackbarLoadingCueSheet => 'Đang đọc tệp CUE sheet...';

  @override
  String get snackbarMetadataSaved => 'Đã lưu metadata thành công';

  @override
  String get snackbarFailedToEmbedLyrics => 'Nhúng lời bài hát thất bại';

  @override
  String get snackbarFailedToWriteStorage =>
      'Không thể ghi dữ liệu trở lại bộ nhớ';

  @override
  String snackbarError(String error) {
    return 'Lỗi: $error';
  }

  @override
  String get snackbarNoActionDefined => 'Chưa gán thao tác cho nút này';

  @override
  String get noTracksFoundForAlbum =>
      'Không tìm thấy bài hát nào trong album này';

  @override
  String get downloadLocationSubtitle => 'Chọn thư mục lưu các bài hát tải về';

  @override
  String get storageAutomaticFolder => 'Thư mục tự động';

  @override
  String get storageAutomaticDownloadFolder =>
      'Sử dụng thư mục Download/Toadplayer khi có quyền ghi, nếu không sẽ dùng bộ nhớ của ứng dụng';

  @override
  String get storageSafRecommended => 'Tự chọn thư mục (Khuyên dùng)';

  @override
  String get storageDownloadFolderHint =>
      'Trong trình chọn thư mục của Android, hãy mở thư mục Download và chọn Toadplayer. Nếu chưa có, hãy tạo mới bằng nút \"Thư mục mới\", sau đó nhấn \"Dùng thư mục này\" để cấp quyền truy cập.';

  @override
  String get downloadFolderAccessLostTitle =>
      'Mất quyền truy cập thư mục tải xuống';

  @override
  String get downloadFolderAccessLostSubtitle =>
      'Tải xuống sẽ bị lỗi cho đến khi bạn chọn lại thư mục';

  @override
  String get downloadFolderReselect => 'Chọn lại thư mục';

  @override
  String get downloadErrorSafPermissionLost =>
      'Quyền truy cập SAF không hợp lệ hoặc đã bị thu hồi. Vui lòng cấu hình lại thư mục tải về trong Cài đặt.';

  @override
  String get downloadErrorFolderAccessLost =>
      'Đã mất quyền truy cập thư mục tải xuống. Vui lòng chọn lại thư mục tải xuống trong Cài đặt.';

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
    return 'Sử dụng các biến $artist, $title, $album, $track, $year, $date, $disc để đặt mẫu tên.';
  }

  @override
  String get downloadFilenameInsertTag => 'Chạm để chèn tag:';

  @override
  String get downloadSeparateSinglesEnabled =>
      'Lưu đĩa đơn và EP vào thư mục riêng';

  @override
  String get downloadSeparateSinglesDisabled =>
      'Lưu chung đĩa đơn và album trong cùng một thư mục';

  @override
  String get downloadArtistNameFilters => 'Bộ lọc tên nghệ sĩ';

  @override
  String get downloadCreatePlaylistSourceFolder =>
      'Thư mục nguồn tạo danh sách phát';

  @override
  String get downloadCreatePlaylistSourceFolderEnabled =>
      'Tạo một thư mục con riêng cho mỗi danh sách phát';

  @override
  String get downloadCreatePlaylistSourceFolderDisabled =>
      'Lưu trực tiếp tất cả bài hát vào chung thư mục tải xuống';

  @override
  String get downloadCreatePlaylistSourceFolderRedundant =>
      'Được quản lý theo cài đặt Sắp xếp thư mục';

  @override
  String get downloadSongLinkRegion => 'Phân vùng quốc gia SongLink';

  @override
  String get downloadNetworkCompatibilityMode => 'Chế độ tương thích mạng';

  @override
  String get downloadNetworkCompatibilityModeEnabled =>
      'Cho phép kết nối HTTP cũ; xác thực bảo mật TLS vẫn được giữ bật';

  @override
  String get downloadNetworkCompatibilityModeDisabled =>
      'Đang dùng cài đặt mạng tiêu chuẩn';

  @override
  String get downloadAllowLocalNetwork => 'Cho phép truy cập mạng nội bộ';

  @override
  String get downloadAllowLocalNetworkEnabled =>
      'Cho phép kết nối tới địa chỉ mạng nội bộ/riêng tư (dành cho proxy nội bộ hoặc DNS tùy chỉnh)';

  @override
  String get downloadAllowLocalNetworkDisabled =>
      'Đã chặn truy cập địa chỉ mạng nội bộ/riêng tư để đảm bảo an toàn bảo mật';

  @override
  String get downloadSelectServiceToEnable =>
      'Hãy chọn một nguồn có hỗ trợ tùy chọn chất lượng để bật tính năng này';

  @override
  String get downloadEmbedLyricsDisabled =>
      'Vui lòng bật tính năng Nhúng metadata trước';

  @override
  String get downloadNeteaseIncludeTranslation => 'NetEase: Kèm bản dịch';

  @override
  String get downloadNeteaseIncludeTranslationEnabled =>
      'Bao gồm dòng dịch tiếng Trung';

  @override
  String get downloadNeteaseIncludeTranslationDisabled =>
      'Chỉ hiện lời bài hát gốc';

  @override
  String get downloadNeteaseIncludeRomanization =>
      'NetEase: Kèm phiên âm Latinh';

  @override
  String get downloadNeteaseIncludeRomanizationEnabled =>
      'Bao gồm dòng phiên âm Latinh';

  @override
  String get downloadNeteaseIncludeRomanizationDisabled =>
      'Không có phiên âm Latinh';

  @override
  String get downloadAppleQqMultiPerson =>
      'Apple / QQ: Lời bài hát nhiều người hát';

  @override
  String get downloadAppleQqMultiPersonEnabled =>
      'Hiển thị tên người hát cho các bài song ca và nhạc nhóm';

  @override
  String get downloadAppleQqMultiPersonDisabled =>
      'Chỉ có nội dung lời bài hát, không kèm tên người hát hay chú thích';

  @override
  String get downloadAppleElrcWordSync =>
      'Đồng bộ từng chữ eLRC của Apple Music';

  @override
  String get downloadAppleElrcWordSyncEnabled =>
      'Giữ nguyên mốc thời gian từng chữ gốc';

  @override
  String get downloadAppleElrcWordSyncDisabled =>
      'Lời bài hát theo từng dòng từ Apple Music';

  @override
  String get downloadMusixmatchLanguage => 'Ngôn ngữ dịch Musixmatch';

  @override
  String get downloadMusixmatchLanguageAuto => 'Tự động (ngôn ngữ gốc)';

  @override
  String get downloadFilterContributing => 'Lọc nghệ sĩ góp giọng';

  @override
  String get downloadFilterContributingEnabled =>
      'Đã lược bỏ nghệ sĩ góp giọng khỏi tên thư mục Nghệ sĩ album';

  @override
  String get downloadFilterContributingDisabled =>
      'Sử dụng nguyên chuỗi Nghệ sĩ album đầy đủ';

  @override
  String get downloadProvidersNoneEnabled => 'Chưa bật nguồn cung cấp nào';

  @override
  String get downloadMusixmatchLanguageCode => 'Mã ngôn ngữ';

  @override
  String get downloadMusixmatchLanguageHint => 'ví dụ: vi, en, ja';

  @override
  String get downloadMusixmatchLanguageDesc =>
      'Nhập mã ngôn ngữ chuẩn BCP-47 (ví dụ: vi, en, ja) để yêu cầu bản dịch lời bài hát từ Musixmatch.';

  @override
  String get downloadMusixmatchAuto => 'Tự động';

  @override
  String get downloadNetworkAnySubtitle => 'Sử dụng Wi-Fi hoặc dữ liệu di động';

  @override
  String get downloadNetworkWifiOnlySubtitle =>
      'Tự động tạm dừng tải khi dùng dữ liệu di động';

  @override
  String get downloadSongLinkRegionDesc =>
      'Quốc gia dùng để phân giải liên kết nhạc qua SongLink. Hãy chọn quốc gia nơi các dịch vụ nhạc trực tuyến của bạn hoạt động.';

  @override
  String get snackbarUnsupportedAudioFormat =>
      'Định dạng âm thanh không được hỗ trợ';

  @override
  String get cacheRefresh => 'Làm mới';

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
    return 'Tải xuống $trackCount $_temp0 from $playlistCount $_temp1?';
  }

  @override
  String bulkDownloadPlaylistsButton(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'playlists',
      one: 'playlist',
    );
    return 'Tải xuống $count $_temp0';
  }

  @override
  String get bulkDownloadSelectPlaylists =>
      'Chọn danh sách phát muốn tải xuống';

  @override
  String get snackbarSelectedPlaylistsEmpty =>
      'Danh sách phát đã chọn không có bài hát nào';

  @override
  String playlistsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count danh sách phát',
      one: '1 danh sách phát',
    );
    return '$_temp0';
  }

  @override
  String get editMetadataAutoFill => 'Tự động điền từ trực tuyến';

  @override
  String get editMetadataAutoFillDesc =>
      'Chọn một tiện ích metadata, đánh dấu các trường cần lấy, sau đó kiểm tra lại dữ liệu trước khi áp dụng';

  @override
  String get editMetadataAutoFillSource => 'Nguồn metadata';

  @override
  String get editMetadataAutoFillSourceAutomatic =>
      'Tự động (theo thứ tự ưu tiên nguồn)';

  @override
  String get editMetadataAutoFillFind => 'Tìm metadata';

  @override
  String editMetadataAutoFillPreview(String source) {
    return 'Dữ liệu từ $source';
  }

  @override
  String get editMetadataAutoFillCoverAvailable => 'Có sẵn ảnh bìa';

  @override
  String get editMetadataAutoFillApply => 'Áp dụng dữ liệu đã chọn';

  @override
  String editMetadataAutoFillDoneFromSource(int count, String source) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'trường',
      one: 'field',
    );
    return 'Filled $count $_temp0 from $source';
  }

  @override
  String get editMetadataAutoFillSearching => 'Đang tìm kiếm trực tuyến...';

  @override
  String get editMetadataAutoFillNoResults =>
      'Không tìm thấy metadata khớp trên mạng';

  @override
  String get editMetadataAutoFillNoneSelected =>
      'Chọn ít nhất một trường để tự động điền';

  @override
  String get editMetadataLyricsSearch => 'Tìm lời bài hát trực tuyến';

  @override
  String get lyricsPickerTitle => 'Chọn lời bài hát';

  @override
  String get lyricsPickerNeedsTitle =>
      'Vui lòng nhập tên bài hát và nghệ sĩ trước';

  @override
  String get lyricsPickerNoProviders =>
      'Chưa bật nguồn cung cấp lời bài hát nào. Hãy bật trong Cài đặt > Lời bài hát.';

  @override
  String get lyricsPickerWordSynced => 'Đồng bộ từng từ';

  @override
  String get lyricsPickerSynced => 'Đồng bộ';

  @override
  String get lyricsPickerPlain => 'Văn bản thuần tuý';

  @override
  String get lyricsPickerInstrumental => 'Nhạc không lời';

  @override
  String get lyricsPickerNotFound => 'Không tìm thấy lời bài hát';

  @override
  String lyricsPickerLineCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dòng',
      one: '1 dòng',
    );
    return '$_temp0';
  }

  @override
  String get editMetadataFieldTitle => 'Tiêu đề';

  @override
  String get editMetadataFieldArtist => 'Nghệ sĩ';

  @override
  String get editMetadataFieldAlbum => 'Album';

  @override
  String get editMetadataFieldAlbumArtist => 'Nghệ sĩ album';

  @override
  String get editMetadataFieldDate => 'Ngày phát hành';

  @override
  String get editMetadataFieldTrackNum => 'Bài số #';

  @override
  String get editMetadataFieldDiscNum => 'Đĩa số #';

  @override
  String get editMetadataFieldGenre => 'Thể loại';

  @override
  String get editMetadataFieldIsrc => 'ISRC';

  @override
  String get editMetadataFieldLabel => 'Hãng đĩa';

  @override
  String get editMetadataFieldCopyright => 'Bản quyền';

  @override
  String get editMetadataFieldCover => 'Ảnh bìa';

  @override
  String get editMetadataSelectAll => 'Tất cả';

  @override
  String get editMetadataSelectEmpty => 'Chỉ các trường đang trống';

  @override
  String queueDownloadingCount(int count) {
    return 'Đang tải xuống ($count)';
  }

  @override
  String get queueFilteringIndicator => 'Đang lọc...';

  @override
  String queueTrackCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tracks',
      one: '1 bài hát',
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
  String get queueEmptyAlbums => 'Chưa có album nào được tải';

  @override
  String get queueEmptyAlbumsSubtitle =>
      'Tải nhiều bài hát trong cùng một album để xem tại đây';

  @override
  String get queueEmptySingles => 'Chưa có bài hát tải lẻ nào';

  @override
  String get queueEmptySinglesSubtitle =>
      'Các bài hát tải lẻ sẽ hiển thị tại đây';

  @override
  String queuePlaylistCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count danh sách phát',
      one: '1 danh sách phát',
    );
    return '$_temp0';
  }

  @override
  String get queueEmptyPlaylistsSubtitle =>
      'Tạo danh sách phát mới để sắp xếp các bài hát của bạn';

  @override
  String get libraryDefaultView => 'Chế độ xem mặc định';

  @override
  String get libraryDefaultViewLastUsed => 'Dùng gần nhất';

  @override
  String get queueEmptyHistory => 'Chưa có lịch sử tải xuống';

  @override
  String get queueEmptyHistorySubtitle =>
      'Các bài hát đã tải về sẽ hiển thị tại đây';

  @override
  String get selectionAllPlaylistsSelected => 'Đã chọn tất cả danh sách phát';

  @override
  String get selectionTapPlaylistsToSelect => 'Chạm vào danh sách phát để chọn';

  @override
  String get selectionSelectPlaylistsToDelete => 'Chọn danh sách phát cần xóa';

  @override
  String get audioAnalysisTitle => 'Phân tích chất lượng âm thanh';

  @override
  String get audioAnalysisDescription =>
      'Kiểm tra chất lượng Lossless thật/giả bằng phân tích phổ tần số';

  @override
  String get audioAnalysisAnalyzing => 'Đang phân tích âm thanh...';

  @override
  String get audioAnalysisSampleRate => 'Tần số lấy mẫu';

  @override
  String get audioAnalysisCodec => 'Codec';

  @override
  String get audioAnalysisContainer => 'Định dạng đóng gói';

  @override
  String get audioAnalysisDecodedFormat => 'Định dạng sau giải mã';

  @override
  String get audioAnalysisBitDepth => 'Độ sâu bit';

  @override
  String get audioAnalysisChannels => 'Kênh';

  @override
  String get audioAnalysisDuration => 'Thời lượng';

  @override
  String get audioAnalysisNyquist => 'Tần số Nyquist';

  @override
  String get audioAnalysisFileSize => 'Dung lượng';

  @override
  String get audioAnalysisDynamicRange => 'Dải động';

  @override
  String get audioAnalysisPeak => 'Đỉnh';

  @override
  String get audioAnalysisRms => 'RMS';

  @override
  String get audioAnalysisLufs => 'LUFS';

  @override
  String get audioAnalysisTruePeak => 'Đỉnh thực';

  @override
  String get audioAnalysisClipping => 'Vỡ tiếng (Clipping)';

  @override
  String get audioAnalysisNoClipping => 'Không bị vỡ tiếng';

  @override
  String get audioAnalysisSpectralCutoff => 'Ngưỡng cắt tần số ước tính';

  @override
  String get audioAnalysisCutoffNotDetected => 'Không phát hiện';

  @override
  String get audioAnalysisChannelStats => 'Thông số từng kênh';

  @override
  String get audioAnalysisSamples => 'Số lượng mẫu';

  @override
  String get audioAnalysisRescan => 'Phân tích lại';

  @override
  String get audioAnalysisSaveSpectrogram => 'Lưu phổ âm thanh';

  @override
  String audioAnalysisSpectrogramSaved(String fileName) {
    return 'Đã lưu phổ vào $fileName';
  }

  @override
  String get downloadRedownloadFakeHiRes => 'Tải lại nếu phát hiện Hi-Res giả';

  @override
  String get downloadRedownloadFakeHiResSubtitle =>
      'Mặc định tắt. Tự động kiểm tra các bản nhạc Hi-Res tải về và chỉ thay thế khi toàn bộ mẫu âm thanh được bảo toàn nguyên vẹn. Giữ nguyên tệp gốc nếu việc kiểm tra hoặc xử lý gặp lỗi';

  @override
  String get hiResCheckVerdictFakeCertain => 'Hi-Res giả';

  @override
  String get hiResCheckReasonSampleHold =>
      'Mỗi mẫu âm thanh đều bị lặp lại: đã bị nâng tần số bằng cách nhân bản';

  @override
  String get hiResCheckReasonInterpolation =>
      'Các mẫu nằm giữa được nội suy tuyến tính';

  @override
  String get hiResCheckTitle => 'Xác thực chất lượng Hi-Res';

  @override
  String get hiResCheckSummary =>
      'Kiểm tra phổ tần số và độ sâu bit thực tế để phát hiện nhạc nâng tần số giả hoặc độn bit.';

  @override
  String get hiResCheckLimitedBandwidth => 'Băng thông bị giới hạn';

  @override
  String get hiResCheckNoEvidence =>
      'Không phát hiện nâng tần số giả hay độn bit';

  @override
  String get hiResCheckEstimatedCutoff => 'Tần số cắt ước tính';

  @override
  String get hiResCheckActiveBits => 'Bit thực tế / bit lưu trữ';

  @override
  String get hiResCheckBandwidthExplanation =>
      'Tần số cắt thấp hơn cũng có thể do quá trình mastering gốc của bản thu, chứ không hẳn là nhạc bị nâng tần số giả.';

  @override
  String hiResCheckSampledExplanation(String seconds) {
    return 'Dựa trên $seconds giây âm thanh. Phép phân tích phổ này chỉ mang tính tham khảo kỹ thuật, không thể chứng nhận bản master gốc.';
  }

  @override
  String get hiResCheckImagingEvidence =>
      'Phổ tần số xuất hiện các dải phản chiếu đối xứng — dấu hiệu đặc trưng của việc nâng tần số giả.';

  @override
  String hiResCheckRateEvidence(String cutoff) {
    return 'Sự suy giảm tần số đột ngột (roll-off) quanh mức $cutoff cùng mức nền nhiễu (noise floor) đo được cho thấy nguồn nhạc gốc có tần số thấp hơn.';
  }

  @override
  String hiResCheckSteadyEnergy(String cutoff) {
    return 'Năng lượng tín hiệu trên $cutoff hầu như không đổi trong đoạn phân tích và có thể chỉ là nhiễu nền (noise).';
  }

  @override
  String get hiResCheckRun => 'Kiểm tra';

  @override
  String get hiResCheckChecking =>
      'Đang kiểm định chất lượng Hi-Res thực tế...';

  @override
  String get hiResCheckVerdictFake => 'Khả năng cao là Hi-Res giả';

  @override
  String get hiResCheckVerdictStandard =>
      'Chất lượng tiêu chuẩn, không có dấu hiệu bất thường';

  @override
  String get hiResCheckVerdictInconclusive =>
      'Chưa thể kết luận: đoạn âm thanh phân tích quá nhỏ hoặc quá ngắn';

  @override
  String get hiResCheckUnsupported => 'Chỉ có thể kiểm tra tệp FLAC và WAV';

  @override
  String hiResCheckFailed(String error) {
    return 'Kiểm tra Hi-Res thất bại: $error';
  }

  @override
  String hiResCheckReasonDepth(int declared, int effective) {
    return 'Khai báo $declared-bit nhưng thực tế chỉ có $effective bit chứa dữ liệu thực';
  }

  @override
  String get audioAnalysisRescanning => 'Đang phân tích lại âm thanh...';

  @override
  String get extensionsHomeFeedProvider => 'Nguồn bảng tin Trang chủ';

  @override
  String get extensionsHomeFeedCountry => 'Quốc gia bảng tin Trang chủ';

  @override
  String get extensionsHomeFeedCountryDescription =>
      'Chọn quốc gia hiển thị gợi ý nhạc trên Trang chủ mà không cần dùng VPN.';

  @override
  String get extensionsHomeFeedDescription =>
      'Chọn tiện ích mở rộng cung cấp bảng tin khám phá trên màn hình chính';

  @override
  String get extensionsHomeFeedAuto => 'Tự động';

  @override
  String get extensionsHomeFeedAutoSubtitle =>
      'Tự động chọn chất lượng tốt nhất hiện có';

  @override
  String get extensionsHomeFeedOff => 'Tắt';

  @override
  String get extensionsHomeFeedOffSubtitle =>
      'Không hiển thị bảng tin khám phá trên màn hình chính';

  @override
  String extensionsHomeFeedUse(String extensionName) {
    return 'Sử dụng $extensionName bảng tin trang chủ';
  }

  @override
  String get extensionsNoHomeFeedExtensions =>
      'Chưa có tiện ích nào hỗ trợ bảng tin Trang chủ';

  @override
  String get cancelDownloadTitle => 'Hủy tải xuống?';

  @override
  String cancelDownloadContent(String trackName) {
    return 'Thao tác này sẽ hủy quá trình tải xuống đang diễn ra của \"$trackName\".';
  }

  @override
  String get cancelDownloadKeep => 'Giữ lại';

  @override
  String get queueCancelledTitle => 'Đã hủy tải xuống';

  @override
  String get queueCancelledMessage =>
      'Lượt tải này đã bị hủy. Bạn có thể thử tải lại hoặc xóa khỏi hàng chờ.';

  @override
  String get metadataSaveFailedFfmpeg => 'Không thể lưu metadata qua FFmpeg';

  @override
  String get metadataSaveFailedStorage => 'Không thể ghi metadata vào bộ nhớ';

  @override
  String snackbarFolderPickerFailed(String error) {
    return 'Không thể mở trình chọn thư mục: $error';
  }

  @override
  String notifDownloadingTrack(String trackName) {
    return 'Đang tải xuống $trackName';
  }

  @override
  String notifFinalizingTrack(String trackName) {
    return 'Đã hoàn tất $trackName';
  }

  @override
  String get notifEmbeddingMetadata => 'Đang nhúng metadata...';

  @override
  String notifAlreadyInLibraryCount(int completed, int total) {
    return 'Đã có trong thư viện ($completed/$total)';
  }

  @override
  String get notifAlreadyInLibrary => 'Đã có trong thư viện';

  @override
  String notifDownloadCompleteCount(int completed, int total) {
    return 'Tải xuống hoàn tất ($completed/$total)';
  }

  @override
  String get notifDownloadComplete => 'Tải xuống hoàn tất';

  @override
  String notifDownloadsFinished(int completed, int failed) {
    return 'Đã hoàn tất tải xuống ($completed thành công, $failed thất bại)';
  }

  @override
  String get notifVerificationRequiredTitle => 'Cần xác minh';

  @override
  String get notifVerificationRequiredBody =>
      'Mở ứng dụng để hoàn tất bước xác minh và tiếp tục tải nhạc';

  @override
  String get notifAllDownloadsComplete => 'Đã tải xong tất cả';

  @override
  String notifTracksDownloadedSuccess(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tracks downloaded successfully',
      one: 'Đã tải thành công 1 bài hát',
    );
    return '$_temp0';
  }

  @override
  String notifDownloadsFinishedBody(int completed, int failed) {
    String _temp0 = intl.Intl.pluralLogic(
      completed,
      locale: localeName,
      other: '$completed tracks downloaded',
      one: 'Đã tải xuống 1 bài hát',
    );
    String _temp1 = intl.Intl.pluralLogic(
      failed,
      locale: localeName,
      other: '$failed failed',
      one: '1 bài lỗi',
    );
    return '$_temp0, $_temp1';
  }

  @override
  String get notifDownloadsCanceledTitle => 'Đã hủy tải xuống';

  @override
  String notifDownloadsCanceledBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count downloads canceled by user',
      one: 'Người dùng đã hủy 1 lượt tải',
    );
    return '$_temp0';
  }

  @override
  String get notifScanningLibrary => 'Đang quét thư viện trên máy';

  @override
  String notifLibraryScanProgressWithTotal(
    int scanned,
    int total,
    int percentage,
  ) {
    return '$scanned/$total tệp • $percentage%';
  }

  @override
  String notifLibraryScanProgressNoTotal(int scanned) {
    return 'Đã quét $scanned tệp';
  }

  @override
  String get notifLibraryScanComplete => 'Hoàn tất quét thư viện';

  @override
  String notifLibraryScanCompleteBody(int count) {
    return 'Đã lập chỉ mục $count bài hát';
  }

  @override
  String notifLibraryScanExcluded(int count) {
    return 'Đã loại trừ $count mục';
  }

  @override
  String notifLibraryScanErrors(int count) {
    return '$count lỗi';
  }

  @override
  String get notifLibraryScanFailed => 'Quét thư viện thất bại';

  @override
  String get notifLibraryScanInterruptedBody =>
      'Lần quét thư viện trước đó đã bị gián đoạn. Hãy quét lại thư mục để tiếp tục. Những bài hát đã lập chỉ mục vẫn sử dụng được bình thường.';

  @override
  String get notifLibraryScanCancelled => 'Đã hủy quét thư viện';

  @override
  String get notifLibraryScanStopped =>
      'Quá trình quét đã dừng trước khi hoàn tất.';

  @override
  String get notifLibraryScanPaused => 'Đã tạm dừng quét thư viện';

  @override
  String notifLibraryScanPausedBody(int count) {
    return 'Đã quét $count tệp. Tiếp tục trong cài đặt Thư viện cục bộ để quét tiếp từ đây.';
  }

  @override
  String notifDownloadingUpdate(String version) {
    return 'Đang tải xuống Toadplayer v$version';
  }

  @override
  String notifUpdateProgress(String received, String total, int percentage) {
    return '$received / $total MB • $percentage%';
  }

  @override
  String get notifUpdateReady => 'Bản cập nhật đã sẵn sàng';

  @override
  String notifUpdateReadyBody(String version) {
    return 'Đã tải xuống Toadplayer v$version. Nhấn để cài đặt.';
  }

  @override
  String get notifUpdateFailed => 'Cập nhật thất bại';

  @override
  String get notifUpdateFailedBody =>
      'Không thể tải bản cập nhật. Vui lòng thử lại sau.';

  @override
  String get searchTracks => 'Bài hát';

  @override
  String get homeSearchHintDefault => 'Tìm kiếm hoặc dán URL được hỗ trợ...';

  @override
  String homeSearchHintProvider(String providerName) {
    return 'Tìm kiếm bằng $providerName...';
  }

  @override
  String get homeImportCsvTooltip => 'Nhập danh sách phát (CSV, M3U)';

  @override
  String get homeChangeSearchProviderTooltip => 'Đổi nguồn tìm kiếm';

  @override
  String get actionPaste =>
      'Không hiển thị bảng tin khám phá trên màn hình chính';

  @override
  String get tutorialSearchHint => 'Dán liên kết hoặc tìm kiếm...';

  @override
  String get tutorialDownloadCompletedSemantics => 'Tải xuống hoàn tất';

  @override
  String get tutorialDownloadInProgressSemantics =>
      'Đang trong quá trình tải xuống';

  @override
  String get tutorialStartDownloadSemantics => 'Bắt đầu tải';

  @override
  String get optionsEmbedMetadata => 'Nhúng Metadata';

  @override
  String get optionsEmbedMetadataSubtitleOn =>
      'Ghi metadata, ảnh bìa và lời bài hát nhúng trực tiếp vào tệp nhạc';

  @override
  String get optionsEmbedMetadataSubtitleOff =>
      'Tắt (nâng cao): bỏ qua toàn bộ việc nhúng metadata';

  @override
  String get trackCoverNoEmbeddedArt =>
      'Không tìm thấy ảnh bìa nhúng trong tệp';

  @override
  String get trackCoverReplace => 'Thay ảnh bìa';

  @override
  String get trackCoverPick => 'Chọn ảnh bìa';

  @override
  String get trackCoverClearSelected => 'Xóa ảnh bìa đã chọn';

  @override
  String get trackCoverCurrent => 'Ảnh bìa hiện tại';

  @override
  String get trackCoverSelected => 'Ảnh bìa đã chọn';

  @override
  String get trackCoverReplaceNotice =>
      'Ảnh bìa đã chọn sẽ thay thế ảnh bìa đang nhúng trong tệp khi bạn nhấn Lưu.';

  @override
  String get trackCoverResolution => 'Độ phân giải ảnh bìa';

  @override
  String get trackCoverResolutionHint =>
      'Giới hạn cạnh dài nhất của ảnh bìa khi lưu. Việc phóng to ảnh nhỏ sẽ không làm tăng thêm độ chi tiết.';

  @override
  String get trackCoverResizeFailed =>
      'Không thể thay đổi kích thước ảnh bìa. Vui lòng thử kích thước khác hoặc chọn ảnh khác.';

  @override
  String get actionStop => 'Dừng';

  @override
  String get queueFinalizingDownload => 'Đang hoàn tất tải xuống';

  @override
  String get queueDownloadNext => 'Tải tiếp theo';

  @override
  String get queueMoveUp => 'Di chuyển lên trên';

  @override
  String get queueMoveDown => 'Di chuyển xuống dưới';

  @override
  String get editMetadataMusicBrainzButton => 'Lấy dữ liệu từ MusicBrainz';

  @override
  String get editMetadataMusicBrainzFilled => 'Đã cập nhật từ MusicBrainz';

  @override
  String get editMetadataMusicBrainzNothing =>
      'Không tìm thấy kết quả nào trên MusicBrainz';

  @override
  String get editMetadataMusicBrainzNeedsIsrc => 'Yêu cầu phải có mã ISRC';

  @override
  String get nowPlayingRepeatOff => 'Tắt lặp lại';

  @override
  String get nowPlayingRepeatAll => 'Lặp lại tất cả';

  @override
  String get nowPlayingRepeatOne => 'Lặp lại 1 bài';

  @override
  String queueNetworkFailedOffline(int count) {
    return '$count lượt tải bị lỗi khi mất kết nối mạng';
  }

  @override
  String get queueDownloadedFileMissing => 'Không tìm thấy tệp đã tải về';

  @override
  String get queueCheckingDownloadedFile => 'Đang kiểm tra tệp đã tải về...';

  @override
  String get queueDownloadCompleted => 'Tải xuống hoàn tất';

  @override
  String get queueRateLimitTitle => 'Dịch vụ đang tạm giới hạn truy vấn';

  @override
  String get queueRateLimitMessage =>
      'Bài hát này có thể vẫn tải được. Hãy đợi vài phút, giảm số luồng tải đồng thời rồi thử lại.';

  @override
  String appearanceSelectAccentColor(String hex) {
    return 'Chọn màu nhấn $hex';
  }

  @override
  String get logAutoScrollOn => 'Tự cuộn lời: BẬT';

  @override
  String get logAutoScrollOff => 'Tự cuộn lời: TẮT';

  @override
  String get logCopyLogs => 'Sao chép nhật ký';

  @override
  String get logClearSearch => 'Xóa tìm kiếm';

  @override
  String get logIssueIspBlockingLabel => 'PHÁT HIỆN NHÀ MẠNG CHẶN KẾT NỐI';

  @override
  String get logIssueIspBlockingDescription =>
      'Nhà mạng của bạn có thể đang chặn truy cập tới các dịch vụ tải nhạc';

  @override
  String get logIssueIspBlockingSuggestion =>
      'Hãy thử bật VPN hoặc đổi DNS sang 1.1.1.1 hay 8.8.8.8';

  @override
  String get logIssueRateLimitedLabel => 'GIỚI HẠN TRUY VẤN';

  @override
  String get logIssueRateLimitedDescription =>
      'Quá nhiều yêu cầu gửi tới dịch vụ';

  @override
  String get logIssueRateLimitedSuggestion =>
      'Vui lòng đợi vài phút trước khi thử lại';

  @override
  String get logIssueNetworkErrorLabel => 'LỖI MẠNG';

  @override
  String get logIssueNetworkErrorDescription => 'Phát hiện sự cố kết nối';

  @override
  String get logIssueNetworkErrorSuggestion =>
      'Hãy kiểm tra lại kết nối Internet của bạn';

  @override
  String get logIssueTrackNotFoundLabel => 'KHÔNG TÌM THẤY BÀI HÁT';

  @override
  String get logIssueTrackNotFoundDescription =>
      'Không tìm thấy một số bài hát trên các dịch vụ tải nhạc';

  @override
  String get logIssueTrackNotFoundSuggestion =>
      'Bài hát này hiện có thể chưa có bản chất lượng Lossless';

  @override
  String get clickableLookingUpArtist => 'Đang tra cứu thông tin nghệ sĩ...';

  @override
  String clickableInformationUnavailable(String type) {
    return '$type hiện chưa có thông tin';
  }

  @override
  String get extensionDetailsTags => 'Thẻ';

  @override
  String get extensionDetailsInformation => 'Thông tin';

  @override
  String get extensionUtilityFunctions => 'Chức năng tiện ích';

  @override
  String get actionDismiss => 'Bỏ qua';

  @override
  String get setupChangeFolderTooltip => 'Đổi thư mục';

  @override
  String a11yOpenTrackByArtist(String trackName, String artistName) {
    return 'Mở bài hát $trackName by $artistName';
  }

  @override
  String a11yOpenItem(String itemType, String name) {
    return 'Mở $itemType $name';
  }

  @override
  String a11yOpenItemCount(String title, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Mở $title, $count $_temp0';
  }

  @override
  String a11yOpenAlbumByArtistTrackCount(
    String albumName,
    String artistName,
    int trackCount,
  ) {
    return 'Mở album $albumName by $artistName, $trackCount tracks';
  }

  @override
  String a11yTrackByArtist(String trackName, String artistName) {
    return '$trackName - $artistName';
  }

  @override
  String a11ySelectAlbum(String albumName) {
    return 'Chọn album $albumName';
  }

  @override
  String a11yOpenAlbum(String albumName) {
    return 'Mở album $albumName';
  }

  @override
  String get settingsFiles => 'Tệp & Thư mục';

  @override
  String get settingsFilesSubtitle =>
      'Vị trí lưu, quy tắc đặt tên tệp, cấu trúc thư mục';

  @override
  String get settingsMetadata => 'Metadata';

  @override
  String get settingsMetadataSubtitle =>
      'Ảnh bìa, tag, ReplayGain, nguồn dữ liệu';

  @override
  String get settingsLyrics => 'Lời bài hát';

  @override
  String get settingsLyricsSubtitle =>
      'Nhúng lời, chế độ lưu, nguồn lời, tùy chọn ngôn ngữ';

  @override
  String get settingsApp => 'Ứng dụng';

  @override
  String get settingsAppSubtitle => 'Cập nhật, dữ liệu, kho tiện ích, gỡ lỗi';

  @override
  String get sectionMetadataProviders => 'Nguồn cung cấp';

  @override
  String get sectionDuplicates => 'Bài trùng lặp';

  @override
  String get sectionLyricsProviderOptions => 'Tùy chọn nguồn';

  @override
  String get metadataProvidersTitle => 'Thứ tự ưu tiên nguồn Metadata';

  @override
  String get metadataProvidersSubtitle =>
      'Kéo để sắp xếp thứ tự nguồn tìm kiếm và metadata';

  @override
  String get downloadDeduplication => 'Bỏ qua bài tải trùng lặp';

  @override
  String get downloadDeduplicationEnabled =>
      'Những bài hát đã tải trước đó sẽ được bỏ qua';

  @override
  String get downloadDeduplicationWithQualityVariants =>
      'Các tệp đã có sẵn ở cùng mức chất lượng đã chọn sẽ được bỏ qua';

  @override
  String get downloadDeduplicationDisabled =>
      'Tải xuống tất cả bài hát bất kể lịch sử đã tải trước đó';

  @override
  String get downloadQualityVariants =>
      'Cho phép lưu nhiều phiên bản chất lượng khác nhau';

  @override
  String get downloadQualityVariantsDescription =>
      'Giữ lại mọi phiên bản chất lượng; chỉ gắn thêm thông số chất lượng vào tên tệp khi bị trùng tên';

  @override
  String get trackOptionDownloadQualityVariant => 'Tải bản chất lượng khác';

  @override
  String get downloadFallbackExtensions => 'Tiện ích dự phòng';

  @override
  String get downloadFallbackExtensionsSubtitle =>
      'Chọn những tiện ích mở rộng nào được phép dùng làm nguồn dự phòng';

  @override
  String get editMetadataFieldDateHint => 'YYYY-MM-DD hoặc YYYY';

  @override
  String get editMetadataFieldTrackTotal => 'Tổng số bài';

  @override
  String get editMetadataFieldDiscTotal => 'Tổng số đĩa';

  @override
  String get editMetadataFieldComposer => 'Nhạc sĩ sáng tác';

  @override
  String get editMetadataFieldComment => 'Ghi chú';

  @override
  String get trackAlbumType => 'Loại phát hành';

  @override
  String get editMetadataFieldAlbumTypeHint =>
      'Album, đĩa đơn, EP, tuyển tập...';

  @override
  String get editMetadataFieldExplicit => 'Nội dung nhạy cảm';

  @override
  String get editMetadataFieldExplicitHint =>
      'Đánh dấu bài hát này có nội dung nhạy cảm';

  @override
  String get metadataExplicitValue =>
      'Hãy kiểm tra lại kết nối Internet của bạn';

  @override
  String get editMetadataFieldUpc => 'Mã UPC / Mã vạch';

  @override
  String get editMetadataFieldUpcHint => 'Mã số UPC, EAN hoặc GTIN';

  @override
  String get editMetadataAdvanced => 'Nâng cao';

  @override
  String get libraryFilterMetadataMissingTrackNumber =>
      'Thiếu số thứ tự bài hát';

  @override
  String get libraryFilterMetadataMissingDiscNumber => 'Thiếu số thứ tự đĩa';

  @override
  String get libraryFilterMetadataMissingArtist => 'Thiếu tên nghệ sĩ';

  @override
  String get libraryFilterMetadataIncorrectIsrcFormat =>
      'Định dạng mã ISRC không hợp lệ';

  @override
  String get libraryFilterMetadataMissingIsrc => 'Thiếu mã ISRC';

  @override
  String get libraryFilterMetadataMissingLabel => 'Thiếu hãng đĩa';

  @override
  String collectionDeletePlaylistsMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'playlists',
      one: 'playlist',
    );
    return 'Xóa $count $_temp0?';
  }

  @override
  String collectionPlaylistsDeleted(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'danh sách phát',
      one: 'danh sách phát',
    );
    return 'Đã xóa $count $_temp0';
  }

  @override
  String collectionAddedTracksToPlaylist(int count, String playlistName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    return 'Đã thêm $count $_temp0 to $playlistName';
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
    return 'Đã thêm $count $_temp0 to $playlistName ($alreadyCount đã có sẵn trong playlist)';
  }

  @override
  String itemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mục',
      one: 'mục',
    );
    return '$count $_temp0';
  }

  @override
  String trackReEnrichSuccessWithFailures(
    int successCount,
    int total,
    int failedCount,
  ) {
    return 'Đã làm giàu lại metadata thành công ($successCount/$total) - Lỗi: $failedCount';
  }

  @override
  String selectionDeleteTracksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tracks',
      one: 'track',
    );
    return 'Xóa $count $_temp0';
  }

  @override
  String queueDownloadSpeedStatus(String speed) {
    return 'Đang tải - $speed MB/s';
  }

  @override
  String get queueDownloadStarting => 'Đang khởi tạo...';

  @override
  String get queueCheckingDownloadSession => 'Đang kiểm tra phiên tải xuống...';

  @override
  String get queueResolvingDownloadMetadata =>
      'Đang phân giải metadata bài hát...';

  @override
  String get queueResolvingDownloadStream => 'Đang chuẩn bị luồng âm thanh...';

  @override
  String get queueWaitingForVerification => 'Đang chờ xác minh...';

  @override
  String get queueResumingAfterVerification =>
      'Đang tiếp tục tải sau khi xác minh...';

  @override
  String get a11ySelectTrack => 'Chọn bài hát';

  @override
  String get a11yDeselectTrack => 'Bỏ chọn bài hát';

  @override
  String a11yPlayTrackByArtist(String trackName, String artistName) {
    return 'Phát $trackName by $artistName';
  }

  @override
  String storeExtensionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'extensions',
      one: 'tiện ích mở rộng',
    );
    return '$count $_temp0';
  }

  @override
  String storeRequiresVersion(String version) {
    return 'Yêu cầu bản v$version+';
  }

  @override
  String get logIssueSummary => 'Tóm tắt sự cố';

  @override
  String logTotalErrors(int count) {
    return 'Tổng số lỗi: $count';
  }

  @override
  String logAffectedDomains(String domains) {
    return 'Ảnh hưởng: $domains';
  }

  @override
  String get libraryScanCancelled => 'Đã hủy quét';

  @override
  String get libraryScanCancelledSubtitle =>
      'Bạn có thể quét lại bất cứ khi nào sẵn sàng.';

  @override
  String libraryDownloadsHistoryExcluded(int count) {
    return '$count khỏi lịch sử Tải xuống (đã loại khỏi danh sách)';
  }

  @override
  String get downloadNativeWorker => 'Tiến trình tải xuống gốc';

  @override
  String get downloadNativeWorkerSubtitle =>
      'Dịch vụ chạy nền Android cho việc tải nhạc qua tiện ích';

  @override
  String get extensionServiceStatus => 'Trạng thái dịch vụ';

  @override
  String get extensionServiceHealth => 'Tình trạng hoạt động dịch vụ';

  @override
  String extensionHealthChecksConfigured(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mục kiểm tra',
      one: 'mục kiểm tra',
    );
    return 'Đã cấu hình $count $_temp0';
  }

  @override
  String get extensionOauthConnectHint =>
      'Chạm Kết nối với Spotify để tự động điền trường này.';

  @override
  String extensionLastChecked(String time) {
    return 'Kiểm tra lần cuối: $time';
  }

  @override
  String get extensionRefreshStatus => 'Làm mới trạng thái';

  @override
  String get extensionCustomUrlHandling => 'Xử lý liên kết URL tùy chỉnh';

  @override
  String get extensionCustomUrlHandlingSubtitle =>
      'Tiện ích này có thể xử lý liên kết từ các trang sau';

  @override
  String get extensionCustomUrlHandlingShareHint =>
      'Chia sẻ liên kết từ các trang này tới Toadplayer và tiện ích mở rộng này sẽ xử lý chúng.';

  @override
  String extensionSettingsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'settings',
      one: 'cài đặt',
    );
    return '$count $_temp0';
  }

  @override
  String get extensionHealthOnline => 'Trực tuyến';

  @override
  String get extensionHealthDegraded => 'Suy giảm';

  @override
  String get extensionHealthOffline => 'Ngoại tuyến';

  @override
  String get extensionHealthNotConfigured => 'Chưa cấu hình';

  @override
  String get extensionHealthUnknown => 'Không rõ';

  @override
  String get extensionHealthRequired => 'bắt buộc';

  @override
  String get extensionSettingNotSet => 'Chưa đặt';

  @override
  String get extensionActionFailed => 'Thao tác thất bại';

  @override
  String get extensionEnterValue => 'Nhập giá trị';

  @override
  String get extensionHealthServiceOnline => 'Dịch vụ đang trực tuyến';

  @override
  String get extensionHealthServiceDegraded => 'Dịch vụ bị suy giảm';

  @override
  String get extensionHealthServiceOffline => 'Dịch vụ đang ngoại tuyến';

  @override
  String get extensionHealthServiceUnknown => 'Chưa rõ trạng thái dịch vụ';

  @override
  String get audioAnalysisStereo => 'Stereo';

  @override
  String get audioAnalysisMono => 'Mono';

  @override
  String trackOpenInService(String serviceName) {
    return 'Mở bằng $serviceName';
  }

  @override
  String get trackLyricsEmbeddedSource => 'Đã nhúng trong tệp';

  @override
  String get unknownAlbum => 'Album không xác định';

  @override
  String get unknownArtist => 'Nghệ sĩ không xác định';

  @override
  String get permissionAudio => 'Âm thanh';

  @override
  String get permissionStorage => 'Bộ nhớ';

  @override
  String get permissionNotification => 'Thông báo';

  @override
  String get errorInvalidFolderSelected => 'Thư mục được chọn không hợp lệ';

  @override
  String get storeAnyVersion => 'Bất kỳ';

  @override
  String get storeCategoryMetadata => 'Metadata';

  @override
  String get storeCategoryDownload => 'Tải xuống';

  @override
  String get storeCategoryUtility => 'Tiện ích công cụ';

  @override
  String get storeCategoryLyrics => 'Lời bài hát';

  @override
  String get storeCategoryIntegration => 'Tích hợp';

  @override
  String get artistReleases => 'Phát hành';

  @override
  String get editMetadataSelectNone => 'Không có';

  @override
  String queueRetryAllFailed(int count) {
    return 'Thử lại lần $count failed';
  }

  @override
  String get settingsSaveDownloadHistory => 'Lưu lịch sử tải xuống';

  @override
  String get settingsSaveDownloadHistorySubtitle =>
      'Giữ lại các bài đã tải xong trong phần lịch sử và thư viện';

  @override
  String get dialogDisableHistoryTitle => 'Tắt lịch sử tải xuống?';

  @override
  String get dialogDisableHistoryMessage =>
      'Lịch sử hiện tại sẽ được xóa. Các tệp nhạc đã tải về sẽ không bị xóa.';

  @override
  String get dialogDisableAndClear => 'Tắt và xóa dữ liệu';

  @override
  String get openInOtherServices => 'Mở bằng dịch vụ khác';

  @override
  String get shareSheetNoExtensions => 'Không có dịch vụ tương thích nào khác';

  @override
  String get shareSheetNotFound => 'Không tìm thấy';

  @override
  String get shareSheetCopyLink => 'Sao chép liên kết';

  @override
  String shareSheetLinkCopied(Object service) {
    return '$service đã sao chép liên kết';
  }

  @override
  String get libraryPlayback => 'Phát nhạc';

  @override
  String get libraryExternalPlayer => 'Trình phát bên ngoài';

  @override
  String get libraryExternalPlayerSubtitle =>
      'Mở các bản nhạc trong một ứng dụng âm nhạc khác trên thiết bị của bạn';

  @override
  String get libraryBuiltInPreviewPlayer => 'Trình phát tích hợp';

  @override
  String get libraryBuiltInPreviewPlayerSubtitle =>
      'Phát nhạc của bạn ngay trong Toadplayer';

  @override
  String get nowPlayingTitle => 'Đang phát';

  @override
  String get nowPlayingNothingPlaying => 'Hiện không có bài hát nào đang phát';

  @override
  String get nowPlayingMinimize => 'Thu nhỏ';

  @override
  String get nowPlayingUpNext => 'Thu nhỏ';

  @override
  String get nowPlayingAudioOutput => 'Đầu ra âm thanh';

  @override
  String nowPlayingWrittenBy(String writers) {
    return 'Sáng tác: $writers';
  }

  @override
  String nowPlayingLyricsProvider(String provider) {
    return 'Lời bài hát: $provider';
  }

  @override
  String get concertGetTickets => 'Mua vé';

  @override
  String get concertSetList => 'Danh sách bài biểu diễn';

  @override
  String get concertSetListButton => 'Danh sách bài biểu diễn';

  @override
  String get concertAddToCalendar => 'Thêm vào Lịch';

  @override
  String get concertOpenMaps => 'Mở Bản đồ';

  @override
  String get concertDetailsUnavailable =>
      'Hiện chưa có thông tin chi tiết về buổi biểu diễn.';

  @override
  String get concertCalendarUnavailable => 'Không thể mở ứng dụng lịch.';

  @override
  String get nowPlayingAudioOutputUnavailable =>
      'Không thể mở cài đặt đầu ra âm thanh.';

  @override
  String get nowPlayingPreviousTrack => 'Bài trước';

  @override
  String get nowPlayingNextTrack => 'Bài tiếp theo';

  @override
  String get nowPlayingDetails => 'Chi tiết';

  @override
  String get nowPlayingSleepTimer => 'Hẹn giờ tắt nhạc';

  @override
  String nowPlayingSleepTimerActive(String time) {
    return 'Kết thúc lúc $time';
  }

  @override
  String nowPlayingSleepTimerMinutes(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minutes',
      one: '1 phút',
    );
    return '$_temp0';
  }

  @override
  String get nowPlayingSleepTimerOff => 'Tắt hẹn giờ ngủ';

  @override
  String nowPlayingSleepTimerSet(String duration) {
    return 'Đã hẹn giờ tắt nhạc sau $duration';
  }

  @override
  String get nowPlayingSleepTimerCancelled => 'Đã tắt hẹn giờ ngủ';

  @override
  String get nowPlayingOpenInExternalPlayer => 'Mở bằng trình phát bên ngoài';

  @override
  String get nowPlayingHideVolume => 'Ẩn âm lượng';

  @override
  String get nowPlayingShowVolume => 'Hiện âm lượng';

  @override
  String get nowPlayingTabPlayer => 'Trình phát nhạc';

  @override
  String get nowPlayingTabLyrics => 'Lời bài hát';

  @override
  String get nowPlayingNoLyrics => 'Không có lời bài hát trong tệp này';

  @override
  String get nowPlayingInstrumental => 'Nhạc không lời';

  @override
  String get nowPlayingLyricsLanguageOptions => 'Tùy chọn ngôn ngữ lời bài hát';

  @override
  String get nowPlayingHidePronunciation => 'Ẩn phiên âm';

  @override
  String get nowPlayingShowPronunciation => 'Hiện phiên âm';

  @override
  String get nowPlayingHideTranslation => 'Ẩn bản dịch';

  @override
  String get nowPlayingShowTranslation => 'Hiện bản dịch';

  @override
  String get nowPlayingSearchLyricsOnline => 'Tìm kiếm trực tuyến';

  @override
  String get nowPlayingNoLyricsOnline =>
      'Không tìm thấy lời bài hát trực tuyến';

  @override
  String nowPlayingTranslateLyricsTo(String language) {
    return 'Translate to $language';
  }

  @override
  String get nowPlayingTranslateOtherLanguage => 'Other Language…';

  @override
  String get nowPlayingCancelTranslation => 'Huỷ dịch';

  @override
  String nowPlayingTranslatingLyrics(int percent) {
    return 'Đang dịch lời bài hát, $percent%';
  }

  @override
  String get lyricsTranslateSheetTitle => 'Dịch sang';

  @override
  String lyricsTranslateSheetSubtitle(String provider) {
    return 'Lời bài hát được gửi đến $provider.';
  }

  @override
  String lyricsTranslatePartial(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dòng',
      one: '1 dòng',
    );
    return '$_temp0 không thể dịch';
  }

  @override
  String lyricsTranslateAlreadyIn(String language) {
    return 'Lời bài hát này đã là ngôn ngữ $language';
  }

  @override
  String get lyricsAiTranslation => 'Dịch bằng AI';

  @override
  String get lyricsAiTranslationOff => 'Chưa được thiết lập';

  @override
  String get lyricsAiTranslationNotice =>
      'Lời bài hát bạn dịch được gửi đến nhà cung cấp mà bạn chọn, sử dụng khóa API của riêng bạn. Các điều khoản và giá cả của nhà cung cấp sẽ được áp dụng. Các bản dịch được lưu trên thiết bị này và không bao giờ làm thay đổi tệp lời bài hát của bạn.';

  @override
  String get lyricsAiSectionProvider => 'Nhà cung cấp';

  @override
  String get lyricsAiSectionTranslation => 'Bản dịch';

  @override
  String get lyricsAiProvider => 'Nhà cung cấp';

  @override
  String get lyricsAiProviderCustom => 'Máy chủ tùy chỉnh';

  @override
  String get lyricsAiProviderCustomSubtitle =>
      'Bất kỳ máy chủ tương thích nào với OpenAI, như Ollama hoặc LM Studio';

  @override
  String get lyricsAiBaseUrl => 'URL máy chủ';

  @override
  String get lyricsAiBaseUrlInvalid =>
      'Nhập URL bắt đầu bằng http:// hoặc https://';

  @override
  String get lyricsAiNotSet => 'Chưa thiết lập';

  @override
  String get lyricsAiApiKey => 'Khoá API';

  @override
  String get lyricsAiApiKeyOptional => 'Tùy chọn cho máy chủ cục bộ';

  @override
  String lyricsAiApiKeySaved(String suffix) {
    return 'Đã lưu, kết thúc bằng $suffix';
  }

  @override
  String lyricsAiApiKeyDescription(String provider) {
    return 'Được lưu trữ trong bộ nhớ bảo mật của thiết bị này và chỉ gửi đến $provider.';
  }

  @override
  String get lyricsAiModel => 'Model';

  @override
  String lyricsAiModelDefault(String model) {
    return 'Mặc định ($model)';
  }

  @override
  String get lyricsAiModelHint => 'ID Model';

  @override
  String get lyricsAiModelUseDefault => 'Sử dụng mặc định';

  @override
  String get lyricsAiModelLoad => 'Tải model';

  @override
  String get lyricsAiModelsEmpty => 'Nhà cung cấp không liệt kê mô hình nào';

  @override
  String get lyricsAiTestConnection => 'Kiểm tra kết nối';

  @override
  String get lyricsAiTestConnectionSubtitle =>
      'Dịch một dòng để kiểm tra khóa và mô hình';

  @override
  String get lyricsAiTestSuccess => 'Kết nối hoạt động';

  @override
  String get lyricsAiTargetLanguage => 'Dịch sang';

  @override
  String lyricsAiTargetLanguageApp(String language) {
    return 'Ngôn ngữ ứng dụng ($language)';
  }

  @override
  String get lyricsAiInstruction => 'Hướng dẫn bổ sung';

  @override
  String get lyricsAiInstructionNone => 'Không';

  @override
  String get lyricsAiInstructionHint => 'Ví dụ: giữ các vần ở nơi bạn có thể';

  @override
  String get lyricsAiAutoTranslate => 'Dịch tự động';

  @override
  String get lyricsAiAutoTranslateSubtitle =>
      'Dịch lời bài hát đã đồng bộ chưa có bản dịch khi bạn mở chúng, sử dụng hạn ngạch từ nhà cung cấp của bạn';

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
  String get lyricsAiRomanize => 'Thêm phiên âm Rōmaji';

  @override
  String get lyricsAiRomanizeSubtitle =>
      'Hiển thị cách hát lời bài hát ở các chữ cái khác, chẳng hạn như romaji cho tiếng Nhật hoặc pinyin cho tiếng Trung';

  @override
  String get lyricsAiClearCache => 'Xóa các bản dịch đã lưu';

  @override
  String lyricsAiClearCacheSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count bài hát',
      one: '1 bài hát',
      zero: 'Không có bản dịch nào được lưu',
    );
    return '$_temp0';
  }

  @override
  String get lyricsAiClearCacheConfirm => 'Xóa các bản dịch đã lưu?';

  @override
  String get lyricsAiClearCacheMessage =>
      'Các bài hát sẽ cần phải được dịch lại, việc này sẽ sử dụng hạn ngạch từ nhà cung cấp của bạn';

  @override
  String get lyricsAiClearCacheDone => 'Các bản dịch đã xóa';

  @override
  String get lyricsAiErrorNotConfigured =>
      'Thiết lập dịch AI trong cài đặt Lời bài hát trước';

  @override
  String get lyricsAiErrorInvalidKey =>
      ' Nhà cung cấp không chấp nhận khóa API';

  @override
  String get lyricsAiErrorRateLimited =>
      'Nhà cung cấp đang giới hạn số lượng yêu cầu. Thử lại sau giây lát';

  @override
  String get lyricsAiErrorQuota =>
      'Tài khoản nhà cung cấp của bạn đã hết số dư hoặc hạn mức';

  @override
  String get lyricsAiErrorNetwork =>
      'Không kết nối với nhà cung cấp. Kiểm tra kết nối của bạn';

  @override
  String get lyricsAiErrorTimeout =>
      'Nhà cung cấp mất quá nhiều thời gian để phản hồi';

  @override
  String get lyricsAiErrorModelNotFound =>
      'Nhà cung cấp không cung cấp mô hình này';

  @override
  String get lyricsAiErrorRefused => 'Mô hình đã từ chối dịch lời bài hát này';

  @override
  String get lyricsAiErrorTruncated =>
      'Mô hình đã bị cắt ngang câu trả lời. Hãy thử một mô hình khác';

  @override
  String get lyricsAiErrorBadResponse =>
      'Không thể đọc được câu trả lời. Hãy thử mô hình khác';

  @override
  String get lyricsAiErrorService =>
      'Nhà cung cấp đã gặp sự cố. Vui lòng thử lại sau';

  @override
  String get lyricsAiErrorNoLyrics => 'Bài này không có gì để dịch';

  @override
  String get nowPlayingLibraryEmpty => 'Thư viện của bạn đang trống';

  @override
  String nowPlayingShuffleLibraryFailed(String error) {
    return 'Không thể phát trộn thư viện: $error';
  }

  @override
  String get nowPlayingShuffleOn => 'Phát trộn bài: Bật';

  @override
  String get nowPlayingPlayInOrder => 'Phát theo thứ tự';

  @override
  String get nowPlayingShuffleLibrary => 'Phát trộn toàn bộ thư viện';

  @override
  String get nowPlayingQueueEmpty => 'Hàng chờ đang trống';

  @override
  String get nowPlayingNoMetadata => 'Không có thông tin metadata';

  @override
  String get linkDevicesTitle => 'Thiết bị';

  @override
  String get linkConnectionConnected => 'Đã kết nối';

  @override
  String get linkConnectionConnecting => 'Đang kết nối';

  @override
  String get linkConnectionDisconnected => 'Không kết nối';

  @override
  String get linkThisPhone => 'Điện thoại này';

  @override
  String linkPlayingOn(String name) {
    return 'Phát trên $name';
  }

  @override
  String linkDesktopDownloads(String name) {
    return 'Tải xuống trên $name';
  }

  @override
  String linkHandoffStarted(String name) {
    return 'Phát trên $name';
  }

  @override
  String linkHandoffSending(String name) {
    return 'Đang gửi bài hát này tới $name...';
  }

  @override
  String linkHandoffMissing(String name, String titles) {
    return 'Đang phát trên $name. Không tìm thấy ở đó: $titles';
  }

  @override
  String linkHandoffNotFound(String name) {
    return '$name không có bài hát nào trong số này';
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
      'Không thể mở liên kết. Vui lòng thử lại.';

  @override
  String trackConvertLosslessOutputWithCap(String quality) {
    return 'Đầu ra Lossless giới hạn ở $quality tối đa';
  }

  @override
  String trackConvertConfirmMessageLosslessCapped(
    String sourceFormat,
    String targetFormat,
    String quality,
  ) {
    return 'Chuyển đổi từ $sourceFormat to $targetFormat ($quality)?\n\nTệp đầu ra vẫn giữ định dạng Lossless, nhưng Bit depth / Sample rate sẽ được giới hạn lại. Tệp gốc sẽ bị xóa sau khi chuyển đổi.';
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
    return 'Chuyển đổi $count $_temp0 to $format ($quality)?\n\nTệp đầu ra vẫn giữ định dạng Lossless, nhưng Bit depth / Sample rate sẽ được giới hạn lại. Các tệp gốc sẽ bị xóa sau khi chuyển đổi.';
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
      'Proxy lấy lời bài hát tổng hợp từ Musixmatch, NetEase, Apple Music, QQ Music, Spotify, Deezer, YouTube, Kugou và Genius';

  @override
  String get snackbarPlayingNext => 'Phát tiếp theo';

  @override
  String get snackbarAddedToQueueGeneric => 'Đã thêm vào hàng chờ';

  @override
  String selectionDeletePlaylistsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'playlists',
      one: 'playlist',
    );
    return 'Xóa $count $_temp0';
  }

  @override
  String get actionShuffle => 'Phát trộn bài';

  @override
  String get artistShuffleEmpty =>
      'No songs by this artist in your Library yet';

  @override
  String get downloadPrimaryArtistOnlyOn => 'Chỉ nghệ sĩ chính: Bật';

  @override
  String get downloadPrimaryArtistOnlyOff => 'Chỉ nghệ sĩ chính: Tắt';

  @override
  String get downloadAlbumArtistMetadataPrimaryOnly =>
      'Metadata Nghệ sĩ album: Chỉ giữ nghệ sĩ chính';

  @override
  String get downloadAlbumArtistMetadataFull =>
      'Metadata Nghệ sĩ album: Đầy đủ tất cả nghệ sĩ';

  @override
  String get trackConvertOriginal => 'Nguyên bản';

  @override
  String get trackConvertOriginalQuality => 'Chất lượng gốc';

  @override
  String get trackConvertLosslessSuffix => 'Lossless';

  @override
  String get trackConvertDithering => 'Giảm méo lượng tử hóa';

  @override
  String get trackConvertResampler => 'Bộ chuyển đổi tần số lấy mẫu';

  @override
  String get trackConvertDitherNone => 'Không có';

  @override
  String get trackConvertDitherTriangular => 'TPDF';

  @override
  String get trackConvertDitherTriangularHp => 'Tam giác thông cao';

  @override
  String get trackConvertResamplerSwr => 'SWR';

  @override
  String get trackConvertResamplerSoxr => 'SoXr';

  @override
  String get updateSeeReleaseNotes =>
      'Xem ghi chú phát hành để biết thêm chi tiết.';

  @override
  String get unknownTitle => 'Tiêu đề không xác định';

  @override
  String get trackPlayNext => 'Phát kế tiếp';

  @override
  String get trackAddToQueue => 'Thêm vào hàng chờ';

  @override
  String snackbarExtensionInstalledEnable(String extensionName) {
    return '$extensionName đã được cài đặt. Hãy bật tiện ích này trong Cài đặt > Tiện ích mở rộng';
  }

  @override
  String snackbarExtensionUpdatedVersion(String extensionName, String version) {
    return '$extensionName đã cập nhật lên v$version';
  }

  @override
  String snackbarFailedToInstallNamed(String extensionName) {
    return 'Không thể cài đặt $extensionName';
  }

  @override
  String snackbarFailedToUpdateNamed(String extensionName) {
    return 'Không thể cập nhật $extensionName';
  }

  @override
  String get releaseTypeEp => 'EP';

  @override
  String get releaseTypeSingle => 'Đĩa đơn';

  @override
  String get trackCoverOnline => 'Ảnh bìa trực tuyến';

  @override
  String get regionCountryUS => 'Hoa Kỳ';

  @override
  String get regionCountryIT => 'Ý';

  @override
  String get regionCountryES => 'Tây Ban Nha';

  @override
  String get regionCountryGB => 'Vương quốc Anh';

  @override
  String get regionCountryFR => 'Pháp';

  @override
  String get regionCountryDE => 'Đức';

  @override
  String get regionCountryJP => 'Nhật Bản';

  @override
  String get regionCountryKR => 'Hàn Quốc';

  @override
  String get regionCountryIN => 'Ấn Độ';

  @override
  String get regionCountryID => 'Indonesia';

  @override
  String get regionCountryBR => 'Brazil';

  @override
  String get regionCountryMX => 'Mexico';

  @override
  String get regionCountryAU => 'Úc';

  @override
  String get regionCountryCA => 'Canada';

  @override
  String get regionCountryXK => 'Kosovo';

  @override
  String get extensionVerificationBrowserTitle => 'Trình duyệt xác minh';

  @override
  String get extensionVerificationBrowserSubtitleExternal =>
      'Ưu tiên mở trang xác minh bằng trình duyệt mặc định của máy';

  @override
  String get extensionVerificationBrowserSubtitleInApp =>
      'Ưu tiên mở trang xác minh bằng trình duyệt ngay trong ứng dụng';

  @override
  String get extensionVerificationBrowserExternal => 'Bên ngoài';

  @override
  String get extensionVerificationBrowserInApp => 'Trong ứng dụng';

  @override
  String extensionVerificationUnavailable(String extension) {
    return 'Không có trang xác minh cho $extension. Hãy thử tải lại để yêu cầu mã xác minh mới.';
  }

  @override
  String get extensionVerificationHelpTitleManual =>
      'Mở trang xác minh thủ công';

  @override
  String get extensionVerificationHelpTitleWaiting =>
      'Mở trang xác minh thủ công';

  @override
  String get extensionVerificationHelpMessageManual =>
      'Toadplayer không thể tự động mở trình duyệt. Hãy mở liên kết này trong trình duyệt của bạn hoặc sao chép thủ công.';

  @override
  String get extensionVerificationHelpMessageWaiting =>
      'Nếu trình duyệt không mở hoặc quá trình xác minh đã xong nhưng không tự quay lại Toadplayer, hãy mở lại liên kết này hoặc sao chép thủ công.';

  @override
  String get extensionVerificationClose => 'Đóng';

  @override
  String get extensionVerificationCopyLink => 'Sao chép liên kết';

  @override
  String get extensionVerificationPasteCallback => 'Dán liên kết callback';

  @override
  String get extensionVerificationLinkCopied => 'Đã sao chép liên kết xác minh';

  @override
  String get extensionVerificationOpenBrowser => 'Mở trình duyệt';

  @override
  String get settingsSearchHint => 'Tìm trong cài đặt';

  @override
  String settingsSearchNoResults(String query) {
    return 'Không có cài đặt nào khớp với \"$query“';
  }

  @override
  String get libraryFilterMetadataMissingLyrics => 'Thiếu lời bài hát';

  @override
  String get libraryFilterMetadataMissingReplayGain =>
      'Thiếu thông tin ReplayGain';

  @override
  String get libraryFilterMetadataHasReplayGain => 'Đã có ReplayGain';

  @override
  String get libraryFilterIncompleteAlbums => 'Album chưa trọn vẹn';

  @override
  String get libraryAlbumCompletenessUnknown => 'Chưa rõ độ đầy đủ của album';

  @override
  String libraryAlbumMissingTracks(int present, int expected, int missing) {
    return '$present/$expected bài hát · $missing bị thiếu';
  }

  @override
  String get trackOptionCopyTrackName => 'Sao chép tên bài hát';

  @override
  String get trackOptionCopyArtist => 'Sao chép tên nghệ sĩ';

  @override
  String get trackOptionCopyTrackAndArtist => 'Sao chép tên bài và nghệ sĩ';

  @override
  String trackOptionCopyLink(String service) {
    return 'Copy $service link';
  }

  @override
  String get metadataCopyValue => 'Sao chép giá trị';

  @override
  String get metadataCopyField => 'Sao chép cả tên trường và giá trị';

  @override
  String get toadplayerSearch => 'Tìm kiếm';

  @override
  String get toadplayerContinuePlaying => 'Tiếp tục phát';

  @override
  String get metadataCopyAll => 'Sao chép toàn bộ metadata';

  @override
  String get optionsEmbeddedCoverSize => 'Kích thước ảnh bìa nhúng';

  @override
  String get optionsEmbeddedCoverSizeDescription =>
      'Thu nhỏ ảnh bìa tải từ mạng trước khi nhúng vào tệp nhạc. Những ảnh đã nhỏ hơn kích thước giới hạn sẽ được giữ nguyên.';

  @override
  String get toadplayerFavorite => 'Yêu thích';

  @override
  String get toadplayerGoToArtist => 'Đi tới Nghệ sĩ';

  @override
  String get toadplayerGetInfo => 'Get Info';

  @override
  String get toadplayerFavorited => 'Đã yêu thích';

  @override
  String get autoMixDescription =>
      'Chuyển bài mượt mà bằng cách đồng bộ nhịp và điều chỉnh tốc độ giữ nguyên cao độ. Tự động chuyển sang Crossfade nếu không khớp được nhịp.';

  @override
  String get gaplessPlayback => 'Gapless playback';

  @override
  String get gaplessPlaybackDescription =>
      'Start the next song the moment one ends, without silence between them. AutoMix replaces it while on.';

  @override
  String get playerCoverStyle => 'Ảnh bìa';

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
  String get playerCoverStyleDefault => 'Mặc định';

  @override
  String get playerCoverStyleCard => 'Card';

  @override
  String get playerCoverStyleDefaultDescription =>
      'Hiển thị ảnh bìa dạng thẻ nổi phía trên cụm nút điều khiển';

  @override
  String get playerCoverStyleFullScreen => 'Toàn màn hình';

  @override
  String get playerCoverStyleFullScreenDescription =>
      'Ảnh bìa tràn phần trên trình phát và chuyển mờ dần xuống dưới. Ảnh bìa động luôn hiển thị toàn màn hình trong Toadplayer';

  @override
  String get musicHaptics => 'Rung phản hồi theo điệu nhạc';

  @override
  String get musicHapticsDescription =>
      'Rung nhịp nhàng theo phách nhạc của các bài hát đã tải và nhạc trên máy';

  @override
  String get musicHapticsSensitivity => 'Độ nhạy';

  @override
  String get musicHapticsStrength => 'Cường độ';

  @override
  String get autoMixOn => 'Đã bật AutoMix';

  @override
  String get autoMixOff => 'Đã tắt AutoMix';

  @override
  String get autoplayOn => 'Tự động phát: Bật';

  @override
  String get autoplayOff => 'Tự động phát: Tắt';

  @override
  String get queueAutoplay => 'Autoplay';

  @override
  String get queueAutoMix => 'AutoMix';

  @override
  String get autoplayFromLibrary => 'Tự động phát tiếp từ Thư viện';

  @override
  String get autoplayDescription =>
      'Tự động phát tiếp các bài hát tương tự trong Thư viện khi hết danh sách chờ.';

  @override
  String get autoplayPersonalization => 'Tự động phát cá nhân hóa';

  @override
  String get autoplayPersonalizationDescription =>
      'Học từ các bài hát bạn nghe và bỏ qua, một cách riêng tư trên thiết bị này. Tắt tính năng này sẽ dừng việc học và khôi phục chế độ tự động phát thông thường.';

  @override
  String get autoplayResetLearning => 'Đặt lại dữ liệu học gợi ý nhạc';

  @override
  String get autoplayResetLearningConfirmTitle =>
      'Đặt lại dữ liệu học gợi ý nhạc?';

  @override
  String get autoplayResetLearningConfirmMessage =>
      'Tính năng Tự động phát sẽ xóa toàn bộ dữ liệu học được từ thói quen nghe và bỏ qua bài của bạn. Không thể hoàn tác.';

  @override
  String get autoplayResetLearningConfirm => 'Đặt lại';

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
  String get profileTitle => 'Hồ sơ';

  @override
  String get profileSetUp => 'Thiết lập hồ sơ của bạn';

  @override
  String get profileEdit => 'Sửa tên và ảnh đại diện';

  @override
  String get backupIncludesProfile =>
      'Bao gồm tên hồ sơ và ảnh đại diện của bạn';

  @override
  String get profileName => 'Tên';

  @override
  String get profileNameHint => 'Tên của bạn';

  @override
  String get profileChangePhoto => 'Chọn ảnh';

  @override
  String get profileRemovePhoto => 'Xóa ảnh';

  @override
  String get profilePhotoError =>
      'Vui lòng chọn một tệp ảnh hợp lệ có dung lượng nhỏ hơn 20 MB.';

  @override
  String get profileSaveError =>
      'Không thể lưu hồ sơ của bạn. Vui lòng thử lại.';

  @override
  String get homeGreetingMorning1 => 'Chào buổi sáng';

  @override
  String get homeGreetingMorning2 => 'Đón chào ngày mới';

  @override
  String get homeGreetingMorning3 => 'Khởi đầu ngày mới';

  @override
  String get homeGreetingAfternoon1 => 'Chào buổi chiều';

  @override
  String get homeGreetingAfternoon2 => 'Giai điệu buổi chiều';

  @override
  String get homeGreetingAfternoon3 => 'Giữ trọn mạch cảm xúc';

  @override
  String get homeGreetingEvening1 => 'Chào buổi tối';

  @override
  String get homeGreetingEvening2 => 'Phút giây thư giãn';

  @override
  String get homeGreetingEvening3 => 'Khoảnh khắc hoàng hôn';

  @override
  String get homeGreetingNight1 => 'Chúc ngủ ngon';

  @override
  String get homeGreetingNight2 => 'Giai điệu đêm khuya';

  @override
  String get homeGreetingNight3 => 'Khung giờ yên tĩnh';

  @override
  String homeGreetingNamed(String greeting, String name) {
    return '$greeting, $name';
  }

  @override
  String get homeTaglineListening => 'Hôm nay nghe gì nào?';

  @override
  String get homeTaglineLink =>
      'Có sẵn liên kết nhạc? Dán ngay vào ô tìm kiếm nhé';

  @override
  String get homeTaglineDiscover =>
      'Khám phá album yêu thích tiếp theo của bạn';

  @override
  String get homeContinueListening => 'Tiếp tục thưởng thức';

  @override
  String get homeRecentlyPlayed => 'Recently Played';

  @override
  String get homeRecentlyAdded => 'Mới thêm gần đây';

  @override
  String get homeOnRepeat => 'Nghe lặp lại nhiều nhất';

  @override
  String get homeShortcuts => 'Phím tắt';

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
  String get artistUpcomingConcerts => 'Buổi diễn sắp tới';

  @override
  String get artistAllUpcomingConcerts => 'Tất cả buổi diễn sắp tới';

  @override
  String get artistNoUpcomingConcerts => 'Chưa có buổi biểu diễn nào sắp tới.';

  @override
  String get motionArtwork => 'Ảnh bìa động';

  @override
  String get listeningStats => 'Thống kê nghe nhạc';

  @override
  String get listeningStatsRecord => 'Ghi nhận lịch sử nghe nhạc';

  @override
  String get listeningStatsDescription =>
      'Chỉ lưu cục bộ trên thiết bị này kể từ bây giờ. Chỉ ghi nhận khi nghe bằng trình phát tích hợp; thời gian tạm dừng, đang tải đệm hoặc tua nhạc sẽ không bị tính. Mỗi lượt nghe được tính sau 30 giây.';

  @override
  String get listeningStatsEmpty =>
      'Hãy nghe nhạc bằng trình phát tích hợp để bắt đầu thống kê hành trình âm nhạc của bạn. Các lượt nghe trước khi bật tính năng này sẽ không thể khôi phục.';

  @override
  String listeningStatsDays(int days) {
    return '$days ngày';
  }

  @override
  String listeningStatsMinutes(int minutes) {
    return '$minutes phút';
  }

  @override
  String listeningStatsTotals(int plays, int tracks, int days) {
    String _temp0 = intl.Intl.pluralLogic(
      plays,
      locale: localeName,
      other: '$plays plays',
      one: '1 lượt nghe',
    );
    String _temp1 = intl.Intl.pluralLogic(
      tracks,
      locale: localeName,
      other: '$tracks tracks',
      one: '1 bài hát',
    );
    String _temp2 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days active days',
      one: '1 ngày hoạt động',
    );
    return '$_temp0 · $_temp1 · $_temp2';
  }

  @override
  String get listeningStatsPreviousYear => 'Năm trước';

  @override
  String get listeningStatsNextYear => 'Năm sau';

  @override
  String get listeningStatsActivity => 'Số ngày nghe gần đây · số phút';

  @override
  String get listeningStatsTopArtists => 'Nghệ sĩ nghe nhiều nhất';

  @override
  String get listeningStatsTopTracks => 'Bài hát nghe nhiều nhất';

  @override
  String get listeningStatsLoadError => 'Không thể tải thống kê nghe nhạc';

  @override
  String get listeningStatsClear => 'Xóa thống kê nghe nhạc';

  @override
  String get listeningStatsClearError =>
      'Không thể xóa thống kê nghe nhạc. Vui lòng thử lại.';

  @override
  String get listeningStatsClearDescription =>
      'Xóa toàn bộ thống kê nghe nhạc trên thiết bị này? Các tệp nhạc và danh sách phát của bạn vẫn được giữ nguyên.';

  @override
  String get libraryArtistsEmpty =>
      'Nghệ sĩ sẽ xuất hiện tại đây sau khi bạn tải nhạc hoặc quét thư viện trên máy.';

  @override
  String get listeningRewind => 'Tua lại';

  @override
  String get listeningRewindDescription =>
      'Sống lại những khoảnh khắc âm nhạc đáng nhớ trong các tuần và tháng gần đây';

  @override
  String get listeningRewindChoosePeriod => 'Chọn khoảng thời gian';

  @override
  String listeningRewindLastWeeks(int weeks) {
    return 'Trong $weeks weeks';
  }

  @override
  String listeningRewindLastMonths(int months) {
    return 'Trong $months tháng';
  }

  @override
  String listeningRewindThisYear(int year) {
    return '$year tính đến nay';
  }

  @override
  String get listeningRewindIntroTitle => 'Rewind của bạn';

  @override
  String listeningRewindIntroBody(String start, String end) {
    return 'Cùng nhìn lại hành trình âm nhạc của bạn từ $start to $end.';
  }

  @override
  String get listeningRewindMinutesTitle => 'Bạn đã lắng nghe tổng cộng';

  @override
  String listeningRewindMinutesUnit(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: 'phút',
      one: 'phút',
    );
    return '$_temp0';
  }

  @override
  String listeningRewindHours(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: 'Tương đương khoảng $hours giờ nghe nhạc',
      one: 'Tương đương khoảng 1 giờ đắm mình trong âm nhạc',
    );
    return '$_temp0';
  }

  @override
  String listeningRewindMore(int percent) {
    return '$percent% nhiều hơn so với kỳ trước';
  }

  @override
  String listeningRewindLess(int percent) {
    return '$percent% ít hơn so với kỳ trước';
  }

  @override
  String get listeningRewindSame => 'Tương đương với giai đoạn trước';

  @override
  String get listeningRewindTopArtistTitle => 'Nghệ sĩ bạn nghe nhiều nhất';

  @override
  String listeningRewindArtistShare(int percent) {
    return '$percent% tổng thời gian nghe nhạc của bạn';
  }

  @override
  String get listeningRewindArtistsTitle => 'Nghệ sĩ nghe thường xuyên';

  @override
  String get listeningRewindTopTrackTitle => 'Bài hát bạn nghe nhiều nhất';

  @override
  String listeningRewindPlays(int plays) {
    String _temp0 = intl.Intl.pluralLogic(
      plays,
      locale: localeName,
      other: '$plays plays',
      one: '1 lượt nghe',
    );
    return '$_temp0';
  }

  @override
  String get listeningRewindTracksTitle => 'Bài hát nghe đi nghe lại';

  @override
  String get listeningRewindTopAlbumTitle =>
      'Album bạn tìm nghe lại nhiều nhất';

  @override
  String get listeningRewindNewArtistsTitle => 'Khám phá mới';

  @override
  String listeningRewindNewArtistsBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bạn đã khám phá thêm $count nghệ sĩ mới',
      one: 'Bạn đã khám phá thêm 1 nghệ sĩ mới',
    );
    return '$_temp0';
  }

  @override
  String get listeningRewindRhythmTitle => 'Nhịp điệu nghe nhạc của bạn';

  @override
  String get listeningRewindPeakDay => 'Ngày nghe nhiều nhất';

  @override
  String get listeningRewindFavoriteDay => 'Ngày nghe nhiều nhất trong tuần';

  @override
  String get listeningRewindStreak => 'Chuỗi ngày nghe liên tiếp dài nhất';

  @override
  String listeningRewindStreakDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days days in a row',
      one: '1 ngày',
    );
    return '$_temp0';
  }

  @override
  String get listeningRewindReplayTitle => 'Nghe mãi không rời';

  @override
  String listeningRewindReplayBody(int plays, String date) {
    return 'Bạn đã phát bài này $plays lần vào ngày $date';
  }

  @override
  String get listeningRewindOutroTitle => 'Đó là hành trình Rewind của bạn';

  @override
  String get listeningRewindOutroBody =>
      'Cứ tiếp tục thưởng thức âm nhạc nhé. Bản Rewind tiếp theo của bạn đang dần thành hình rồi.';

  @override
  String get listeningRewindEmpty =>
      'Chưa có đủ dữ liệu nghe nhạc trong giai đoạn này. Hãy thưởng thức thêm vài bản nhạc bằng trình phát tích hợp rồi quay lại sau nhé.';

  @override
  String get listeningRewindLoadError => 'Không thể tải Rewind của bạn';

  @override
  String listeningRewindSlide(int index, int count) {
    return 'Trang $index of $count';
  }

  @override
  String get listeningRewindShare => 'Chia sẻ';

  @override
  String get listeningRewindShareError => 'Không thể chia sẻ Rewind của bạn';

  @override
  String get listeningRewindNext => 'Tiếp theo';

  @override
  String get listeningRewindPrevious => 'Trước';

  @override
  String get listeningRewindMonthlyReady =>
      '4 tuần nghe nhạc gần đây của bạn đã sẵn sàng để nhìn lại';

  @override
  String listeningRewindYearTitle(String year) {
    return 'Bản $year trong thư mục Music';
  }

  @override
  String get listeningRewindYearEyebrow => 'Rewind tổng kết năm';

  @override
  String get listeningRewindYearBanner =>
      'Những nghệ sĩ, bài hát và khoảnh khắc âm nhạc nổi bật nhất năm của bạn';

  @override
  String get listeningRewindYearIntroBody =>
      'Trọn vẹn hành trình âm nhạc của bạn trong năm qua, từ giai điệu đầu tiên cho đến tháng bùng nổ nhất.';

  @override
  String get listeningRewindNumbersTitle =>
      'Năm âm nhạc của bạn qua những con số';

  @override
  String get listeningRewindSongsLabel => 'Bài hát';

  @override
  String get listeningRewindArtistsLabel => 'Nghệ sĩ';

  @override
  String get listeningRewindAlbumsLabel => 'Album';

  @override
  String get listeningRewindDaysLabel => 'Số ngày có âm nhạc';

  @override
  String listeningRewindDaysShare(int percent) {
    return 'Có âm nhạc trong $percent% số ngày của bạn';
  }

  @override
  String get listeningRewindMonthsTitle => 'Qua từng tháng';

  @override
  String get listeningRewindBiggestMonthLabel => 'Tháng nghe nhiều nhất';

  @override
  String listeningRewindBiggestMonth(String month) {
    return 'Tháng bạn nghe nhạc bùng nổ nhất là $month';
  }

  @override
  String get listeningRewindMonthlyArtistsTitle => 'Nghệ sĩ của tháng';

  @override
  String get listeningRewindLoyalTitle => 'Luôn đồng hành bên bạn';

  @override
  String listeningRewindLoyalBody(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Đồng hành cùng bạn trong $days ngày khác nhau',
      one: 'Đồng hành cùng bạn trong 1 ngày',
    );
    return '$_temp0';
  }

  @override
  String get listeningRewindFirstSongTitle => 'Nơi hành trình năm qua bắt đầu';

  @override
  String listeningRewindFirstSongBody(String date) {
    return 'Ca khúc bạn nghe nhiều nhất trong ngày đầu tiên sử dụng, $date';
  }

  @override
  String listeningRewindYearOutroTitle(String year) {
    return 'Đó là hành trình $year';
  }

  @override
  String get listeningRewindYearOutroBody =>
      'Chúc bạn thêm một năm mới tràn ngập những giai điệu tuyệt vời.';

  @override
  String get weeklyReleases => 'Phát hành mới';

  @override
  String get weeklyReleasesDescription =>
      'Album và đĩa đơn mới nhất từ các nghệ sĩ bạn yêu thích, được cập nhật thông qua các tiện ích metadata đã cài.';

  @override
  String get weeklyReleasesEmpty =>
      'Không tìm thấy bản phát hành nào có ngày cụ thể trong khoảng thời gian này. Hãy thêm nghệ sĩ yêu thích hoặc thử chọn khoảng thời gian dài hơn.';

  @override
  String get weeklyReleasesUnavailable =>
      'Một số nghệ sĩ không thể kiểm tra được. Kết quả đã lưu của họ được giữ lại. Các nhà cung cấp có thể không cung cấp danh mục nghệ sĩ hoặc ngày phát hành chính xác.';

  @override
  String get weeklyReleasesLoadError =>
      'Không thể kiểm tra nhạc mới phát hành. Hãy kéo xuống để làm mới.';

  @override
  String get motionArtworkDescription =>
      'Phát lặp lại video ảnh bìa động do nguồn metadata cung cấp. Hãy tắt nếu muốn dùng ảnh bìa tĩnh và tiết kiệm pin hơn.';

  @override
  String get libraryLoading => 'Đang tải Thư viện…';

  @override
  String get libraryLoadFailed =>
      'Không thể tải Thư viện. Hãy thử lại để nạp danh sách thư mục đã lưu và chỉ mục bài hát.';

  @override
  String get discordPresenceDescription =>
      'Hiển thị tên bài hát, nghệ sĩ, album và tiến trình phát nhạc từ trình phát tích hợp lên hồ sơ Discord của bạn. Tệp nhạc và ảnh bìa trên máy tuyệt đối không bao giờ bị tải lên. Tự động ẩn khi tạm dừng hoặc dừng nhạc.';

  @override
  String get discordPresenceDisabled => 'Đã tắt';

  @override
  String get discordPresenceLink => 'Liên kết tài khoản Discord';

  @override
  String get discordPresenceConnecting => 'Đang kết nối tới Discord…';

  @override
  String get discordPresenceReady => 'Sẵn sàng khi nhạc bắt đầu phát';

  @override
  String get discordPresenceActive => 'Đang chia sẻ bài hát hiện tại';

  @override
  String get discordPresenceUnavailable =>
      'Không thể kết nối Discord. Sẽ thử lại trong khi phát nhạc.';

  @override
  String get discordPresenceBuildUnavailable =>
      'Bản dựng ứng dụng này không tích hợp sẵn Discord SDK.';

  @override
  String get discordPresenceAndroidHelp =>
      'Cài đặt ứng dụng Discord và đăng nhập trên điện thoại này. Hãy bật chia sẻ trạng thái hoạt động trong Discord. Không hỗ trợ khi dùng trình phát bên ngoài.';

  @override
  String get discordPresenceIosHelp =>
      'Hãy liên kết tài khoản của bạn thông qua Discord và cho phép chia sẻ hoạt động. Nếu quá trình cấp quyền không thành công, hãy nhấn để thực hiện liên kết lại.';

  @override
  String get discordPresenceDesktopHelp =>
      'Duy trì ứng dụng Discord trên máy tính đang chạy và đã đăng nhập, đồng thời cho phép chia sẻ hoạt động trong Discord.';

  @override
  String get discordPresenceDisconnect => 'Ngắt kết nối và quên tài khoản';

  @override
  String get autoMixSettingsTitle => 'Hiệu ứng chuyển bài';

  @override
  String get autoMixAutomaticDuration => 'Thời lượng tự động';

  @override
  String get autoMixDuration => 'Thời lượng chuyển giao';

  @override
  String get autoMixEffect => 'Hiệu ứng chuyển bài';

  @override
  String get autoMixEffectAuto => 'Tự động';

  @override
  String get autoMixEffectCrossfade => 'Chuyển tiếp mượt mà';

  @override
  String get autoMixEffectMuffled => 'Làm đục âm thanh';

  @override
  String get autoMixEffectEcho => 'Tiếng vang';

  @override
  String get autoMixEffectPitch => 'Cao độ';

  @override
  String get autoMixEffectCustom => 'Tùy chỉnh';

  @override
  String get autoMixEffectsHelp =>
      'Hiệu ứng sẽ áp dụng vào phần cuối của bài hát sắp kết thúc trong lúc chuyển giao. Các bài hát ngắn sẽ tự dùng khoảng chồng nhạc ngắn hơn.';

  @override
  String get autoMixSpeed => 'Tốc độ';

  @override
  String get autoMixPitch => 'Cao độ (Nửa cung)';

  @override
  String get autoMixEcho => 'Tiếng vang';

  @override
  String get autoMixLowPass => 'Bộ lọc âm trầm đục';

  @override
  String get autoMixMixing => 'Trộn âm';

  @override
  String get autoMixCrossfading => 'Chuyển bài mượt mà';

  @override
  String get playbackAutomation => 'Tự động phát';

  @override
  String get playbackPauseOnMute => 'Tự động phát';

  @override
  String get snackbarPlaybackMuted =>
      'Âm lượng media đang ở mức 0 nên nhạc đã tạm dừng. Nhấn Phát lần nữa để tiếp tục nghe.';

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
      'Tự tạm dừng khi giảm âm lượng media về 0 và phát tiếp khi tăng âm lượng lên. Nếu bạn chủ động tạm dừng thì nhạc vẫn sẽ dừng. Chỉ áp dụng cho đầu ra âm thanh tiêu chuẩn.';

  @override
  String get playbackOnHeadphonesConnected => 'Tự phát khi kết nối tai nghe';

  @override
  String get playbackOnHeadphonesConnectedDescription =>
      'Tự động phát tiếp bài hiện tại khi cắm tai nghe có dây hoặc kết nối tai nghe Bluetooth, và tạm dừng khi ngắt kết nối. Chỉ áp dụng cho trình phát tích hợp.';

  @override
  String get appearanceCustomFont => 'Phông chữ tùy chỉnh';

  @override
  String get appearanceCustomFontSubtitle =>
      'Nhập tệp phông chữ TTF hoặc OTF (tối đa 10 MB) để thay thế phông chữ giao diện và hệ thống.';

  @override
  String get appearanceCustomFontInvalid =>
      'Không thể tải phông chữ này. Hãy chọn tệp TTF hoặc OTF hợp lệ có dung lượng tối đa 10 MB.';

  @override
  String get appearanceCustomFontReset => 'Dùng phông chữ của giao diện';

  @override
  String get equalizerTitle => 'Bộ chỉnh âm';

  @override
  String get equalizerDescription =>
      'Eq 5–31 dải tần, chỉnh âm sắc, tiền khuếch đại và xử lý dải động';

  @override
  String get equalizerEnable => 'Bật bộ chỉnh âm';

  @override
  String get equalizerBands => 'Dải tần';

  @override
  String get equalizerTone => 'Âm sắc & Stereo';

  @override
  String get equalizerPreamp => 'Tiền khuếch đại';

  @override
  String get equalizerBass => 'Bass';

  @override
  String get equalizerTreble => 'Treble';

  @override
  String get equalizerBalance => 'Cân bằng kênh trái/phải';

  @override
  String get equalizerDynamics => 'Dải động';

  @override
  String get equalizerHeadroom => 'Tự động dự phòng mức tín hiệu';

  @override
  String get equalizerHeadroomDescription =>
      'Giảm mức khuếch đại đầu vào để tạo khoảng trống cho các dải tần được đẩy lên, tránh bị vỡ tiếng.';

  @override
  String get equalizerLimiter => 'Bộ giới hạn đỉnh';

  @override
  String get equalizerLimiterDescription =>
      'Giữ mức đỉnh dưới −0.5 dBFS để hạn chế hiện tượng vỡ tiếng.';

  @override
  String get equalizerCompressor => 'Bộ nén tín hiệu';

  @override
  String get equalizerCompressorDescription =>
      'Giảm sự chênh lệch âm lượng giữa những đoạn nhạc nhỏ và đoạn cao trào.';

  @override
  String get equalizerThreshold => 'Ngưỡng tác động';

  @override
  String get equalizerRatio => 'Tỷ lệ nén';

  @override
  String get equalizerAttack => 'Thời gian kích hoạt';

  @override
  String get equalizerRelease => 'Thời gian hồi phục';

  @override
  String get equalizerPresets => 'Cấu hình có sẵn';

  @override
  String get equalizerSavePreset => 'Lưu cấu hình';

  @override
  String get equalizerPresetName => 'Tên cấu hình';

  @override
  String get equalizerImport => 'Nhập cấu hình';

  @override
  String get equalizerExport => 'Chia sẻ cấu hình';

  @override
  String get equalizerImportInvalid =>
      'Chọn một tệp cấu hình bộ chỉnh âm Toadplayer hợp lệ (JSON, tối đa 64 KB).';

  @override
  String get equalizerSaved => 'Đã lưu cấu hình';

  @override
  String get equalizerResetTitle => 'Đặt lại Equalizer về mặc định?';

  @override
  String get equalizerResetDescription =>
      'Đặt lại đường cong Eq phẳng cùng cài đặt âm sắc và dải động mặc định. Các cấu hình bạn đã lưu vẫn được giữ nguyên.';

  @override
  String get equalizerBypass =>
      'Các chế độ Bit-perfect, Direct USB và Hi-Res độc quyền sẽ bỏ qua EQ. Hãy tắt Bit-perfect nếu muốn dùng EQ. Trình phát bên ngoài sẽ tự quản lý hiệu ứng riêng.';

  @override
  String get equalizerCurve => 'Đường cong EQ (ước tính)';

  @override
  String get equalizerCurveDescription =>
      'Đường cong biểu thị mức tăng giảm của từng dải tần; đáp tuyến thực tế phụ thuộc vào bộ xử lý đầu ra.';

  @override
  String get equalizerEffectivePreamp => 'Mức khuếch đại đầu vào sau Headroom';

  @override
  String get equalizerDeletePreset => 'Xóa cấu hình';

  @override
  String get equalizerCustom => 'Tùy chỉnh';

  @override
  String get equalizerManagePresets => 'Quản lý cấu hình';

  @override
  String get lyricsShareTitle => 'Chia sẻ lời bài hát';

  @override
  String lyricsShareSelectHint(int count) {
    return 'Select up to $count dòng';
  }

  @override
  String lyricsShareLimit(int count) {
    return 'You can share up to $count dòng';
  }

  @override
  String get lyricsShareAction => 'Chia sẻ';

  @override
  String get lyricsShareError => 'Không thể tạo ảnh chia sẻ lời bài hát';

  @override
  String get lyricsShareBackgroundArtwork => 'Ảnh bìa';

  @override
  String get lyricsShareBackgroundColor => 'Màu trích xuất từ ảnh bìa';

  @override
  String get lyricsShareBackgroundDark => 'Tối';

  @override
  String get lyricsShareBackgroundLight => 'Sáng';

  @override
  String get audioInfoTitle => 'Thông tin âm thanh';

  @override
  String get audioInfoSource => 'Tệp nguồn';

  @override
  String get audioInfoSignal => 'Tín hiệu';

  @override
  String get audioInfoLoudness => 'Độ lớn âm lượng';

  @override
  String get audioInfoProcessing => 'Đang xử lý';

  @override
  String get audioInfoOutput => 'Đầu ra';

  @override
  String get audioInfoAnalysis => 'Phân tích phổ tần số và mức tín hiệu';

  @override
  String get audioInfoQuality => 'Chất lượng';

  @override
  String get audioInfoHiResLossless => 'Lossless độ phân giải cao';

  @override
  String get audioInfoLossless => 'Lossless';

  @override
  String get audioInfoLossy => 'Lossy';

  @override
  String get audioInfoFormat => 'Định dạng';

  @override
  String get audioInfoCodec => 'Codec';

  @override
  String get audioInfoSampleRate => 'Tần số lấy mẫu';

  @override
  String get audioInfoBitDepth => 'Độ sâu Bit';

  @override
  String get audioInfoChannels => 'Số kênh';

  @override
  String audioInfoChannelCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kênh',
      two: 'Stereo',
      one: 'Mono',
    );
    return '$_temp0';
  }

  @override
  String get audioInfoBitrate => 'Tốc độ bit';

  @override
  String get audioInfoDuration => 'Thời lượng';

  @override
  String get audioInfoFileSize => 'Dung lượng tệp';

  @override
  String get audioInfoCompression => 'Độ nén';

  @override
  String audioInfoCompressionValue(String percent) {
    return '$percent% so với dung lượng không nén';
  }

  @override
  String get audioInfoLocation => 'Vị trí';

  @override
  String get audioInfoLocationLocal => 'Bộ nhớ thiết bị';

  @override
  String get audioInfoLocationShared => 'Thư mục chia sẻ';

  @override
  String get audioInfoLocationNetwork => 'Ổ đĩa mạng (NAS)';

  @override
  String audioInfoLocationLink(String device) {
    return '$device via Toadplayer Link';
  }

  @override
  String get audioInfoPcmRate => 'Tốc độ dữ liệu không nén';

  @override
  String get audioInfoFrequencyRange => 'Dải tần số';

  @override
  String audioInfoFrequencyRangeValue(String frequency) {
    return 'Tối đa $frequency (Nyquist)';
  }

  @override
  String get audioInfoDynamicRange => 'Dải động lý thuyết';

  @override
  String get audioInfoTrackGain => 'Độ lợi bài hát';

  @override
  String get audioInfoTrackPeak => 'Đỉnh âm lượng bài';

  @override
  String get audioInfoAlbumGain => 'Độ lợi album';

  @override
  String get audioInfoAlbumPeak => 'Đỉnh âm lượng album';

  @override
  String get audioInfoNoGainTags => 'Chưa có tag ReplayGain';

  @override
  String audioInfoApplied(String gain) {
    return 'Đã áp dụng $gain';
  }

  @override
  String get audioInfoOn => 'Bật';

  @override
  String get audioInfoOff => 'Tắt';

  @override
  String get audioInfoBypassed => 'Đã bị bỏ qua nhờ xuất âm thanh trực tiếp';

  @override
  String get audioInfoPlayer => 'Trình phát nhạc';

  @override
  String get audioInfoPlayerValue => 'Trình phát tích hợp của Toadplayer';

  @override
  String get audioInfoSignalPath => 'Chia sẻ';

  @override
  String get audioInfoPathSystem => 'Bộ trộn âm hệ thống';

  @override
  String get audioInfoPathDirect => 'Direct USB, bỏ qua bộ trộn âm hệ thống';

  @override
  String get audioInfoPathExclusive =>
      'Đầu ra độc quyền (Exclusive), bỏ qua bộ trộn âm hệ thống';

  @override
  String get audioInfoDecoder => 'Bộ giải mã';

  @override
  String get audioInfoHardware => 'Phần cứng';

  @override
  String get audioInfoSoftware => 'Phần mềm';

  @override
  String audioInfoBands(int count) {
    return '$count dải tần';
  }

  @override
  String get audioInfoTempo => 'Nhịp độ';

  @override
  String get audioInfoResampling => 'Tái lấy mẫu';

  @override
  String get audioInfoResamplingNone => 'Không, tần số lấy mẫu khớp nguyên bản';

  @override
  String get audioInfoBitPerfect => 'Bit-perfect';

  @override
  String get audioInfoBitPerfectActive =>
      'Có, mẫu âm thanh nguyên bản tuyệt đối';

  @override
  String get audioInfoBitPerfectNo => 'Không, đã qua bộ trộn âm của hệ thống';

  @override
  String get audioInfoBitPerfectUnverified => 'Not verified';

  @override
  String get audioInfoBitPerfectProcessed => 'No, audio processing is active';

  @override
  String get audioInfoDevice => 'Thiết bị';

  @override
  String audioInfoDeviceType(String type) {
    String _temp0 = intl.Intl.selectLogic(type, {
      'speaker': 'Loa điện thoại',
      'earpiece': 'Loa thoại',
      'wired_headphones': 'Tai nghe có dây',
      'wired_headset': 'Tai nghe có dây kèm mic',
      'line': 'Đầu ra Line Out',
      'bluetooth': 'Bluetooth',
      'bluetooth_le': 'Bluetooth LE Audio',
      'usb': 'Âm thanh USB',
      'usb_headset': 'Tai nghe USB',
      'hdmi': 'HDMI',
      'dock': 'Đế kết nối',
      'cast': 'Truyền âm thanh',
      'hearing_aid': 'Máy trợ thính',
      'airplay': 'AirPlay',
      'car': 'Âm thanh ô tô',
      'other': 'Khác',
    });
    return '$_temp0';
  }

  @override
  String get audioInfoOutputRate => 'Tần số lấy mẫu đầu ra';

  @override
  String get audioInfoOutputFormat => 'Định dạng đầu ra';

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
  String get audioInfoDeviceRates => 'Tần số lấy mẫu thiết bị hỗ trợ';

  @override
  String get audioInfoDeviceFormats => 'Định dạng thiết bị hỗ trợ';

  @override
  String get audioInfoAnyRate => 'Bất kỳ';

  @override
  String get audioInfoBuffer => 'Bộ đệm trộn âm';

  @override
  String get audioInfoLatency => 'Độ trễ đầu ra';

  @override
  String get audioInfoLowLatency => 'Âm thanh độ trễ thấp';

  @override
  String get audioInfoProAudio => 'Âm thanh chuyên nghiệp';

  @override
  String get audioInfoSupported => 'Được hỗ trợ';

  @override
  String get audioInfoNotSupported => 'Không hỗ trợ';

  @override
  String get audioInfoSpatial => 'Âm thanh không gian';

  @override
  String get audioInfoHeadTracking => 'Theo dõi chuyển động đầu';

  @override
  String get audioInfoUnavailable => 'Không khả dụng';

  @override
  String get audioInfoFixedVolume => 'Do thiết bị điều khiển';

  @override
  String get audioInfoCopy => 'Sao chép báo cáo';

  @override
  String get audioInfoCopied => 'Đã sao chép thông tin âm thanh';

  @override
  String get lyricsTextSize => 'Cỡ chữ lời bài hát';

  @override
  String get lyricsTextPreview =>
      'Theo dõi từng câu hát trong bản nhạc yêu thích của bạn';

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
  String get appCrashTitle =>
      'Ứng dụng đã gặp sự cố dừng đột ngột ở lần chạy trước';

  @override
  String get appAnrTitle => 'Ứng dụng đã bị treo trước đó';

  @override
  String get appAnrMessage =>
      'Báo cáo chẩn đoán đã được lưu. Bạn có thể sao chép và gửi cho nhà phát triển để hỗ trợ kiểm tra lỗi.';

  @override
  String get appCrashMessage =>
      'Đã lưu báo cáo sự cố ứng dụng. Hãy sao chép và gửi cho nhà phát triển để hỗ trợ kiểm tra khắc phục.';

  @override
  String get appCrashDetails => 'Xem chi tiết lỗi và nhật ký';

  @override
  String get appCrashCopy => 'Sao chép báo cáo gửi nhà phát triển';

  @override
  String get appCrashDismiss => 'Bỏ qua';

  @override
  String get appCrashCopyFailed =>
      'Không thể sao chép báo cáo sự cố. Vui lòng thử lại.';

  @override
  String get appCrashDismissFailed =>
      'Không thể đóng báo cáo sự cố. Vui lòng thử lại.';

  @override
  String get optionsEmbeddedCoverSizeOriginal => 'Độ phân giải gốc';

  @override
  String desktopShortcutTooltip(String action, String shortcut) {
    return '$action ($shortcut)';
  }

  @override
  String get desktopPlayerIdle => 'Không phát nhạc';

  @override
  String get desktopVolumeUp => 'Tăng âm lượng';

  @override
  String get desktopVolumeDown => 'Giảm âm lượng';

  @override
  String desktopTableSortedAscending(String column) {
    return '$column, sắp xếp tăng dần';
  }

  @override
  String desktopTableSortedDescending(String column) {
    return '$column, sắp xếp tăng dần';
  }

  @override
  String get desktopMenuOpen => 'Mở';

  @override
  String get desktopMenuShowDetails => 'Xem chi tiết';

  @override
  String get desktopDropToImport => 'Thả để thêm vào thư viện';

  @override
  String desktopDropImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'thư mục',
      one: 'thư mục',
    );
    return 'Đang thêm $count $_temp0 vào thư viện của bạn';
  }

  @override
  String get desktopDropNothingToImport =>
      'Kéo thả tệp nhạc hoặc thư mục để thêm vào thư viện của bạn';

  @override
  String get desktopAllPlaylists => 'Tất cả danh sách phát';

  @override
  String get desktopMenuSettings => 'Cài đặt...';

  @override
  String get desktopMenuFile => 'Tệp';

  @override
  String get desktopMenuEdit => 'Chỉnh sửa';

  @override
  String get desktopMenuView => 'Xem';

  @override
  String get desktopWindowMode => 'Chế độ cửa sổ';

  @override
  String get desktopWindowed => 'Cửa sổ';

  @override
  String get desktopWindowFullscreen => 'Toàn màn hình';

  @override
  String get desktopWindowBorderless => 'Không viền';

  @override
  String get desktopExitFullscreen => 'Thoát toàn màn hình';

  @override
  String get desktopMinimizeWindow => 'Thu nhỏ cửa sổ';

  @override
  String get desktopZoomWindow => 'Phóng to hoặc khôi phục cửa sổ';

  @override
  String get desktopWindowModeUnavailable =>
      'Không thể thay đổi chế độ cửa sổ. Vui lòng thử lại sau khi hiệu ứng chuyển cửa sổ kết thúc.';

  @override
  String get desktopMenuControls => 'Điều khiển';

  @override
  String get desktopMenuWindow => 'Cửa sổ';

  @override
  String get desktopMenuHelp => 'Trợ giúp';

  @override
  String get desktopMenuPlayPause => 'Phát/Dừng';

  @override
  String get desktopMenuMiniPlayer => 'Trình phát thu nhỏ';

  @override
  String get desktopMiniPlayerExpand => 'Hiện thị toàn bộ cửa sổ';

  @override
  String get desktopMenuRefresh => 'Làm mới';

  @override
  String get desktopMenuProjectPage => 'Trang dự án';

  @override
  String get desktopDownloadsShowAll => 'Hiện thị tất cả';

  @override
  String get desktopDownloadsQueued => 'Chờ';

  @override
  String get desktopDownloadsCancel => 'Hủy tải xuống';

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
  String get desktopScrollBack => 'Cuộn trở lại';

  @override
  String get desktopScrollForward => 'Cuộn lên trước';

  @override
  String get settingsKeyboardShortcuts => 'Phím tắt';

  @override
  String get settingsKeyboardShortcutsSubtitle =>
      'Các phím dùng cho phát lại, điều hướng và bảng điều khiển';

  @override
  String get desktopShortcutsNavigation => 'Điều hướng';

  @override
  String get desktopShortcutDismiss => 'Đóng hộp thoại hoặc trang';

  @override
  String get desktopShortcutForward => 'Forward';

  @override
  String get desktopShortcutToggleSidebar => 'Hiển thị hoặc ẩn thanh bên';

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
