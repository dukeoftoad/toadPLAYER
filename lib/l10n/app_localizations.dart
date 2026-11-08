import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

// Only English is shipped.
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  /// Only English is shipped.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
  ];

  /// No description provided for @libraryLyricsSearchDescription.
  ///
  /// In en, this message translates to:
  /// **'Search lyrics saved in your songs. The first search may take a while; you can switch filters to stop it.'**
  String get libraryLyricsSearchDescription;

  /// No description provided for @libraryLyricsIndexing.
  ///
  /// In en, this message translates to:
  /// **'Preparing lyrics search: {count} songs checked'**
  String libraryLyricsIndexing(int count);

  /// No description provided for @libraryLyricsSearchIncomplete.
  ///
  /// In en, this message translates to:
  /// **'Some songs could not be read. Results may be incomplete.'**
  String get libraryLyricsSearchIncomplete;

  /// No description provided for @libraryLyricsRefresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh lyrics search'**
  String get libraryLyricsRefresh;

  /// No description provided for @networkErrorListing.
  ///
  /// In en, this message translates to:
  /// **'The server responded, but its folder listing could not be read. For WebDAV, use the WebDAV endpoint. For HTTP, use a directory listing or direct audio URL.'**
  String get networkErrorListing;

  /// No description provided for @networkErrorStorage.
  ///
  /// In en, this message translates to:
  /// **'The server was reached, but this device could not save the connection. Check the app log and retry.'**
  String get networkErrorStorage;

  /// No description provided for @extensionsUnsecuredStorage.
  ///
  /// In en, this message translates to:
  /// **'Use unsecured extension storage'**
  String get extensionsUnsecuredStorage;

  /// No description provided for @extensionsUnsecuredStorageDescription.
  ///
  /// In en, this message translates to:
  /// **'Run extensions without a Linux keyring. The key is saved locally, so anyone with access to your app files can read extension credentials. Off uses the system keyring.'**
  String get extensionsUnsecuredStorageDescription;

  /// No description provided for @extensionsStorageKeyringRequired.
  ///
  /// In en, this message translates to:
  /// **'Existing extension data needs its original key. Unlock the system keyring once, then enable unsecured storage again. Your data has been preserved.'**
  String get extensionsStorageKeyringRequired;

  /// No description provided for @extensionsStorageKeyConflict.
  ///
  /// In en, this message translates to:
  /// **'The local and system keyring keys differ. Storage was not changed and both keys were preserved.'**
  String get extensionsStorageKeyConflict;

  /// No description provided for @extensionsStorageKeyringUnavailable.
  ///
  /// In en, this message translates to:
  /// **'The system keyring is unavailable or locked. Start or unlock it before switching to secure storage. Your local key has been preserved.'**
  String get extensionsStorageKeyringUnavailable;

  /// File operation on a named linked computer
  ///
  /// In en, this message translates to:
  /// **'{action} on {name}'**
  String linkFileActionOn(String action, String name);

  /// No description provided for @linkFileActionsDescription.
  ///
  /// In en, this message translates to:
  /// **'Changes apply to music files on {name}. Accepted work continues if this phone disconnects.'**
  String linkFileActionsDescription(String name);

  /// No description provided for @linkFileDeleteConfirm.
  ///
  /// In en, this message translates to:
  /// **'Delete {count} {count, plural, =1{music file} other{music files}} from {name}? This removes the files from that computer\'s storage.'**
  String linkFileDeleteConfirm(int count, String name);

  /// Title of the list of edits, conversions and deletions the phone started on the linked computer's music files
  ///
  /// In en, this message translates to:
  /// **'File changes'**
  String get linkFileJobs;

  /// No description provided for @linkFileJobsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Edits, conversions and deletions on {name}'**
  String linkFileJobsSubtitle(String name);

  /// No description provided for @linkFileJobsEmpty.
  ///
  /// In en, this message translates to:
  /// **'No file changes yet'**
  String get linkFileJobsEmpty;

  /// No description provided for @linkFileJobsEmptyMessage.
  ///
  /// In en, this message translates to:
  /// **'Edits, conversions and deletions you start on the computer\'s songs from this phone appear here.'**
  String get linkFileJobsEmptyMessage;

  /// No description provided for @linkDesktopFileJobsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Changes requested from your phones'**
  String get linkDesktopFileJobsSubtitle;

  /// No description provided for @linkDesktopFileJobsEmptyMessage.
  ///
  /// In en, this message translates to:
  /// **'Edits, conversions and deletions requested from your phones appear here.'**
  String get linkDesktopFileJobsEmptyMessage;

  /// No description provided for @linkFileJobRequestedBy.
  ///
  /// In en, this message translates to:
  /// **'From {name}'**
  String linkFileJobRequestedBy(String name);

  /// Snackbar action that opens the file changes list to see which songs failed
  ///
  /// In en, this message translates to:
  /// **'View'**
  String get linkFileJobsView;

  /// No description provided for @linkFileJobsUnsupported.
  ///
  /// In en, this message translates to:
  /// **'Update Toadplayer on your computer to manage its music files from this phone.'**
  String get linkFileJobsUnsupported;

  /// No description provided for @linkFileSelectionOneDevice.
  ///
  /// In en, this message translates to:
  /// **'Select songs from one linked computer at a time (up to 100 songs).'**
  String get linkFileSelectionOneDevice;

  /// No description provided for @linkFileJobProgress.
  ///
  /// In en, this message translates to:
  /// **'{finished} of {total} {total, plural, =1{song} other{songs}}'**
  String linkFileJobProgress(int finished, int total);

  /// No description provided for @linkFileJobFailedCount.
  ///
  /// In en, this message translates to:
  /// **'{count} failed'**
  String linkFileJobFailedCount(int count);

  /// No description provided for @linkFileJobFinished.
  ///
  /// In en, this message translates to:
  /// **'{action} finished on {name}'**
  String linkFileJobFinished(String action, String name);

  /// No description provided for @linkFileDeleting.
  ///
  /// In en, this message translates to:
  /// **'Deleting...'**
  String get linkFileDeleting;

  /// No description provided for @linkFileReading.
  ///
  /// In en, this message translates to:
  /// **'Reading tags...'**
  String get linkFileReading;

  /// No description provided for @linkFileSavingCover.
  ///
  /// In en, this message translates to:
  /// **'Saving cover art...'**
  String get linkFileSavingCover;

  /// No description provided for @linkFileCancelHint.
  ///
  /// In en, this message translates to:
  /// **'Stop after the current song'**
  String get linkFileCancelHint;

  /// No description provided for @linkFileJobCancelled.
  ///
  /// In en, this message translates to:
  /// **'Stopped'**
  String get linkFileJobCancelled;

  /// No description provided for @linkFileJobQueued.
  ///
  /// In en, this message translates to:
  /// **'Queued'**
  String get linkFileJobQueued;

  /// No description provided for @linkFileJobCompleted.
  ///
  /// In en, this message translates to:
  /// **'Finished'**
  String get linkFileJobCompleted;

  /// No description provided for @linkFileChanged.
  ///
  /// In en, this message translates to:
  /// **'The file changed since the preview. Preview it again before saving.'**
  String get linkFileChanged;

  /// No description provided for @linkFileOperationFailed.
  ///
  /// In en, this message translates to:
  /// **'The operation could not be completed. Check the computer\'s logs for details.'**
  String get linkFileOperationFailed;

  /// No description provided for @trackBpm.
  ///
  /// In en, this message translates to:
  /// **'BPM'**
  String get trackBpm;

  /// No description provided for @trackMood.
  ///
  /// In en, this message translates to:
  /// **'Mood'**
  String get trackMood;

  /// No description provided for @subsonicAddToLibrary.
  ///
  /// In en, this message translates to:
  /// **'Add server to Library'**
  String get subsonicAddToLibrary;

  /// No description provided for @subsonicLibraryAdded.
  ///
  /// In en, this message translates to:
  /// **'Server added to Library'**
  String get subsonicLibraryAdded;

  /// No description provided for @subsonicLibraryDescription.
  ///
  /// In en, this message translates to:
  /// **'Sync the server catalogue and artwork to Library. Music stays on your server. Rescan it in Local Library settings to update the catalogue.'**
  String get subsonicLibraryDescription;

  /// No description provided for @subsonicAuthentication.
  ///
  /// In en, this message translates to:
  /// **'Authentication'**
  String get subsonicAuthentication;

  /// No description provided for @subsonicToken.
  ///
  /// In en, this message translates to:
  /// **'Salted token'**
  String get subsonicToken;

  /// No description provided for @subsonicPasswordAuth.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get subsonicPasswordAuth;

  /// No description provided for @subsonicApiKey.
  ///
  /// In en, this message translates to:
  /// **'API key'**
  String get subsonicApiKey;

  /// No description provided for @subsonicUsername.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get subsonicUsername;

  /// No description provided for @subsonicPassword.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get subsonicPassword;

  /// No description provided for @subsonicSearch.
  ///
  /// In en, this message translates to:
  /// **'Search server music...'**
  String get subsonicSearch;

  /// No description provided for @subsonicMoreAlbums.
  ///
  /// In en, this message translates to:
  /// **'More albums'**
  String get subsonicMoreAlbums;

  /// No description provided for @subsonicErrorApi.
  ///
  /// In en, this message translates to:
  /// **'The server does not support this API version or authentication method. Check the server settings and the selected sign-in method.'**
  String get subsonicErrorApi;

  /// Files settings item that opens network storage to choose a folder for downloaded music
  ///
  /// In en, this message translates to:
  /// **'Network download destination'**
  String get networkDownloadDestination;

  /// Action to select the current network folder as the download destination; also the settings subtitle when no network destination is selected
  ///
  /// In en, this message translates to:
  /// **'Download to this folder'**
  String get networkUseForDownloads;

  /// Status label replacing the download destination action when the current network folder is already selected
  ///
  /// In en, this message translates to:
  /// **'Selected download destination'**
  String get networkDownloadSelected;

  /// Files settings action that clears the network download destination and returns downloads to the local folder
  ///
  /// In en, this message translates to:
  /// **'Use local download folder'**
  String get networkUseLocalDownloads;

  /// Snackbar prefix when the write-access check fails while selecting a network download folder; followed by a specific network error message
  ///
  /// In en, this message translates to:
  /// **'Could not write to this folder.'**
  String get networkDownloadAccessFailed;

  /// Download queue status during upload of prepared audio to the network destination; a progress percentage may follow
  ///
  /// In en, this message translates to:
  /// **'Uploading to network storage'**
  String get networkUploading;

  /// Library song action that copies songs stored on this device to a NAS or WebDAV folder; also the title of the folder choice sheet
  ///
  /// In en, this message translates to:
  /// **'Upload to network storage'**
  String get networkUpload;

  /// Subtitle of a network connection in the upload sheet; opens its folders to pick the upload destination
  ///
  /// In en, this message translates to:
  /// **'Choose a folder'**
  String get networkUploadChooseFolder;

  /// Action in the network folder browser that picks the current folder as the upload destination
  ///
  /// In en, this message translates to:
  /// **'Upload to this folder'**
  String get networkUploadHere;

  /// Help below the upload destination action describing the folder layout and that existing server files are kept
  ///
  /// In en, this message translates to:
  /// **'Songs go into Artist/Album folders here. Files already on the server are never replaced.'**
  String get networkUploadDescription;

  /// Snackbar after uploading Library songs to network storage
  ///
  /// In en, this message translates to:
  /// **'Uploaded {saved}, already there {skipped}, failed {failed}'**
  String networkUploadResult(int saved, int skipped, int failed);

  /// Snackbar when the listener cancels uploading Library songs to network storage
  ///
  /// In en, this message translates to:
  /// **'Upload stopped'**
  String get networkUploadCancelled;

  /// Snackbar when uploading Library songs to network storage fails as a whole
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t upload the songs. Check the server connection and that this account can write to the folder.'**
  String get networkUploadFailed;

  /// Snackbar when the chosen upload destination is a read-only connection or no longer exists
  ///
  /// In en, this message translates to:
  /// **'This connection doesn\'t accept uploads. Choose an SMB or WebDAV folder.'**
  String get networkUploadReadOnly;

  /// Snackbar when the upload action is used on songs that already stream from a server
  ///
  /// In en, this message translates to:
  /// **'No songs stored on this device in this selection.'**
  String get networkUploadNoSongs;

  /// Help below the network download destination action explaining local preparation, upload, retry behavior, and preservation of existing files; NAS means network-attached storage
  ///
  /// In en, this message translates to:
  /// **'Prepare songs on this device, then upload them to your NAS. Keep the app open until the upload finishes. Retry reuses prepared audio. Existing files are kept; new downloads with the same name get a numbered suffix.'**
  String get networkDownloadDescription;

  /// Action that adds the current network folder as a Library source and starts scanning it
  ///
  /// In en, this message translates to:
  /// **'Add folder to Library'**
  String get networkAddToLibrary;

  /// Status label replacing the add-to-Library action after the network folder has been added as a source; does not mean scanning has finished
  ///
  /// In en, this message translates to:
  /// **'Folder added to Library'**
  String get networkLibraryAdded;

  /// Help below the add-to-Library action explaining recursive scanning, local metadata and artwork storage, and management in Local Library settings
  ///
  /// In en, this message translates to:
  /// **'Scan this folder and its subfolders. Music stays on your server; metadata and artwork are saved on this device. Manage or rescan it in Local Library settings.'**
  String get networkLibraryDescription;

  /// Title and navigation label for the screen used to manage network connections and browse remote music folders
  ///
  /// In en, this message translates to:
  /// **'Network storage'**
  String get networkStorage;

  /// Network access error for an unreachable server, with connection troubleshooting and the SMB port requirement
  ///
  /// In en, this message translates to:
  /// **'The server could not be reached. Check that this phone can access its network and that the file-sharing service is running. For SMB, port 445 must be reachable.'**
  String get networkErrorUnreachable;

  /// Network access error when a server operation exceeds its time limit
  ///
  /// In en, this message translates to:
  /// **'The server did not respond in time. Check the connection and try again.'**
  String get networkErrorTimeout;

  /// Network access error when the server rejects credentials; domain refers to the optional SMB authentication domain
  ///
  /// In en, this message translates to:
  /// **'The server rejected the sign-in. Check the username, password and domain. Leave the domain blank unless your server requires one.'**
  String get networkErrorAuthentication;

  /// Network access error when the server denies account permissions for a shared folder; distinct from the device's local network permission
  ///
  /// In en, this message translates to:
  /// **'This account is not allowed to open this share or folder. Check its read permissions on the server.'**
  String get networkErrorPermission;

  /// Network access error when Android denies local network permission; Nearby devices is the Android app permission setting
  ///
  /// In en, this message translates to:
  /// **'Local network access is not allowed. Allow Nearby devices for Toadplayer in Android app settings, then try again.'**
  String get networkErrorLocalPermission;

  /// Network access error for a missing share or folder; share means an SMB shared folder and the example illustrates its URL path
  ///
  /// In en, this message translates to:
  /// **'The share or folder was not found. For SMB, use the server\'s shared folder name after its address, such as smb://server/Music/.'**
  String get networkErrorShare;

  /// Network access error for incompatible SMB protocol versions; preserve the version names SMB1, SMB2, and SMB3
  ///
  /// In en, this message translates to:
  /// **'The server and this SMB client could not agree on a supported protocol. Enable SMB2 or SMB3 on the server. SMB1 is not supported.'**
  String get networkErrorProtocol;

  /// Network access error for an invalid address, with URL scheme examples for SMB, WebDAV, and HTTP connections
  ///
  /// In en, this message translates to:
  /// **'Check the server address. Use smb://server/share/ for SMB, or an http:// or https:// address for WebDAV and HTTP.'**
  String get networkErrorAddress;

  /// Section heading above the list of saved network storage connections
  ///
  /// In en, this message translates to:
  /// **'Saved connections'**
  String get networkConnections;

  /// Connection form section heading above the display name and server or audio URL fields
  ///
  /// In en, this message translates to:
  /// **'Server'**
  String get networkServer;

  /// Connection form section heading for optional server credentials
  ///
  /// In en, this message translates to:
  /// **'Sign in (optional)'**
  String get networkCredentials;

  /// Toolbar tooltip for reloading saved connections or the current network folder listing
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get networkRefresh;

  /// Introduction shown in the empty connections screen and connection form, explaining remote folder browsing and secure local credential storage; NAS means network-attached storage
  ///
  /// In en, this message translates to:
  /// **'Connect to your NAS or music server and browse its folders. Your sign-in details are stored securely on this device.'**
  String get networkStorageDescription;

  /// Action label, toolbar tooltip, and form title for adding a network storage connection
  ///
  /// In en, this message translates to:
  /// **'Add connection'**
  String get networkAddConnection;

  /// Edit button tooltip and form title for changing an existing network storage connection
  ///
  /// In en, this message translates to:
  /// **'Edit connection'**
  String get networkEditConnection;

  /// Required connection form field for a user-chosen display name identifying the saved connection
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get networkConnectionName;

  /// Required connection form field for the server or direct audio URL, using the scheme appropriate to the selected protocol
  ///
  /// In en, this message translates to:
  /// **'Server or audio URL'**
  String get networkAddress;

  /// Connection form section heading for choosing SMB, WebDAV, or HTTP / HTTPS
  ///
  /// In en, this message translates to:
  /// **'Protocol'**
  String get networkProtocol;

  /// Optional connection form field for the server account username
  ///
  /// In en, this message translates to:
  /// **'Username (optional)'**
  String get networkUsername;

  /// Optional connection form field for the server account password, with input characters hidden
  ///
  /// In en, this message translates to:
  /// **'Password (optional)'**
  String get networkPassword;

  /// Optional connection form field shown only for SMB; refers to the authentication domain, not the server's internet domain name
  ///
  /// In en, this message translates to:
  /// **'Domain (optional)'**
  String get networkDomain;

  /// Connection form action that checks access to the network source before saving the connection
  ///
  /// In en, this message translates to:
  /// **'Connect and save'**
  String get networkConnectSave;

  /// Network access error for HTTPS certificate verification failure, directing the user to review the certificate in the connection form; unrelated to SMB authentication
  ///
  /// In en, this message translates to:
  /// **'The server\'s HTTPS certificate could not be verified. Edit this connection to review and trust its certificate, or check the server\'s HTTPS configuration.'**
  String get networkErrorCertificate;

  /// Connection form warning shown above the HTTPS origin and certificate SHA-256 fingerprint; approval trusts only that fingerprint for this connection's HTTPS origin, not a global certificate authority or an SMB server
  ///
  /// In en, this message translates to:
  /// **'This server uses an untrusted HTTPS certificate. Routers and NAS devices often use self-signed certificates. Verify the server address and SHA-256 fingerprint before trusting it. Trust applies only to this certificate on this server; a changed certificate requires approval again.'**
  String get networkCertificatePrompt;

  /// Action approving the displayed certificate SHA-256 fingerprint for this connection's HTTPS origin and retrying connect-and-save; does not grant global certificate trust
  ///
  /// In en, this message translates to:
  /// **'Trust certificate and retry'**
  String get networkTrustCertificate;

  /// Connection form action that removes the saved connection and its credentials, without deleting files on the server
  ///
  /// In en, this message translates to:
  /// **'Remove connection'**
  String get networkRemoveConnection;

  /// Empty folder message when the network listing contains no directories or supported audio files
  ///
  /// In en, this message translates to:
  /// **'No supported music files or folders found.'**
  String get networkNoFiles;

  /// Fallback network access error when the failure has no more specific classification
  ///
  /// In en, this message translates to:
  /// **'Could not access the network source. Check the server address, credentials, and connection, then retry.'**
  String get networkConnectionError;

  /// No description provided for @extensionAccountTitle.
  ///
  /// In en, this message translates to:
  /// **'Extension account'**
  String get extensionAccountTitle;

  /// No description provided for @extensionAccountInvalidForm.
  ///
  /// In en, this message translates to:
  /// **'The extension returned an invalid account form.'**
  String get extensionAccountInvalidForm;

  /// No description provided for @extensionAccountRestartLogin.
  ///
  /// In en, this message translates to:
  /// **'Restart account login to continue.'**
  String get extensionAccountRestartLogin;

  /// No description provided for @extensionAccountRequiredValue.
  ///
  /// In en, this message translates to:
  /// **'Enter a value.'**
  String get extensionAccountRequiredValue;

  /// No description provided for @extensionAccountInvalidNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid number.'**
  String get extensionAccountInvalidNumber;

  /// No description provided for @settingsPlaybackSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Player, volume, AutoMix, and audio output'**
  String get settingsPlaybackSubtitle;

  /// No description provided for @sectionPlayer.
  ///
  /// In en, this message translates to:
  /// **'Player'**
  String get sectionPlayer;

  /// No description provided for @sectionVolumeAndTransitions.
  ///
  /// In en, this message translates to:
  /// **'Volume and transitions'**
  String get sectionVolumeAndTransitions;

  /// No description provided for @sectionAudioOutput.
  ///
  /// In en, this message translates to:
  /// **'Audio output'**
  String get sectionAudioOutput;

  /// No description provided for @usbBitPerfect.
  ///
  /// In en, this message translates to:
  /// **'Hi-res and bit-perfect audio'**
  String get usbBitPerfect;

  /// No description provided for @usbBitPerfectDescription.
  ///
  /// In en, this message translates to:
  /// **'Preserve source precision on compatible outputs. Choose direct USB or AAudio exclusive below; otherwise Android USB output requires Android 14 or later. Applies from the next track, without AutoMix or normalization. System volume may not control direct USB.'**
  String get usbBitPerfectDescription;

  /// No description provided for @usbHardwareVolume.
  ///
  /// In en, this message translates to:
  /// **'DAC hardware volume'**
  String get usbHardwareVolume;

  /// No description provided for @usbVolumeWarningTitle.
  ///
  /// In en, this message translates to:
  /// **'Check your listening volume'**
  String get usbVolumeWarningTitle;

  /// No description provided for @usbVolumeWarning.
  ///
  /// In en, this message translates to:
  /// **'Direct USB audio can be much louder than normal playback, and phone volume buttons may not control it. Lower your DAC or amplifier volume before starting. When supported, Toadplayer sets the DAC to at most −40 dB on connection; this does not guarantee a safe listening level on every amplifier or headphone.'**
  String get usbVolumeWarning;

  /// No description provided for @usbVolumeAccept.
  ///
  /// In en, this message translates to:
  /// **'I understand'**
  String get usbVolumeAccept;

  /// No description provided for @usbVolumeUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Playback is paused because this DAC has no verified hardware volume control. Lower the DAC or amplifier volume, then enable fixed-volume output if needed and select the track again.'**
  String get usbVolumeUnavailable;

  /// No description provided for @usbFixedVolume.
  ///
  /// In en, this message translates to:
  /// **'Allow fixed-volume USB output'**
  String get usbFixedVolume;

  /// No description provided for @usbFixedVolumeDescription.
  ///
  /// In en, this message translates to:
  /// **'For DACs without a volume control accessible to the app. Keep off for USB headsets without their own volume control. Applies from the next track.'**
  String get usbFixedVolumeDescription;

  /// No description provided for @usbFixedVolumeWarning.
  ///
  /// In en, this message translates to:
  /// **'The app cannot lower the volume on this output. Audio may start at full level, and the phone volume slider will not help. Only continue after lowering the volume on your DAC or external amplifier. Do not enable this for a headset without its own volume control.'**
  String get usbFixedVolumeWarning;

  /// No description provided for @dapExclusive.
  ///
  /// In en, this message translates to:
  /// **'DAP hi-res (AAudio exclusive)'**
  String get dapExclusive;

  /// No description provided for @dapExclusiveDescription.
  ///
  /// In en, this message translates to:
  /// **'Use Oboe/AAudio at the track\'s original rate and precision for FLAC/WAV PCM. Requires Android 8.1 or later and compatible hardware. Exclusive access is checked; unavailable formats use normal playback. DSD requires the direct USB driver. Applies from the next track.'**
  String get dapExclusiveDescription;

  /// No description provided for @dapExclusiveUnavailable.
  ///
  /// In en, this message translates to:
  /// **'AAudio exclusive access is unavailable for this track and current output. Using normal playback. For a USB DAC, try the direct USB driver.'**
  String get dapExclusiveUnavailable;

  /// No description provided for @exclusiveOutputWindows.
  ///
  /// In en, this message translates to:
  /// **'WASAPI exclusive mode'**
  String get exclusiveOutputWindows;

  /// No description provided for @exclusiveOutputMacos.
  ///
  /// In en, this message translates to:
  /// **'Exclusive access (hog mode)'**
  String get exclusiveOutputMacos;

  /// No description provided for @exclusiveOutputLinux.
  ///
  /// In en, this message translates to:
  /// **'Direct ALSA output'**
  String get exclusiveOutputLinux;

  /// No description provided for @exclusiveOutputDescriptionWindows.
  ///
  /// In en, this message translates to:
  /// **'Bypass the Windows mixer so the output follows each track\'s sample rate and bit depth. Other apps cannot play sound while Toadplayer holds the device. AutoMix and previews are off in this mode. For bit-perfect output, keep the volume at 100% with the equalizer and normalization off.'**
  String get exclusiveOutputDescriptionWindows;

  /// No description provided for @exclusiveOutputDescriptionMacos.
  ///
  /// In en, this message translates to:
  /// **'Hold the output device for Toadplayer alone and switch it to each track\'s sample rate and bit depth, so Core Audio does not resample. Other apps cannot play sound while Toadplayer holds the device. AutoMix and previews are off in this mode. For bit-perfect output, keep the volume at 100% with the equalizer and normalization off.'**
  String get exclusiveOutputDescriptionMacos;

  /// No description provided for @exclusiveOutputDescriptionLinux.
  ///
  /// In en, this message translates to:
  /// **'Play straight to an ALSA hardware device, bypassing PipeWire or PulseAudio, so the output follows each track\'s sample rate and bit depth. The device must be free: the sound server releases an idle card after a few seconds, or set its profile to Off. AutoMix and previews are off in this mode.'**
  String get exclusiveOutputDescriptionLinux;

  /// No description provided for @exclusiveOutputPending.
  ///
  /// In en, this message translates to:
  /// **'Takes the device when a track plays.'**
  String get exclusiveOutputPending;

  /// No description provided for @exclusiveOutputActive.
  ///
  /// In en, this message translates to:
  /// **'Playing in exclusive mode.'**
  String get exclusiveOutputActive;

  /// No description provided for @exclusiveOutputUnavailableWindows.
  ///
  /// In en, this message translates to:
  /// **'The device refused exclusive access, so this track plays through the Windows mixer. Close other apps using the device, or allow exclusive control in the device\'s Windows sound properties.'**
  String get exclusiveOutputUnavailableWindows;

  /// No description provided for @exclusiveOutputUnavailableMacos.
  ///
  /// In en, this message translates to:
  /// **'Another app holds the output device, so this track plays through the system mixer.'**
  String get exclusiveOutputUnavailableMacos;

  /// No description provided for @exclusiveOutputUnavailableLinux.
  ///
  /// In en, this message translates to:
  /// **'The ALSA device is busy, usually held by the sound server, so this track plays through it. Set the card\'s profile to Off in the sound settings, or choose another device.'**
  String get exclusiveOutputUnavailableLinux;

  /// No description provided for @exclusiveOutputDevice.
  ///
  /// In en, this message translates to:
  /// **'Output device'**
  String get exclusiveOutputDevice;

  /// No description provided for @exclusiveOutputDeviceFirst.
  ///
  /// In en, this message translates to:
  /// **'First sound card'**
  String get exclusiveOutputDeviceFirst;

  /// No description provided for @exclusiveOutputNoDevices.
  ///
  /// In en, this message translates to:
  /// **'No ALSA playback devices found'**
  String get exclusiveOutputNoDevices;

  /// No description provided for @usbDirect.
  ///
  /// In en, this message translates to:
  /// **'Direct USB driver'**
  String get usbDirect;

  /// No description provided for @usbDirectDescription.
  ///
  /// In en, this message translates to:
  /// **'Use exclusive USB audio for FLAC/WAV, DSF/DFF and WavPack DSD, with Android USB permission. Native DSD requires a recognized compatible DAC. Other PCM formats use normal playback. Applies from the next track.'**
  String get usbDirectDescription;

  /// No description provided for @usbDsdOverPcm.
  ///
  /// In en, this message translates to:
  /// **'DSD over PCM (DoP)'**
  String get usbDsdOverPcm;

  /// No description provided for @usbDsdOverPcmDescription.
  ///
  /// In en, this message translates to:
  /// **'Enable only if your DAC explicitly supports DoP. Sends DSF/DFF and WavPack DSD inside a PCM carrier when native DSD is unavailable. An incompatible device may play noise; leave off for ordinary USB headsets.'**
  String get usbDsdOverPcmDescription;

  /// No description provided for @usbDsdUnsupported.
  ///
  /// In en, this message translates to:
  /// **'This DSD format or connected DAC is not supported. Playback stopped.'**
  String get usbDsdUnsupported;

  /// No description provided for @usbPermissionDenied.
  ///
  /// In en, this message translates to:
  /// **'USB permission was not granted. Using normal playback.'**
  String get usbPermissionDenied;

  /// No description provided for @usbBitPerfectPending.
  ///
  /// In en, this message translates to:
  /// **'Waiting for the next track and a compatible USB output.'**
  String get usbBitPerfectPending;

  /// No description provided for @usbOutputReady.
  ///
  /// In en, this message translates to:
  /// **'USB output is ready. Start playback to activate it.'**
  String get usbOutputReady;

  /// No description provided for @usbOutputPreparing.
  ///
  /// In en, this message translates to:
  /// **'Preparing USB audio output...'**
  String get usbOutputPreparing;

  /// No description provided for @usbOutputCancelled.
  ///
  /// In en, this message translates to:
  /// **'USB preparation was cancelled. Select a track to try again.'**
  String get usbOutputCancelled;

  /// No description provided for @usbBitPerfectNoDevice.
  ///
  /// In en, this message translates to:
  /// **'No USB DAC connected. Using normal audio output.'**
  String get usbBitPerfectNoDevice;

  /// No description provided for @usbBitPerfectFallback.
  ///
  /// In en, this message translates to:
  /// **'This device or audio format does not support bit-perfect output. Using normal playback.'**
  String get usbBitPerfectFallback;

  /// No description provided for @usbBitPerfectRouteChanged.
  ///
  /// In en, this message translates to:
  /// **'The USB audio route changed. Playback paused; select a track to reconnect.'**
  String get usbBitPerfectRouteChanged;

  /// No description provided for @upgradeIntroContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get upgradeIntroContinue;

  /// No description provided for @cacheMotionArtwork.
  ///
  /// In en, this message translates to:
  /// **'Offline motion covers'**
  String get cacheMotionArtwork;

  /// No description provided for @cacheMotionArtworkDesc.
  ///
  /// In en, this message translates to:
  /// **'Album videos saved with downloads. Removing them keeps your music files and static covers.'**
  String get cacheMotionArtworkDesc;

  /// System volume control label in the Toadplayer player
  ///
  /// In en, this message translates to:
  /// **'Volume'**
  String get nowPlayingVolume;

  /// Appearance section for choosing the app visual style
  ///
  /// In en, this message translates to:
  /// **'App Style'**
  String get appearanceStyle;

  /// No description provided for @appearanceAccentRed.
  ///
  /// In en, this message translates to:
  /// **'Red (default)'**
  String get appearanceAccentRed;

  /// No description provided for @appearanceAccentOrange.
  ///
  /// In en, this message translates to:
  /// **'Orange'**
  String get appearanceAccentOrange;

  /// No description provided for @appearanceAccentGreen.
  ///
  /// In en, this message translates to:
  /// **'Green'**
  String get appearanceAccentGreen;

  /// No description provided for @appearanceAccentTeal.
  ///
  /// In en, this message translates to:
  /// **'Teal'**
  String get appearanceAccentTeal;

  /// No description provided for @appearanceAccentBlue.
  ///
  /// In en, this message translates to:
  /// **'Blue'**
  String get appearanceAccentBlue;

  /// No description provided for @appearanceAccentPurple.
  ///
  /// In en, this message translates to:
  /// **'Purple'**
  String get appearanceAccentPurple;

  /// No description provided for @appearanceAccentPink.
  ///
  /// In en, this message translates to:
  /// **'Pink'**
  String get appearanceAccentPink;

  /// No description provided for @appearanceGlassClarity.
  ///
  /// In en, this message translates to:
  /// **'Glass clarity'**
  String get appearanceGlassClarity;

  /// No description provided for @appearanceGlassOutlines.
  ///
  /// In en, this message translates to:
  /// **'Glass outlines'**
  String get appearanceGlassOutlines;

  /// No description provided for @appearanceGlassOutlinesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show decorative edges around Toadplayer glass. Turning this off keeps blur and refraction.'**
  String get appearanceGlassOutlinesSubtitle;

  /// No description provided for @appearanceGlassClaritySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Adjust transparency in Toadplayer menus and navigation. Text contrast is preserved.'**
  String get appearanceGlassClaritySubtitle;

  /// No description provided for @appearanceGlassTinted.
  ///
  /// In en, this message translates to:
  /// **'Tinted'**
  String get appearanceGlassTinted;

  /// No description provided for @appearanceGlassClear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get appearanceGlassClear;

  /// No description provided for @appearanceGlassClearPerformance.
  ///
  /// In en, this message translates to:
  /// **'Very clear glass may use more power and feel less smooth on older devices. Lower clarity if needed.'**
  String get appearanceGlassClearPerformance;

  /// Shown under the disabled glass clarity slider when the device renders Toadplayer glass without blur. The placeholder is the name of the force-blur toggle.
  ///
  /// In en, this message translates to:
  /// **'Glass is opaque on this device. Turn on “{setting}” to adjust clarity.'**
  String appearanceGlassClarityBlurOff(String setting);

  /// Explains the system contrast request (which can include medium contrast) and the explicit glass-only override.
  ///
  /// In en, this message translates to:
  /// **'Your system requests increased contrast, so glass stays opaque. Turn on “{setting}” to use glass anyway; text contrast is preserved.'**
  String appearanceGlassClarityHighContrast(String setting);

  /// No description provided for @appearanceUseSystemFont.
  ///
  /// In en, this message translates to:
  /// **'Use system font'**
  String get appearanceUseSystemFont;

  /// No description provided for @appearanceUseSystemFontSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Use your device’s default typeface for app text.'**
  String get appearanceUseSystemFontSubtitle;

  /// App name - DO NOT TRANSLATE
  ///
  /// In en, this message translates to:
  /// **'Toadplayer'**
  String get appName;

  /// Bottom navigation - Home tab
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// Bottom navigation - Library tab
  ///
  /// In en, this message translates to:
  /// **'Library'**
  String get navLibrary;

  /// Bottom navigation - Settings tab
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get navSettings;

  /// Bottom navigation - Extension repo tab
  ///
  /// In en, this message translates to:
  /// **'Repo'**
  String get navStore;

  /// Home screen title
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get homeTitle;

  /// Title shown on home when no providers are available yet
  ///
  /// In en, this message translates to:
  /// **'No search providers yet'**
  String get homeEmptyTitle;

  /// Subtitle shown on home when no providers are available yet
  ///
  /// In en, this message translates to:
  /// **'Install an extension to continue.'**
  String get homeEmptySubtitle;

  /// Section header for recent searches
  ///
  /// In en, this message translates to:
  /// **'Recent'**
  String get homeRecent;

  /// Section header for recent searches on the desktop Search page
  ///
  /// In en, this message translates to:
  /// **'Recently Searched'**
  String get searchRecentlySearched;

  /// Shown on the desktop Search page when the Library scope has no search words yet
  ///
  /// In en, this message translates to:
  /// **'Search Your Library'**
  String get searchLibraryPrompt;

  /// Section header for home feed tiles on the desktop Search page
  ///
  /// In en, this message translates to:
  /// **'Browse'**
  String get searchBrowse;

  /// Filter chip - show all items
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get historyFilterAll;

  /// Filter chip - show albums only
  ///
  /// In en, this message translates to:
  /// **'Albums'**
  String get historyFilterAlbums;

  /// Filter chip - show singles only
  ///
  /// In en, this message translates to:
  /// **'Singles'**
  String get historyFilterSingles;

  /// No description provided for @libraryRecentlyAdded.
  ///
  /// In en, this message translates to:
  /// **'Recently Added'**
  String get libraryRecentlyAdded;

  /// No description provided for @libraryDownloads.
  ///
  /// In en, this message translates to:
  /// **'Downloads'**
  String get libraryDownloads;

  /// No description provided for @libraryNoActiveDownloads.
  ///
  /// In en, this message translates to:
  /// **'No active downloads'**
  String get libraryNoActiveDownloads;

  /// No description provided for @librarySearchHint.
  ///
  /// In en, this message translates to:
  /// **'Search your library'**
  String get librarySearchHint;

  /// No description provided for @libraryEmptyCollection.
  ///
  /// In en, this message translates to:
  /// **'Your music will appear here'**
  String get libraryEmptyCollection;

  /// Library view that browses downloaded and scanned songs by the folders their files are in
  ///
  /// In en, this message translates to:
  /// **'Folders'**
  String get libraryFolders;

  /// Number of folders inside a Library folder
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 folder} other{{count} folders}}'**
  String libraryFolderCount(int count);

  /// Title of the Folders view when the Library has no songs
  ///
  /// In en, this message translates to:
  /// **'No folders yet'**
  String get libraryFoldersEmptyTitle;

  /// Next step shown in the empty Folders view
  ///
  /// In en, this message translates to:
  /// **'Download songs or add a music folder in Local Library settings to browse them by folder.'**
  String get libraryFoldersEmptyMessage;

  /// Shown on an open folder page after its songs were deleted or moved
  ///
  /// In en, this message translates to:
  /// **'This folder is no longer in your Library'**
  String get libraryFolderMissing;

  /// Shown when the Folders view fails to load
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t read your folders'**
  String get libraryFoldersLoadFailed;

  /// Settings screen title
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// Settings section - download options
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get settingsDownload;

  /// Settings section - visual customization
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get settingsAppearance;

  /// Settings section - extension management
  ///
  /// In en, this message translates to:
  /// **'Extensions'**
  String get settingsExtensions;

  /// Settings section - app info
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get settingsAbout;

  /// Download settings page title
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get downloadTitle;

  /// Subtitle for ask quality toggle
  ///
  /// In en, this message translates to:
  /// **'Show quality picker for each download'**
  String get downloadAskQualitySubtitle;

  /// Setting for output filename pattern
  ///
  /// In en, this message translates to:
  /// **'Filename Format'**
  String get downloadFilenameFormat;

  /// Setting for output filename pattern for singles/EPs
  ///
  /// In en, this message translates to:
  /// **'Single Filename Format'**
  String get downloadSingleFilenameFormat;

  /// Subtitle description for single filename format setting
  ///
  /// In en, this message translates to:
  /// **'Filename pattern for singles and EPs. Uses the same tags as the album format.'**
  String get downloadSingleFilenameFormatDescription;

  /// Title of the folder organization picker bottom sheet
  ///
  /// In en, this message translates to:
  /// **'Folder Organization'**
  String get downloadFolderOrganization;

  /// Setting for editing a relative download folder template
  ///
  /// In en, this message translates to:
  /// **'Custom Folder Structure'**
  String get downloadFolderTemplate;

  /// Help for custom download folder templates
  ///
  /// In en, this message translates to:
  /// **'Use naming tags and / for subfolders. Saving replaces the preset album and singles layout. Empty folder names use Unknown.'**
  String get downloadFolderTemplateDescription;

  /// Folder organization mode using a user-defined template
  ///
  /// In en, this message translates to:
  /// **'Custom template'**
  String get folderOrganizationCustom;

  /// Validation error for an invalid folder template
  ///
  /// In en, this message translates to:
  /// **'Enter a relative folder path with supported tags. Empty folders, . and .. are not allowed.'**
  String get folderTemplateInvalid;

  /// Label for a sample expanded folder template
  ///
  /// In en, this message translates to:
  /// **'Example folder path'**
  String get folderTemplatePreview;

  /// Shown when the native folder preview could not be generated
  ///
  /// In en, this message translates to:
  /// **'Preview unavailable'**
  String get folderTemplatePreviewFailed;

  /// Appearance settings page title
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearanceTitle;

  /// Follow system theme
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get appearanceThemeSystem;

  /// Light theme
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get appearanceThemeLight;

  /// Dark theme
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get appearanceThemeDark;

  /// Material You dynamic colors
  ///
  /// In en, this message translates to:
  /// **'Dynamic Color'**
  String get appearanceDynamicColor;

  /// Subtitle for dynamic color
  ///
  /// In en, this message translates to:
  /// **'Use colors from your wallpaper'**
  String get appearanceDynamicColorSubtitle;

  /// Layout style for history
  ///
  /// In en, this message translates to:
  /// **'History View'**
  String get appearanceHistoryView;

  /// List layout option
  ///
  /// In en, this message translates to:
  /// **'List'**
  String get appearanceHistoryViewList;

  /// Grid layout option
  ///
  /// In en, this message translates to:
  /// **'Grid'**
  String get appearanceHistoryViewGrid;

  /// Main search provider setting
  ///
  /// In en, this message translates to:
  /// **'Primary Provider'**
  String get optionsPrimaryProvider;

  /// Subtitle for primary provider
  ///
  /// In en, this message translates to:
  /// **'Service used for searching by track or album name'**
  String get optionsPrimaryProviderSubtitle;

  /// Shows active extension name
  ///
  /// In en, this message translates to:
  /// **'Using extension: {extensionName}'**
  String optionsUsingExtension(String extensionName);

  /// Title for the preferred default search tab setting
  ///
  /// In en, this message translates to:
  /// **'Default Search Tab'**
  String get optionsDefaultSearchTab;

  /// Subtitle for the preferred default search tab setting
  ///
  /// In en, this message translates to:
  /// **'Choose which tab opens first for new search results.'**
  String get optionsDefaultSearchTabSubtitle;

  /// Auto-retry with other services
  ///
  /// In en, this message translates to:
  /// **'Auto Fallback'**
  String get optionsAutoFallback;

  /// Subtitle for auto fallback
  ///
  /// In en, this message translates to:
  /// **'Try other services if download fails'**
  String get optionsAutoFallbackSubtitle;

  /// Embed lyrics in audio files
  ///
  /// In en, this message translates to:
  /// **'Embed Lyrics'**
  String get optionsEmbedLyrics;

  /// Subtitle for embed lyrics
  ///
  /// In en, this message translates to:
  /// **'Save synced lyrics alongside your downloaded tracks'**
  String get optionsEmbedLyricsSubtitle;

  /// Title for ReplayGain setting toggle
  ///
  /// In en, this message translates to:
  /// **'ReplayGain'**
  String get optionsReplayGain;

  /// Subtitle when ReplayGain is enabled
  ///
  /// In en, this message translates to:
  /// **'Scan loudness and embed ReplayGain tags (EBU R128)'**
  String get optionsReplayGainSubtitleOn;

  /// Subtitle when ReplayGain is disabled
  ///
  /// In en, this message translates to:
  /// **'Disabled: no loudness normalization tags'**
  String get optionsReplayGainSubtitleOff;

  /// Three-dot menu option to scan loudness and write ReplayGain tags
  ///
  /// In en, this message translates to:
  /// **'Rescan ReplayGain'**
  String get trackReplayGain;

  /// Snackbar/progress message while scanning ReplayGain for a single track
  ///
  /// In en, this message translates to:
  /// **'Analyzing loudness...'**
  String get trackReplayGainScanning;

  /// Snackbar message after ReplayGain tags written for a single track
  ///
  /// In en, this message translates to:
  /// **'ReplayGain tags added'**
  String get trackReplayGainSuccess;

  /// Snackbar message when ReplayGain scan/write fails
  ///
  /// In en, this message translates to:
  /// **'Failed to add ReplayGain tags'**
  String get trackReplayGainFailed;

  /// No description provided for @trackRemoveReplayGain.
  ///
  /// In en, this message translates to:
  /// **'Remove ReplayGain'**
  String get trackRemoveReplayGain;

  /// No description provided for @trackRemoveReplayGainSuccess.
  ///
  /// In en, this message translates to:
  /// **'ReplayGain tags removed'**
  String get trackRemoveReplayGainSuccess;

  /// No description provided for @trackRemoveReplayGainFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to remove ReplayGain tags'**
  String get trackRemoveReplayGainFailed;

  /// No description provided for @replayGainRemoving.
  ///
  /// In en, this message translates to:
  /// **'Removing ReplayGain...'**
  String get replayGainRemoving;

  /// No description provided for @replayGainRemoveConfirmMessage.
  ///
  /// In en, this message translates to:
  /// **'Remove track and album ReplayGain tags from {count} track(s)? Audio, artwork, and other metadata will be preserved.'**
  String replayGainRemoveConfirmMessage(int count);

  /// Compact selection action label. RG abbreviates ReplayGain; keep this short for a two-column toolbar.
  ///
  /// In en, this message translates to:
  /// **'Remove RG ({count})'**
  String selectionRemoveReplayGainCount(int count);

  /// No description provided for @replayGainRemoveBatchSuccess.
  ///
  /// In en, this message translates to:
  /// **'ReplayGain removed from {success} of {total} tracks'**
  String replayGainRemoveBatchSuccess(int success, int total);

  /// Batch selection action button label for ReplayGain
  ///
  /// In en, this message translates to:
  /// **'ReplayGain ({count})'**
  String selectionReplayGainCount(int count);

  /// Title of the batch ReplayGain confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'Add ReplayGain'**
  String get replayGainBatchConfirmTitle;

  /// Message of the batch ReplayGain confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'Analyze loudness and write ReplayGain tags to {count} track(s)?'**
  String replayGainBatchConfirmMessage(int count);

  /// Progress dialog title while batch scanning ReplayGain
  ///
  /// In en, this message translates to:
  /// **'Analyzing ReplayGain...'**
  String get replayGainBatchAnalyzing;

  /// Snackbar after batch ReplayGain completes
  ///
  /// In en, this message translates to:
  /// **'ReplayGain added to {success} of {total} tracks'**
  String replayGainBatchSuccess(int success, int total);

  /// No description provided for @replayGainUnsupportedDecoder.
  ///
  /// In en, this message translates to:
  /// **'Some tracks could not be analyzed because their audio codec is not supported by the ReplayGain decoder. Their files were not changed.'**
  String get replayGainUnsupportedDecoder;

  /// Setting title for how artist metadata is written into files
  ///
  /// In en, this message translates to:
  /// **'Artist Tag Mode'**
  String get optionsArtistTagMode;

  /// No description provided for @metadataSeparators.
  ///
  /// In en, this message translates to:
  /// **'Metadata separators'**
  String get metadataSeparators;

  /// No description provided for @metadataSeparatorsDescription.
  ///
  /// In en, this message translates to:
  /// **'Choose how comma- or semicolon-separated values are joined in future downloads. Custom artist separators use a joined tag; Primary artist only still applies. Names containing & or / are preserved.'**
  String get metadataSeparatorsDescription;

  /// No description provided for @metadataSeparatorSource.
  ///
  /// In en, this message translates to:
  /// **'Keep source formatting'**
  String get metadataSeparatorSource;

  /// No description provided for @metadataSeparatorComma.
  ///
  /// In en, this message translates to:
  /// **'Comma (,)'**
  String get metadataSeparatorComma;

  /// No description provided for @metadataSeparatorSemicolon.
  ///
  /// In en, this message translates to:
  /// **'Semicolon (;)'**
  String get metadataSeparatorSemicolon;

  /// No description provided for @metadataSeparatorSlash.
  ///
  /// In en, this message translates to:
  /// **'Slash (/)'**
  String get metadataSeparatorSlash;

  /// No description provided for @metadataSeparatorCustom.
  ///
  /// In en, this message translates to:
  /// **'Custom separator'**
  String get metadataSeparatorCustom;

  /// No description provided for @metadataSeparatorPreview.
  ///
  /// In en, this message translates to:
  /// **'Preview'**
  String get metadataSeparatorPreview;

  /// No description provided for @metadataSeparatorInvalid.
  ///
  /// In en, this message translates to:
  /// **'Use 1–16 characters without line breaks or control characters.'**
  String get metadataSeparatorInvalid;

  /// Bottom-sheet description for artist tag mode setting
  ///
  /// In en, this message translates to:
  /// **'Choose how multiple artists are written into embedded tags.'**
  String get optionsArtistTagModeDescription;

  /// Artist tag mode option that joins multiple artists into one value
  ///
  /// In en, this message translates to:
  /// **'Single joined value'**
  String get optionsArtistTagModeJoined;

  /// Subtitle for joined artist tag mode
  ///
  /// In en, this message translates to:
  /// **'Write one ARTIST value like \"Artist A, Artist B\" for maximum player compatibility.'**
  String get optionsArtistTagModeJoinedSubtitle;

  /// Artist tag mode option that writes repeated ARTIST tags for Vorbis formats
  ///
  /// In en, this message translates to:
  /// **'Split tags for FLAC/Opus'**
  String get optionsArtistTagModeSplitVorbis;

  /// Subtitle for split Vorbis artist tag mode
  ///
  /// In en, this message translates to:
  /// **'Write one artist tag per artist for FLAC and Opus; MP3 and M4A stay joined.'**
  String get optionsArtistTagModeSplitVorbisSubtitle;

  /// Artist tag mode option that writes only the first credited artist
  ///
  /// In en, this message translates to:
  /// **'Primary artist only'**
  String get optionsArtistTagModePrimary;

  /// Subtitle for the primary-artist tag mode. Applies when downloading and re-enriching; manual edits keep what the user typed.
  ///
  /// In en, this message translates to:
  /// **'Write only the first artist, like \"Artist A\", to Artist and Album Artist in every format, so players list one artist.'**
  String get optionsArtistTagModePrimarySubtitle;

  /// Show/hide repo tab
  ///
  /// In en, this message translates to:
  /// **'Extension Repo'**
  String get optionsExtensionStore;

  /// Subtitle for extension repo toggle
  ///
  /// In en, this message translates to:
  /// **'Show Repo tab in navigation'**
  String get optionsExtensionStoreSubtitle;

  /// Auto update check toggle
  ///
  /// In en, this message translates to:
  /// **'Check for Updates'**
  String get optionsCheckUpdates;

  /// Subtitle for update check
  ///
  /// In en, this message translates to:
  /// **'Notify when new version is available'**
  String get optionsCheckUpdatesSubtitle;

  /// Stable vs preview releases
  ///
  /// In en, this message translates to:
  /// **'Update Channel'**
  String get optionsUpdateChannel;

  /// Only stable updates
  ///
  /// In en, this message translates to:
  /// **'Stable releases only'**
  String get optionsUpdateChannelStable;

  /// Include beta/preview updates
  ///
  /// In en, this message translates to:
  /// **'Get preview releases'**
  String get optionsUpdateChannelPreview;

  /// Warning about preview channel
  ///
  /// In en, this message translates to:
  /// **'Preview may contain bugs or incomplete features'**
  String get optionsUpdateChannelWarning;

  /// Delete all download history
  ///
  /// In en, this message translates to:
  /// **'Clear Download History'**
  String get optionsClearHistory;

  /// Subtitle for clear history
  ///
  /// In en, this message translates to:
  /// **'Remove all downloaded tracks from history'**
  String get optionsClearHistorySubtitle;

  /// Enable verbose logs for debugging
  ///
  /// In en, this message translates to:
  /// **'Detailed Logging'**
  String get optionsDetailedLogging;

  /// Status when logging enabled
  ///
  /// In en, this message translates to:
  /// **'Detailed logs are being recorded'**
  String get optionsDetailedLoggingOn;

  /// Status when logging disabled
  ///
  /// In en, this message translates to:
  /// **'Enable for bug reports'**
  String get optionsDetailedLoggingOff;

  /// Extensions page title
  ///
  /// In en, this message translates to:
  /// **'Extensions'**
  String get extensionsTitle;

  /// Extension status - inactive
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get extensionsDisabled;

  /// Extension version display
  ///
  /// In en, this message translates to:
  /// **'Version {version}'**
  String extensionsVersion(String version);

  /// Uninstall extension button
  ///
  /// In en, this message translates to:
  /// **'Uninstall'**
  String get extensionsUninstall;

  /// Repo screen title
  ///
  /// In en, this message translates to:
  /// **'Extension Repo'**
  String get storeTitle;

  /// Repo search placeholder
  ///
  /// In en, this message translates to:
  /// **'Search extensions...'**
  String get storeSearch;

  /// Install extension button
  ///
  /// In en, this message translates to:
  /// **'Install'**
  String get storeInstall;

  /// Already installed badge
  ///
  /// In en, this message translates to:
  /// **'Installed'**
  String get storeInstalled;

  /// Update available button
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get storeUpdate;

  /// About page title
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get aboutTitle;

  /// Section for contributors
  ///
  /// In en, this message translates to:
  /// **'Contributors'**
  String get aboutContributors;

  /// Role description for mobile dev
  ///
  /// In en, this message translates to:
  /// **'Mobile version developer'**
  String get aboutMobileDeveloper;

  /// Role description for logo artist
  ///
  /// In en, this message translates to:
  /// **'The talented artist who created our beautiful app logo!'**
  String get aboutLogoArtist;

  /// Section for translators
  ///
  /// In en, this message translates to:
  /// **'Translators'**
  String get aboutTranslators;

  /// Section for special thanks
  ///
  /// In en, this message translates to:
  /// **'Special Thanks'**
  String get aboutSpecialThanks;

  /// Section for external links
  ///
  /// In en, this message translates to:
  /// **'Links'**
  String get aboutLinks;

  /// Link to mobile GitHub repo
  ///
  /// In en, this message translates to:
  /// **'Mobile source code'**
  String get aboutMobileSource;

  /// Link to the Toad-LRC website for searching and saving word-timed lyrics
  ///
  /// In en, this message translates to:
  /// **'Lyrics website'**
  String get aboutLyricsWebsite;

  /// Link to the status page of the Toadplayer online services
  ///
  /// In en, this message translates to:
  /// **'Service status'**
  String get aboutServiceStatus;

  /// Link to report bugs
  ///
  /// In en, this message translates to:
  /// **'Report an issue'**
  String get aboutReportIssue;

  /// Subtitle for report issue
  ///
  /// In en, this message translates to:
  /// **'Report any problems you encounter'**
  String get aboutReportIssueSubtitle;

  /// Link to suggest features
  ///
  /// In en, this message translates to:
  /// **'Feature request'**
  String get aboutFeatureRequest;

  /// Subtitle for feature request
  ///
  /// In en, this message translates to:
  /// **'Suggest new features for the app'**
  String get aboutFeatureRequestSubtitle;

  /// Link to Telegram channel
  ///
  /// In en, this message translates to:
  /// **'Telegram Channel'**
  String get aboutTelegramChannel;

  /// Subtitle for Telegram channel
  ///
  /// In en, this message translates to:
  /// **'Announcements and updates'**
  String get aboutTelegramChannelSubtitle;

  /// Link to Telegram chat group
  ///
  /// In en, this message translates to:
  /// **'Telegram Community'**
  String get aboutTelegramChat;

  /// Subtitle for Telegram chat
  ///
  /// In en, this message translates to:
  /// **'Chat with other users'**
  String get aboutTelegramChatSubtitle;

  /// Section for social links
  ///
  /// In en, this message translates to:
  /// **'Social'**
  String get aboutSocial;

  /// Section for app info
  ///
  /// In en, this message translates to:
  /// **'App'**
  String get aboutApp;

  /// Version info label
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get aboutVersion;

  /// Credit description for binimum
  ///
  /// In en, this message translates to:
  /// **'The creator of QQDL & HiFi API. This project helped shape lossless download support.'**
  String get aboutBinimumDesc;

  /// Credit description for sachinsenal0x64
  ///
  /// In en, this message translates to:
  /// **'The original HiFi project creator. A foundation for lossless-source integration.'**
  String get aboutSachinsenalDesc;

  /// Credit for the UniTune resolver
  ///
  /// In en, this message translates to:
  /// **'Open-source music link resolver by Flaze, used for cross-platform fallback matching.'**
  String get aboutUnituneDesc;

  /// Credit for the MusicBrainz database
  ///
  /// In en, this message translates to:
  /// **'Open music database maintained by MetaBrainz and its community, used for recording cross-references.'**
  String get aboutMusicBrainzDesc;

  /// Credit for the Squigly resolver
  ///
  /// In en, this message translates to:
  /// **'Universal music link service by Liam Macmillan, used as a final cross-platform resolver fallback.'**
  String get aboutSquiglyDesc;

  /// App description in header card
  ///
  /// In en, this message translates to:
  /// **'Search music metadata, manage extensions, and organize your library.'**
  String get aboutAppDescription;

  /// Section header for artist albums
  ///
  /// In en, this message translates to:
  /// **'Albums'**
  String get artistAlbums;

  /// Section header for singles/EPs
  ///
  /// In en, this message translates to:
  /// **'Singles & EPs'**
  String get artistSingles;

  /// Section header for compilations
  ///
  /// In en, this message translates to:
  /// **'Compilations'**
  String get artistCompilations;

  /// Section header for popular/top tracks
  ///
  /// In en, this message translates to:
  /// **'Popular'**
  String get artistPopular;

  /// Artist page on desktop: heading above the newest album
  ///
  /// In en, this message translates to:
  /// **'Latest Release'**
  String get artistLatestRelease;

  /// Artist page on desktop: heading above the artist's best known songs
  ///
  /// In en, this message translates to:
  /// **'Top Songs'**
  String get artistTopSongs;

  /// Monthly listener count display
  ///
  /// In en, this message translates to:
  /// **'{count} monthly listeners'**
  String artistMonthlyListeners(String count);

  /// Metadata field - download service used
  ///
  /// In en, this message translates to:
  /// **'Service'**
  String get trackMetadataService;

  /// Action button - play track
  ///
  /// In en, this message translates to:
  /// **'Play'**
  String get trackMetadataPlay;

  /// Action button - share track
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get trackMetadataShare;

  /// Action button - delete track
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get trackMetadataDelete;

  /// Button to request permission
  ///
  /// In en, this message translates to:
  /// **'Grant Permission'**
  String get setupGrantPermission;

  /// Skip current step button
  ///
  /// In en, this message translates to:
  /// **'Skip for now'**
  String get setupSkip;

  /// Title when storage access needed
  ///
  /// In en, this message translates to:
  /// **'Storage Access Required'**
  String get setupStorageAccessRequired;

  /// Android 11+ specific explanation
  ///
  /// In en, this message translates to:
  /// **'Android 11+ requires \"All files access\" permission to save files to your chosen download folder.'**
  String get setupStorageAccessMessageAndroid11;

  /// Button to open system settings
  ///
  /// In en, this message translates to:
  /// **'Open Settings'**
  String get setupOpenSettings;

  /// Error when permission denied
  ///
  /// In en, this message translates to:
  /// **'Permission denied. Please grant all permissions to continue.'**
  String get setupPermissionDeniedMessage;

  /// Generic permission required title
  ///
  /// In en, this message translates to:
  /// **'{permissionType} Permission Required'**
  String setupPermissionRequired(String permissionType);

  /// Generic permission required message
  ///
  /// In en, this message translates to:
  /// **'{permissionType} permission is required for the best experience. You can change this later in Settings.'**
  String setupPermissionRequiredMessage(String permissionType);

  /// Dialog title for default folder
  ///
  /// In en, this message translates to:
  /// **'Use Default Folder?'**
  String get setupUseDefaultFolder;

  /// Prompt when no folder selected
  ///
  /// In en, this message translates to:
  /// **'No folder selected. Would you like to use the default Music folder?'**
  String get setupNoFolderSelected;

  /// Button to use default folder
  ///
  /// In en, this message translates to:
  /// **'Use Default'**
  String get setupUseDefault;

  /// Download location dialog title
  ///
  /// In en, this message translates to:
  /// **'Download Location'**
  String get setupDownloadLocationTitle;

  /// iOS-specific folder info
  ///
  /// In en, this message translates to:
  /// **'On iOS, downloads are saved to the app\'s Documents folder. You can access them via the Files app.'**
  String get setupDownloadLocationIosMessage;

  /// iOS documents folder option
  ///
  /// In en, this message translates to:
  /// **'App Documents Folder'**
  String get setupAppDocumentsFolder;

  /// Subtitle for documents folder
  ///
  /// In en, this message translates to:
  /// **'Recommended - accessible via Files app'**
  String get setupAppDocumentsFolderSubtitle;

  /// iOS file picker option
  ///
  /// In en, this message translates to:
  /// **'Choose from Files'**
  String get setupChooseFromFiles;

  /// Subtitle for file picker
  ///
  /// In en, this message translates to:
  /// **'Select iCloud or other location'**
  String get setupChooseFromFilesSubtitle;

  /// iOS folder selection warning
  ///
  /// In en, this message translates to:
  /// **'iOS limitation: Empty folders cannot be selected. Choose a folder with at least one file.'**
  String get setupIosEmptyFolderWarning;

  /// Error when user selects iCloud Drive on iOS
  ///
  /// In en, this message translates to:
  /// **'iCloud Drive is not supported. Please use the app Documents folder.'**
  String get setupIcloudNotSupported;

  /// App tagline in setup
  ///
  /// In en, this message translates to:
  /// **'Download music in lossless and Hi-Res quality'**
  String get setupDownloadInFlac;

  /// Success message for storage permission
  ///
  /// In en, this message translates to:
  /// **'Storage Permission Granted!'**
  String get setupStorageGranted;

  /// Title when storage permission needed
  ///
  /// In en, this message translates to:
  /// **'Storage Permission Required'**
  String get setupStorageRequired;

  /// Explanation for storage permission
  ///
  /// In en, this message translates to:
  /// **'Toadplayer needs storage permission to save your downloaded music files.'**
  String get setupStorageDescription;

  /// Success message for notification permission
  ///
  /// In en, this message translates to:
  /// **'Notification Permission Granted!'**
  String get setupNotificationGranted;

  /// Button to enable notifications
  ///
  /// In en, this message translates to:
  /// **'Enable Notifications'**
  String get setupNotificationEnable;

  /// Button to choose folder
  ///
  /// In en, this message translates to:
  /// **'Choose Download Folder'**
  String get setupFolderChoose;

  /// Explanation for folder selection
  ///
  /// In en, this message translates to:
  /// **'Select a folder where your downloaded music will be saved.'**
  String get setupFolderDescription;

  /// Button to select folder
  ///
  /// In en, this message translates to:
  /// **'Select Folder'**
  String get setupSelectFolder;

  /// Button to enable notifications
  ///
  /// In en, this message translates to:
  /// **'Enable Notifications'**
  String get setupEnableNotifications;

  /// Detailed notification explanation
  ///
  /// In en, this message translates to:
  /// **'Get notified about download progress and completion. This helps you track downloads when the app is in background.'**
  String get setupNotificationBackgroundDescription;

  /// Skip button text
  ///
  /// In en, this message translates to:
  /// **'Skip for now'**
  String get setupSkipForNow;

  /// Setup step title and button for the Android Nearby devices permission; Nearby devices is the Android permission name
  ///
  /// In en, this message translates to:
  /// **'Allow Nearby Devices'**
  String get setupNearbyEnable;

  /// Setup step explaining why Android's Nearby devices permission is needed
  ///
  /// In en, this message translates to:
  /// **'Toadplayer Link uses it to find your computer on the same network, and network storage needs it to reach a server at home.'**
  String get setupNearbyDescription;

  /// Setup message after the Nearby devices permission is granted
  ///
  /// In en, this message translates to:
  /// **'Nearby Devices Allowed!'**
  String get setupNearbyGranted;

  /// Nearby devices permission type label; use Android's name for this permission
  ///
  /// In en, this message translates to:
  /// **'Nearby devices'**
  String get permissionNearbyDevices;

  /// Main button on the Nearby devices page of the What's New tour that asks for Android's Nearby devices permission
  ///
  /// In en, this message translates to:
  /// **'Allow nearby devices'**
  String get whatsNewLinkNearbyAllow;

  /// Shown on the Nearby devices page of the What's New tour after the Nearby devices permission is granted
  ///
  /// In en, this message translates to:
  /// **'Nearby devices allowed'**
  String get whatsNewLinkNearbyGranted;

  /// Title of the What's New page that asks for Android's Nearby devices permission; use Android's name for this permission
  ///
  /// In en, this message translates to:
  /// **'Nearby devices'**
  String get whatsNewNearbyTitle;

  /// Description on the Nearby devices page of the What's New tour, followed by a list of uses
  ///
  /// In en, this message translates to:
  /// **'Android now asks before an app can reach other devices on your network. Toadplayer needs this for:'**
  String get whatsNewNearbyDesc;

  /// Use of the Nearby devices permission: Toadplayer Link finds the computer
  ///
  /// In en, this message translates to:
  /// **'Finding your computer'**
  String get whatsNewNearbyLinkTitle;

  /// Explains how Toadplayer Link uses the Nearby devices permission
  ///
  /// In en, this message translates to:
  /// **'Toadplayer Link looks for your computer on the same Wi-Fi and stays connected to it.'**
  String get whatsNewNearbyLinkBody;

  /// Use of the Nearby devices permission: SMB and WebDAV servers at home
  ///
  /// In en, this message translates to:
  /// **'Network storage'**
  String get whatsNewNearbyStorageTitle;

  /// Explains how network storage uses the Nearby devices permission
  ///
  /// In en, this message translates to:
  /// **'Play music from a NAS or a server at home over SMB or WebDAV.'**
  String get whatsNewNearbyStorageBody;

  /// Reassurance on the Nearby devices page of the What's New tour
  ///
  /// In en, this message translates to:
  /// **'Only your own devices'**
  String get whatsNewNearbyPrivateTitle;

  /// Explains that the Nearby devices permission is not used for location
  ///
  /// In en, this message translates to:
  /// **'Toadplayer uses it only to reach devices on your network, never to find where you are.'**
  String get whatsNewNearbyPrivateBody;

  /// Shown on the Nearby devices page of the What's New tour after the permission is refused
  ///
  /// In en, this message translates to:
  /// **'Not allowed. Toadplayer Link and network storage stay off until you allow Nearby devices for Toadplayer in Android settings.'**
  String get whatsNewNearbyRefused;

  /// Next button text
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get setupNext;

  /// Final setup button
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get setupGetStarted;

  /// Instruction for file access permission
  ///
  /// In en, this message translates to:
  /// **'Please enable \"Allow access to manage all files\" in the next screen.'**
  String get setupAllowAccessToManageFiles;

  /// Title for the language selection step in setup
  ///
  /// In en, this message translates to:
  /// **'Choose Language'**
  String get setupLanguageTitle;

  /// Description for the language selection step in setup
  ///
  /// In en, this message translates to:
  /// **'Select your preferred language for the app. You can change this later in Settings.'**
  String get setupLanguageDescription;

  /// Option to use the system language
  ///
  /// In en, this message translates to:
  /// **'System Default'**
  String get setupLanguageSystemDefault;

  /// Dialog button - cancel action
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get dialogCancel;

  /// Dialog button - save changes
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get dialogSave;

  /// Dialog button - delete item
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get dialogDelete;

  /// Dialog button - retry action
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get dialogRetry;

  /// Dialog button - clear items
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get dialogClear;

  /// Dialog button - action completed
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get dialogDone;

  /// Dialog button - import data
  ///
  /// In en, this message translates to:
  /// **'Import'**
  String get dialogImport;

  /// Confirm button in Download All dialog
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get dialogDownload;

  /// Tooltip for the button that plays a short track preview snippet
  ///
  /// In en, this message translates to:
  /// **'Play preview'**
  String get previewPlay;

  /// Tooltip for the button that stops the playing track preview snippet
  ///
  /// In en, this message translates to:
  /// **'Stop preview'**
  String get previewStop;

  /// Snackbar shown when a track preview snippet cannot be played
  ///
  /// In en, this message translates to:
  /// **'Preview unavailable'**
  String get previewUnavailable;

  /// Dialog button - discard changes
  ///
  /// In en, this message translates to:
  /// **'Discard'**
  String get dialogDiscard;

  /// Dialog button - remove item
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get dialogRemove;

  /// Dialog button - uninstall extension
  ///
  /// In en, this message translates to:
  /// **'Uninstall'**
  String get dialogUninstall;

  /// Dialog title - unsaved changes warning
  ///
  /// In en, this message translates to:
  /// **'Discard Changes?'**
  String get dialogDiscardChanges;

  /// Dialog message - unsaved changes
  ///
  /// In en, this message translates to:
  /// **'You have unsaved changes. Do you want to discard them?'**
  String get dialogUnsavedChanges;

  /// Dialog title - clear all items
  ///
  /// In en, this message translates to:
  /// **'Clear All'**
  String get dialogClearAll;

  /// Dialog title - uninstall extension
  ///
  /// In en, this message translates to:
  /// **'Remove Extension'**
  String get dialogRemoveExtension;

  /// Dialog message - uninstall confirmation
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to remove this extension? This cannot be undone.'**
  String get dialogRemoveExtensionMessage;

  /// Dialog title - uninstall extension
  ///
  /// In en, this message translates to:
  /// **'Uninstall Extension?'**
  String get dialogUninstallExtension;

  /// Dialog message - uninstall specific extension
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to remove {extensionName}?'**
  String dialogUninstallExtensionMessage(String extensionName);

  /// Dialog title - clear download history
  ///
  /// In en, this message translates to:
  /// **'Clear History'**
  String get dialogClearHistoryTitle;

  /// Dialog message - clear history confirmation
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to clear all download history? This cannot be undone.'**
  String get dialogClearHistoryMessage;

  /// Dialog title - delete selected items
  ///
  /// In en, this message translates to:
  /// **'Delete Selected'**
  String get dialogDeleteSelectedTitle;

  /// Dialog message - delete selected tracks
  ///
  /// In en, this message translates to:
  /// **'Delete {count} {count, plural, =1{track} other{tracks}} from history?\n\nThis will also delete the files from storage.'**
  String dialogDeleteSelectedMessage(int count);

  /// Dialog title - import CSV playlist
  ///
  /// In en, this message translates to:
  /// **'Import Playlist'**
  String get dialogImportPlaylistTitle;

  /// Dialog message - import playlist confirmation
  ///
  /// In en, this message translates to:
  /// **'Found {count} tracks in the playlist file. Add them to download queue?'**
  String dialogImportPlaylistMessage(int count);

  /// Label shown in quality picker for CSV import
  ///
  /// In en, this message translates to:
  /// **'{count} tracks from CSV'**
  String csvImportTracks(int count);

  /// Tooltip on the collection screen action that exports the track list as an M3U8 playlist file
  ///
  /// In en, this message translates to:
  /// **'Export as M3U8'**
  String get collectionExportM3u;

  /// Snackbar after M3U8 export; tracks without a local file are not exported
  ///
  /// In en, this message translates to:
  /// **'Exported {exported} of {total} tracks'**
  String collectionExportM3uDone(int exported, int total);

  /// Snackbar when an M3U8 export finds no local files
  ///
  /// In en, this message translates to:
  /// **'No downloaded files to export'**
  String get collectionExportM3uNone;

  /// Snackbar when writing or sharing the M3U8 export fails
  ///
  /// In en, this message translates to:
  /// **'Export failed'**
  String get collectionExportM3uFailed;

  /// Track option and sheet title listing streaming platforms where the track can be opened
  ///
  /// In en, this message translates to:
  /// **'Open on...'**
  String get trackOpenOn;

  /// Shown in the Open on sheet when song.link returns no links
  ///
  /// In en, this message translates to:
  /// **'No platform links found for this track.'**
  String get trackOpenOnNoLinks;

  /// Library settings row opening the duplicate review sheet
  ///
  /// In en, this message translates to:
  /// **'Review duplicates'**
  String get libraryReviewDuplicates;

  /// Subtitle for the duplicate review settings row
  ///
  /// In en, this message translates to:
  /// **'Find tracks stored more than once'**
  String get libraryReviewDuplicatesSubtitle;

  /// Title of the duplicate review sheet
  ///
  /// In en, this message translates to:
  /// **'Duplicates'**
  String get duplicatesTitle;

  /// Shown when the duplicate review sheet finds nothing
  ///
  /// In en, this message translates to:
  /// **'No duplicate tracks found.'**
  String get duplicatesEmpty;

  /// Button that deletes all but the highest-quality copy in a duplicate group
  ///
  /// In en, this message translates to:
  /// **'Keep best'**
  String get duplicatesKeepBest;

  /// Button that keeps the highest-quality copy in every duplicate group and deletes the rest
  ///
  /// In en, this message translates to:
  /// **'Keep best for all'**
  String get duplicatesKeepBestAll;

  /// Confirmation message for keeping the best copy across every duplicate group
  ///
  /// In en, this message translates to:
  /// **'Keep the best copy of {groupCount} {groupCount, plural, =1{track} other{tracks}} and delete {count} lower-quality {count, plural, =1{copy} other{copies}}?\n\nThe deleted files will be removed from storage.'**
  String duplicatesKeepBestAllMessage(int count, int groupCount);

  /// Confirmation message for the keep-best action
  ///
  /// In en, this message translates to:
  /// **'Delete {count} lower-quality copies of \"{trackName}\"?'**
  String duplicatesKeepBestMessage(int count, String trackName);

  /// Confirmation message for deleting one duplicate copy
  ///
  /// In en, this message translates to:
  /// **'Delete this copy of \"{trackName}\"?'**
  String duplicatesDeleteCopyMessage(String trackName);

  /// Snackbar - track added to download queue
  ///
  /// In en, this message translates to:
  /// **'Added \"{trackName}\" to queue'**
  String snackbarAddedToQueue(String trackName);

  /// Snackbar - multiple tracks added to queue
  ///
  /// In en, this message translates to:
  /// **'Added {count} tracks to queue'**
  String snackbarAddedTracksToQueue(int count);

  /// Snackbar - track already exists
  ///
  /// In en, this message translates to:
  /// **'\"{trackName}\" already downloaded'**
  String snackbarAlreadyDownloaded(String trackName);

  /// Snackbar - track already exists in local library
  ///
  /// In en, this message translates to:
  /// **'\"{trackName}\" already exists in your library'**
  String snackbarAlreadyInLibrary(String trackName);

  /// Snackbar - history deleted
  ///
  /// In en, this message translates to:
  /// **'History cleared'**
  String get snackbarHistoryCleared;

  /// Snackbar - tracks deleted
  ///
  /// In en, this message translates to:
  /// **'Deleted {count} {count, plural, =1{track} other{tracks}}'**
  String snackbarDeletedTracks(int count);

  /// Snackbar - file open error
  ///
  /// In en, this message translates to:
  /// **'Cannot open file: {error}'**
  String snackbarCannotOpenFile(String error);

  /// Snackbar action - view download queue
  ///
  /// In en, this message translates to:
  /// **'View Queue'**
  String get snackbarViewQueue;

  /// Snackbar - URL copied
  ///
  /// In en, this message translates to:
  /// **'{platform} URL copied to clipboard'**
  String snackbarUrlCopied(String platform);

  /// Snackbar - file doesn't exist
  ///
  /// In en, this message translates to:
  /// **'File not found'**
  String get snackbarFileNotFound;

  /// Snackbar - wrong file type selected
  ///
  /// In en, this message translates to:
  /// **'Please select a .toadplayer-ext file'**
  String get snackbarSelectExtFile;

  /// Snackbar - provider order saved
  ///
  /// In en, this message translates to:
  /// **'Provider priority saved'**
  String get snackbarProviderPrioritySaved;

  /// Snackbar - metadata provider order saved
  ///
  /// In en, this message translates to:
  /// **'Metadata provider priority saved'**
  String get snackbarMetadataProviderSaved;

  /// Snackbar - extension installed successfully
  ///
  /// In en, this message translates to:
  /// **'{extensionName} installed.'**
  String snackbarExtensionInstalled(String extensionName);

  /// Snackbar - extension updated successfully
  ///
  /// In en, this message translates to:
  /// **'{extensionName} updated.'**
  String snackbarExtensionUpdated(String extensionName);

  /// Snackbar - extension install error
  ///
  /// In en, this message translates to:
  /// **'Failed to install extension'**
  String get snackbarFailedToInstall;

  /// Snackbar - extension update error
  ///
  /// In en, this message translates to:
  /// **'Failed to update extension'**
  String get snackbarFailedToUpdate;

  /// Error title - too many requests
  ///
  /// In en, this message translates to:
  /// **'Rate Limited'**
  String get errorRateLimited;

  /// Error message - rate limit explanation
  ///
  /// In en, this message translates to:
  /// **'Too many requests. Please wait a moment before searching again.'**
  String get errorRateLimitedMessage;

  /// Error - search returned no results
  ///
  /// In en, this message translates to:
  /// **'No tracks found'**
  String get errorNoTracksFound;

  /// Subtitle shown under the empty search result state on the home screen
  ///
  /// In en, this message translates to:
  /// **'Try another keyword'**
  String get searchEmptyResultSubtitle;

  /// Error title - URL not handled by any extension or service
  ///
  /// In en, this message translates to:
  /// **'Link not recognized'**
  String get errorUrlNotRecognized;

  /// Error message - URL not recognized explanation
  ///
  /// In en, this message translates to:
  /// **'This link is not supported. Make sure the URL is correct and a compatible extension is installed.'**
  String get errorUrlNotRecognizedMessage;

  /// Error message - generic URL fetch failure
  ///
  /// In en, this message translates to:
  /// **'Failed to load content from this link. Please try again.'**
  String get errorUrlFetchFailed;

  /// Error - extension source not available
  ///
  /// In en, this message translates to:
  /// **'Cannot load {item}: missing extension source'**
  String errorMissingExtensionSource(String item);

  /// Action button - pause download
  ///
  /// In en, this message translates to:
  /// **'Pause'**
  String get actionPause;

  /// Action button - resume download
  ///
  /// In en, this message translates to:
  /// **'Resume'**
  String get actionResume;

  /// Action button - cancel operation
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get actionCancel;

  /// Action button - select all items
  ///
  /// In en, this message translates to:
  /// **'Select All'**
  String get actionSelectAll;

  /// Action button - deselect all
  ///
  /// In en, this message translates to:
  /// **'Deselect'**
  String get actionDeselect;

  /// Selection count indicator
  ///
  /// In en, this message translates to:
  /// **'{count} selected'**
  String selectionSelected(int count);

  /// Status - all items selected
  ///
  /// In en, this message translates to:
  /// **'All tracks selected'**
  String get selectionAllSelected;

  /// Placeholder when nothing selected
  ///
  /// In en, this message translates to:
  /// **'Select tracks to delete'**
  String get selectionSelectToDelete;

  /// Progress indicator - loading track info
  ///
  /// In en, this message translates to:
  /// **'Fetching metadata... {current}/{total}'**
  String progressFetchingMetadata(int current, int total);

  /// Progress indicator - parsing CSV file
  ///
  /// In en, this message translates to:
  /// **'Reading CSV...'**
  String get progressReadingCsv;

  /// Search result category - songs
  ///
  /// In en, this message translates to:
  /// **'Songs'**
  String get searchSongs;

  /// Search result category - artists
  ///
  /// In en, this message translates to:
  /// **'Artists'**
  String get searchArtists;

  /// Search result category - albums
  ///
  /// In en, this message translates to:
  /// **'Albums'**
  String get searchAlbums;

  /// Search result category - playlists
  ///
  /// In en, this message translates to:
  /// **'Playlists'**
  String get searchPlaylists;

  /// Button of a search result section on wide screens that shows every result of that kind
  ///
  /// In en, this message translates to:
  /// **'Show all'**
  String get searchShowAll;

  /// Screen reader label of the Show all button of a search result section
  ///
  /// In en, this message translates to:
  /// **'Show all {category}'**
  String searchShowAllCategory(String category);

  /// Bottom sheet title for search sort options
  ///
  /// In en, this message translates to:
  /// **'Sort Results'**
  String get searchSortTitle;

  /// Sort option - default API order
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get searchSortDefault;

  /// Sort option - title ascending
  ///
  /// In en, this message translates to:
  /// **'Title (A-Z)'**
  String get searchSortTitleAZ;

  /// Sort option - title descending
  ///
  /// In en, this message translates to:
  /// **'Title (Z-A)'**
  String get searchSortTitleZA;

  /// Sort option - artist ascending
  ///
  /// In en, this message translates to:
  /// **'Artist (A-Z)'**
  String get searchSortArtistAZ;

  /// Sort option - artist descending
  ///
  /// In en, this message translates to:
  /// **'Artist (Z-A)'**
  String get searchSortArtistZA;

  /// Sort option - shortest duration first
  ///
  /// In en, this message translates to:
  /// **'Duration (Shortest)'**
  String get searchSortDurationShort;

  /// Sort option - longest duration first
  ///
  /// In en, this message translates to:
  /// **'Duration (Longest)'**
  String get searchSortDurationLong;

  /// Sort option - oldest release first
  ///
  /// In en, this message translates to:
  /// **'Release Date (Oldest)'**
  String get searchSortDateOldest;

  /// Sort option - newest release first
  ///
  /// In en, this message translates to:
  /// **'Release Date (Newest)'**
  String get searchSortDateNewest;

  /// Tooltip - play button
  ///
  /// In en, this message translates to:
  /// **'Play'**
  String get tooltipPlay;

  /// Setting title - filename pattern
  ///
  /// In en, this message translates to:
  /// **'Filename Format'**
  String get filenameFormat;

  /// Toggle label for showing advanced filename tags
  ///
  /// In en, this message translates to:
  /// **'Show advanced tags'**
  String get filenameShowAdvancedTags;

  /// Description for advanced filename tag toggle
  ///
  /// In en, this message translates to:
  /// **'Enable formatted tags for track padding and date patterns'**
  String get filenameShowAdvancedTagsDescription;

  /// Folder option - flat structure
  ///
  /// In en, this message translates to:
  /// **'No organization'**
  String get folderOrganizationNone;

  /// Folder option - playlist folders
  ///
  /// In en, this message translates to:
  /// **'By Playlist'**
  String get folderOrganizationByPlaylist;

  /// Subtitle for playlist folder option
  ///
  /// In en, this message translates to:
  /// **'Separate folder for each playlist'**
  String get folderOrganizationByPlaylistSubtitle;

  /// Folder option - artist folders
  ///
  /// In en, this message translates to:
  /// **'By Artist'**
  String get folderOrganizationByArtist;

  /// Folder option - album folders
  ///
  /// In en, this message translates to:
  /// **'By Album'**
  String get folderOrganizationByAlbum;

  /// Folder option - nested folders
  ///
  /// In en, this message translates to:
  /// **'Artist/Album'**
  String get folderOrganizationByArtistAlbum;

  /// Folder organization sheet description
  ///
  /// In en, this message translates to:
  /// **'Organize downloaded files into folders'**
  String get folderOrganizationDescription;

  /// Subtitle for no organization option
  ///
  /// In en, this message translates to:
  /// **'All files in download folder'**
  String get folderOrganizationNoneSubtitle;

  /// Subtitle for artist folder option
  ///
  /// In en, this message translates to:
  /// **'Separate folder for each artist'**
  String get folderOrganizationByArtistSubtitle;

  /// Subtitle for album folder option
  ///
  /// In en, this message translates to:
  /// **'Separate folder for each album'**
  String get folderOrganizationByAlbumSubtitle;

  /// Subtitle for nested folder option
  ///
  /// In en, this message translates to:
  /// **'Nested folders for artist and album'**
  String get folderOrganizationByArtistAlbumSubtitle;

  /// Update dialog title
  ///
  /// In en, this message translates to:
  /// **'Update Available'**
  String get updateAvailable;

  /// Update button - dismiss
  ///
  /// In en, this message translates to:
  /// **'Later'**
  String get updateLater;

  /// Update status - initializing
  ///
  /// In en, this message translates to:
  /// **'Starting download...'**
  String get updateStartingDownload;

  /// Update error title
  ///
  /// In en, this message translates to:
  /// **'Download failed'**
  String get updateDownloadFailed;

  /// Update error message
  ///
  /// In en, this message translates to:
  /// **'Failed to download update'**
  String get updateFailedMessage;

  /// Update subtitle
  ///
  /// In en, this message translates to:
  /// **'A new version is ready'**
  String get updateNewVersionReady;

  /// Title of the mandatory update dialog shown when the installed version is too old
  ///
  /// In en, this message translates to:
  /// **'Update required'**
  String get updateRequiredTitle;

  /// Subtitle of the mandatory update dialog; explains why the dialog cannot be dismissed
  ///
  /// In en, this message translates to:
  /// **'This version is {count} releases behind and is no longer supported. Update to keep using the app.'**
  String updateRequiredNotice(int count);

  /// Label for current version
  ///
  /// In en, this message translates to:
  /// **'Current'**
  String get updateCurrent;

  /// Label for new version
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get updateNew;

  /// Update status - downloading
  ///
  /// In en, this message translates to:
  /// **'Downloading...'**
  String get updateDownloading;

  /// Changelog section title
  ///
  /// In en, this message translates to:
  /// **'What\'s New'**
  String get updateWhatsNew;

  /// Update button - download and install
  ///
  /// In en, this message translates to:
  /// **'Download & Install'**
  String get updateDownloadInstall;

  /// Update button - skip this version
  ///
  /// In en, this message translates to:
  /// **'Don\'t remind'**
  String get updateDontRemind;

  /// Update button - open the release page when this install cannot update itself (deb, Flatpak, no matching package)
  ///
  /// In en, this message translates to:
  /// **'View Release'**
  String get updateViewRelease;

  /// Update status on Windows - the downloaded installer is starting and the app will close
  ///
  /// In en, this message translates to:
  /// **'Starting the installer...'**
  String get updateStartingInstaller;

  /// Update instructions on macOS after the downloaded disk image opens
  ///
  /// In en, this message translates to:
  /// **'The disk image is open in Finder. Quit Toadplayer, then drag Toadplayer from the disk image to Applications and replace the old copy.'**
  String get updateMacInstallHint;

  /// Update button on macOS - quit the app so the new version can replace it
  ///
  /// In en, this message translates to:
  /// **'Quit Toadplayer'**
  String get updateQuitApp;

  /// Update status on Linux after the AppImage was replaced
  ///
  /// In en, this message translates to:
  /// **'The update is installed. Restart Toadplayer to use it.'**
  String get updateReadyToRestart;

  /// Update button on Linux - restart the app after the AppImage was replaced
  ///
  /// In en, this message translates to:
  /// **'Restart Now'**
  String get updateRestartNow;

  /// Provider priority page title
  ///
  /// In en, this message translates to:
  /// **'Provider Priority'**
  String get providerPriorityTitle;

  /// Provider priority page description
  ///
  /// In en, this message translates to:
  /// **'Drag to reorder download providers. The app will try providers from top to bottom when downloading tracks.'**
  String get providerPriorityDescription;

  /// Info tip about fallback behavior
  ///
  /// In en, this message translates to:
  /// **'If a track is not available on the first provider, the app will automatically try the next one.'**
  String get providerPriorityInfo;

  /// Section description for extension fallback selection
  ///
  /// In en, this message translates to:
  /// **'Choose which installed download extensions can be used during automatic fallback.'**
  String get providerPriorityFallbackExtensionsDescription;

  /// Hint below the extension fallback selection list
  ///
  /// In en, this message translates to:
  /// **'Only enabled extensions with download-provider capability are listed here.'**
  String get providerPriorityFallbackExtensionsHint;

  /// Label for extension-provided providers
  ///
  /// In en, this message translates to:
  /// **'Extension'**
  String get providerExtension;

  /// Metadata priority page title
  ///
  /// In en, this message translates to:
  /// **'Metadata Priority'**
  String get metadataProviderPriorityTitle;

  /// Metadata priority page description
  ///
  /// In en, this message translates to:
  /// **'Drag to reorder metadata providers. The app will try providers from top to bottom when searching for tracks and fetching metadata.'**
  String get metadataProviderPriorityDescription;

  /// Info tip about rate limits
  ///
  /// In en, this message translates to:
  /// **'Deezer has no rate limits and is recommended as primary. Spotify may rate limit after many requests.'**
  String get metadataProviderPriorityInfo;

  /// Logs screen title
  ///
  /// In en, this message translates to:
  /// **'Logs'**
  String get logTitle;

  /// Snackbar - logs copied
  ///
  /// In en, this message translates to:
  /// **'Logs copied to clipboard'**
  String get logCopied;

  /// Log search placeholder
  ///
  /// In en, this message translates to:
  /// **'Search logs...'**
  String get logSearchHint;

  /// Filter by log level
  ///
  /// In en, this message translates to:
  /// **'Level'**
  String get logFilterLevel;

  /// Filter section title
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get logFilterSection;

  /// Share button tooltip
  ///
  /// In en, this message translates to:
  /// **'Share logs'**
  String get logShareLogs;

  /// Clear button tooltip
  ///
  /// In en, this message translates to:
  /// **'Clear logs'**
  String get logClearLogs;

  /// Clear logs dialog title
  ///
  /// In en, this message translates to:
  /// **'Clear Logs'**
  String get logClearLogsTitle;

  /// Clear logs confirmation message
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to clear all logs?'**
  String get logClearLogsMessage;

  /// Filter dialog title
  ///
  /// In en, this message translates to:
  /// **'Filter logs by severity'**
  String get logFilterBySeverity;

  /// Empty state title
  ///
  /// In en, this message translates to:
  /// **'No logs yet'**
  String get logNoLogsYet;

  /// Empty state subtitle
  ///
  /// In en, this message translates to:
  /// **'Logs will appear here as you use the app'**
  String get logNoLogsYetSubtitle;

  /// Log count with filter active
  ///
  /// In en, this message translates to:
  /// **'Entries ({count} filtered)'**
  String logEntriesFiltered(int count);

  /// Total log count
  ///
  /// In en, this message translates to:
  /// **'Entries ({count})'**
  String logEntries(int count);

  /// Update channel - stable releases
  ///
  /// In en, this message translates to:
  /// **'Stable'**
  String get channelStable;

  /// Update channel - beta/preview releases
  ///
  /// In en, this message translates to:
  /// **'Preview'**
  String get channelPreview;

  /// Settings section header
  ///
  /// In en, this message translates to:
  /// **'Search Source'**
  String get sectionSearchSource;

  /// Settings section header
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get sectionDownload;

  /// Settings section header
  ///
  /// In en, this message translates to:
  /// **'Performance'**
  String get sectionPerformance;

  /// Settings section header
  ///
  /// In en, this message translates to:
  /// **'App'**
  String get sectionApp;

  /// Settings section header
  ///
  /// In en, this message translates to:
  /// **'Data'**
  String get sectionData;

  /// Settings section header
  ///
  /// In en, this message translates to:
  /// **'Debug'**
  String get sectionDebug;

  /// Settings section header
  ///
  /// In en, this message translates to:
  /// **'Service'**
  String get sectionService;

  /// Settings section header
  ///
  /// In en, this message translates to:
  /// **'Audio Quality'**
  String get sectionAudioQuality;

  /// Settings section header
  ///
  /// In en, this message translates to:
  /// **'File Settings'**
  String get sectionFileSettings;

  /// Settings section header
  ///
  /// In en, this message translates to:
  /// **'Lyrics'**
  String get sectionLyrics;

  /// No description provided for @lyricsKeepScreenOn.
  ///
  /// In en, this message translates to:
  /// **'Keep screen on while viewing lyrics'**
  String get lyricsKeepScreenOn;

  /// No description provided for @lyricsKeepScreenOnSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Prevent screen timeout while lyrics are open, including when playback is paused.'**
  String get lyricsKeepScreenOnSubtitle;

  /// Setting - how to save lyrics
  ///
  /// In en, this message translates to:
  /// **'Lyrics Mode'**
  String get lyricsMode;

  /// Lyrics mode picker description
  ///
  /// In en, this message translates to:
  /// **'Choose how lyrics are saved with your downloads'**
  String get lyricsModeDescription;

  /// Lyrics mode option - embed in audio file
  ///
  /// In en, this message translates to:
  /// **'Embed in file'**
  String get lyricsModeEmbed;

  /// Subtitle for embed option
  ///
  /// In en, this message translates to:
  /// **'Lyrics stored inside FLAC metadata'**
  String get lyricsModeEmbedSubtitle;

  /// Lyrics mode option - separate LRC file
  ///
  /// In en, this message translates to:
  /// **'External .lrc file'**
  String get lyricsModeExternal;

  /// Subtitle for external option
  ///
  /// In en, this message translates to:
  /// **'Separate .lrc file for players like Samsung Music'**
  String get lyricsModeExternalSubtitle;

  /// Lyrics mode option - embed and external
  ///
  /// In en, this message translates to:
  /// **'Both'**
  String get lyricsModeBoth;

  /// Subtitle for both option
  ///
  /// In en, this message translates to:
  /// **'Embed and save .lrc file'**
  String get lyricsModeBothSubtitle;

  /// Settings section header
  ///
  /// In en, this message translates to:
  /// **'Color'**
  String get sectionColor;

  /// Settings section header
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get sectionTheme;

  /// Settings section header
  ///
  /// In en, this message translates to:
  /// **'Layout'**
  String get sectionLayout;

  /// Settings section header for language
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get sectionLanguage;

  /// Language setting title
  ///
  /// In en, this message translates to:
  /// **'App Language'**
  String get appearanceLanguage;

  /// Appearance settings description
  ///
  /// In en, this message translates to:
  /// **'Theme, colors, display'**
  String get settingsAppearanceSubtitle;

  /// Download settings description
  ///
  /// In en, this message translates to:
  /// **'Service, quality, fallback'**
  String get settingsDownloadSubtitle;

  /// Extensions settings description
  ///
  /// In en, this message translates to:
  /// **'Manage download providers'**
  String get settingsExtensionsSubtitle;

  /// Logs settings description
  ///
  /// In en, this message translates to:
  /// **'View app logs for debugging'**
  String get settingsLogsSubtitle;

  /// Status when opening shared URL
  ///
  /// In en, this message translates to:
  /// **'Loading shared link...'**
  String get loadingSharedLink;

  /// Exit confirmation message
  ///
  /// In en, this message translates to:
  /// **'Press back again to exit'**
  String get pressBackAgainToExit;

  /// Download all button with count
  ///
  /// In en, this message translates to:
  /// **'Download All ({count})'**
  String downloadAllCount(int count);

  /// Track count display
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 track} other{{count} tracks}}'**
  String tracksCount(int count);

  /// Action - copy file path
  ///
  /// In en, this message translates to:
  /// **'Copy file path'**
  String get trackCopyFilePath;

  /// Action - delete downloaded file
  ///
  /// In en, this message translates to:
  /// **'Remove from device'**
  String get trackRemoveFromDevice;

  /// Action - fetch lyrics
  ///
  /// In en, this message translates to:
  /// **'Load Lyrics'**
  String get trackLoadLyrics;

  /// Tab title - track metadata
  ///
  /// In en, this message translates to:
  /// **'Metadata'**
  String get trackMetadata;

  /// Tab title - file information
  ///
  /// In en, this message translates to:
  /// **'File Info'**
  String get trackFileInfo;

  /// Tab title - lyrics
  ///
  /// In en, this message translates to:
  /// **'Lyrics'**
  String get trackLyrics;

  /// Error - file doesn't exist
  ///
  /// In en, this message translates to:
  /// **'File not found'**
  String get trackFileNotFound;

  /// File access failed; this does not mean the file was deleted
  ///
  /// In en, this message translates to:
  /// **'File is currently unavailable. Check storage access and try again.'**
  String get trackFileUnavailable;

  /// Action - open track in Deezer app
  ///
  /// In en, this message translates to:
  /// **'Open in Deezer'**
  String get trackOpenInDeezer;

  /// Action - open track in Spotify app
  ///
  /// In en, this message translates to:
  /// **'Open in Spotify'**
  String get trackOpenInSpotify;

  /// Metadata label - track title
  ///
  /// In en, this message translates to:
  /// **'Track name'**
  String get trackTrackName;

  /// Metadata label - artist name
  ///
  /// In en, this message translates to:
  /// **'Artist'**
  String get trackArtist;

  /// Metadata label - album artist
  ///
  /// In en, this message translates to:
  /// **'Album artist'**
  String get trackAlbumArtist;

  /// Metadata label - album name
  ///
  /// In en, this message translates to:
  /// **'Album'**
  String get trackAlbum;

  /// Metadata label - track number
  ///
  /// In en, this message translates to:
  /// **'Track number'**
  String get trackTrackNumber;

  /// Metadata label - disc number
  ///
  /// In en, this message translates to:
  /// **'Disc number'**
  String get trackDiscNumber;

  /// Metadata label - track length
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get trackDuration;

  /// Metadata label - audio quality
  ///
  /// In en, this message translates to:
  /// **'Audio quality'**
  String get trackAudioQuality;

  /// Metadata label - ReplayGain track gain
  ///
  /// In en, this message translates to:
  /// **'ReplayGain Track Gain'**
  String get trackReplayGainTrackGain;

  /// Metadata label - ReplayGain track peak
  ///
  /// In en, this message translates to:
  /// **'ReplayGain Track Peak'**
  String get trackReplayGainTrackPeak;

  /// Metadata label - ReplayGain album gain
  ///
  /// In en, this message translates to:
  /// **'ReplayGain Album Gain'**
  String get trackReplayGainAlbumGain;

  /// Metadata label - ReplayGain album peak
  ///
  /// In en, this message translates to:
  /// **'ReplayGain Album Peak'**
  String get trackReplayGainAlbumPeak;

  /// Library audio quality label mode that shows the detected file format
  ///
  /// In en, this message translates to:
  /// **'File format'**
  String get libraryQualityLabelFileFormat;

  /// Metadata label - release date
  ///
  /// In en, this message translates to:
  /// **'Release date'**
  String get trackReleaseDate;

  /// Metadata label - music genre
  ///
  /// In en, this message translates to:
  /// **'Genre'**
  String get trackGenre;

  /// Metadata label - record label
  ///
  /// In en, this message translates to:
  /// **'Label'**
  String get trackLabel;

  /// Metadata label - copyright information
  ///
  /// In en, this message translates to:
  /// **'Copyright'**
  String get trackCopyright;

  /// Metadata label - download date
  ///
  /// In en, this message translates to:
  /// **'Downloaded'**
  String get trackDownloaded;

  /// Action - copy lyrics to clipboard
  ///
  /// In en, this message translates to:
  /// **'Copy lyrics'**
  String get trackCopyLyrics;

  /// Label showing the lyrics source/provider
  ///
  /// In en, this message translates to:
  /// **'Source: {source}'**
  String trackLyricsSource(String source);

  /// Message when lyrics not found
  ///
  /// In en, this message translates to:
  /// **'Lyrics not available for this track'**
  String get trackLyricsNotAvailable;

  /// Message when no embedded lyrics in audio file
  ///
  /// In en, this message translates to:
  /// **'No lyrics found in this file'**
  String get trackLyricsNotInFile;

  /// Action - fetch lyrics from online providers
  ///
  /// In en, this message translates to:
  /// **'Fetch from Online'**
  String get trackFetchOnlineLyrics;

  /// Message when lyrics request times out
  ///
  /// In en, this message translates to:
  /// **'Request timed out. Try again later.'**
  String get trackLyricsTimeout;

  /// Message when lyrics loading fails
  ///
  /// In en, this message translates to:
  /// **'Failed to load lyrics'**
  String get trackLyricsLoadFailed;

  /// Action - embed lyrics into audio file
  ///
  /// In en, this message translates to:
  /// **'Embed Lyrics'**
  String get trackEmbedLyrics;

  /// Snackbar - lyrics saved to file
  ///
  /// In en, this message translates to:
  /// **'Lyrics embedded successfully'**
  String get trackLyricsEmbedded;

  /// Message when track is instrumental (no lyrics)
  ///
  /// In en, this message translates to:
  /// **'Instrumental track'**
  String get trackInstrumental;

  /// Snackbar - content copied
  ///
  /// In en, this message translates to:
  /// **'Copied to clipboard'**
  String get trackCopiedToClipboard;

  /// Delete confirmation title
  ///
  /// In en, this message translates to:
  /// **'Remove from device?'**
  String get trackDeleteConfirmTitle;

  /// No description provided for @trackDeleteNetworkConfirmMessage.
  ///
  /// In en, this message translates to:
  /// **'This will permanently delete the file from your network storage and remove it from your library and history.'**
  String get trackDeleteNetworkConfirmMessage;

  /// No description provided for @snackbarDeleteTracksFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not delete {count} {count, plural, =1{track} other{tracks}}. Check storage access and try again.'**
  String snackbarDeleteTracksFailed(int count);

  /// Delete confirmation message
  ///
  /// In en, this message translates to:
  /// **'This will permanently delete the downloaded file and remove it from your history.'**
  String get trackDeleteConfirmMessage;

  /// Relative date - today
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get dateToday;

  /// Relative date - yesterday
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get dateYesterday;

  /// Relative date - days ago
  ///
  /// In en, this message translates to:
  /// **'{count} days ago'**
  String dateDaysAgo(int count);

  /// Relative date - weeks ago
  ///
  /// In en, this message translates to:
  /// **'{count} weeks ago'**
  String dateWeeksAgo(int count);

  /// Relative date - months ago
  ///
  /// In en, this message translates to:
  /// **'{count} months ago'**
  String dateMonthsAgo(int count);

  /// Repo filter - all extensions
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get storeFilterAll;

  /// Repo filter - metadata providers
  ///
  /// In en, this message translates to:
  /// **'Metadata'**
  String get storeFilterMetadata;

  /// Repo filter - download providers
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get storeFilterDownload;

  /// Repo filter - utility extensions
  ///
  /// In en, this message translates to:
  /// **'Utility'**
  String get storeFilterUtility;

  /// Repo filter - lyrics providers
  ///
  /// In en, this message translates to:
  /// **'Lyrics'**
  String get storeFilterLyrics;

  /// Repo filter - integrations
  ///
  /// In en, this message translates to:
  /// **'Integration'**
  String get storeFilterIntegration;

  /// Button to clear all filters
  ///
  /// In en, this message translates to:
  /// **'Clear filters'**
  String get storeClearFilters;

  /// Store setup screen - heading when no repo is configured
  ///
  /// In en, this message translates to:
  /// **'Add Extension Repository'**
  String get storeAddRepoTitle;

  /// Store setup screen - explanatory text
  ///
  /// In en, this message translates to:
  /// **'Enter a GitHub repository URL that contains a registry.json file to browse and install extensions.'**
  String get storeAddRepoDescription;

  /// Label for the repository URL input field
  ///
  /// In en, this message translates to:
  /// **'Repository URL'**
  String get storeRepoUrlLabel;

  /// Hint/placeholder for the repository URL input field
  ///
  /// In en, this message translates to:
  /// **'https://github.com/user/repo'**
  String get storeRepoUrlHint;

  /// Button to submit a new repository URL
  ///
  /// In en, this message translates to:
  /// **'Add Repository'**
  String get storeAddRepoButton;

  /// Tooltip for the change-repository icon button in the app bar
  ///
  /// In en, this message translates to:
  /// **'Change repository'**
  String get storeChangeRepoTooltip;

  /// Title of the change/remove repository dialog
  ///
  /// In en, this message translates to:
  /// **'Extension Repository'**
  String get storeRepoDialogTitle;

  /// Label shown above the current repository URL in the dialog
  ///
  /// In en, this message translates to:
  /// **'Current repository:'**
  String get storeRepoDialogCurrent;

  /// Label for the new repository URL field inside the dialog
  ///
  /// In en, this message translates to:
  /// **'New Repository URL'**
  String get storeNewRepoUrlLabel;

  /// Error heading when the store cannot be loaded
  ///
  /// In en, this message translates to:
  /// **'Failed to load repository'**
  String get storeLoadError;

  /// Message when store has no extensions
  ///
  /// In en, this message translates to:
  /// **'No extensions available'**
  String get storeEmptyNoExtensions;

  /// Message when search/filter returns no results
  ///
  /// In en, this message translates to:
  /// **'No extensions found'**
  String get storeEmptyNoResults;

  /// Extension detail - unique ID
  ///
  /// In en, this message translates to:
  /// **'ID'**
  String get extensionId;

  /// Extension detail - error message
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get extensionError;

  /// Section header - extension features
  ///
  /// In en, this message translates to:
  /// **'Capabilities'**
  String get extensionCapabilities;

  /// Capability - provides metadata
  ///
  /// In en, this message translates to:
  /// **'Metadata Provider'**
  String get extensionMetadataProvider;

  /// Capability - provides downloads
  ///
  /// In en, this message translates to:
  /// **'Download Provider'**
  String get extensionDownloadProvider;

  /// Capability - provides lyrics
  ///
  /// In en, this message translates to:
  /// **'Lyrics Provider'**
  String get extensionLyricsProvider;

  /// Capability - handles URLs
  ///
  /// In en, this message translates to:
  /// **'URL Handler'**
  String get extensionUrlHandler;

  /// Capability - quality selection
  ///
  /// In en, this message translates to:
  /// **'Quality Options'**
  String get extensionQualityOptions;

  /// Capability - post-processing
  ///
  /// In en, this message translates to:
  /// **'Post-Processing Hooks'**
  String get extensionPostProcessingHooks;

  /// Section header - required permissions
  ///
  /// In en, this message translates to:
  /// **'Permissions'**
  String get extensionPermissions;

  /// Section header - extension settings
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get extensionSettings;

  /// Button to uninstall extension
  ///
  /// In en, this message translates to:
  /// **'Remove Extension'**
  String get extensionRemoveButton;

  /// Extension detail - last update
  ///
  /// In en, this message translates to:
  /// **'Updated'**
  String get extensionUpdated;

  /// Extension detail - minimum app version
  ///
  /// In en, this message translates to:
  /// **'Min App Version'**
  String get extensionMinAppVersion;

  /// Capability - custom track matching algorithm
  ///
  /// In en, this message translates to:
  /// **'Custom Track Matching'**
  String get extensionCustomTrackMatching;

  /// Capability - post-download processing
  ///
  /// In en, this message translates to:
  /// **'Post-Processing'**
  String get extensionPostProcessing;

  /// Post-processing hooks count
  ///
  /// In en, this message translates to:
  /// **'{count} hook(s) available'**
  String extensionHooksAvailable(int count);

  /// URL patterns count
  ///
  /// In en, this message translates to:
  /// **'{count} pattern(s)'**
  String extensionPatternsCount(int count);

  /// Track matching strategy name
  ///
  /// In en, this message translates to:
  /// **'Strategy: {strategy}'**
  String extensionStrategy(String strategy);

  /// Section header - provider priority
  ///
  /// In en, this message translates to:
  /// **'Provider Priority'**
  String get extensionsProviderPrioritySection;

  /// Section header - installed extensions
  ///
  /// In en, this message translates to:
  /// **'Installed Extensions'**
  String get extensionsInstalledSection;

  /// Empty state - no extensions
  ///
  /// In en, this message translates to:
  /// **'No extensions installed'**
  String get extensionsNoExtensions;

  /// Empty state subtitle
  ///
  /// In en, this message translates to:
  /// **'Install .toadplayer-ext files to add new providers'**
  String get extensionsNoExtensionsSubtitle;

  /// Button to install extension from file
  ///
  /// In en, this message translates to:
  /// **'Install Extension'**
  String get extensionsInstallButton;

  /// Security warning about extensions
  ///
  /// In en, this message translates to:
  /// **'Extensions can add new metadata and download providers. Only install extensions from trusted sources.'**
  String get extensionsInfoTip;

  /// Success message after install
  ///
  /// In en, this message translates to:
  /// **'Extension installed successfully'**
  String get extensionsInstalledSuccess;

  /// Success message after installing multiple extensions
  ///
  /// In en, this message translates to:
  /// **'{count} extensions installed successfully'**
  String extensionsInstalledCount(int count);

  /// Message when installing multiple extensions partially succeeds
  ///
  /// In en, this message translates to:
  /// **'Installed {installed} of {attempted} extensions'**
  String extensionsInstallPartialSuccess(int installed, int attempted);

  /// Setting - download provider order
  ///
  /// In en, this message translates to:
  /// **'Download Priority'**
  String get extensionsDownloadPriority;

  /// Subtitle for download priority
  ///
  /// In en, this message translates to:
  /// **'Set download service order'**
  String get extensionsDownloadPrioritySubtitle;

  /// Setting and page title for choosing which download extensions can be used during fallback
  ///
  /// In en, this message translates to:
  /// **'Fallback Extensions'**
  String get extensionsFallbackTitle;

  /// Subtitle for download fallback extensions menu
  ///
  /// In en, this message translates to:
  /// **'Choose which installed download extensions can be used as fallback'**
  String get extensionsFallbackSubtitle;

  /// Empty state - no download providers
  ///
  /// In en, this message translates to:
  /// **'No extensions with download provider'**
  String get extensionsNoDownloadProvider;

  /// Setting - metadata provider order
  ///
  /// In en, this message translates to:
  /// **'Metadata Priority'**
  String get extensionsMetadataPriority;

  /// Subtitle for metadata priority
  ///
  /// In en, this message translates to:
  /// **'Set search & metadata source order'**
  String get extensionsMetadataPrioritySubtitle;

  /// Empty state - no metadata providers
  ///
  /// In en, this message translates to:
  /// **'No extensions with metadata provider'**
  String get extensionsNoMetadataProvider;

  /// Setting - search provider selection
  ///
  /// In en, this message translates to:
  /// **'Search Provider'**
  String get extensionsSearchProvider;

  /// Empty state - no search providers
  ///
  /// In en, this message translates to:
  /// **'No extensions with custom search'**
  String get extensionsNoCustomSearch;

  /// Search provider setting description
  ///
  /// In en, this message translates to:
  /// **'Choose which service to use for searching tracks'**
  String get extensionsSearchProviderDescription;

  /// Label for custom search provider
  ///
  /// In en, this message translates to:
  /// **'Custom search'**
  String get extensionsCustomSearch;

  /// Error message when extension fails to load
  ///
  /// In en, this message translates to:
  /// **'Error loading extension'**
  String get extensionsErrorLoading;

  /// Quality option - CD quality FLAC
  ///
  /// In en, this message translates to:
  /// **'FLAC Lossless'**
  String get qualityFlacLossless;

  /// Technical spec for lossless
  ///
  /// In en, this message translates to:
  /// **'16-bit / 44.1kHz'**
  String get qualityFlacLosslessSubtitle;

  /// Quality option - high resolution FLAC
  ///
  /// In en, this message translates to:
  /// **'Hi-Res FLAC'**
  String get qualityHiResFlac;

  /// Technical spec for hi-res
  ///
  /// In en, this message translates to:
  /// **'24-bit / up to 96kHz'**
  String get qualityHiResFlacSubtitle;

  /// Quality option - maximum resolution FLAC
  ///
  /// In en, this message translates to:
  /// **'Hi-Res FLAC Max'**
  String get qualityHiResFlacMax;

  /// Technical spec for hi-res max
  ///
  /// In en, this message translates to:
  /// **'24-bit / up to 192kHz'**
  String get qualityHiResFlacMaxSubtitle;

  /// Setting title to pick output format for lossy downloads
  ///
  /// In en, this message translates to:
  /// **'Lossy Format'**
  String get downloadLossyFormat;

  /// Toggle for automatic post-download audio conversion
  ///
  /// In en, this message translates to:
  /// **'Auto-convert after download'**
  String get downloadAutoConvert;

  /// No description provided for @downloadAutoConvertAllFormatsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Convert completed downloads or limit FLAC bit depth and sample rate. The original is replaced only after conversion succeeds.'**
  String get downloadAutoConvertAllFormatsSubtitle;

  /// No description provided for @downloadAutoConvertOutputSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose the output format for newly completed downloads.'**
  String get downloadAutoConvertOutputSubtitle;

  /// No description provided for @downloadAutoConvertFlacSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Lossless FLAC with quality limits. Lower bit depths and sample rates are preserved.'**
  String get downloadAutoConvertFlacSubtitle;

  /// No description provided for @downloadAutoConvertMaxBitDepth.
  ///
  /// In en, this message translates to:
  /// **'Maximum bit depth'**
  String get downloadAutoConvertMaxBitDepth;

  /// No description provided for @downloadAutoConvertMaxSampleRate.
  ///
  /// In en, this message translates to:
  /// **'Maximum sample rate'**
  String get downloadAutoConvertMaxSampleRate;

  /// No description provided for @downloadAutoConvertFlacLimitsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'These are upper limits. For example, a 44.1 kHz source stays at 44.1 kHz when 48 kHz is selected. Lossy sources are kept in their original format.'**
  String get downloadAutoConvertFlacLimitsSubtitle;

  /// Explanation of safe automatic post-download conversion
  ///
  /// In en, this message translates to:
  /// **'Convert completed downloads to a smaller lossy format. The original is replaced only after conversion succeeds.'**
  String get downloadAutoConvertSubtitle;

  /// Automatic conversion output format setting
  ///
  /// In en, this message translates to:
  /// **'Output format'**
  String get downloadAutoConvertFormat;

  /// Automatic conversion format picker explanation
  ///
  /// In en, this message translates to:
  /// **'Choose the lossy format used for newly completed downloads.'**
  String get downloadAutoConvertFormatSubtitle;

  /// Automatic conversion bitrate setting
  ///
  /// In en, this message translates to:
  /// **'Output quality'**
  String get downloadAutoConvertBitrate;

  /// Automatic conversion bitrate picker explanation
  ///
  /// In en, this message translates to:
  /// **'Higher bitrates preserve more detail but create larger files.'**
  String get downloadAutoConvertBitrateSubtitle;

  /// MP3 automatic conversion option description
  ///
  /// In en, this message translates to:
  /// **'Best compatibility across players and devices'**
  String get downloadAutoConvertMp3Subtitle;

  /// M4A AAC automatic conversion option description
  ///
  /// In en, this message translates to:
  /// **'Efficient AAC audio in an M4A container'**
  String get downloadAutoConvertM4aSubtitle;

  /// Opus automatic conversion option description
  ///
  /// In en, this message translates to:
  /// **'Best efficiency for modern players'**
  String get downloadAutoConvertOpusSubtitle;

  /// Setting - show quality picker
  ///
  /// In en, this message translates to:
  /// **'Ask Before Download'**
  String get downloadAskBeforeDownload;

  /// Setting - download folder
  ///
  /// In en, this message translates to:
  /// **'Download Directory'**
  String get downloadDirectory;

  /// Setting - separate folder for singles
  ///
  /// In en, this message translates to:
  /// **'Separate Singles Folder'**
  String get downloadSeparateSinglesFolder;

  /// Setting - album folder organization
  ///
  /// In en, this message translates to:
  /// **'Album Folder Structure'**
  String get downloadAlbumFolderStructure;

  /// Album folder structure picker description
  ///
  /// In en, this message translates to:
  /// **'Choose how album folders are structured'**
  String get albumFolderStructureDescription;

  /// Setting - choose whether artist folders use Album Artist or Track Artist
  ///
  /// In en, this message translates to:
  /// **'Use Album Artist for folders'**
  String get downloadUseAlbumArtistForFolders;

  /// Setting - strip featured artists from folder name
  ///
  /// In en, this message translates to:
  /// **'Primary artist only for folders'**
  String get downloadUsePrimaryArtistOnly;

  /// Subtitle when primary artist only is enabled
  ///
  /// In en, this message translates to:
  /// **'Featured artists removed from folder name (e.g. Justin Bieber, Quavo → Justin Bieber)'**
  String get downloadUsePrimaryArtistOnlyEnabled;

  /// Subtitle when primary artist only is disabled
  ///
  /// In en, this message translates to:
  /// **'Full artist string used for folder name'**
  String get downloadUsePrimaryArtistOnlyDisabled;

  /// Dialog title - choose audio quality
  ///
  /// In en, this message translates to:
  /// **'Select Quality'**
  String get downloadSelectQuality;

  /// Label - download source
  ///
  /// In en, this message translates to:
  /// **'Download From'**
  String get downloadFrom;

  /// Theme option - pure black
  ///
  /// In en, this message translates to:
  /// **'AMOLED Dark'**
  String get appearanceAmoledDark;

  /// Subtitle for AMOLED dark
  ///
  /// In en, this message translates to:
  /// **'Pure black background'**
  String get appearanceAmoledDarkSubtitle;

  /// Toggle for shared-element (Hero) transitions
  ///
  /// In en, this message translates to:
  /// **'Hero animations'**
  String get appearanceHeroAnimations;

  /// Subtitle for the Hero animations toggle
  ///
  /// In en, this message translates to:
  /// **'Fly covers between screens, e.g. when opening the player'**
  String get appearanceHeroAnimationsSubtitle;

  /// Toggle that forces backdrop blur on even when the device profile disabled it
  ///
  /// In en, this message translates to:
  /// **'Always use blur effects'**
  String get appearanceForceBlur;

  /// Subtitle for the force-blur toggle
  ///
  /// In en, this message translates to:
  /// **'Enable the navigation bar blur even on devices where it is off by default. May cost performance.'**
  String get appearanceForceBlurSubtitle;

  /// Button - clear all queue items
  ///
  /// In en, this message translates to:
  /// **'Clear All'**
  String get queueClearAll;

  /// Clear queue confirmation
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to clear all downloads?'**
  String get queueClearAllMessage;

  /// Setting toggle for auto-export
  ///
  /// In en, this message translates to:
  /// **'Auto-export failed downloads'**
  String get settingsAutoExportFailed;

  /// Subtitle for auto-export setting
  ///
  /// In en, this message translates to:
  /// **'Save failed downloads to TXT file automatically'**
  String get settingsAutoExportFailedSubtitle;

  /// Setting for network type preference
  ///
  /// In en, this message translates to:
  /// **'Download Network'**
  String get settingsDownloadNetwork;

  /// Network option - use any connection
  ///
  /// In en, this message translates to:
  /// **'WiFi + Mobile Data'**
  String get settingsDownloadNetworkAny;

  /// Network option - only use WiFi
  ///
  /// In en, this message translates to:
  /// **'WiFi Only'**
  String get settingsDownloadNetworkWifiOnly;

  /// Subtitle explaining network preference
  ///
  /// In en, this message translates to:
  /// **'Choose which network to use for downloads. When set to WiFi Only, downloads will pause on mobile data.'**
  String get settingsDownloadNetworkSubtitle;

  /// Setting title - how many tracks download at the same time
  ///
  /// In en, this message translates to:
  /// **'Concurrent downloads'**
  String get settingsConcurrentDownloads;

  /// Subtitle explaining the concurrent downloads picker
  ///
  /// In en, this message translates to:
  /// **'Downloading several tracks at once is faster, but some providers may rate-limit parallel requests.'**
  String get settingsConcurrentDownloadsSubtitle;

  /// Concurrent downloads option - sequential
  ///
  /// In en, this message translates to:
  /// **'1 track at a time'**
  String get concurrentDownloadsOne;

  /// Concurrent downloads option - parallel
  ///
  /// In en, this message translates to:
  /// **'Up to {count} tracks at once'**
  String concurrentDownloadsCount(int count);

  /// Album folder option
  ///
  /// In en, this message translates to:
  /// **'Artist / Album'**
  String get albumFolderArtistAlbum;

  /// Folder structure example
  ///
  /// In en, this message translates to:
  /// **'Albums/Artist Name/Album Name/'**
  String get albumFolderArtistAlbumSubtitle;

  /// Album folder option with year
  ///
  /// In en, this message translates to:
  /// **'Artist / [Year] Album'**
  String get albumFolderArtistYearAlbum;

  /// Folder structure example
  ///
  /// In en, this message translates to:
  /// **'Albums/Artist Name/[2005] Album Name/'**
  String get albumFolderArtistYearAlbumSubtitle;

  /// Album folder option
  ///
  /// In en, this message translates to:
  /// **'Album Only'**
  String get albumFolderAlbumOnly;

  /// Folder structure example
  ///
  /// In en, this message translates to:
  /// **'Albums/Album Name/'**
  String get albumFolderAlbumOnlySubtitle;

  /// Album folder option with year
  ///
  /// In en, this message translates to:
  /// **'[Year] Album'**
  String get albumFolderYearAlbum;

  /// Folder structure example
  ///
  /// In en, this message translates to:
  /// **'Albums/[2005] Album Name/'**
  String get albumFolderYearAlbumSubtitle;

  /// Album folder option with singles inside artist
  ///
  /// In en, this message translates to:
  /// **'Artist / Album + Singles'**
  String get albumFolderArtistAlbumSingles;

  /// Folder structure example
  ///
  /// In en, this message translates to:
  /// **'Artist/Album/ and Artist/Singles/'**
  String get albumFolderArtistAlbumSinglesSubtitle;

  /// Album folder option with singles directly in artist folder
  ///
  /// In en, this message translates to:
  /// **'Artist / Album (Singles flat)'**
  String get albumFolderArtistAlbumFlat;

  /// Folder structure example for flat singles
  ///
  /// In en, this message translates to:
  /// **'Artist/Album/ and Artist/song.flac'**
  String get albumFolderArtistAlbumFlatSubtitle;

  /// Button - delete selected tracks
  ///
  /// In en, this message translates to:
  /// **'Delete Selected'**
  String get downloadedAlbumDeleteSelected;

  /// Delete confirmation with count
  ///
  /// In en, this message translates to:
  /// **'Delete {count} {count, plural, =1{track} other{tracks}} from this album?\n\nThis will also delete the files from storage.'**
  String downloadedAlbumDeleteMessage(int count);

  /// Selection count indicator
  ///
  /// In en, this message translates to:
  /// **'{count} selected'**
  String downloadedAlbumSelectedCount(int count);

  /// Selection hint
  ///
  /// In en, this message translates to:
  /// **'Tap tracks to select'**
  String get downloadedAlbumTapToSelect;

  /// Delete button text with count
  ///
  /// In en, this message translates to:
  /// **'Delete {count} {count, plural, =1{track} other{tracks}}'**
  String downloadedAlbumDeleteCount(int count);

  /// Placeholder when nothing selected
  ///
  /// In en, this message translates to:
  /// **'Select tracks to delete'**
  String get downloadedAlbumSelectToDelete;

  /// Header for disc separator in multi-disc albums
  ///
  /// In en, this message translates to:
  /// **'Disc {discNumber}'**
  String downloadedAlbumDiscHeader(int discNumber);

  /// Recent access item type - artist
  ///
  /// In en, this message translates to:
  /// **'Artist'**
  String get recentTypeArtist;

  /// Recent access item type - album
  ///
  /// In en, this message translates to:
  /// **'Album'**
  String get recentTypeAlbum;

  /// Recent access item type - song/track
  ///
  /// In en, this message translates to:
  /// **'Song'**
  String get recentTypeSong;

  /// Recent access item type - playlist
  ///
  /// In en, this message translates to:
  /// **'Playlist'**
  String get recentTypePlaylist;

  /// Empty state text for recent access list
  ///
  /// In en, this message translates to:
  /// **'No recent items yet'**
  String get recentEmpty;

  /// Confirmation message before clearing all recent activity
  ///
  /// In en, this message translates to:
  /// **'Clear all recent activity? Download history and music files will not be deleted.'**
  String get recentClearAllMessage;

  /// Button label to unhide hidden downloads in recent access
  ///
  /// In en, this message translates to:
  /// **'Show All Downloads'**
  String get recentShowAllDownloads;

  /// Snackbar message when tapping playlist in recent access
  ///
  /// In en, this message translates to:
  /// **'Playlist: {name}'**
  String recentPlaylistInfo(String name);

  /// Button - download artist discography
  ///
  /// In en, this message translates to:
  /// **'Download Discography'**
  String get discographyDownload;

  /// Option - download entire discography
  ///
  /// In en, this message translates to:
  /// **'Download All'**
  String get discographyDownloadAll;

  /// Subtitle showing total tracks and albums
  ///
  /// In en, this message translates to:
  /// **'{count} tracks from {albumCount} releases'**
  String discographyDownloadAllSubtitle(int count, int albumCount);

  /// Option - download only albums
  ///
  /// In en, this message translates to:
  /// **'Albums Only'**
  String get discographyAlbumsOnly;

  /// Subtitle showing album tracks count
  ///
  /// In en, this message translates to:
  /// **'{count} tracks from {albumCount} albums'**
  String discographyAlbumsOnlySubtitle(int count, int albumCount);

  /// Option - download only singles
  ///
  /// In en, this message translates to:
  /// **'Singles & EPs Only'**
  String get discographySinglesOnly;

  /// Subtitle showing singles tracks count
  ///
  /// In en, this message translates to:
  /// **'{count} tracks from {albumCount} singles'**
  String discographySinglesOnlySubtitle(int count, int albumCount);

  /// Option - manually select albums to download
  ///
  /// In en, this message translates to:
  /// **'Select Albums...'**
  String get discographySelectAlbums;

  /// Subtitle for select albums option
  ///
  /// In en, this message translates to:
  /// **'Choose specific albums or singles'**
  String get discographySelectAlbumsSubtitle;

  /// Progress - fetching album tracks
  ///
  /// In en, this message translates to:
  /// **'Fetching tracks...'**
  String get discographyFetchingTracks;

  /// Progress - fetching specific album
  ///
  /// In en, this message translates to:
  /// **'Fetching {current} of {total}...'**
  String discographyFetchingAlbum(int current, int total);

  /// Button - download selected albums
  ///
  /// In en, this message translates to:
  /// **'Download Selected'**
  String get discographyDownloadSelected;

  /// Snackbar - tracks added from discography
  ///
  /// In en, this message translates to:
  /// **'Added {count} tracks to queue'**
  String discographyAddedToQueue(int count);

  /// Snackbar - with skipped tracks count
  ///
  /// In en, this message translates to:
  /// **'{added} added, {skipped} already downloaded'**
  String discographySkippedDownloaded(int added, int skipped);

  /// Error - no albums found for artist
  ///
  /// In en, this message translates to:
  /// **'No albums available'**
  String get discographyNoAlbums;

  /// Error - some albums failed to load
  ///
  /// In en, this message translates to:
  /// **'Failed to fetch some albums'**
  String get discographyFailedToFetch;

  /// Section header for storage access settings
  ///
  /// In en, this message translates to:
  /// **'Storage Access'**
  String get sectionStorageAccess;

  /// Toggle for MANAGE_EXTERNAL_STORAGE permission
  ///
  /// In en, this message translates to:
  /// **'All Files Access'**
  String get allFilesAccess;

  /// Subtitle when all files access is enabled
  ///
  /// In en, this message translates to:
  /// **'Can write to any folder'**
  String get allFilesAccessEnabledSubtitle;

  /// Subtitle when all files access is disabled
  ///
  /// In en, this message translates to:
  /// **'Limited to media folders only'**
  String get allFilesAccessDisabledSubtitle;

  /// Description explaining when to enable all files access
  ///
  /// In en, this message translates to:
  /// **'Enable this if you encounter write errors when saving to custom folders. Android 13+ restricts access to certain directories by default.'**
  String get allFilesAccessDescription;

  /// Message when permission is permanently denied
  ///
  /// In en, this message translates to:
  /// **'Permission was denied. Please enable \'All files access\' manually in system settings.'**
  String get allFilesAccessDeniedMessage;

  /// Snackbar message when user disables all files access
  ///
  /// In en, this message translates to:
  /// **'All Files Access disabled. The app will use limited storage access.'**
  String get allFilesAccessDisabledMessage;

  /// Settings menu item - local library
  ///
  /// In en, this message translates to:
  /// **'Local Library'**
  String get settingsLocalLibrary;

  /// Subtitle for local library settings
  ///
  /// In en, this message translates to:
  /// **'Scan music & detect duplicates'**
  String get settingsLocalLibrarySubtitle;

  /// Settings menu item - cache management
  ///
  /// In en, this message translates to:
  /// **'Storage & Cache'**
  String get settingsCache;

  /// Subtitle for cache management menu
  ///
  /// In en, this message translates to:
  /// **'View size and clear cached data'**
  String get settingsCacheSubtitle;

  /// Library settings page title
  ///
  /// In en, this message translates to:
  /// **'Local Library'**
  String get libraryTitle;

  /// Section header for scan settings
  ///
  /// In en, this message translates to:
  /// **'Scan Settings'**
  String get libraryScanSettings;

  /// Toggle to enable library scanning
  ///
  /// In en, this message translates to:
  /// **'Enable Local Library'**
  String get libraryEnableLocalLibrary;

  /// Subtitle for enable toggle
  ///
  /// In en, this message translates to:
  /// **'Scan and track your existing music'**
  String get libraryEnableLocalLibrarySubtitle;

  /// Folder selection setting
  ///
  /// In en, this message translates to:
  /// **'Library Folder'**
  String get libraryFolder;

  /// Placeholder when no folder selected
  ///
  /// In en, this message translates to:
  /// **'Tap to select folder'**
  String get libraryFolderHint;

  /// Action to add another local library source
  ///
  /// In en, this message translates to:
  /// **'Add library folder'**
  String get libraryAddFolder;

  /// Supported storage locations for local library sources
  ///
  /// In en, this message translates to:
  /// **'Internal storage, SD card, SSD, or another external drive'**
  String get libraryAddFolderSubtitle;

  /// Library source is connected and accessible
  ///
  /// In en, this message translates to:
  /// **'Online'**
  String get librarySourceOnline;

  /// Library source is temporarily disconnected
  ///
  /// In en, this message translates to:
  /// **'Offline. Reconnect the storage to restore these tracks'**
  String get librarySourceOffline;

  /// Library source has been disabled by the user
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get librarySourceDisabled;

  /// Live progress for one library folder scan
  ///
  /// In en, this message translates to:
  /// **'{scanned} of {total} files scanned ({progress}%)'**
  String librarySourceScanCount(int scanned, int total, String progress);

  /// Label for a removable or external library source
  ///
  /// In en, this message translates to:
  /// **'External storage'**
  String get libraryExternalStorage;

  /// Action to remove one indexed library source
  ///
  /// In en, this message translates to:
  /// **'Remove library folder'**
  String get libraryRemoveFolder;

  /// Confirmation shown before removing a library source
  ///
  /// In en, this message translates to:
  /// **'Remove this folder and its indexed tracks from Toadplayer? Audio files on the storage will not be deleted.'**
  String get libraryRemoveFolderMessage;

  /// Count of files the last scan of a library folder skipped because it could not read them
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 file couldn\'t be read} other{{count} files couldn\'t be read}}'**
  String libraryUnreadableFiles(int count);

  /// Title of the list of files a library scan could not read, and the action that opens it
  ///
  /// In en, this message translates to:
  /// **'Unreadable files'**
  String get libraryUnreadableFilesTitle;

  /// Explanation above the list of files a library scan could not read
  ///
  /// In en, this message translates to:
  /// **'These files were left out of your library. They may be damaged, still downloading, or blocked by the storage app.'**
  String get libraryUnreadableFilesSubtitle;

  /// Subtitle of the library folder action that lists unreadable files
  ///
  /// In en, this message translates to:
  /// **'See which files and why'**
  String get libraryUnreadableFilesAction;

  /// Note below the unreadable files list when the scan skipped more files than it lists
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 more file isn\'t listed} other{{count} more files aren\'t listed}}'**
  String libraryUnreadableFilesMore(int count);

  /// Toggle for duplicate indicator in search
  ///
  /// In en, this message translates to:
  /// **'Show Duplicate Indicator'**
  String get libraryShowDuplicateIndicator;

  /// Subtitle for duplicate indicator toggle
  ///
  /// In en, this message translates to:
  /// **'Show when searching for existing tracks'**
  String get libraryShowDuplicateIndicatorSubtitle;

  /// Setting for automatic library scanning
  ///
  /// In en, this message translates to:
  /// **'Auto Scan'**
  String get libraryAutoScan;

  /// Subtitle for auto scan setting
  ///
  /// In en, this message translates to:
  /// **'Automatically scan your library for new files'**
  String get libraryAutoScanSubtitle;

  /// Auto scan disabled
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get libraryAutoScanOff;

  /// Auto scan when app opens
  ///
  /// In en, this message translates to:
  /// **'Every app open'**
  String get libraryAutoScanOnOpen;

  /// Auto scan once per day
  ///
  /// In en, this message translates to:
  /// **'Daily'**
  String get libraryAutoScanDaily;

  /// Auto scan once per week
  ///
  /// In en, this message translates to:
  /// **'Weekly'**
  String get libraryAutoScanWeekly;

  /// Section header for library actions
  ///
  /// In en, this message translates to:
  /// **'Actions'**
  String get libraryActions;

  /// Button to start library scan
  ///
  /// In en, this message translates to:
  /// **'Scan Library'**
  String get libraryScan;

  /// Subtitle for scan button
  ///
  /// In en, this message translates to:
  /// **'Scan for audio files'**
  String get libraryScanSubtitle;

  /// Message when trying to scan without folder
  ///
  /// In en, this message translates to:
  /// **'Select a folder first'**
  String get libraryScanSelectFolderFirst;

  /// Button to remove entries for missing files
  ///
  /// In en, this message translates to:
  /// **'Cleanup Missing Files'**
  String get libraryCleanupMissingFiles;

  /// Subtitle for cleanup button
  ///
  /// In en, this message translates to:
  /// **'Remove entries for files that no longer exist'**
  String get libraryCleanupMissingFilesSubtitle;

  /// Library action that relinks downloads whose files were moved to the current download folder
  ///
  /// In en, this message translates to:
  /// **'Find Moved Downloads'**
  String get libraryFindMovedDownloads;

  /// Subtitle for the Find Moved Downloads action
  ///
  /// In en, this message translates to:
  /// **'Relink downloads you moved into the current download folder, without removing anything'**
  String get libraryFindMovedDownloadsSubtitle;

  /// Snackbar after Find Moved Downloads: downloads relinked, then downloads whose files are still missing
  ///
  /// In en, this message translates to:
  /// **'{relinked, plural, =0{No moved downloads found} =1{Relinked 1 download} other{Relinked {relinked} downloads}}{missing, plural, =0{} =1{ · 1 file still missing} other{ · {missing} files still missing}}'**
  String libraryFindMovedDownloadsResult(int relinked, int missing);

  /// Button to clear all library entries
  ///
  /// In en, this message translates to:
  /// **'Clear Library'**
  String get libraryClear;

  /// Subtitle for clear button
  ///
  /// In en, this message translates to:
  /// **'Remove all scanned tracks'**
  String get libraryClearSubtitle;

  /// Dialog title for clear confirmation
  ///
  /// In en, this message translates to:
  /// **'Clear Library'**
  String get libraryClearConfirmTitle;

  /// Dialog message for clear confirmation
  ///
  /// In en, this message translates to:
  /// **'This will remove all scanned tracks from your library. Your actual music files will not be deleted.'**
  String get libraryClearConfirmMessage;

  /// Section header for about info
  ///
  /// In en, this message translates to:
  /// **'About Local Library'**
  String get libraryAbout;

  /// Description of local library feature
  ///
  /// In en, this message translates to:
  /// **'Scans your existing music collection to detect duplicates when downloading. Supports FLAC, ALAC, M4A, MP3, Opus, OGG, WAV, AIFF, and APE formats. Metadata is read from file tags when available.'**
  String get libraryAboutDescription;

  /// Unit label for tracks count (without the number itself)
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{track} other{tracks}}'**
  String libraryTracksUnit(int count);

  /// Unit label for files count during library scanning
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{file} other{files}}'**
  String libraryFilesUnit(int count);

  /// Last scan time display
  ///
  /// In en, this message translates to:
  /// **'Last scanned: {time}'**
  String libraryLastScanned(String time);

  /// Shown when library has never been scanned
  ///
  /// In en, this message translates to:
  /// **'Never'**
  String get libraryLastScannedNever;

  /// Status during scan
  ///
  /// In en, this message translates to:
  /// **'Scanning...'**
  String get libraryScanning;

  /// Status shown after file scanning finishes but library persistence is still running
  ///
  /// In en, this message translates to:
  /// **'Finalizing library...'**
  String get libraryScanFinalizing;

  /// Status shown while a library scan is paused by the user
  ///
  /// In en, this message translates to:
  /// **'Scan paused'**
  String get libraryScanPaused;

  /// Scan progress display
  ///
  /// In en, this message translates to:
  /// **'{progress}% of {total} files'**
  String libraryScanProgress(String progress, int total);

  /// Badge shown on tracks that exist in local library
  ///
  /// In en, this message translates to:
  /// **'In Library'**
  String get libraryInLibrary;

  /// Snackbar after cleanup
  ///
  /// In en, this message translates to:
  /// **'Removed {count} missing files from library'**
  String libraryRemovedMissingFiles(int count);

  /// Snackbar after clearing library
  ///
  /// In en, this message translates to:
  /// **'Library cleared'**
  String get libraryCleared;

  /// Dialog title for storage permission
  ///
  /// In en, this message translates to:
  /// **'Storage Access Required'**
  String get libraryStorageAccessRequired;

  /// Dialog message for storage permission
  ///
  /// In en, this message translates to:
  /// **'Toadplayer needs storage access to scan your music library. Please grant permission in settings.'**
  String get libraryStorageAccessMessage;

  /// Badge for tracks downloaded via Toadplayer
  ///
  /// In en, this message translates to:
  /// **'Downloaded'**
  String get librarySourceDownloaded;

  /// Badge for tracks from local library scan
  ///
  /// In en, this message translates to:
  /// **'Local'**
  String get librarySourceLocal;

  /// Filter chip - show all library items
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get libraryFilterAll;

  /// Library settings action - re-enrich the metadata of every track in the Library
  ///
  /// In en, this message translates to:
  /// **'Re-enrich All Tracks'**
  String get libraryReEnrichAll;

  /// Subtitle for the Re-enrich All Tracks action
  ///
  /// In en, this message translates to:
  /// **'Look up and fill in metadata for every track in your Library, then review the changes'**
  String get libraryReEnrichAllSubtitle;

  /// Snackbar when the Library has no tracks Re-enrich can write to
  ///
  /// In en, this message translates to:
  /// **'No tracks to re-enrich. Tracks from network connections are not included.'**
  String get libraryReEnrichAllEmpty;

  /// Snackbar when Re-enrich All is started during a Library scan
  ///
  /// In en, this message translates to:
  /// **'Wait for the Library scan to finish, then try again.'**
  String get libraryReEnrichAllBusy;

  /// Filter chip - show only downloaded items
  ///
  /// In en, this message translates to:
  /// **'Downloaded'**
  String get libraryFilterDownloaded;

  /// Filter chip - show only local library items
  ///
  /// In en, this message translates to:
  /// **'Local'**
  String get libraryFilterLocal;

  /// Filter bottom sheet title
  ///
  /// In en, this message translates to:
  /// **'Filters'**
  String get libraryFilterTitle;

  /// Reset all filters button
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get libraryFilterReset;

  /// Apply filters button
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get libraryFilterApply;

  /// Filter section - source type
  ///
  /// In en, this message translates to:
  /// **'Source'**
  String get libraryFilterSource;

  /// Filter section - audio quality
  ///
  /// In en, this message translates to:
  /// **'Quality'**
  String get libraryFilterQuality;

  /// Filter option - high resolution audio
  ///
  /// In en, this message translates to:
  /// **'Hi-Res (24bit)'**
  String get libraryFilterQualityHiRes;

  /// Filter option - CD quality audio
  ///
  /// In en, this message translates to:
  /// **'CD (16bit)'**
  String get libraryFilterQualityCD;

  /// Filter option - lossy compressed audio
  ///
  /// In en, this message translates to:
  /// **'Lossy'**
  String get libraryFilterQualityLossy;

  /// Filter section - file format
  ///
  /// In en, this message translates to:
  /// **'Format'**
  String get libraryFilterFormat;

  /// Filter section - metadata completeness
  ///
  /// In en, this message translates to:
  /// **'Metadata'**
  String get libraryFilterMetadata;

  /// Filter option - items with complete metadata
  ///
  /// In en, this message translates to:
  /// **'Complete metadata'**
  String get libraryFilterMetadataComplete;

  /// Filter option - items missing any tracked metadata field
  ///
  /// In en, this message translates to:
  /// **'Missing any metadata'**
  String get libraryFilterMetadataMissingAny;

  /// Filter option - items missing release year/date
  ///
  /// In en, this message translates to:
  /// **'Missing year'**
  String get libraryFilterMetadataMissingYear;

  /// Filter option - items missing genre
  ///
  /// In en, this message translates to:
  /// **'Missing genre'**
  String get libraryFilterMetadataMissingGenre;

  /// Filter option - items missing album artist
  ///
  /// In en, this message translates to:
  /// **'Missing album artist'**
  String get libraryFilterMetadataMissingAlbumArtist;

  /// Filter section - sort order
  ///
  /// In en, this message translates to:
  /// **'Sort'**
  String get libraryFilterSort;

  /// Sort option - newest first
  ///
  /// In en, this message translates to:
  /// **'Latest'**
  String get libraryFilterSortLatest;

  /// Sort option - oldest first
  ///
  /// In en, this message translates to:
  /// **'Oldest'**
  String get libraryFilterSortOldest;

  /// Library sort option - largest files first
  ///
  /// In en, this message translates to:
  /// **'Size (Largest first)'**
  String get libraryFilterSortSizeLargest;

  /// Library sort option - smallest files first
  ///
  /// In en, this message translates to:
  /// **'Size (Smallest first)'**
  String get libraryFilterSortSizeSmallest;

  /// Sort option - album ascending
  ///
  /// In en, this message translates to:
  /// **'Album (A-Z)'**
  String get libraryFilterSortAlbumAsc;

  /// Sort option - album descending
  ///
  /// In en, this message translates to:
  /// **'Album (Z-A)'**
  String get libraryFilterSortAlbumDesc;

  /// Sort option - genre ascending
  ///
  /// In en, this message translates to:
  /// **'Genre (A-Z)'**
  String get libraryFilterSortGenreAsc;

  /// Sort option - genre descending
  ///
  /// In en, this message translates to:
  /// **'Genre (Z-A)'**
  String get libraryFilterSortGenreDesc;

  /// Relative time - less than a minute ago
  ///
  /// In en, this message translates to:
  /// **'Just now'**
  String get timeJustNow;

  /// Relative time - minutes ago
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 minute ago} other{{count} minutes ago}}'**
  String timeMinutesAgo(int count);

  /// Relative time - hours ago
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 hour ago} other{{count} hours ago}}'**
  String timeHoursAgo(int count);

  /// Tutorial welcome page title
  ///
  /// In en, this message translates to:
  /// **'Welcome to Toadplayer!'**
  String get tutorialWelcomeTitle;

  /// Tutorial welcome page description
  ///
  /// In en, this message translates to:
  /// **'Learn how to find music with extensions, choose the quality you want, and manage downloads in Toadplayer.'**
  String get tutorialWelcomeDesc;

  /// Tutorial welcome tip 1
  ///
  /// In en, this message translates to:
  /// **'Search with an installed extension or paste a supported music link'**
  String get tutorialWelcomeTip1;

  /// Tutorial welcome tip 2
  ///
  /// In en, this message translates to:
  /// **'Choose from the audio qualities offered by your download provider'**
  String get tutorialWelcomeTip2;

  /// Tutorial welcome tip 3
  ///
  /// In en, this message translates to:
  /// **'Embed metadata, cover art, lyrics, and release information automatically'**
  String get tutorialWelcomeTip3;

  /// Tutorial search page title
  ///
  /// In en, this message translates to:
  /// **'Finding Music'**
  String get tutorialSearchTitle;

  /// Tutorial search page description
  ///
  /// In en, this message translates to:
  /// **'Search with your selected extension or paste a supported music link.'**
  String get tutorialSearchDesc;

  /// Tutorial download page title
  ///
  /// In en, this message translates to:
  /// **'Downloading Music'**
  String get tutorialDownloadTitle;

  /// Tutorial download page description
  ///
  /// In en, this message translates to:
  /// **'Pick an available quality, start the download, and follow its progress in the queue.'**
  String get tutorialDownloadDesc;

  /// Tutorial library page title
  ///
  /// In en, this message translates to:
  /// **'Your Library'**
  String get tutorialLibraryTitle;

  /// Tutorial library page description
  ///
  /// In en, this message translates to:
  /// **'Downloaded and locally scanned music is organized in your Library.'**
  String get tutorialLibraryDesc;

  /// Tutorial library tip 1
  ///
  /// In en, this message translates to:
  /// **'Manage active, pending, and completed downloads from the Library queue'**
  String get tutorialLibraryTip1;

  /// Tutorial library tip 2
  ///
  /// In en, this message translates to:
  /// **'Tap a track to play it with the built-in player'**
  String get tutorialLibraryTip2;

  /// Tutorial library tip 3
  ///
  /// In en, this message translates to:
  /// **'Browse tracks, albums, and playlists in list or grid views'**
  String get tutorialLibraryTip3;

  /// Tutorial extensions page title
  ///
  /// In en, this message translates to:
  /// **'Extensions'**
  String get tutorialExtensionsTitle;

  /// Tutorial extensions page description
  ///
  /// In en, this message translates to:
  /// **'Extensions add search, download, metadata, lyrics, and other integrations.'**
  String get tutorialExtensionsDesc;

  /// Tutorial extensions tip 1
  ///
  /// In en, this message translates to:
  /// **'Browse the Repo tab to discover useful extensions'**
  String get tutorialExtensionsTip1;

  /// Tutorial extensions tip 2
  ///
  /// In en, this message translates to:
  /// **'Choose providers for search, downloads, metadata, and fallbacks'**
  String get tutorialExtensionsTip2;

  /// Tutorial extensions tip 3
  ///
  /// In en, this message translates to:
  /// **'Connect accounts when required and keep extensions up to date'**
  String get tutorialExtensionsTip3;

  /// Tutorial settings page title
  ///
  /// In en, this message translates to:
  /// **'Customize Your Experience'**
  String get tutorialSettingsTitle;

  /// Tutorial settings page description
  ///
  /// In en, this message translates to:
  /// **'Fine-tune downloads, playback, Library behavior, appearance, and storage.'**
  String get tutorialSettingsDesc;

  /// Tutorial settings tip 1
  ///
  /// In en, this message translates to:
  /// **'Change download location and folder organization'**
  String get tutorialSettingsTip1;

  /// Tutorial settings tip 2
  ///
  /// In en, this message translates to:
  /// **'Set quality, concurrency, filenames, and conversion preferences'**
  String get tutorialSettingsTip2;

  /// Tutorial settings tip 3
  ///
  /// In en, this message translates to:
  /// **'Customize app theme and appearance'**
  String get tutorialSettingsTip3;

  /// Tutorial completion message
  ///
  /// In en, this message translates to:
  /// **'You\'re ready. Select your extensions, then search or paste a supported link.'**
  String get tutorialReadyMessage;

  /// First page of the tour shown once after updating; version is like 5.3
  ///
  /// In en, this message translates to:
  /// **'Toadplayer {version} is here'**
  String whatsNewIntroTitle(String version);

  /// No description provided for @whatsNewIntroDesc.
  ///
  /// In en, this message translates to:
  /// **'Our biggest update yet. Here\'s a quick look at what\'s new.'**
  String get whatsNewIntroDesc;

  /// No description provided for @whatsNewLinkTitle.
  ///
  /// In en, this message translates to:
  /// **'Toadplayer Link'**
  String get whatsNewLinkTitle;

  /// No description provided for @whatsNewLinkDesc.
  ///
  /// In en, this message translates to:
  /// **'Pair your phone and computer on the same network. Toadplayer Link is in beta.'**
  String get whatsNewLinkDesc;

  /// No description provided for @whatsNewLinkPlayTitle.
  ///
  /// In en, this message translates to:
  /// **'Play across devices'**
  String get whatsNewLinkPlayTitle;

  /// No description provided for @whatsNewLinkPlayBody.
  ///
  /// In en, this message translates to:
  /// **'Browse your computer\'s library on your phone, control what it plays, and hand playback over without losing your place.'**
  String get whatsNewLinkPlayBody;

  /// No description provided for @whatsNewLinkTransferTitle.
  ///
  /// In en, this message translates to:
  /// **'Move songs both ways'**
  String get whatsNewLinkTransferTitle;

  /// No description provided for @whatsNewLinkTransferBody.
  ///
  /// In en, this message translates to:
  /// **'Send songs to your computer or save them to your phone, right from the song menu.'**
  String get whatsNewLinkTransferBody;

  /// No description provided for @whatsNewLinkSyncTitle.
  ///
  /// In en, this message translates to:
  /// **'Stay in sync'**
  String get whatsNewLinkSyncTitle;

  /// No description provided for @whatsNewLinkSyncBody.
  ///
  /// In en, this message translates to:
  /// **'Collections and listening history stay the same on paired devices.'**
  String get whatsNewLinkSyncBody;

  /// No description provided for @whatsNewHomeTitle.
  ///
  /// In en, this message translates to:
  /// **'A Home that learns'**
  String get whatsNewHomeTitle;

  /// No description provided for @whatsNewHomeDesc.
  ///
  /// In en, this message translates to:
  /// **'Mixes and autoplay now follow how you actually listen.'**
  String get whatsNewHomeDesc;

  /// No description provided for @whatsNewHomeMixesTitle.
  ///
  /// In en, this message translates to:
  /// **'Mixes from your Library'**
  String get whatsNewHomeMixesTitle;

  /// No description provided for @whatsNewHomeMixesBody.
  ///
  /// In en, this message translates to:
  /// **'New mixes built from your own songs, including a mix for each genre.'**
  String get whatsNewHomeMixesBody;

  /// No description provided for @whatsNewHomeAutoplayTitle.
  ///
  /// In en, this message translates to:
  /// **'Smarter autoplay'**
  String get whatsNewHomeAutoplayTitle;

  /// No description provided for @whatsNewHomeAutoplayBody.
  ///
  /// In en, this message translates to:
  /// **'Autoplay follows your listening session and learns from your favorites, playlists and replays.'**
  String get whatsNewHomeAutoplayBody;

  /// No description provided for @whatsNewHomeAnalysisTitle.
  ///
  /// In en, this message translates to:
  /// **'Song analysis'**
  String get whatsNewHomeAnalysisTitle;

  /// No description provided for @whatsNewHomeAnalysisBody.
  ///
  /// In en, this message translates to:
  /// **'Toadplayer can analyze how your songs sound for closer picks. It stays off until you turn it on in Settings.'**
  String get whatsNewHomeAnalysisBody;

  /// No description provided for @whatsNewPlayerTitle.
  ///
  /// In en, this message translates to:
  /// **'Player and lyrics'**
  String get whatsNewPlayerTitle;

  /// No description provided for @whatsNewPlayerDesc.
  ///
  /// In en, this message translates to:
  /// **'Smoother playback, and lyrics in any language.'**
  String get whatsNewPlayerDesc;

  /// No description provided for @whatsNewPlayerGaplessTitle.
  ///
  /// In en, this message translates to:
  /// **'Gapless playback'**
  String get whatsNewPlayerGaplessTitle;

  /// No description provided for @whatsNewPlayerGaplessBody.
  ///
  /// In en, this message translates to:
  /// **'Albums flow from one song into the next without a pause.'**
  String get whatsNewPlayerGaplessBody;

  /// No description provided for @whatsNewPlayerTranslateTitle.
  ///
  /// In en, this message translates to:
  /// **'Translate lyrics'**
  String get whatsNewPlayerTranslateTitle;

  /// No description provided for @whatsNewPlayerTranslateBody.
  ///
  /// In en, this message translates to:
  /// **'Translate or romanize lyrics with an AI provider you set up.'**
  String get whatsNewPlayerTranslateBody;

  /// No description provided for @whatsNewPlayerTimingTitle.
  ///
  /// In en, this message translates to:
  /// **'Lyrics timing'**
  String get whatsNewPlayerTimingTitle;

  /// No description provided for @whatsNewPlayerTimingBody.
  ///
  /// In en, this message translates to:
  /// **'Move synced lyrics earlier or later when they drift from the song.'**
  String get whatsNewPlayerTimingBody;

  /// No description provided for @whatsNewPlayerAutoTitle.
  ///
  /// In en, this message translates to:
  /// **'Android Auto'**
  String get whatsNewPlayerAutoTitle;

  /// No description provided for @whatsNewPlayerAutoBody.
  ///
  /// In en, this message translates to:
  /// **'Browse and play your Library from your car\'s screen.'**
  String get whatsNewPlayerAutoBody;

  /// No description provided for @whatsNewPlayerExclusiveTitle.
  ///
  /// In en, this message translates to:
  /// **'Exclusive output'**
  String get whatsNewPlayerExclusiveTitle;

  /// No description provided for @whatsNewPlayerExclusiveBody.
  ///
  /// In en, this message translates to:
  /// **'Send audio straight to your output device without the system mixer.'**
  String get whatsNewPlayerExclusiveBody;

  /// No description provided for @whatsNewLibraryTitle.
  ///
  /// In en, this message translates to:
  /// **'Library and search'**
  String get whatsNewLibraryTitle;

  /// No description provided for @whatsNewLibraryDesc.
  ///
  /// In en, this message translates to:
  /// **'New ways to find and organize your music.'**
  String get whatsNewLibraryDesc;

  /// No description provided for @whatsNewLibraryFoldersTitle.
  ///
  /// In en, this message translates to:
  /// **'Browse by folder'**
  String get whatsNewLibraryFoldersTitle;

  /// No description provided for @whatsNewLibraryFoldersBody.
  ///
  /// In en, this message translates to:
  /// **'Explore your Library the way it\'s stored on disk.'**
  String get whatsNewLibraryFoldersBody;

  /// No description provided for @whatsNewLibrarySuggestionsTitle.
  ///
  /// In en, this message translates to:
  /// **'Suggested songs'**
  String get whatsNewLibrarySuggestionsTitle;

  /// No description provided for @whatsNewLibrarySuggestionsBody.
  ///
  /// In en, this message translates to:
  /// **'Albums, singles and playlists now suggest songs that fit.'**
  String get whatsNewLibrarySuggestionsBody;

  /// No description provided for @whatsNewLibraryRecognizeTitle.
  ///
  /// In en, this message translates to:
  /// **'Recognize music'**
  String get whatsNewLibraryRecognizeTitle;

  /// No description provided for @whatsNewLibraryRecognizeBody.
  ///
  /// In en, this message translates to:
  /// **'Tap the microphone in Search to find out what\'s playing nearby.'**
  String get whatsNewLibraryRecognizeBody;

  /// No description provided for @whatsNewLibraryPlaylistsTitle.
  ///
  /// In en, this message translates to:
  /// **'Better playlists'**
  String get whatsNewLibraryPlaylistsTitle;

  /// No description provided for @whatsNewLibraryPlaylistsBody.
  ///
  /// In en, this message translates to:
  /// **'Reorder songs, create a playlist from a folder, or import playlist files.'**
  String get whatsNewLibraryPlaylistsBody;

  /// No description provided for @whatsNewFasterTitle.
  ///
  /// In en, this message translates to:
  /// **'Faster everywhere'**
  String get whatsNewFasterTitle;

  /// No description provided for @whatsNewFasterDesc.
  ///
  /// In en, this message translates to:
  /// **'Quicker and lighter, especially with large libraries.'**
  String get whatsNewFasterDesc;

  /// No description provided for @whatsNewFasterLibraryTitle.
  ///
  /// In en, this message translates to:
  /// **'A quicker Library'**
  String get whatsNewFasterLibraryTitle;

  /// No description provided for @whatsNewFasterLibraryBody.
  ///
  /// In en, this message translates to:
  /// **'Tabs and albums open faster, and scrolling stays smooth.'**
  String get whatsNewFasterLibraryBody;

  /// No description provided for @whatsNewFasterNetworkTitle.
  ///
  /// In en, this message translates to:
  /// **'Faster network music'**
  String get whatsNewFasterNetworkTitle;

  /// No description provided for @whatsNewFasterNetworkBody.
  ///
  /// In en, this message translates to:
  /// **'Network shares scan many times faster, and Subsonic servers sync with far fewer requests.'**
  String get whatsNewFasterNetworkBody;

  /// No description provided for @whatsNewFasterQueueTitle.
  ///
  /// In en, this message translates to:
  /// **'Long queues that last'**
  String get whatsNewFasterQueueTitle;

  /// No description provided for @whatsNewFasterQueueBody.
  ///
  /// In en, this message translates to:
  /// **'Large queues save quickly and come back after a restart.'**
  String get whatsNewFasterQueueBody;

  /// No description provided for @whatsNewFasterBackgroundTitle.
  ///
  /// In en, this message translates to:
  /// **'Lighter in the background'**
  String get whatsNewFasterBackgroundTitle;

  /// No description provided for @whatsNewFasterBackgroundBody.
  ///
  /// In en, this message translates to:
  /// **'The app starts faster and does less work while music plays.'**
  String get whatsNewFasterBackgroundBody;

  /// Button on the last page of the What's New tour
  ///
  /// In en, this message translates to:
  /// **'Start listening'**
  String get whatsNewDone;

  /// About page row that reopens the What's New tour; version is like 5.3
  ///
  /// In en, this message translates to:
  /// **'What\'s new in {version}'**
  String whatsNewAboutTitle(String version);

  /// Button to force a complete rescan of library
  ///
  /// In en, this message translates to:
  /// **'Force Full Scan'**
  String get libraryForceFullScan;

  /// Subtitle for force full scan button
  ///
  /// In en, this message translates to:
  /// **'Rescan all files, ignoring cache'**
  String get libraryForceFullScanSubtitle;

  /// Button to remove history entries for deleted files
  ///
  /// In en, this message translates to:
  /// **'Cleanup Orphaned Downloads'**
  String get cleanupOrphanedDownloads;

  /// Subtitle for orphaned cleanup button
  ///
  /// In en, this message translates to:
  /// **'Remove history entries for files that no longer exist'**
  String get cleanupOrphanedDownloadsSubtitle;

  /// Snackbar after orphan cleanup
  ///
  /// In en, this message translates to:
  /// **'Removed {count} orphaned entries from history'**
  String cleanupOrphanedDownloadsResult(int count);

  /// Snackbar when no orphans found
  ///
  /// In en, this message translates to:
  /// **'No orphaned entries found'**
  String get cleanupOrphanedDownloadsNone;

  /// Cache management page title
  ///
  /// In en, this message translates to:
  /// **'Storage & Cache'**
  String get cacheTitle;

  /// Heading for cache summary card
  ///
  /// In en, this message translates to:
  /// **'Cache overview'**
  String get cacheSummaryTitle;

  /// Helper text for cache summary card
  ///
  /// In en, this message translates to:
  /// **'Clearing cache will not remove downloaded music files.'**
  String get cacheSummarySubtitle;

  /// Total cache size shown in summary
  ///
  /// In en, this message translates to:
  /// **'Estimated cache usage: {size}'**
  String cacheEstimatedTotal(String size);

  /// Section header for cache entries
  ///
  /// In en, this message translates to:
  /// **'Cached Data'**
  String get cacheSectionStorage;

  /// Section header for cleanup actions
  ///
  /// In en, this message translates to:
  /// **'Maintenance'**
  String get cacheSectionMaintenance;

  /// Cache item title for app cache directory
  ///
  /// In en, this message translates to:
  /// **'App cache directory'**
  String get cacheAppDirectory;

  /// Description of what app cache directory contains
  ///
  /// In en, this message translates to:
  /// **'HTTP responses, WebView data, and other temporary app data.'**
  String get cacheAppDirectoryDesc;

  /// Cache item title for temporary files directory
  ///
  /// In en, this message translates to:
  /// **'Temporary directory'**
  String get cacheTempDirectory;

  /// Description of what temporary directory contains
  ///
  /// In en, this message translates to:
  /// **'Temporary files from downloads and audio conversion.'**
  String get cacheTempDirectoryDesc;

  /// Cache item title for persistent cover images
  ///
  /// In en, this message translates to:
  /// **'Cover image cache'**
  String get cacheCoverImage;

  /// Description of what cover image cache contains
  ///
  /// In en, this message translates to:
  /// **'Downloaded album and track cover art. Will re-download when viewed.'**
  String get cacheCoverImageDesc;

  /// Cache item title for local library cover art images
  ///
  /// In en, this message translates to:
  /// **'Library cover cache'**
  String get cacheLibraryCover;

  /// Description of what library cover cache contains
  ///
  /// In en, this message translates to:
  /// **'Cover art extracted from local music files. Will re-extract on next scan.'**
  String get cacheLibraryCoverDesc;

  /// Toggle title for ReplayGain playback normalization in the built-in player
  ///
  /// In en, this message translates to:
  /// **'Volume normalization'**
  String get libraryPlaybackNormalization;

  /// Subtitle explaining playback volume normalization
  ///
  /// In en, this message translates to:
  /// **'Even out loudness between tracks using their ReplayGain or R128 tags, when present'**
  String get libraryPlaybackNormalizationSubtitle;

  /// Label for choosing between track and album ReplayGain during playback
  ///
  /// In en, this message translates to:
  /// **'Gain mode'**
  String get playbackNormalizationMode;

  /// Gain mode that levels every track on its own
  ///
  /// In en, this message translates to:
  /// **'Track'**
  String get playbackNormalizationModeTrack;

  /// Gain mode that keeps the loudness differences inside an album
  ///
  /// In en, this message translates to:
  /// **'Album'**
  String get playbackNormalizationModeAlbum;

  /// Label for the dB offset applied on top of ReplayGain during playback
  ///
  /// In en, this message translates to:
  /// **'Pre-amp'**
  String get playbackNormalizationPreamp;

  /// Pre-amp value with the resulting target loudness
  ///
  /// In en, this message translates to:
  /// **'{gain} dB (target {target} LUFS)'**
  String playbackNormalizationPreampValue(String gain, String target);

  /// Hint under the normalization pre-amp slider
  ///
  /// In en, this message translates to:
  /// **'Lower values play quieter. Normalization only turns tracks down, so it never clips.'**
  String get playbackNormalizationPreampHint;

  /// Cache item title for saved audio analysis results
  ///
  /// In en, this message translates to:
  /// **'Audio analysis cache'**
  String get cacheAudioAnalysis;

  /// Description of what audio analysis cache contains
  ///
  /// In en, this message translates to:
  /// **'Saved spectrograms and analysis results. Will re-analyze on next open.'**
  String get cacheAudioAnalysisDesc;

  /// Cache item title for explore home feed cache
  ///
  /// In en, this message translates to:
  /// **'Explore feed cache'**
  String get cacheExploreFeed;

  /// Description of what explore feed cache contains
  ///
  /// In en, this message translates to:
  /// **'Explore tab content (new releases, trending). Will refresh on next visit.'**
  String get cacheExploreFeedDesc;

  /// Cache item title for track ID lookup cache
  ///
  /// In en, this message translates to:
  /// **'Track lookup cache'**
  String get cacheTrackLookup;

  /// Description of what track lookup cache contains
  ///
  /// In en, this message translates to:
  /// **'Spotify/Deezer track ID lookups. Clearing may slow next few searches.'**
  String get cacheTrackLookupDesc;

  /// Description of what cleanup unused data does
  ///
  /// In en, this message translates to:
  /// **'Remove orphaned download history and library entries for missing files.'**
  String get cacheCleanupUnusedDesc;

  /// Label when cache category has no data
  ///
  /// In en, this message translates to:
  /// **'No cached data'**
  String get cacheNoData;

  /// Cache size and file count
  ///
  /// In en, this message translates to:
  /// **'{size} in {count} files'**
  String cacheSizeWithFiles(String size, int count);

  /// Cache size only
  ///
  /// In en, this message translates to:
  /// **'{size}'**
  String cacheSizeOnly(String size);

  /// Track cache entry count
  ///
  /// In en, this message translates to:
  /// **'{count} entries'**
  String cacheEntries(int count);

  /// Snackbar after clearing selected cache
  ///
  /// In en, this message translates to:
  /// **'Cleared: {target}'**
  String cacheClearSuccess(String target);

  /// Dialog title before clearing one cache category
  ///
  /// In en, this message translates to:
  /// **'Clear cache?'**
  String get cacheClearConfirmTitle;

  /// Dialog message before clearing selected cache
  ///
  /// In en, this message translates to:
  /// **'This will clear cached data for {target}. Downloaded music files will not be deleted.'**
  String cacheClearConfirmMessage(String target);

  /// Dialog title before clearing all caches
  ///
  /// In en, this message translates to:
  /// **'Clear all cache?'**
  String get cacheClearAllConfirmTitle;

  /// Dialog message before clearing all caches
  ///
  /// In en, this message translates to:
  /// **'This will clear all cache categories on this page. Downloaded music files will not be deleted.'**
  String get cacheClearAllConfirmMessage;

  /// Button label to clear all caches
  ///
  /// In en, this message translates to:
  /// **'Clear all cache'**
  String get cacheClearAll;

  /// Action title for cleaning unused entries
  ///
  /// In en, this message translates to:
  /// **'Cleanup unused data'**
  String get cacheCleanupUnused;

  /// Subtitle for cleanup unused data action
  ///
  /// In en, this message translates to:
  /// **'Remove orphaned download history and missing library entries'**
  String get cacheCleanupUnusedSubtitle;

  /// Snackbar after unused data cleanup
  ///
  /// In en, this message translates to:
  /// **'Cleanup completed: {downloadCount} orphaned downloads, {libraryCount} missing library entries'**
  String cacheCleanupResult(int downloadCount, int libraryCount);

  /// Button label to refresh cache statistics
  ///
  /// In en, this message translates to:
  /// **'Refresh stats'**
  String get cacheRefreshStats;

  /// Menu action - save album cover art as file
  ///
  /// In en, this message translates to:
  /// **'Save Cover Art'**
  String get trackSaveCoverArt;

  /// Menu action - save lyrics as .lrc file
  ///
  /// In en, this message translates to:
  /// **'Save Lyrics (.lrc)'**
  String get trackSaveLyrics;

  /// Snackbar while saving lyrics to file
  ///
  /// In en, this message translates to:
  /// **'Saving lyrics...'**
  String get trackSaveLyricsProgress;

  /// Menu action - re-embed metadata into audio file
  ///
  /// In en, this message translates to:
  /// **'Re-enrich'**
  String get trackReEnrich;

  /// Subtitle for batch metadata update choices
  ///
  /// In en, this message translates to:
  /// **'Choose an online or manual update, then review every change before writing'**
  String get trackReEnrichBatchSubtitle;

  /// Checkbox label for cover art field in re-enrich
  ///
  /// In en, this message translates to:
  /// **'Cover Art'**
  String get trackReEnrichFieldCover;

  /// Checkbox label for lyrics field in re-enrich
  ///
  /// In en, this message translates to:
  /// **'Lyrics'**
  String get trackReEnrichFieldLyrics;

  /// Checkbox label for basic tags in re-enrich (title/artist are never overwritten)
  ///
  /// In en, this message translates to:
  /// **'Album, Album Artist'**
  String get trackReEnrichFieldBasicTags;

  /// Checkbox label for track info in re-enrich
  ///
  /// In en, this message translates to:
  /// **'Track & Disc Number'**
  String get trackReEnrichFieldTrackInfo;

  /// Checkbox label for release info in re-enrich
  ///
  /// In en, this message translates to:
  /// **'Date & ISRC'**
  String get trackReEnrichFieldReleaseInfo;

  /// Checkbox label for extra metadata in re-enrich
  ///
  /// In en, this message translates to:
  /// **'Genre, Label, Copyright'**
  String get trackReEnrichFieldExtra;

  /// Select all fields checkbox in re-enrich
  ///
  /// In en, this message translates to:
  /// **'Select All'**
  String get trackReEnrichSelectAll;

  /// Batch metadata mode that only writes ISRC
  ///
  /// In en, this message translates to:
  /// **'ISRC only'**
  String get trackReEnrichModeIsrc;

  /// Explanation for the ISRC-only batch metadata mode
  ///
  /// In en, this message translates to:
  /// **'Find and add the recording identifier without changing other tags'**
  String get trackReEnrichModeIsrcSubtitle;

  /// Batch metadata mode that fills only empty tags
  ///
  /// In en, this message translates to:
  /// **'Fill missing tags'**
  String get trackReEnrichModeMissing;

  /// Explanation for the fill-missing batch metadata mode
  ///
  /// In en, this message translates to:
  /// **'Keep existing values and fill only fields that are empty'**
  String get trackReEnrichModeMissingSubtitle;

  /// Batch metadata mode that replaces selected tag groups
  ///
  /// In en, this message translates to:
  /// **'Update selected tags'**
  String get trackReEnrichModeReplace;

  /// Explanation for the selected-tag batch metadata mode
  ///
  /// In en, this message translates to:
  /// **'Choose which existing values may be replaced by online metadata'**
  String get trackReEnrichModeReplaceSubtitle;

  /// Batch metadata mode that applies shared values to every selected track
  ///
  /// In en, this message translates to:
  /// **'Set common values'**
  String get trackReEnrichModeManual;

  /// Explanation for the manual shared-value batch metadata mode
  ///
  /// In en, this message translates to:
  /// **'Apply the same values to every selected track'**
  String get trackReEnrichModeManualSubtitle;

  /// Heading above manual batch metadata inputs
  ///
  /// In en, this message translates to:
  /// **'Values to apply'**
  String get trackReEnrichManualFieldsTitle;

  /// Safety explanation for manual batch metadata inputs
  ///
  /// In en, this message translates to:
  /// **'Leave a field empty to keep its current value. Track titles, numbers, and ISRCs stay unchanged.'**
  String get trackReEnrichManualHint;

  /// Heading above batch re-enrich field checkboxes
  ///
  /// In en, this message translates to:
  /// **'Tags to update'**
  String get trackReEnrichFieldsTitle;

  /// Button that searches metadata and opens the batch change review
  ///
  /// In en, this message translates to:
  /// **'Review changes'**
  String get trackReEnrichReview;

  /// Title of the batch metadata review sheet
  ///
  /// In en, this message translates to:
  /// **'Review metadata changes'**
  String get trackReEnrichReviewTitle;

  /// Summary shown above proposed batch metadata changes
  ///
  /// In en, this message translates to:
  /// **'{changeCount} proposed changes across {trackCount} tracks'**
  String trackReEnrichReviewSubtitle(int changeCount, int trackCount);

  /// Message when batch metadata preview has no proposed changes
  ///
  /// In en, this message translates to:
  /// **'No metadata changes were found for the selected tracks.'**
  String get trackReEnrichNoChanges;

  /// Confirmation button in the batch metadata review sheet
  ///
  /// In en, this message translates to:
  /// **'Apply changes'**
  String get trackReEnrichApplyChanges;

  /// Proposed value when lyrics will be refreshed during re-enrich
  ///
  /// In en, this message translates to:
  /// **'Refresh from online'**
  String get trackReEnrichRefreshOnline;

  /// Menu action - edit embedded metadata
  ///
  /// In en, this message translates to:
  /// **'Edit Metadata'**
  String get trackEditMetadata;

  /// Snackbar after cover art saved
  ///
  /// In en, this message translates to:
  /// **'Cover art saved to {fileName}'**
  String trackCoverSaved(String fileName);

  /// Snackbar when no cover art URL or embedded cover
  ///
  /// In en, this message translates to:
  /// **'No cover art source available'**
  String get trackCoverNoSource;

  /// Snackbar after lyrics saved
  ///
  /// In en, this message translates to:
  /// **'Lyrics saved to {fileName}'**
  String trackLyricsSaved(String fileName);

  /// Snackbar while re-enriching metadata
  ///
  /// In en, this message translates to:
  /// **'Re-enriching metadata...'**
  String get trackReEnrichProgress;

  /// Snackbar while searching metadata from internet for local items
  ///
  /// In en, this message translates to:
  /// **'Searching metadata online...'**
  String get trackReEnrichSearching;

  /// Progress message while preparing manual batch metadata changes
  ///
  /// In en, this message translates to:
  /// **'Preparing metadata changes...'**
  String get trackReEnrichPreparing;

  /// Snackbar after successful re-enrichment
  ///
  /// In en, this message translates to:
  /// **'Metadata re-enriched successfully'**
  String get trackReEnrichSuccess;

  /// No description provided for @trackReEnrichMetadataSaved.
  ///
  /// In en, this message translates to:
  /// **'Metadata saved'**
  String get trackReEnrichMetadataSaved;

  /// No description provided for @trackReEnrichLyricsUpdated.
  ///
  /// In en, this message translates to:
  /// **'Lyrics updated'**
  String get trackReEnrichLyricsUpdated;

  /// No description provided for @trackReEnrichLyricsPreserved.
  ///
  /// In en, this message translates to:
  /// **'No new lyrics found; existing lyrics kept'**
  String get trackReEnrichLyricsPreserved;

  /// No description provided for @trackReEnrichLyricsDisabled.
  ///
  /// In en, this message translates to:
  /// **'Lyrics not updated: lyric downloading is disabled in Settings'**
  String get trackReEnrichLyricsDisabled;

  /// Snackbar when FFmpeg embed fails for MP3/Opus
  ///
  /// In en, this message translates to:
  /// **'FFmpeg metadata embed failed'**
  String get trackReEnrichFfmpegFailed;

  /// Action/button label for queueing FLAC redownloads for local tracks
  ///
  /// In en, this message translates to:
  /// **'Queue FLAC'**
  String get queueFlacAction;

  /// Confirmation dialog body before queueing FLAC redownloads for local tracks
  ///
  /// In en, this message translates to:
  /// **'Search online matches for the selected tracks and queue FLAC downloads.\n\nExisting files will not be modified or deleted.\n\nOnly high-confidence matches are queued automatically.\n\n{count} selected'**
  String queueFlacConfirmMessage(int count);

  /// Snackbar when no safe FLAC redownload matches were found
  ///
  /// In en, this message translates to:
  /// **'No reliable online matches found for the selection'**
  String get queueFlacNoReliableMatches;

  /// Snackbar when some selected local tracks were queued for FLAC redownload and some were skipped
  ///
  /// In en, this message translates to:
  /// **'Added {addedCount} tracks to queue, skipped {skippedCount}'**
  String queueFlacQueuedWithSkipped(int addedCount, int skippedCount);

  /// Snackbar when save operation fails
  ///
  /// In en, this message translates to:
  /// **'Failed: {error}'**
  String trackSaveFailed(String error);

  /// Menu item - convert audio format
  ///
  /// In en, this message translates to:
  /// **'Convert Format'**
  String get trackConvertFormat;

  /// Title of convert bottom sheet
  ///
  /// In en, this message translates to:
  /// **'Convert Audio'**
  String get trackConvertTitle;

  /// Label for format selection
  ///
  /// In en, this message translates to:
  /// **'Target Format'**
  String get trackConvertTargetFormat;

  /// Label for bitrate selection
  ///
  /// In en, this message translates to:
  /// **'Bitrate'**
  String get trackConvertBitrate;

  /// Toggle to preserve the source file during conversion
  ///
  /// In en, this message translates to:
  /// **'Keep original file'**
  String get trackConvertKeepOriginal;

  /// Description for preserving the source file during conversion
  ///
  /// In en, this message translates to:
  /// **'Add the converted file as a separate library entry'**
  String get trackConvertKeepOriginalDescription;

  /// Confirmation dialog title
  ///
  /// In en, this message translates to:
  /// **'Confirm Conversion'**
  String get trackConvertConfirmTitle;

  /// Confirmation dialog message
  ///
  /// In en, this message translates to:
  /// **'Convert from {sourceFormat} to {targetFormat} at {bitrate}?\n\nThe original file will be deleted after conversion.'**
  String trackConvertConfirmMessage(
    String sourceFormat,
    String targetFormat,
    String bitrate,
  );

  /// Confirmation dialog message for lossless-to-lossless conversion
  ///
  /// In en, this message translates to:
  /// **'Convert from {sourceFormat} to {targetFormat}? (Lossless — no quality loss)\n\nThe original file will be deleted after conversion.'**
  String trackConvertConfirmMessageLossless(
    String sourceFormat,
    String targetFormat,
  );

  /// Confirmation message when the source file will be preserved
  ///
  /// In en, this message translates to:
  /// **'Convert from {sourceFormat} to {targetFormat}?\n\nThe original file will be kept and the converted file will be added as a separate library entry.'**
  String trackConvertConfirmKeepOriginal(
    String sourceFormat,
    String targetFormat,
  );

  /// Hint shown when converting between lossless formats
  ///
  /// In en, this message translates to:
  /// **'Lossless conversion — no quality loss'**
  String get trackConvertLosslessHint;

  /// Snackbar while converting
  ///
  /// In en, this message translates to:
  /// **'Converting audio...'**
  String get trackConvertConverting;

  /// Snackbar after successful conversion
  ///
  /// In en, this message translates to:
  /// **'Converted to {format} successfully'**
  String trackConvertSuccess(String format);

  /// Snackbar when conversion fails
  ///
  /// In en, this message translates to:
  /// **'Conversion failed'**
  String get trackConvertFailed;

  /// Title for CUE split bottom sheet
  ///
  /// In en, this message translates to:
  /// **'Split CUE Sheet'**
  String get cueSplitTitle;

  /// Album name in CUE split sheet
  ///
  /// In en, this message translates to:
  /// **'Album: {album}'**
  String cueSplitAlbum(String album);

  /// Artist name in CUE split sheet
  ///
  /// In en, this message translates to:
  /// **'Artist: {artist}'**
  String cueSplitArtist(String artist);

  /// Number of tracks in CUE sheet
  ///
  /// In en, this message translates to:
  /// **'{count} tracks'**
  String cueSplitTrackCount(int count);

  /// CUE split confirmation dialog title
  ///
  /// In en, this message translates to:
  /// **'Split CUE Album'**
  String get cueSplitConfirmTitle;

  /// CUE split confirmation dialog message
  ///
  /// In en, this message translates to:
  /// **'Split \"{album}\" into {count} individual FLAC files?\n\nFiles will be saved to the same directory.'**
  String cueSplitConfirmMessage(String album, int count);

  /// Snackbar while splitting CUE
  ///
  /// In en, this message translates to:
  /// **'Splitting CUE sheet... ({current}/{total})'**
  String cueSplitSplitting(int current, int total);

  /// Snackbar after successful CUE split
  ///
  /// In en, this message translates to:
  /// **'Split into {count} tracks successfully'**
  String cueSplitSuccess(int count);

  /// Snackbar when CUE split fails
  ///
  /// In en, this message translates to:
  /// **'CUE split failed'**
  String get cueSplitFailed;

  /// Error when CUE audio file is missing
  ///
  /// In en, this message translates to:
  /// **'Audio file not found for this CUE sheet'**
  String get cueSplitNoAudioFile;

  /// Button text to start CUE splitting
  ///
  /// In en, this message translates to:
  /// **'Split into Tracks'**
  String get cueSplitButton;

  /// Generic action button - create
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get actionCreate;

  /// Library section title for custom folders
  ///
  /// In en, this message translates to:
  /// **'My folders'**
  String get collectionFoldersTitle;

  /// Custom folder for saved tracks to download later
  ///
  /// In en, this message translates to:
  /// **'Wishlist'**
  String get collectionWishlist;

  /// Custom folder for favorite tracks
  ///
  /// In en, this message translates to:
  /// **'Loved'**
  String get collectionLoved;

  /// Custom folder for favorite artists
  ///
  /// In en, this message translates to:
  /// **'Favorite Artists'**
  String get collectionFavoriteArtists;

  /// Single playlist label
  ///
  /// In en, this message translates to:
  /// **'Playlist'**
  String get collectionPlaylist;

  /// Action to add a track to user playlist
  ///
  /// In en, this message translates to:
  /// **'Add to playlist'**
  String get collectionAddToPlaylist;

  /// Action to create a new playlist
  ///
  /// In en, this message translates to:
  /// **'Create playlist'**
  String get collectionCreatePlaylist;

  /// Empty state title when user has no playlists
  ///
  /// In en, this message translates to:
  /// **'No playlists yet'**
  String get collectionNoPlaylistsYet;

  /// Track count label for custom playlists
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 track} other{{count} tracks}}'**
  String collectionPlaylistTracks(int count);

  /// Artist count label for favorite artists
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 artist} other{{count} artists}}'**
  String collectionArtistCount(int count);

  /// Snackbar after adding track to playlist
  ///
  /// In en, this message translates to:
  /// **'Added to \"{playlistName}\"'**
  String collectionAddedToPlaylist(String playlistName);

  /// Snackbar when track already exists in playlist
  ///
  /// In en, this message translates to:
  /// **'Already in \"{playlistName}\"'**
  String collectionAlreadyInPlaylist(String playlistName);

  /// Hint text for playlist name input
  ///
  /// In en, this message translates to:
  /// **'Playlist name'**
  String get collectionPlaylistNameHint;

  /// Validation error for empty playlist name
  ///
  /// In en, this message translates to:
  /// **'Playlist name is required'**
  String get collectionPlaylistNameRequired;

  /// Action to rename playlist
  ///
  /// In en, this message translates to:
  /// **'Rename playlist'**
  String get collectionRenamePlaylist;

  /// Action to delete playlist
  ///
  /// In en, this message translates to:
  /// **'Delete playlist'**
  String get collectionDeletePlaylist;

  /// Snackbar after renaming playlist
  ///
  /// In en, this message translates to:
  /// **'Playlist renamed'**
  String get collectionPlaylistRenamed;

  /// Wishlist empty state title
  ///
  /// In en, this message translates to:
  /// **'Wishlist is empty'**
  String get collectionWishlistEmptyTitle;

  /// Wishlist empty state subtitle
  ///
  /// In en, this message translates to:
  /// **'Tap + on tracks to save what you want to download later'**
  String get collectionWishlistEmptySubtitle;

  /// Loved empty state title
  ///
  /// In en, this message translates to:
  /// **'Loved folder is empty'**
  String get collectionLovedEmptyTitle;

  /// Loved empty state subtitle
  ///
  /// In en, this message translates to:
  /// **'Tap love on tracks to keep your favorites'**
  String get collectionLovedEmptySubtitle;

  /// Favorite artists empty state title
  ///
  /// In en, this message translates to:
  /// **'No favorite artists yet'**
  String get collectionFavoriteArtistsEmptyTitle;

  /// Favorite artists empty state subtitle
  ///
  /// In en, this message translates to:
  /// **'Tap the heart on an artist page to keep them here'**
  String get collectionFavoriteArtistsEmptySubtitle;

  /// Playlist empty state title
  ///
  /// In en, this message translates to:
  /// **'Playlist is empty'**
  String get collectionPlaylistEmptyTitle;

  /// Playlist empty state subtitle
  ///
  /// In en, this message translates to:
  /// **'Long-press + on any track to add it here'**
  String get collectionPlaylistEmptySubtitle;

  /// Tooltip for removing track from playlist
  ///
  /// In en, this message translates to:
  /// **'Remove from playlist'**
  String get collectionRemoveFromPlaylist;

  /// Confirmation for physical file deletion from a collection selection, distinct from removing playlist entries
  ///
  /// In en, this message translates to:
  /// **'Permanently delete {count} {count, plural, =1{audio file} other{audio files}} from storage? This affects every playlist that uses {count, plural, =1{this file} other{these files}}.'**
  String collectionDeleteFilesMessage(int count);

  /// Tooltip for removing track from wishlist/loved folder
  ///
  /// In en, this message translates to:
  /// **'Remove from folder'**
  String get collectionRemoveFromFolder;

  /// Snackbar after adding track to loved folder
  ///
  /// In en, this message translates to:
  /// **'\"{trackName}\" added to Loved'**
  String collectionAddedToLoved(String trackName);

  /// Snackbar after removing track from loved folder
  ///
  /// In en, this message translates to:
  /// **'\"{trackName}\" removed from Loved'**
  String collectionRemovedFromLoved(String trackName);

  /// Snackbar after adding track to wishlist
  ///
  /// In en, this message translates to:
  /// **'\"{trackName}\" added to Wishlist'**
  String collectionAddedToWishlist(String trackName);

  /// Snackbar after removing track from wishlist
  ///
  /// In en, this message translates to:
  /// **'\"{trackName}\" removed from Wishlist'**
  String collectionRemovedFromWishlist(String trackName);

  /// Snackbar after adding artist to favorite artists
  ///
  /// In en, this message translates to:
  /// **'\"{artistName}\" added to Favorite Artists'**
  String collectionAddedToFavoriteArtists(String artistName);

  /// Snackbar after removing artist from favorite artists
  ///
  /// In en, this message translates to:
  /// **'\"{artistName}\" removed from Favorite Artists'**
  String collectionRemovedFromFavoriteArtists(String artistName);

  /// Bottom sheet action label - add track to loved folder
  ///
  /// In en, this message translates to:
  /// **'Add to Loved'**
  String get trackOptionAddToLoved;

  /// Bottom sheet action label - remove track from loved folder
  ///
  /// In en, this message translates to:
  /// **'Remove from Loved'**
  String get trackOptionRemoveFromLoved;

  /// Bottom sheet action label - add track to wishlist
  ///
  /// In en, this message translates to:
  /// **'Add to Wishlist'**
  String get trackOptionAddToWishlist;

  /// Bottom sheet action label - remove track from wishlist
  ///
  /// In en, this message translates to:
  /// **'Remove from Wishlist'**
  String get trackOptionRemoveFromWishlist;

  /// Action label - add artist to favorite artists
  ///
  /// In en, this message translates to:
  /// **'Add to Favorite Artists'**
  String get artistOptionAddToFavorites;

  /// Action label - remove artist from favorite artists
  ///
  /// In en, this message translates to:
  /// **'Remove from Favorite Artists'**
  String get artistOptionRemoveFromFavorites;

  /// Bottom sheet action to pick a custom cover image for a playlist
  ///
  /// In en, this message translates to:
  /// **'Change cover image'**
  String get collectionPlaylistChangeCover;

  /// Bottom sheet action to remove custom cover image from a playlist
  ///
  /// In en, this message translates to:
  /// **'Remove cover image'**
  String get collectionPlaylistRemoveCover;

  /// Convert button text with count in selection mode
  ///
  /// In en, this message translates to:
  /// **'Convert {count} {count, plural, =1{track} other{tracks}}'**
  String selectionConvertCount(int count);

  /// Snackbar when no selected tracks support conversion
  ///
  /// In en, this message translates to:
  /// **'No convertible tracks selected'**
  String get selectionConvertNoConvertible;

  /// Confirmation dialog title for batch conversion
  ///
  /// In en, this message translates to:
  /// **'Batch Convert'**
  String get selectionBatchConvertConfirmTitle;

  /// Confirmation dialog message for batch conversion
  ///
  /// In en, this message translates to:
  /// **'Convert {count} {count, plural, =1{track} other{tracks}} to {format} at {bitrate}?\n\nOriginal files will be deleted after conversion.'**
  String selectionBatchConvertConfirmMessage(
    int count,
    String format,
    String bitrate,
  );

  /// Confirmation dialog message for lossless batch conversion
  ///
  /// In en, this message translates to:
  /// **'Convert {count} {count, plural, =1{track} other{tracks}} to {format}? (Lossless — no quality loss)\n\nOriginal files will be deleted after conversion.'**
  String selectionBatchConvertConfirmMessageLossless(int count, String format);

  /// Batch conversion confirmation when source files will be preserved
  ///
  /// In en, this message translates to:
  /// **'Convert {count} {count, plural, =1{track} other{tracks}} to {format}?\n\nOriginal files will be kept and converted files will be added as separate library entries.'**
  String selectionBatchConvertConfirmKeepOriginal(int count, String format);

  /// Snackbar after batch conversion completes
  ///
  /// In en, this message translates to:
  /// **'Converted {success} of {total} tracks to {format}'**
  String selectionBatchConvertSuccess(int success, int total, String format);

  /// Downloaded tracks count badge
  ///
  /// In en, this message translates to:
  /// **'{count} downloaded'**
  String downloadedAlbumDownloadedCount(int count);

  /// Subtitle when album artist is used for folder names
  ///
  /// In en, this message translates to:
  /// **'Folder named after Album Artist tag'**
  String get downloadUseAlbumArtistForFoldersAlbumSubtitle;

  /// Subtitle when track artist is used for folder names
  ///
  /// In en, this message translates to:
  /// **'Folder named after Track Artist tag'**
  String get downloadUseAlbumArtistForFoldersTrackSubtitle;

  /// Settings item title for lyrics provider order
  ///
  /// In en, this message translates to:
  /// **'Lyrics Provider Priority'**
  String get lyricsProvidersTitle;

  /// Description on the lyrics provider priority page
  ///
  /// In en, this message translates to:
  /// **'Enable, disable and reorder lyrics sources. Providers are tried top-to-bottom until lyrics are found.'**
  String get lyricsProvidersDescription;

  /// Info tip on lyrics provider priority page
  ///
  /// In en, this message translates to:
  /// **'Extension lyrics providers run before built-in lyrics providers. At least one provider must remain enabled.'**
  String get lyricsProvidersInfoText;

  /// Section header for enabled providers
  ///
  /// In en, this message translates to:
  /// **'Enabled ({count})'**
  String lyricsProvidersEnabledSection(int count);

  /// Section header for disabled providers
  ///
  /// In en, this message translates to:
  /// **'Disabled ({count})'**
  String lyricsProvidersDisabledSection(int count);

  /// Snackbar when user tries to disable the last enabled provider
  ///
  /// In en, this message translates to:
  /// **'At least one provider must remain enabled'**
  String get lyricsProvidersAtLeastOne;

  /// Snackbar after saving lyrics provider priority
  ///
  /// In en, this message translates to:
  /// **'Lyrics provider priority saved'**
  String get lyricsProvidersSaved;

  /// Body text of the discard-changes dialog on lyrics provider page
  ///
  /// In en, this message translates to:
  /// **'You have unsaved changes that will be lost.'**
  String get lyricsProvidersDiscardContent;

  /// Description for LRCLIB provider
  ///
  /// In en, this message translates to:
  /// **'Open-source synced lyrics database'**
  String get lyricsProviderLrclibDesc;

  /// Description for Netease provider
  ///
  /// In en, this message translates to:
  /// **'NetEase Cloud Music (good for Asian songs)'**
  String get lyricsProviderNeteaseDesc;

  /// Description for Musixmatch provider
  ///
  /// In en, this message translates to:
  /// **'Largest lyrics database (multi-language)'**
  String get lyricsProviderMusixmatchDesc;

  /// Description for Apple Music provider
  ///
  /// In en, this message translates to:
  /// **'Word-by-word synced lyrics (via proxy)'**
  String get lyricsProviderAppleMusicDesc;

  /// Description for QQ Music provider
  ///
  /// In en, this message translates to:
  /// **'QQ Music (good for Chinese songs, direct API)'**
  String get lyricsProviderQqMusicDesc;

  /// Description for LyricsPlus provider
  ///
  /// In en, this message translates to:
  /// **'Word-by-word karaoke lyrics (Apple/Musixmatch/Spotify/QQ, via proxy)'**
  String get lyricsProviderLyricsPlusDesc;

  /// Description for the first-party Toad-LRC provider
  ///
  /// In en, this message translates to:
  /// **'Word-by-word Apple Music lyrics from Toad-LRC'**
  String get lyricsProviderToadLrcDesc;

  /// Description for lrc.red provider
  ///
  /// In en, this message translates to:
  /// **'Word-by-word Apple Music lyrics, matched by recording'**
  String get lyricsProviderLrcRedDesc;

  /// Description for BetterLyrics provider, which only answers songs it has already cached
  ///
  /// In en, this message translates to:
  /// **'Word-by-word Apple Music lyrics for popular songs'**
  String get lyricsProviderBetterLyricsDesc;

  /// Generic description for extension-based lyrics providers
  ///
  /// In en, this message translates to:
  /// **'Extension provider'**
  String get lyricsProviderExtensionDesc;

  /// Title of SAF migration dialog
  ///
  /// In en, this message translates to:
  /// **'Storage Update Required'**
  String get safMigrationTitle;

  /// First paragraph of SAF migration dialog
  ///
  /// In en, this message translates to:
  /// **'Toadplayer now uses Android Storage Access Framework (SAF) for downloads. This fixes \"permission denied\" errors on Android 10+.'**
  String get safMigrationMessage1;

  /// Second paragraph of SAF migration dialog
  ///
  /// In en, this message translates to:
  /// **'Please select your download folder again to switch to the new storage system.'**
  String get safMigrationMessage2;

  /// Snackbar after successfully migrating to SAF
  ///
  /// In en, this message translates to:
  /// **'Download folder updated to SAF mode'**
  String get safMigrationSuccess;

  /// Settings menu item - donate page
  ///
  /// In en, this message translates to:
  /// **'Support Development'**
  String get settingsDonate;

  /// Subtitle for donate menu item
  ///
  /// In en, this message translates to:
  /// **'Buy the developer a coffee'**
  String get settingsDonateSubtitle;

  /// Settings menu item - backup and restore page
  ///
  /// In en, this message translates to:
  /// **'Backup & Restore'**
  String get settingsBackup;

  /// Subtitle for backup and restore settings item
  ///
  /// In en, this message translates to:
  /// **'Move your library, history and settings to a new device'**
  String get settingsBackupSubtitle;

  /// App bar title for the backup and restore page
  ///
  /// In en, this message translates to:
  /// **'Backup & Restore'**
  String get backupTitle;

  /// Section title for the export/backup card
  ///
  /// In en, this message translates to:
  /// **'Create backup'**
  String get backupExportSectionTitle;

  /// Description of what a backup contains
  ///
  /// In en, this message translates to:
  /// **'Save your settings, download history, liked tracks, wishlist, favorite artists and playlists into a single file you can keep or move to another phone.'**
  String get backupExportSectionDescription;

  /// Button to create and share a backup file
  ///
  /// In en, this message translates to:
  /// **'Create backup file'**
  String get backupExportButton;

  /// Section title for the import/restore card
  ///
  /// In en, this message translates to:
  /// **'Restore backup'**
  String get backupImportSectionTitle;

  /// Description for the restore action
  ///
  /// In en, this message translates to:
  /// **'Pick a backup file to restore your data. This replaces the current settings, history and library on this device.'**
  String get backupImportSectionDescription;

  /// Button to pick a backup file to restore
  ///
  /// In en, this message translates to:
  /// **'Choose backup file'**
  String get backupImportButton;

  /// Snackbar after a backup file is created
  ///
  /// In en, this message translates to:
  /// **'Backup created'**
  String get backupCreated;

  /// Snackbar when backup creation fails
  ///
  /// In en, this message translates to:
  /// **'Failed to create backup'**
  String get backupCreateFailed;

  /// Confirmation dialog title before restoring a backup
  ///
  /// In en, this message translates to:
  /// **'Restore this backup?'**
  String get backupRestoreConfirmTitle;

  /// Confirm button to proceed with restore
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get backupRestoreConfirmButton;

  /// Snackbar after a successful restore
  ///
  /// In en, this message translates to:
  /// **'Backup restored successfully'**
  String get backupRestored;

  /// Snackbar when restore fails
  ///
  /// In en, this message translates to:
  /// **'Failed to restore backup'**
  String get backupRestoreFailed;

  /// Snackbar when the chosen file is not a valid backup
  ///
  /// In en, this message translates to:
  /// **'This file is not a valid Toadplayer backup'**
  String get backupInvalidFile;

  /// Hint shown after restoring that an app restart is recommended
  ///
  /// In en, this message translates to:
  /// **'Restart the app to make sure every change is applied.'**
  String get backupRestoreRestartHint;

  /// Header above the list summarizing what the backup contains
  ///
  /// In en, this message translates to:
  /// **'Backup contents'**
  String get backupContentsTitle;

  /// No description provided for @backupSettingsOnly.
  ///
  /// In en, this message translates to:
  /// **'Settings only'**
  String get backupSettingsOnly;

  /// No description provided for @backupSelectHistory.
  ///
  /// In en, this message translates to:
  /// **'Download history'**
  String get backupSelectHistory;

  /// No description provided for @backupSelectCollections.
  ///
  /// In en, this message translates to:
  /// **'Library collections'**
  String get backupSelectCollections;

  /// No description provided for @backupSelectCollectionsDescription.
  ///
  /// In en, this message translates to:
  /// **'Liked tracks, wishlist, favorite artists, playlists and playlist covers.'**
  String get backupSelectCollectionsDescription;

  /// No description provided for @backupSelectExtensions.
  ///
  /// In en, this message translates to:
  /// **'Extensions and their settings'**
  String get backupSelectExtensions;

  /// No description provided for @backupSelectedExportDescription.
  ///
  /// In en, this message translates to:
  /// **'Save the selected categories to a backup file. Audio files are not included.'**
  String get backupSelectedExportDescription;

  /// No description provided for @backupSelectAtLeastOne.
  ///
  /// In en, this message translates to:
  /// **'Select at least one category to create a backup.'**
  String get backupSelectAtLeastOne;

  /// No description provided for @backupSelectedRestoreMessage.
  ///
  /// In en, this message translates to:
  /// **'Only the categories listed below will be restored. Categories not included in this backup will stay unchanged. Restoring can replace existing data and cannot be undone.'**
  String get backupSelectedRestoreMessage;

  /// Backup contents row label for settings
  ///
  /// In en, this message translates to:
  /// **'App settings'**
  String get backupContentsSettings;

  /// Backup contents row for history count
  ///
  /// In en, this message translates to:
  /// **'{count} history {count, plural, =1{item} other{items}}'**
  String backupContentsHistory(int count);

  /// Backup contents row for liked tracks count
  ///
  /// In en, this message translates to:
  /// **'{count} liked {count, plural, =1{track} other{tracks}}'**
  String backupContentsLiked(int count);

  /// Backup contents row for wishlist tracks count
  ///
  /// In en, this message translates to:
  /// **'{count} wishlist {count, plural, =1{track} other{tracks}}'**
  String backupContentsWishlist(int count);

  /// Backup contents row for playlist count
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 playlist} other{{count} playlists}}'**
  String backupContentsPlaylists(int count);

  /// Backup contents row for favorite artists count
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 favorite artist} other{{count} favorite artists}}'**
  String backupContentsArtists(int count);

  /// Backup contents row for installed extensions count
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 extension} other{{count} extensions}}'**
  String backupContentsExtensions(int count);

  /// Toggle to include secret extension settings (tokens, API keys) in the backup
  ///
  /// In en, this message translates to:
  /// **'Include extension credentials'**
  String get backupIncludeSecrets;

  /// Explanation for the include-credentials toggle
  ///
  /// In en, this message translates to:
  /// **'Tokens and API keys from extensions will be saved into the backup file. Keep the file private. When off, you re-enter them after restoring.'**
  String get backupIncludeSecretsDescription;

  /// Snackbar/hint when some extensions failed to reinstall during restore
  ///
  /// In en, this message translates to:
  /// **'{count} {count, plural, =1{extension} other{extensions}} could not be reinstalled. Install them manually from the repo.'**
  String backupExtensionsRestoreFailed(int count);

  /// Tooltip for the Love All button on album/playlist screens
  ///
  /// In en, this message translates to:
  /// **'Love All'**
  String get tooltipLoveAll;

  /// Tooltip for the Add to Playlist button
  ///
  /// In en, this message translates to:
  /// **'Add to Playlist'**
  String get tooltipAddToPlaylist;

  /// Snackbar after removing multiple tracks from Loved folder
  ///
  /// In en, this message translates to:
  /// **'Removed {count} tracks from Loved'**
  String snackbarRemovedTracksFromLoved(int count);

  /// Snackbar after adding multiple tracks to Loved folder
  ///
  /// In en, this message translates to:
  /// **'Added {count} tracks to Loved'**
  String snackbarAddedTracksToLoved(int count);

  /// Dialog title for bulk download confirmation
  ///
  /// In en, this message translates to:
  /// **'Download All'**
  String get dialogDownloadAllTitle;

  /// Body of the Download All confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'Download {count} tracks?'**
  String dialogDownloadAllMessage(int count);

  /// Checkbox label in import dialog to skip already-downloaded songs
  ///
  /// In en, this message translates to:
  /// **'Skip already downloaded songs'**
  String get homeSkipAlreadyDownloaded;

  /// Context menu item to navigate to the album page
  ///
  /// In en, this message translates to:
  /// **'Go to Album'**
  String get homeGoToAlbum;

  /// Snackbar when album info cannot be loaded
  ///
  /// In en, this message translates to:
  /// **'Album info not available'**
  String get homeAlbumInfoUnavailable;

  /// Snackbar while loading a CUE sheet file
  ///
  /// In en, this message translates to:
  /// **'Loading CUE sheet...'**
  String get snackbarLoadingCueSheet;

  /// Snackbar after successfully saving track metadata
  ///
  /// In en, this message translates to:
  /// **'Metadata saved successfully'**
  String get snackbarMetadataSaved;

  /// Snackbar when lyrics embedding fails
  ///
  /// In en, this message translates to:
  /// **'Failed to embed lyrics'**
  String get snackbarFailedToEmbedLyrics;

  /// Snackbar when writing metadata back to file fails
  ///
  /// In en, this message translates to:
  /// **'Failed to write back to storage'**
  String get snackbarFailedToWriteStorage;

  /// Generic error snackbar with error detail
  ///
  /// In en, this message translates to:
  /// **'Error: {error}'**
  String snackbarError(String error);

  /// Snackbar when an extension button has no action configured
  ///
  /// In en, this message translates to:
  /// **'No action defined for this button'**
  String get snackbarNoActionDefined;

  /// Empty state message when an album has no tracks
  ///
  /// In en, this message translates to:
  /// **'No tracks found for this album'**
  String get noTracksFoundForAlbum;

  /// Subtitle shown in the download location picker sheet
  ///
  /// In en, this message translates to:
  /// **'Choose where to save your downloaded tracks'**
  String get downloadLocationSubtitle;

  /// No description provided for @storageAutomaticFolder.
  ///
  /// In en, this message translates to:
  /// **'Automatic folder'**
  String get storageAutomaticFolder;

  /// No description provided for @storageAutomaticDownloadFolder.
  ///
  /// In en, this message translates to:
  /// **'Uses Download/Toadplayer when writable, otherwise app storage'**
  String get storageAutomaticDownloadFolder;

  /// No description provided for @storageSafRecommended.
  ///
  /// In en, this message translates to:
  /// **'Choose folder (Recommended)'**
  String get storageSafRecommended;

  /// No description provided for @storageDownloadFolderHint.
  ///
  /// In en, this message translates to:
  /// **'In the Android folder picker, open Download and select Toadplayer. If it does not exist, create it using New folder, then tap Use this folder to grant access.'**
  String get storageDownloadFolderHint;

  /// Title of the warning banner shown in Files settings when the saved SAF folder grant is no longer valid
  ///
  /// In en, this message translates to:
  /// **'Download folder access lost'**
  String get downloadFolderAccessLostTitle;

  /// Subtitle of the warning banner shown when the saved SAF folder grant is no longer valid
  ///
  /// In en, this message translates to:
  /// **'Downloads will fail until you re-select the folder'**
  String get downloadFolderAccessLostSubtitle;

  /// Button that reopens the folder picker to restore download folder access
  ///
  /// In en, this message translates to:
  /// **'Re-select folder'**
  String get downloadFolderReselect;

  /// Error shown on downloads that failed because the persisted Android SAF folder grant is no longer valid
  ///
  /// In en, this message translates to:
  /// **'SAF permission invalid or revoked. Please reconfigure download location in Settings.'**
  String get downloadErrorSafPermissionLost;

  /// Error shown on downloads that failed because the iOS download folder bookmark could not be opened
  ///
  /// In en, this message translates to:
  /// **'Download folder access lost. Please re-select your download folder in Settings.'**
  String get downloadErrorFolderAccessLost;

  /// Description shown in filename format editor
  ///
  /// In en, this message translates to:
  /// **'Use {artist}, {title}, {album}, {track}, {year}, {date}, {disc} as placeholders.'**
  String downloadFilenameDescription(
    Object album,
    Object artist,
    Object date,
    Object disc,
    Object title,
    Object track,
    Object year,
  );

  /// Label above filename tag chips
  ///
  /// In en, this message translates to:
  /// **'Tap to insert tag:'**
  String get downloadFilenameInsertTag;

  /// Subtitle when separate singles folder is on
  ///
  /// In en, this message translates to:
  /// **'Singles and EPs saved in a separate folder'**
  String get downloadSeparateSinglesEnabled;

  /// Subtitle when separate singles folder is off
  ///
  /// In en, this message translates to:
  /// **'Singles and albums saved in the same folder'**
  String get downloadSeparateSinglesDisabled;

  /// Setting title for artist folder filter options
  ///
  /// In en, this message translates to:
  /// **'Artist Name Filters'**
  String get downloadArtistNameFilters;

  /// Setting to create a subfolder per playlist source
  ///
  /// In en, this message translates to:
  /// **'Playlist Source Folder'**
  String get downloadCreatePlaylistSourceFolder;

  /// Subtitle when playlist folder is enabled
  ///
  /// In en, this message translates to:
  /// **'A subfolder is created for each playlist'**
  String get downloadCreatePlaylistSourceFolderEnabled;

  /// Subtitle when playlist folder is disabled
  ///
  /// In en, this message translates to:
  /// **'All tracks saved directly to download folder'**
  String get downloadCreatePlaylistSourceFolderDisabled;

  /// Subtitle when folder organization is already set to playlist
  ///
  /// In en, this message translates to:
  /// **'Handled by folder organization setting'**
  String get downloadCreatePlaylistSourceFolderRedundant;

  /// Setting for SongLink region used during fallback resolution
  ///
  /// In en, this message translates to:
  /// **'SongLink Region'**
  String get downloadSongLinkRegion;

  /// Setting for legacy TLS/network handling
  ///
  /// In en, this message translates to:
  /// **'Network Compatibility Mode'**
  String get downloadNetworkCompatibilityMode;

  /// Subtitle when network compatibility mode is on
  ///
  /// In en, this message translates to:
  /// **'Allowing legacy HTTP endpoints; TLS verification remains enabled'**
  String get downloadNetworkCompatibilityModeEnabled;

  /// Subtitle when network compatibility mode is off
  ///
  /// In en, this message translates to:
  /// **'Using standard network settings'**
  String get downloadNetworkCompatibilityModeDisabled;

  /// Setting title for allowing requests to private/local network targets
  ///
  /// In en, this message translates to:
  /// **'Allow Local Network Access'**
  String get downloadAllowLocalNetwork;

  /// Subtitle when allow local network access is on
  ///
  /// In en, this message translates to:
  /// **'Requests to local/private addresses are allowed (for local proxy or custom DNS)'**
  String get downloadAllowLocalNetworkEnabled;

  /// Subtitle when allow local network access is off
  ///
  /// In en, this message translates to:
  /// **'Local/private addresses are blocked for security'**
  String get downloadAllowLocalNetworkDisabled;

  /// Subtitle when quality picker is disabled due to extension service
  ///
  /// In en, this message translates to:
  /// **'Select a provider with quality options to enable this option'**
  String get downloadSelectServiceToEnable;

  /// Subtitle when lyrics embedding is blocked by metadata toggle
  ///
  /// In en, this message translates to:
  /// **'Enable metadata embedding first'**
  String get downloadEmbedLyricsDisabled;

  /// Setting to include translated lyrics from Netease
  ///
  /// In en, this message translates to:
  /// **'Netease: Include Translation'**
  String get downloadNeteaseIncludeTranslation;

  /// Subtitle when Netease translation is on
  ///
  /// In en, this message translates to:
  /// **'Chinese translation lines included'**
  String get downloadNeteaseIncludeTranslationEnabled;

  /// Subtitle when Netease translation is off
  ///
  /// In en, this message translates to:
  /// **'Original lyrics only'**
  String get downloadNeteaseIncludeTranslationDisabled;

  /// Setting to include romanized lyrics from Netease
  ///
  /// In en, this message translates to:
  /// **'Netease: Include Romanization'**
  String get downloadNeteaseIncludeRomanization;

  /// Subtitle when Netease romanization is on
  ///
  /// In en, this message translates to:
  /// **'Romanization lines included'**
  String get downloadNeteaseIncludeRomanizationEnabled;

  /// Subtitle when Netease romanization is off
  ///
  /// In en, this message translates to:
  /// **'No romanization'**
  String get downloadNeteaseIncludeRomanizationDisabled;

  /// Setting for word-by-word multi-person lyrics from Apple Music and QQ Music
  ///
  /// In en, this message translates to:
  /// **'Apple / QQ: Multi-Person Lyrics'**
  String get downloadAppleQqMultiPerson;

  /// Subtitle when multi-person lyrics is on
  ///
  /// In en, this message translates to:
  /// **'Speaker labels included for duets and group tracks'**
  String get downloadAppleQqMultiPersonEnabled;

  /// Subtitle when multi-person lyrics is off
  ///
  /// In en, this message translates to:
  /// **'Standard lyrics without speaker labels'**
  String get downloadAppleQqMultiPersonDisabled;

  /// Setting for preserving Apple Music word-by-word eLRC timestamps
  ///
  /// In en, this message translates to:
  /// **'Apple Music eLRC Word Sync'**
  String get downloadAppleElrcWordSync;

  /// Subtitle when Apple Music eLRC word sync is enabled
  ///
  /// In en, this message translates to:
  /// **'Raw word-by-word timestamps preserved'**
  String get downloadAppleElrcWordSyncEnabled;

  /// Subtitle when Apple Music eLRC word sync is disabled
  ///
  /// In en, this message translates to:
  /// **'Safer line-by-line Apple Music lyrics'**
  String get downloadAppleElrcWordSyncDisabled;

  /// Setting for Musixmatch lyrics translation language
  ///
  /// In en, this message translates to:
  /// **'Musixmatch Language'**
  String get downloadMusixmatchLanguage;

  /// Subtitle when no language is set
  ///
  /// In en, this message translates to:
  /// **'Auto (original language)'**
  String get downloadMusixmatchLanguageAuto;

  /// Setting to strip contributing artists from Album Artist folder name
  ///
  /// In en, this message translates to:
  /// **'Filter Contributing Artists'**
  String get downloadFilterContributing;

  /// Subtitle when contributing artist filter is on
  ///
  /// In en, this message translates to:
  /// **'Contributing artists removed from Album Artist folder name'**
  String get downloadFilterContributingEnabled;

  /// Subtitle when contributing artist filter is off
  ///
  /// In en, this message translates to:
  /// **'Full Album Artist string used'**
  String get downloadFilterContributingDisabled;

  /// Shown when no lyrics providers are active
  ///
  /// In en, this message translates to:
  /// **'No providers enabled'**
  String get downloadProvidersNoneEnabled;

  /// Label for Musixmatch language input field
  ///
  /// In en, this message translates to:
  /// **'Language code'**
  String get downloadMusixmatchLanguageCode;

  /// Placeholder for Musixmatch language input
  ///
  /// In en, this message translates to:
  /// **'e.g. en, de, ja'**
  String get downloadMusixmatchLanguageHint;

  /// Description in Musixmatch language picker
  ///
  /// In en, this message translates to:
  /// **'Enter a BCP-47 language code (e.g. en, de, ja) to request translated lyrics from Musixmatch.'**
  String get downloadMusixmatchLanguageDesc;

  /// Button to clear Musixmatch language (use auto)
  ///
  /// In en, this message translates to:
  /// **'Auto'**
  String get downloadMusixmatchAuto;

  /// Subtitle for any-network option in picker
  ///
  /// In en, this message translates to:
  /// **'Use WiFi or mobile data'**
  String get downloadNetworkAnySubtitle;

  /// Subtitle for WiFi-only option in picker
  ///
  /// In en, this message translates to:
  /// **'Downloads pause when on mobile data'**
  String get downloadNetworkWifiOnlySubtitle;

  /// Description in SongLink region picker
  ///
  /// In en, this message translates to:
  /// **'Region used when resolving track links via SongLink. Choose the country where your streaming services are available.'**
  String get downloadSongLinkRegionDesc;

  /// Snackbar when the audio format is not supported for the requested operation
  ///
  /// In en, this message translates to:
  /// **'Unsupported audio format'**
  String get snackbarUnsupportedAudioFormat;

  /// Tooltip for refresh button on cache management page
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get cacheRefresh;

  /// Dialog message for bulk playlist download confirmation
  ///
  /// In en, this message translates to:
  /// **'Download {trackCount} {trackCount, plural, =1{track} other{tracks}} from {playlistCount} {playlistCount, plural, =1{playlist} other{playlists}}?'**
  String dialogDownloadPlaylistsMessage(int trackCount, int playlistCount);

  /// Button label for bulk downloading selected playlists
  ///
  /// In en, this message translates to:
  /// **'Download {count} {count, plural, =1{playlist} other{playlists}}'**
  String bulkDownloadPlaylistsButton(int count);

  /// Button label when no playlists are selected for download
  ///
  /// In en, this message translates to:
  /// **'Select playlists to download'**
  String get bulkDownloadSelectPlaylists;

  /// Snackbar when selected playlists contain no tracks
  ///
  /// In en, this message translates to:
  /// **'Selected playlists have no tracks'**
  String get snackbarSelectedPlaylistsEmpty;

  /// Playlist count display
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 playlist} other{{count} playlists}}'**
  String playlistsCount(int count);

  /// Section title for selective online metadata auto-fill in the edit metadata sheet
  ///
  /// In en, this message translates to:
  /// **'Auto-fill from online'**
  String get editMetadataAutoFill;

  /// Description for the auto-fill section
  ///
  /// In en, this message translates to:
  /// **'Choose a metadata extension, select fields, then review its data before applying'**
  String get editMetadataAutoFillDesc;

  /// Label for the metadata extension selector in online auto-fill
  ///
  /// In en, this message translates to:
  /// **'Metadata source'**
  String get editMetadataAutoFillSource;

  /// Automatic source option that follows configured metadata provider priority
  ///
  /// In en, this message translates to:
  /// **'Automatic (provider priority)'**
  String get editMetadataAutoFillSourceAutomatic;

  /// Button label for finding an online metadata candidate
  ///
  /// In en, this message translates to:
  /// **'Find metadata'**
  String get editMetadataAutoFillFind;

  /// Title for the online metadata preview
  ///
  /// In en, this message translates to:
  /// **'Data from {source}'**
  String editMetadataAutoFillPreview(String source);

  /// Preview value when the selected metadata source provides cover artwork
  ///
  /// In en, this message translates to:
  /// **'Cover artwork available'**
  String get editMetadataAutoFillCoverAvailable;

  /// Button label for applying the previewed metadata
  ///
  /// In en, this message translates to:
  /// **'Apply selected data'**
  String get editMetadataAutoFillApply;

  /// Snackbar confirming fields applied from a selected metadata source
  ///
  /// In en, this message translates to:
  /// **'Filled {count} {count, plural, =1{field} other{fields}} from {source}'**
  String editMetadataAutoFillDoneFromSource(int count, String source);

  /// Snackbar shown while searching for online metadata
  ///
  /// In en, this message translates to:
  /// **'Searching online...'**
  String get editMetadataAutoFillSearching;

  /// Snackbar when online metadata search returns no results
  ///
  /// In en, this message translates to:
  /// **'No matching metadata found online'**
  String get editMetadataAutoFillNoResults;

  /// Snackbar when user taps Fetch without selecting any fields
  ///
  /// In en, this message translates to:
  /// **'Select at least one field to auto-fill'**
  String get editMetadataAutoFillNoneSelected;

  /// Button in the edit metadata lyrics section that searches every lyrics provider
  ///
  /// In en, this message translates to:
  /// **'Find lyrics online'**
  String get editMetadataLyricsSearch;

  /// Title of the sheet listing each lyrics provider's result
  ///
  /// In en, this message translates to:
  /// **'Choose lyrics'**
  String get lyricsPickerTitle;

  /// Snackbar when searching lyrics without a title or artist
  ///
  /// In en, this message translates to:
  /// **'Enter a title and artist first'**
  String get lyricsPickerNeedsTitle;

  /// Shown in the lyrics picker when no provider is enabled
  ///
  /// In en, this message translates to:
  /// **'No lyrics providers are enabled. Turn some on in Settings > Lyrics.'**
  String get lyricsPickerNoProviders;

  /// Lyrics result timed word by word
  ///
  /// In en, this message translates to:
  /// **'Word-synced'**
  String get lyricsPickerWordSynced;

  /// Lyrics result timed line by line
  ///
  /// In en, this message translates to:
  /// **'Synced'**
  String get lyricsPickerSynced;

  /// Lyrics result without timing
  ///
  /// In en, this message translates to:
  /// **'Plain text'**
  String get lyricsPickerPlain;

  /// Lyrics result that marks the track as instrumental
  ///
  /// In en, this message translates to:
  /// **'Instrumental'**
  String get lyricsPickerInstrumental;

  /// A lyrics provider returned nothing for this track
  ///
  /// In en, this message translates to:
  /// **'No lyrics found'**
  String get lyricsPickerNotFound;

  /// Number of lyric lines in a provider's result
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 line} other{{count} lines}}'**
  String lyricsPickerLineCount(int count);

  /// Chip label for title field in auto-fill selector
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get editMetadataFieldTitle;

  /// Chip label for artist field in auto-fill selector
  ///
  /// In en, this message translates to:
  /// **'Artist'**
  String get editMetadataFieldArtist;

  /// Chip label for album field in auto-fill selector
  ///
  /// In en, this message translates to:
  /// **'Album'**
  String get editMetadataFieldAlbum;

  /// Chip label for album artist field in auto-fill selector
  ///
  /// In en, this message translates to:
  /// **'Album Artist'**
  String get editMetadataFieldAlbumArtist;

  /// Chip label for date field in auto-fill selector
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get editMetadataFieldDate;

  /// Chip label for track number field in auto-fill selector
  ///
  /// In en, this message translates to:
  /// **'Track #'**
  String get editMetadataFieldTrackNum;

  /// Chip label for disc number field in auto-fill selector
  ///
  /// In en, this message translates to:
  /// **'Disc #'**
  String get editMetadataFieldDiscNum;

  /// Chip label for genre field in auto-fill selector
  ///
  /// In en, this message translates to:
  /// **'Genre'**
  String get editMetadataFieldGenre;

  /// Chip label for ISRC field in auto-fill selector
  ///
  /// In en, this message translates to:
  /// **'ISRC'**
  String get editMetadataFieldIsrc;

  /// Chip label for label field in auto-fill selector
  ///
  /// In en, this message translates to:
  /// **'Label'**
  String get editMetadataFieldLabel;

  /// Chip label for copyright field in auto-fill selector
  ///
  /// In en, this message translates to:
  /// **'Copyright'**
  String get editMetadataFieldCopyright;

  /// Chip label for cover art field in auto-fill selector
  ///
  /// In en, this message translates to:
  /// **'Cover Art'**
  String get editMetadataFieldCover;

  /// Button to select all fields for auto-fill
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get editMetadataSelectAll;

  /// Button to select only fields that are currently empty
  ///
  /// In en, this message translates to:
  /// **'Empty only'**
  String get editMetadataSelectEmpty;

  /// Header for active downloads section with count
  ///
  /// In en, this message translates to:
  /// **'Downloading ({count})'**
  String queueDownloadingCount(int count);

  /// Shown while filter results are being computed
  ///
  /// In en, this message translates to:
  /// **'Filtering...'**
  String get queueFilteringIndicator;

  /// Track count label with plural support
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 track} other{{count} tracks}}'**
  String queueTrackCount(int count);

  /// Album count label with plural support
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 album} other{{count} albums}}'**
  String queueAlbumCount(int count);

  /// Empty state title when no album downloads exist
  ///
  /// In en, this message translates to:
  /// **'No album downloads'**
  String get queueEmptyAlbums;

  /// Empty state subtitle for album downloads
  ///
  /// In en, this message translates to:
  /// **'Download multiple tracks from an album to see them here'**
  String get queueEmptyAlbumsSubtitle;

  /// Empty state title when no single track downloads exist
  ///
  /// In en, this message translates to:
  /// **'No single downloads'**
  String get queueEmptySingles;

  /// Empty state subtitle for single track downloads
  ///
  /// In en, this message translates to:
  /// **'Single track downloads will appear here'**
  String get queueEmptySinglesSubtitle;

  /// Playlist count label with plural support
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 playlist} other{{count} playlists}}'**
  String queuePlaylistCount(int count);

  /// Empty state subtitle for the playlists library view
  ///
  /// In en, this message translates to:
  /// **'Create a playlist to organize your tracks'**
  String get queueEmptyPlaylistsSubtitle;

  /// Setting title - which library view opens when switching to the Library tab
  ///
  /// In en, this message translates to:
  /// **'Default view'**
  String get libraryDefaultView;

  /// Default view option - keep the last used library view
  ///
  /// In en, this message translates to:
  /// **'Last used'**
  String get libraryDefaultViewLastUsed;

  /// Empty state title when download history is empty
  ///
  /// In en, this message translates to:
  /// **'No download history'**
  String get queueEmptyHistory;

  /// Empty state subtitle for download history
  ///
  /// In en, this message translates to:
  /// **'Downloaded tracks will appear here'**
  String get queueEmptyHistorySubtitle;

  /// Shown when all playlists are selected in selection mode
  ///
  /// In en, this message translates to:
  /// **'All playlists selected'**
  String get selectionAllPlaylistsSelected;

  /// Hint shown in playlist selection mode
  ///
  /// In en, this message translates to:
  /// **'Tap playlists to select'**
  String get selectionTapPlaylistsToSelect;

  /// Hint shown when no playlists are selected for deletion
  ///
  /// In en, this message translates to:
  /// **'Select playlists to delete'**
  String get selectionSelectPlaylistsToDelete;

  /// Title for audio analysis section
  ///
  /// In en, this message translates to:
  /// **'Audio Quality Analysis'**
  String get audioAnalysisTitle;

  /// Description for audio analysis tap-to-analyze prompt
  ///
  /// In en, this message translates to:
  /// **'Verify lossless quality with spectrum analysis'**
  String get audioAnalysisDescription;

  /// Loading text while analyzing audio
  ///
  /// In en, this message translates to:
  /// **'Analyzing audio...'**
  String get audioAnalysisAnalyzing;

  /// Sample rate metric label
  ///
  /// In en, this message translates to:
  /// **'Sample Rate'**
  String get audioAnalysisSampleRate;

  /// Audio codec metric label
  ///
  /// In en, this message translates to:
  /// **'Codec'**
  String get audioAnalysisCodec;

  /// Audio container metric label
  ///
  /// In en, this message translates to:
  /// **'Container'**
  String get audioAnalysisContainer;

  /// Decoded sample format metric label
  ///
  /// In en, this message translates to:
  /// **'Decoded Format'**
  String get audioAnalysisDecodedFormat;

  /// Bit depth metric label
  ///
  /// In en, this message translates to:
  /// **'Bit Depth'**
  String get audioAnalysisBitDepth;

  /// Channels metric label
  ///
  /// In en, this message translates to:
  /// **'Channels'**
  String get audioAnalysisChannels;

  /// Duration metric label
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get audioAnalysisDuration;

  /// Nyquist frequency metric label
  ///
  /// In en, this message translates to:
  /// **'Nyquist'**
  String get audioAnalysisNyquist;

  /// File size metric label
  ///
  /// In en, this message translates to:
  /// **'Size'**
  String get audioAnalysisFileSize;

  /// Dynamic range metric label
  ///
  /// In en, this message translates to:
  /// **'Dynamic Range'**
  String get audioAnalysisDynamicRange;

  /// Peak amplitude metric label
  ///
  /// In en, this message translates to:
  /// **'Peak'**
  String get audioAnalysisPeak;

  /// RMS level metric label
  ///
  /// In en, this message translates to:
  /// **'RMS'**
  String get audioAnalysisRms;

  /// Integrated loudness metric label
  ///
  /// In en, this message translates to:
  /// **'LUFS'**
  String get audioAnalysisLufs;

  /// True peak metric label
  ///
  /// In en, this message translates to:
  /// **'True Peak'**
  String get audioAnalysisTruePeak;

  /// Clipping metric label
  ///
  /// In en, this message translates to:
  /// **'Clipping'**
  String get audioAnalysisClipping;

  /// Displayed when no clipped samples were detected
  ///
  /// In en, this message translates to:
  /// **'No clipping'**
  String get audioAnalysisNoClipping;

  /// Estimated spectral cutoff metric label
  ///
  /// In en, this message translates to:
  /// **'Spectral Cutoff'**
  String get audioAnalysisSpectralCutoff;

  /// Displayed when no reliable broadband spectral cutoff can be detected
  ///
  /// In en, this message translates to:
  /// **'Not detected'**
  String get audioAnalysisCutoffNotDetected;

  /// Per-channel audio analysis section label
  ///
  /// In en, this message translates to:
  /// **'Per-channel Stats'**
  String get audioAnalysisChannelStats;

  /// Total samples metric label
  ///
  /// In en, this message translates to:
  /// **'Samples'**
  String get audioAnalysisSamples;

  /// Tooltip/label for the button that re-runs the audio analysis, discarding cached results
  ///
  /// In en, this message translates to:
  /// **'Re-analyze'**
  String get audioAnalysisRescan;

  /// Tooltip for the spectrogram button that saves the plot, with its axes and legend, as a PNG image the user places in storage
  ///
  /// In en, this message translates to:
  /// **'Save Spectrogram'**
  String get audioAnalysisSaveSpectrogram;

  /// Snackbar after the spectrogram image was saved
  ///
  /// In en, this message translates to:
  /// **'Spectrogram saved to {fileName}'**
  String audioAnalysisSpectrogramSaved(String fileName);

  /// Setting title: automatically replace downloads that measure as fake Hi-Res
  ///
  /// In en, this message translates to:
  /// **'Re-download fake Hi-Res'**
  String get downloadRedownloadFakeHiRes;

  /// Setting subtitle for the fake Hi-Res re-download toggle
  ///
  /// In en, this message translates to:
  /// **'Off by default. Check Hi-Res downloads and replace only when every audio sample is preserved. Keep the original if verification or processing fails'**
  String get downloadRedownloadFakeHiResSubtitle;

  /// Verdict: an exact fingerprint (padded bits or upsampling pattern) proves the file is not real Hi-Res
  ///
  /// In en, this message translates to:
  /// **'Fake Hi-Res'**
  String get hiResCheckVerdictFakeCertain;

  /// Reason: sample-and-hold upsampling detected
  ///
  /// In en, this message translates to:
  /// **'Every sample is repeated: upsampled by duplication'**
  String get hiResCheckReasonSampleHold;

  /// Reason: linear-interpolation upsampling detected
  ///
  /// In en, this message translates to:
  /// **'In-between samples are linearly interpolated'**
  String get hiResCheckReasonInterpolation;

  /// Title of the fake Hi-Res check card
  ///
  /// In en, this message translates to:
  /// **'Hi-Res Authenticity'**
  String get hiResCheckTitle;

  /// Introductory text for the sampled Hi-Res analysis
  ///
  /// In en, this message translates to:
  /// **'Inspect the spectrum and active bit depth for signs of upsampling or padding.'**
  String get hiResCheckSummary;

  /// Neutral finding: a limited spectrum alone does not prove upsampling
  ///
  /// In en, this message translates to:
  /// **'Limited bandwidth'**
  String get hiResCheckLimitedBandwidth;

  /// No evidence was detected; this does not certify the master
  ///
  /// In en, this message translates to:
  /// **'No upsampling or padding detected'**
  String get hiResCheckNoEvidence;

  /// Estimated upper spectral edge at the analysis threshold
  ///
  /// In en, this message translates to:
  /// **'Estimated cutoff'**
  String get hiResCheckEstimatedCutoff;

  /// Active integer bit depth versus the container depth in the sampled segment
  ///
  /// In en, this message translates to:
  /// **'Active / stored bits'**
  String get hiResCheckActiveBits;

  /// Explains why the limited-bandwidth finding is neutral
  ///
  /// In en, this message translates to:
  /// **'A lower cutoff can come from mastering. It does not, by itself, prove upsampling.'**
  String get hiResCheckBandwidthExplanation;

  /// Limits of the sampled Hi-Res analysis; seconds is a formatted duration
  ///
  /// In en, this message translates to:
  /// **'Based on {seconds} seconds of audio. This analysis cannot certify the original master.'**
  String hiResCheckSampledExplanation(String seconds);

  /// Spectral imaging is suggestive evidence rather than proof
  ///
  /// In en, this message translates to:
  /// **'The spectrum contains mirrored bands consistent with upsampling.'**
  String get hiResCheckImagingEvidence;

  /// Heuristic evidence from both a brickwall and a 16-bit-like noise floor
  ///
  /// In en, this message translates to:
  /// **'A sharp roll-off near {cutoff} and the measured noise floor suggest a lower-rate source.'**
  String hiResCheckRateEvidence(String cutoff);

  /// An observation about ultrasonic energy, not proof that removing it is safe
  ///
  /// In en, this message translates to:
  /// **'Energy above {cutoff} is mostly steady in the analyzed segment and may be noise.'**
  String hiResCheckSteadyEnergy(String cutoff);

  /// Button that starts the Hi-Res authenticity check
  ///
  /// In en, this message translates to:
  /// **'Check'**
  String get hiResCheckRun;

  /// Loading text while the Hi-Res check runs
  ///
  /// In en, this message translates to:
  /// **'Checking Hi-Res authenticity...'**
  String get hiResCheckChecking;

  /// Verdict: the file claims Hi-Res but does not measure as it
  ///
  /// In en, this message translates to:
  /// **'Likely fake Hi-Res'**
  String get hiResCheckVerdictFake;

  /// Verdict: neither sample rate nor bit depth claims Hi-Res
  ///
  /// In en, this message translates to:
  /// **'Standard definition, nothing to flag'**
  String get hiResCheckVerdictStandard;

  /// Verdict: analysis could not reach a reliable conclusion
  ///
  /// In en, this message translates to:
  /// **'Inconclusive: the analyzed segment is too quiet or short'**
  String get hiResCheckVerdictInconclusive;

  /// Shown when the file format cannot be decoded by the Hi-Res check
  ///
  /// In en, this message translates to:
  /// **'Only FLAC and WAV files can be checked'**
  String get hiResCheckUnsupported;

  /// Error shown when the Hi-Res check fails
  ///
  /// In en, this message translates to:
  /// **'Hi-Res check failed: {error}'**
  String hiResCheckFailed(String error);

  /// Reason for a fake verdict caused by padded bit depth
  ///
  /// In en, this message translates to:
  /// **'Declares {declared}-bit but only {effective} bits carry data'**
  String hiResCheckReasonDepth(int declared, int effective);

  /// Loading text while audio is being re-analyzed after an explicit refresh
  ///
  /// In en, this message translates to:
  /// **'Re-analyzing audio...'**
  String get audioAnalysisRescanning;

  /// Extensions page - label for home feed provider selector
  ///
  /// In en, this message translates to:
  /// **'Home Feed Provider'**
  String get extensionsHomeFeedProvider;

  /// Country picker for the active Home feed extension
  ///
  /// In en, this message translates to:
  /// **'Home feed country'**
  String get extensionsHomeFeedCountry;

  /// Help for choosing regional Home recommendations
  ///
  /// In en, this message translates to:
  /// **'Choose a country\'s Home recommendations without a VPN.'**
  String get extensionsHomeFeedCountryDescription;

  /// Extensions page - description for home feed provider picker
  ///
  /// In en, this message translates to:
  /// **'Choose which extension provides the home feed on the main screen'**
  String get extensionsHomeFeedDescription;

  /// Label for auto-selected search provider
  ///
  /// In en, this message translates to:
  /// **'Auto'**
  String get extensionsHomeFeedAuto;

  /// Extensions page - subtitle for auto home feed option
  ///
  /// In en, this message translates to:
  /// **'Automatically select the best available'**
  String get extensionsHomeFeedAutoSubtitle;

  /// Extensions page - home feed provider option: off
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get extensionsHomeFeedOff;

  /// Extensions page - subtitle for off home feed option
  ///
  /// In en, this message translates to:
  /// **'Do not show the home feed on the main screen'**
  String get extensionsHomeFeedOffSubtitle;

  /// Extensions page - subtitle for a specific extension home feed option
  ///
  /// In en, this message translates to:
  /// **'Use {extensionName} home feed'**
  String extensionsHomeFeedUse(String extensionName);

  /// Extensions page - shown when no installed extension has home feed
  ///
  /// In en, this message translates to:
  /// **'No extensions with home feed'**
  String get extensionsNoHomeFeedExtensions;

  /// Dialog title when confirming cancellation of an active download
  ///
  /// In en, this message translates to:
  /// **'Cancel download?'**
  String get cancelDownloadTitle;

  /// Dialog body when confirming cancellation of an active download
  ///
  /// In en, this message translates to:
  /// **'This will cancel the active download for \"{trackName}\".'**
  String cancelDownloadContent(String trackName);

  /// Dialog button - keep the active download (do not cancel)
  ///
  /// In en, this message translates to:
  /// **'Keep'**
  String get cancelDownloadKeep;

  /// Dialog title when opening a cancelled queue item
  ///
  /// In en, this message translates to:
  /// **'Download cancelled'**
  String get queueCancelledTitle;

  /// Dialog body when opening a cancelled queue item
  ///
  /// In en, this message translates to:
  /// **'This download was cancelled. Retry it or remove it from the queue.'**
  String get queueCancelledMessage;

  /// Snackbar error when FFmpeg fails to write metadata
  ///
  /// In en, this message translates to:
  /// **'Failed to save metadata via FFmpeg'**
  String get metadataSaveFailedFfmpeg;

  /// Snackbar error when writing metadata file back to storage fails
  ///
  /// In en, this message translates to:
  /// **'Failed to write metadata back to storage'**
  String get metadataSaveFailedStorage;

  /// Snackbar shown when folder picker fails to open
  ///
  /// In en, this message translates to:
  /// **'Failed to open folder picker: {error}'**
  String snackbarFolderPickerFailed(String error);

  /// Notification title while downloading a track
  ///
  /// In en, this message translates to:
  /// **'Downloading {trackName}'**
  String notifDownloadingTrack(String trackName);

  /// Notification title while finalizing (embedding metadata) a track
  ///
  /// In en, this message translates to:
  /// **'Finalizing {trackName}'**
  String notifFinalizingTrack(String trackName);

  /// Notification body while embedding metadata into a downloaded track
  ///
  /// In en, this message translates to:
  /// **'Embedding metadata...'**
  String get notifEmbeddingMetadata;

  /// Notification title when track is already in library, with count
  ///
  /// In en, this message translates to:
  /// **'Already in Library ({completed}/{total})'**
  String notifAlreadyInLibraryCount(int completed, int total);

  /// Notification title when track is already in library
  ///
  /// In en, this message translates to:
  /// **'Already in Library'**
  String get notifAlreadyInLibrary;

  /// Notification title when download is complete, with count
  ///
  /// In en, this message translates to:
  /// **'Download Complete ({completed}/{total})'**
  String notifDownloadCompleteCount(int completed, int total);

  /// Notification title when a single download is complete
  ///
  /// In en, this message translates to:
  /// **'Download Complete'**
  String get notifDownloadComplete;

  /// Notification title when queue finishes with some failures
  ///
  /// In en, this message translates to:
  /// **'Downloads Finished ({completed} done, {failed} failed)'**
  String notifDownloadsFinished(int completed, int failed);

  /// Notification title shown when a download needs the user to complete a verification challenge but the app is in the background
  ///
  /// In en, this message translates to:
  /// **'Verification required'**
  String get notifVerificationRequiredTitle;

  /// Notification body prompting the user to return to the app to solve a verification challenge
  ///
  /// In en, this message translates to:
  /// **'Open the app to complete verification and resume downloads'**
  String get notifVerificationRequiredBody;

  /// Notification title when all downloads finish successfully
  ///
  /// In en, this message translates to:
  /// **'All Downloads Complete'**
  String get notifAllDownloadsComplete;

  /// Notification body for queue complete - how many tracks were downloaded
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 track downloaded successfully} other{{count} tracks downloaded successfully}}'**
  String notifTracksDownloadedSuccess(int count);

  /// Notification body when queue finishes with failures
  ///
  /// In en, this message translates to:
  /// **'{completed, plural, =1{1 track downloaded} other{{completed} tracks downloaded}}, {failed, plural, =1{1 failed} other{{failed} failed}}'**
  String notifDownloadsFinishedBody(int completed, int failed);

  /// Notification title when downloads are canceled by the user
  ///
  /// In en, this message translates to:
  /// **'Downloads canceled'**
  String get notifDownloadsCanceledTitle;

  /// Notification body when downloads are canceled by the user
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 download canceled by user} other{{count} downloads canceled by user}}'**
  String notifDownloadsCanceledBody(int count);

  /// Notification title while scanning local library
  ///
  /// In en, this message translates to:
  /// **'Scanning local library'**
  String get notifScanningLibrary;

  /// Notification body for library scan progress when total is known
  ///
  /// In en, this message translates to:
  /// **'{scanned}/{total} files • {percentage}%'**
  String notifLibraryScanProgressWithTotal(
    int scanned,
    int total,
    int percentage,
  );

  /// Notification body for library scan progress when total is unknown
  ///
  /// In en, this message translates to:
  /// **'{scanned} files scanned'**
  String notifLibraryScanProgressNoTotal(int scanned);

  /// Notification title when library scan finishes
  ///
  /// In en, this message translates to:
  /// **'Library scan complete'**
  String get notifLibraryScanComplete;

  /// Notification body for library scan complete - number of indexed tracks
  ///
  /// In en, this message translates to:
  /// **'{count} tracks indexed'**
  String notifLibraryScanCompleteBody(int count);

  /// Library scan complete suffix - excluded track count
  ///
  /// In en, this message translates to:
  /// **'{count} excluded'**
  String notifLibraryScanExcluded(int count);

  /// Library scan complete suffix - error count
  ///
  /// In en, this message translates to:
  /// **'{count} errors'**
  String notifLibraryScanErrors(int count);

  /// Notification title when library scan fails
  ///
  /// In en, this message translates to:
  /// **'Library scan failed'**
  String get notifLibraryScanFailed;

  /// Recovery notice after the app stops during a library scan
  ///
  /// In en, this message translates to:
  /// **'The previous library scan was interrupted. Scan the folder again to continue. Your indexed tracks are still available.'**
  String get notifLibraryScanInterruptedBody;

  /// Notification title when library scan is cancelled by the user
  ///
  /// In en, this message translates to:
  /// **'Library scan cancelled'**
  String get notifLibraryScanCancelled;

  /// Notification body when library scan is cancelled
  ///
  /// In en, this message translates to:
  /// **'Scan stopped before completion.'**
  String get notifLibraryScanStopped;

  /// Notification title when the user pauses a library scan
  ///
  /// In en, this message translates to:
  /// **'Library scan paused'**
  String get notifLibraryScanPaused;

  /// Notification body for a paused library scan - files scanned so far
  ///
  /// In en, this message translates to:
  /// **'{count} files scanned. Resume in Local Library settings to continue from here.'**
  String notifLibraryScanPausedBody(int count);

  /// Notification title while downloading an app update
  ///
  /// In en, this message translates to:
  /// **'Downloading Toadplayer v{version}'**
  String notifDownloadingUpdate(String version);

  /// Notification body showing update download progress
  ///
  /// In en, this message translates to:
  /// **'{received} / {total} MB • {percentage}%'**
  String notifUpdateProgress(String received, String total, int percentage);

  /// Notification title when app update download is complete
  ///
  /// In en, this message translates to:
  /// **'Update Ready'**
  String get notifUpdateReady;

  /// Notification body when app update is ready to install
  ///
  /// In en, this message translates to:
  /// **'Toadplayer v{version} downloaded. Tap to install.'**
  String notifUpdateReadyBody(String version);

  /// Notification title when app update download fails
  ///
  /// In en, this message translates to:
  /// **'Update Failed'**
  String get notifUpdateFailed;

  /// Notification body when app update download fails
  ///
  /// In en, this message translates to:
  /// **'Could not download update. Try again later.'**
  String get notifUpdateFailedBody;

  /// Search filter label - tracks
  ///
  /// In en, this message translates to:
  /// **'Tracks'**
  String get searchTracks;

  /// Default placeholder for the main search field on Home
  ///
  /// In en, this message translates to:
  /// **'Search or paste a supported URL...'**
  String get homeSearchHintDefault;

  /// Placeholder for the main search field when a provider is selected
  ///
  /// In en, this message translates to:
  /// **'Search with {providerName}...'**
  String homeSearchHintProvider(String providerName);

  /// Tooltip for importing a CSV or M3U playlist file into Home search
  ///
  /// In en, this message translates to:
  /// **'Import playlist (CSV, M3U)'**
  String get homeImportCsvTooltip;

  /// Tooltip for the Home search provider picker
  ///
  /// In en, this message translates to:
  /// **'Change search provider'**
  String get homeChangeSearchProviderTooltip;

  /// Generic action - paste from clipboard
  ///
  /// In en, this message translates to:
  /// **'Paste'**
  String get actionPaste;

  /// Placeholder shown in the tutorial search demo
  ///
  /// In en, this message translates to:
  /// **'Paste or search...'**
  String get tutorialSearchHint;

  /// Accessibility label for completed download state in tutorial demo
  ///
  /// In en, this message translates to:
  /// **'Download completed'**
  String get tutorialDownloadCompletedSemantics;

  /// Accessibility label for active download state in tutorial demo
  ///
  /// In en, this message translates to:
  /// **'Download in progress'**
  String get tutorialDownloadInProgressSemantics;

  /// Accessibility label for idle download button in tutorial demo
  ///
  /// In en, this message translates to:
  /// **'Start download'**
  String get tutorialStartDownloadSemantics;

  /// Settings toggle title for writing metadata into downloaded files
  ///
  /// In en, this message translates to:
  /// **'Embed Metadata'**
  String get optionsEmbedMetadata;

  /// Subtitle when metadata embedding is enabled
  ///
  /// In en, this message translates to:
  /// **'Write metadata, cover art, and embedded lyrics to files'**
  String get optionsEmbedMetadataSubtitleOn;

  /// Subtitle when metadata embedding is disabled
  ///
  /// In en, this message translates to:
  /// **'Disabled (advanced): skip all metadata embedding'**
  String get optionsEmbedMetadataSubtitleOff;

  /// Message shown when a track file has no embedded cover art
  ///
  /// In en, this message translates to:
  /// **'No embedded album art found'**
  String get trackCoverNoEmbeddedArt;

  /// Button label for replacing selected cover art
  ///
  /// In en, this message translates to:
  /// **'Replace Cover'**
  String get trackCoverReplace;

  /// Button label for selecting cover art
  ///
  /// In en, this message translates to:
  /// **'Pick Cover'**
  String get trackCoverPick;

  /// Tooltip for clearing the newly selected cover art
  ///
  /// In en, this message translates to:
  /// **'Clear selected cover'**
  String get trackCoverClearSelected;

  /// Label for the currently embedded cover preview
  ///
  /// In en, this message translates to:
  /// **'Current cover'**
  String get trackCoverCurrent;

  /// Label for the newly selected cover preview
  ///
  /// In en, this message translates to:
  /// **'Selected cover'**
  String get trackCoverSelected;

  /// Notice shown when a new cover has been selected but not saved yet
  ///
  /// In en, this message translates to:
  /// **'The selected cover will replace the current embedded cover when you tap Save.'**
  String get trackCoverReplaceNotice;

  /// Label for selecting the embedded cover art resolution
  ///
  /// In en, this message translates to:
  /// **'Cover resolution'**
  String get trackCoverResolution;

  /// Explanation below the embedded cover art resolution selector
  ///
  /// In en, this message translates to:
  /// **'Sets the longest edge when saved. Enlarging does not add image detail.'**
  String get trackCoverResolutionHint;

  /// Error shown when resizing cover art before saving metadata fails
  ///
  /// In en, this message translates to:
  /// **'The cover image could not be resized. Please try another size or image.'**
  String get trackCoverResizeFailed;

  /// Generic action - stop
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get actionStop;

  /// Accessibility label for a queue item that is finalizing
  ///
  /// In en, this message translates to:
  /// **'Finalizing download'**
  String get queueFinalizingDownload;

  /// Tooltip on a queued download row; moves the item to the front of the queue so the next free slot downloads it
  ///
  /// In en, this message translates to:
  /// **'Download next'**
  String get queueDownloadNext;

  /// Queue item menu action - move the queued item one position earlier
  ///
  /// In en, this message translates to:
  /// **'Move up'**
  String get queueMoveUp;

  /// Queue item menu action - move the queued item one position later
  ///
  /// In en, this message translates to:
  /// **'Move down'**
  String get queueMoveDown;

  /// Tag editor button that fills genre and album artist from MusicBrainz by ISRC
  ///
  /// In en, this message translates to:
  /// **'Fetch from MusicBrainz'**
  String get editMetadataMusicBrainzButton;

  /// Snackbar after MusicBrainz suggestions were applied to the tag editor fields
  ///
  /// In en, this message translates to:
  /// **'Updated from MusicBrainz'**
  String get editMetadataMusicBrainzFilled;

  /// Snackbar when the MusicBrainz lookup returns no data
  ///
  /// In en, this message translates to:
  /// **'Nothing found on MusicBrainz'**
  String get editMetadataMusicBrainzNothing;

  /// Snackbar when the MusicBrainz lookup is tapped without an ISRC
  ///
  /// In en, this message translates to:
  /// **'Requires an ISRC tag'**
  String get editMetadataMusicBrainzNeedsIsrc;

  /// Repeat toggle tooltip when repeat is disabled
  ///
  /// In en, this message translates to:
  /// **'Repeat off'**
  String get nowPlayingRepeatOff;

  /// Repeat toggle tooltip when the whole queue repeats
  ///
  /// In en, this message translates to:
  /// **'Repeat all'**
  String get nowPlayingRepeatAll;

  /// Repeat toggle tooltip when the current track repeats
  ///
  /// In en, this message translates to:
  /// **'Repeat one'**
  String get nowPlayingRepeatOne;

  /// Snackbar shown when connectivity returns and network-failed downloads can be retried
  ///
  /// In en, this message translates to:
  /// **'{count} downloads failed while offline'**
  String queueNetworkFailedOffline(int count);

  /// Accessibility label when a downloaded file is missing from disk
  ///
  /// In en, this message translates to:
  /// **'Downloaded file missing'**
  String get queueDownloadedFileMissing;

  /// Accessibility label while the app checks whether a just-completed download has appeared at its final path yet. Not about authentication or a download session.
  ///
  /// In en, this message translates to:
  /// **'Checking downloaded file...'**
  String get queueCheckingDownloadedFile;

  /// Accessibility label for completed download state in queue
  ///
  /// In en, this message translates to:
  /// **'Download completed'**
  String get queueDownloadCompleted;

  /// Title shown on a failed queue item when the download service rate limits requests
  ///
  /// In en, this message translates to:
  /// **'Service rate limited'**
  String get queueRateLimitTitle;

  /// Explanation shown on a failed queue item when the download service rate limits requests
  ///
  /// In en, this message translates to:
  /// **'This track may still be available. Wait a few minutes, reduce parallel downloads, then retry.'**
  String get queueRateLimitMessage;

  /// Accessibility label for picking an accent color
  ///
  /// In en, this message translates to:
  /// **'Select accent color {hex}'**
  String appearanceSelectAccentColor(String hex);

  /// Tooltip when auto-scroll is enabled on the log screen
  ///
  /// In en, this message translates to:
  /// **'Auto-scroll ON'**
  String get logAutoScrollOn;

  /// Tooltip when auto-scroll is disabled on the log screen
  ///
  /// In en, this message translates to:
  /// **'Auto-scroll OFF'**
  String get logAutoScrollOff;

  /// Tooltip for copying logs
  ///
  /// In en, this message translates to:
  /// **'Copy logs'**
  String get logCopyLogs;

  /// Tooltip for clearing the log search field
  ///
  /// In en, this message translates to:
  /// **'Clear search'**
  String get logClearSearch;

  /// Diagnostic badge label when ISP blocking is detected
  ///
  /// In en, this message translates to:
  /// **'ISP BLOCKING DETECTED'**
  String get logIssueIspBlockingLabel;

  /// Diagnostic badge description for ISP blocking
  ///
  /// In en, this message translates to:
  /// **'Your ISP may be blocking access to download services'**
  String get logIssueIspBlockingDescription;

  /// Diagnostic badge suggestion for ISP blocking
  ///
  /// In en, this message translates to:
  /// **'Try using a VPN or change DNS to 1.1.1.1 or 8.8.8.8'**
  String get logIssueIspBlockingSuggestion;

  /// Diagnostic badge label when the service rate limits requests
  ///
  /// In en, this message translates to:
  /// **'RATE LIMITED'**
  String get logIssueRateLimitedLabel;

  /// Diagnostic badge description for rate limiting
  ///
  /// In en, this message translates to:
  /// **'Too many requests to the service'**
  String get logIssueRateLimitedDescription;

  /// Diagnostic badge suggestion for rate limiting
  ///
  /// In en, this message translates to:
  /// **'Wait a few minutes before trying again'**
  String get logIssueRateLimitedSuggestion;

  /// Diagnostic badge label for generic network errors
  ///
  /// In en, this message translates to:
  /// **'NETWORK ERROR'**
  String get logIssueNetworkErrorLabel;

  /// Diagnostic badge description for generic network errors
  ///
  /// In en, this message translates to:
  /// **'Connection issues detected'**
  String get logIssueNetworkErrorDescription;

  /// Diagnostic badge suggestion for generic network errors
  ///
  /// In en, this message translates to:
  /// **'Check your internet connection'**
  String get logIssueNetworkErrorSuggestion;

  /// Diagnostic badge label when a track is unavailable
  ///
  /// In en, this message translates to:
  /// **'TRACK NOT FOUND'**
  String get logIssueTrackNotFoundLabel;

  /// Diagnostic badge description when a track is unavailable
  ///
  /// In en, this message translates to:
  /// **'Some tracks could not be found on download services'**
  String get logIssueTrackNotFoundDescription;

  /// Diagnostic badge suggestion when a track is unavailable
  ///
  /// In en, this message translates to:
  /// **'The track may not be available in lossless quality'**
  String get logIssueTrackNotFoundSuggestion;

  /// Snackbar shown while clickable artist metadata is being resolved
  ///
  /// In en, this message translates to:
  /// **'Looking up artist...'**
  String get clickableLookingUpArtist;

  /// Snackbar shown when clickable metadata cannot open a destination
  ///
  /// In en, this message translates to:
  /// **'{type} information not available'**
  String clickableInformationUnavailable(String type);

  /// Section title for extension tags
  ///
  /// In en, this message translates to:
  /// **'Tags'**
  String get extensionDetailsTags;

  /// Section title for extension metadata information
  ///
  /// In en, this message translates to:
  /// **'Information'**
  String get extensionDetailsInformation;

  /// Capability label for utility-only extensions
  ///
  /// In en, this message translates to:
  /// **'Utility Functions'**
  String get extensionUtilityFunctions;

  /// Generic action - dismiss
  ///
  /// In en, this message translates to:
  /// **'Dismiss'**
  String get actionDismiss;

  /// Tooltip for editing the selected download folder
  ///
  /// In en, this message translates to:
  /// **'Change folder'**
  String get setupChangeFolderTooltip;

  /// Accessibility label for opening a track item
  ///
  /// In en, this message translates to:
  /// **'Open track {trackName} by {artistName}'**
  String a11yOpenTrackByArtist(String trackName, String artistName);

  /// Accessibility label for opening a generic item
  ///
  /// In en, this message translates to:
  /// **'Open {itemType} {name}'**
  String a11yOpenItem(String itemType, String name);

  /// Accessibility label for opening a grouped item with count
  ///
  /// In en, this message translates to:
  /// **'Open {title}, {count} {count, plural, =1{item} other{items}}'**
  String a11yOpenItemCount(String title, int count);

  /// Accessibility label for opening an album item with track count
  ///
  /// In en, this message translates to:
  /// **'Open album {albumName} by {artistName}, {trackCount} tracks'**
  String a11yOpenAlbumByArtistTrackCount(
    String albumName,
    String artistName,
    int trackCount,
  );

  /// Accessibility label for a queue or list track item
  ///
  /// In en, this message translates to:
  /// **'{trackName} by {artistName}'**
  String a11yTrackByArtist(String trackName, String artistName);

  /// Accessibility label for selecting an album
  ///
  /// In en, this message translates to:
  /// **'Select album {albumName}'**
  String a11ySelectAlbum(String albumName);

  /// Accessibility label for opening an album
  ///
  /// In en, this message translates to:
  /// **'Open album {albumName}'**
  String a11yOpenAlbum(String albumName);

  /// Settings menu item - file and folder settings
  ///
  /// In en, this message translates to:
  /// **'Files & Folders'**
  String get settingsFiles;

  /// Subtitle for files & folders settings
  ///
  /// In en, this message translates to:
  /// **'Download location, filename, folder structure'**
  String get settingsFilesSubtitle;

  /// Settings menu item - metadata settings
  ///
  /// In en, this message translates to:
  /// **'Metadata'**
  String get settingsMetadata;

  /// Subtitle for metadata settings
  ///
  /// In en, this message translates to:
  /// **'Cover art, tags, ReplayGain, providers'**
  String get settingsMetadataSubtitle;

  /// Settings menu item - lyrics settings
  ///
  /// In en, this message translates to:
  /// **'Lyrics'**
  String get settingsLyrics;

  /// Subtitle for lyrics settings
  ///
  /// In en, this message translates to:
  /// **'Embed, mode, providers, language options'**
  String get settingsLyricsSubtitle;

  /// Settings menu item - app settings
  ///
  /// In en, this message translates to:
  /// **'App'**
  String get settingsApp;

  /// Subtitle for app settings
  ///
  /// In en, this message translates to:
  /// **'Updates, data, extension repo, debug'**
  String get settingsAppSubtitle;

  /// Settings section header for metadata providers
  ///
  /// In en, this message translates to:
  /// **'Providers'**
  String get sectionMetadataProviders;

  /// Settings section header for deduplication
  ///
  /// In en, this message translates to:
  /// **'Duplicates'**
  String get sectionDuplicates;

  /// Settings section header for per-provider lyrics options
  ///
  /// In en, this message translates to:
  /// **'Provider Options'**
  String get sectionLyricsProviderOptions;

  /// Settings item title for metadata provider order
  ///
  /// In en, this message translates to:
  /// **'Metadata Provider Priority'**
  String get metadataProvidersTitle;

  /// Subtitle for metadata provider priority item
  ///
  /// In en, this message translates to:
  /// **'Drag to set search and metadata source order'**
  String get metadataProvidersSubtitle;

  /// Setting - skip tracks already in download history
  ///
  /// In en, this message translates to:
  /// **'Skip Duplicate Downloads'**
  String get downloadDeduplication;

  /// Subtitle when deduplication is on
  ///
  /// In en, this message translates to:
  /// **'Already-downloaded tracks will be skipped'**
  String get downloadDeduplicationEnabled;

  /// Deduplication subtitle when separate quality versions are allowed
  ///
  /// In en, this message translates to:
  /// **'Existing files at the selected quality will be skipped'**
  String get downloadDeduplicationWithQualityVariants;

  /// Subtitle when deduplication is off
  ///
  /// In en, this message translates to:
  /// **'All tracks will be downloaded regardless of history'**
  String get downloadDeduplicationDisabled;

  /// Setting to retain multiple quality versions of the same track
  ///
  /// In en, this message translates to:
  /// **'Allow different quality versions'**
  String get downloadQualityVariants;

  /// Description for retaining multiple quality versions
  ///
  /// In en, this message translates to:
  /// **'Keep every quality version; add its measured quality to the filename only when the name is already used'**
  String get downloadQualityVariantsDescription;

  /// Track menu action to download another quality version
  ///
  /// In en, this message translates to:
  /// **'Download another quality'**
  String get trackOptionDownloadQualityVariant;

  /// Settings item for configuring fallback extension providers
  ///
  /// In en, this message translates to:
  /// **'Fallback Extensions'**
  String get downloadFallbackExtensions;

  /// Subtitle for fallback extensions item
  ///
  /// In en, this message translates to:
  /// **'Choose which extensions can be used as fallback'**
  String get downloadFallbackExtensionsSubtitle;

  /// Hint text for the edit metadata date field
  ///
  /// In en, this message translates to:
  /// **'YYYY-MM-DD or YYYY'**
  String get editMetadataFieldDateHint;

  /// Label for total tracks field in the edit metadata sheet
  ///
  /// In en, this message translates to:
  /// **'Track Total'**
  String get editMetadataFieldTrackTotal;

  /// Label for total discs field in the edit metadata sheet
  ///
  /// In en, this message translates to:
  /// **'Disc Total'**
  String get editMetadataFieldDiscTotal;

  /// Label for composer field in the edit metadata sheet
  ///
  /// In en, this message translates to:
  /// **'Composer'**
  String get editMetadataFieldComposer;

  /// Label for comment field in the edit metadata sheet
  ///
  /// In en, this message translates to:
  /// **'Comment'**
  String get editMetadataFieldComment;

  /// Label for an album or release type metadata value
  ///
  /// In en, this message translates to:
  /// **'Release Type'**
  String get trackAlbumType;

  /// Hint for the release type metadata field
  ///
  /// In en, this message translates to:
  /// **'Album, single, EP, compilation...'**
  String get editMetadataFieldAlbumTypeHint;

  /// Label for the explicit content metadata field
  ///
  /// In en, this message translates to:
  /// **'Explicit'**
  String get editMetadataFieldExplicit;

  /// Description for the explicit content metadata switch
  ///
  /// In en, this message translates to:
  /// **'Mark this track as containing explicit content'**
  String get editMetadataFieldExplicitHint;

  /// Displayed value when a track is marked explicit
  ///
  /// In en, this message translates to:
  /// **'Explicit'**
  String get metadataExplicitValue;

  /// Label for the release barcode metadata field
  ///
  /// In en, this message translates to:
  /// **'UPC / Barcode'**
  String get editMetadataFieldUpc;

  /// Hint for the release barcode metadata field
  ///
  /// In en, this message translates to:
  /// **'Numeric UPC, EAN, or GTIN'**
  String get editMetadataFieldUpcHint;

  /// Expandable section label for advanced metadata fields
  ///
  /// In en, this message translates to:
  /// **'Advanced'**
  String get editMetadataAdvanced;

  /// Filter option - items missing track number
  ///
  /// In en, this message translates to:
  /// **'Missing track number'**
  String get libraryFilterMetadataMissingTrackNumber;

  /// Filter option - items missing disc number
  ///
  /// In en, this message translates to:
  /// **'Missing disc number'**
  String get libraryFilterMetadataMissingDiscNumber;

  /// Filter option - items missing artist
  ///
  /// In en, this message translates to:
  /// **'Missing artist'**
  String get libraryFilterMetadataMissingArtist;

  /// Filter option - items with an invalid ISRC format
  ///
  /// In en, this message translates to:
  /// **'Incorrect ISRC format'**
  String get libraryFilterMetadataIncorrectIsrcFormat;

  /// Filter option - items without any ISRC tag
  ///
  /// In en, this message translates to:
  /// **'Missing ISRC'**
  String get libraryFilterMetadataMissingIsrc;

  /// Filter option - items missing record label
  ///
  /// In en, this message translates to:
  /// **'Missing label'**
  String get libraryFilterMetadataMissingLabel;

  /// Confirmation message for deleting selected playlists
  ///
  /// In en, this message translates to:
  /// **'Delete {count} {count, plural, =1{playlist} other{playlists}}?'**
  String collectionDeletePlaylistsMessage(int count);

  /// Snackbar after deleting selected playlists
  ///
  /// In en, this message translates to:
  /// **'{count} {count, plural, =1{playlist} other{playlists}} deleted'**
  String collectionPlaylistsDeleted(int count);

  /// Snackbar after adding multiple tracks to a playlist
  ///
  /// In en, this message translates to:
  /// **'Added {count} {count, plural, =1{track} other{tracks}} to {playlistName}'**
  String collectionAddedTracksToPlaylist(int count, String playlistName);

  /// Snackbar after adding multiple tracks to a playlist when some were already present
  ///
  /// In en, this message translates to:
  /// **'Added {count} {count, plural, =1{track} other{tracks}} to {playlistName} ({alreadyCount} already in playlist)'**
  String collectionAddedTracksToPlaylistWithExisting(
    int count,
    String playlistName,
    int alreadyCount,
  );

  /// Generic item count label
  ///
  /// In en, this message translates to:
  /// **'{count} {count, plural, =1{item} other{items}}'**
  String itemCount(int count);

  /// Snackbar summary after batch metadata re-enrichment finishes with failures
  ///
  /// In en, this message translates to:
  /// **'Metadata re-enriched successfully ({successCount}/{total}) - Failed: {failedCount}'**
  String trackReEnrichSuccessWithFailures(
    int successCount,
    int total,
    int failedCount,
  );

  /// Button label for deleting selected tracks
  ///
  /// In en, this message translates to:
  /// **'Delete {count} {count, plural, =1{track} other{tracks}}'**
  String selectionDeleteTracksCount(int count);

  /// Queue status while downloading with speed
  ///
  /// In en, this message translates to:
  /// **'Downloading - {speed} MB/s'**
  String queueDownloadSpeedStatus(String speed);

  /// Queue status before download progress is available
  ///
  /// In en, this message translates to:
  /// **'Starting...'**
  String get queueDownloadStarting;

  /// Queue status while the download provider's session is being checked during preparation (preparationStage 'checking_session'). This is about the provider session, not about locating a finished file.
  ///
  /// In en, this message translates to:
  /// **'Checking download session...'**
  String get queueCheckingDownloadSession;

  /// No description provided for @queueResolvingDownloadMetadata.
  ///
  /// In en, this message translates to:
  /// **'Resolving track metadata...'**
  String get queueResolvingDownloadMetadata;

  /// No description provided for @queueResolvingDownloadStream.
  ///
  /// In en, this message translates to:
  /// **'Preparing audio stream...'**
  String get queueResolvingDownloadStream;

  /// No description provided for @queueWaitingForVerification.
  ///
  /// In en, this message translates to:
  /// **'Waiting for verification...'**
  String get queueWaitingForVerification;

  /// No description provided for @queueResumingAfterVerification.
  ///
  /// In en, this message translates to:
  /// **'Resuming after verification...'**
  String get queueResumingAfterVerification;

  /// Accessibility label for selecting a track
  ///
  /// In en, this message translates to:
  /// **'Select track'**
  String get a11ySelectTrack;

  /// Accessibility label for deselecting a track
  ///
  /// In en, this message translates to:
  /// **'Deselect track'**
  String get a11yDeselectTrack;

  /// Accessibility label for playing a local library track
  ///
  /// In en, this message translates to:
  /// **'Play {trackName} by {artistName}'**
  String a11yPlayTrackByArtist(String trackName, String artistName);

  /// Store extension result count
  ///
  /// In en, this message translates to:
  /// **'{count} {count, plural, =1{extension} other{extensions}}'**
  String storeExtensionsCount(int count);

  /// Store compatibility badge for minimum app version
  ///
  /// In en, this message translates to:
  /// **'Requires v{version}+'**
  String storeRequiresVersion(String version);

  /// Header for log issue analysis summary
  ///
  /// In en, this message translates to:
  /// **'Issue Summary'**
  String get logIssueSummary;

  /// Total error count in log issue analysis
  ///
  /// In en, this message translates to:
  /// **'Total errors: {count}'**
  String logTotalErrors(int count);

  /// Affected domains in log issue analysis
  ///
  /// In en, this message translates to:
  /// **'Affected: {domains}'**
  String logAffectedDomains(String domains);

  /// Library scan status when a scan was cancelled
  ///
  /// In en, this message translates to:
  /// **'Scan cancelled'**
  String get libraryScanCancelled;

  /// Library scan status subtitle after cancellation
  ///
  /// In en, this message translates to:
  /// **'You can retry the scan when ready.'**
  String get libraryScanCancelledSubtitle;

  /// Library count note for downloaded history items excluded from the local list
  ///
  /// In en, this message translates to:
  /// **'{count} from Downloads history (excluded from list)'**
  String libraryDownloadsHistoryExcluded(int count);

  /// Setting title for Android native download worker
  ///
  /// In en, this message translates to:
  /// **'Native download worker'**
  String get downloadNativeWorker;

  /// Setting subtitle for Android native download worker
  ///
  /// In en, this message translates to:
  /// **'Android background service for extension downloads'**
  String get downloadNativeWorkerSubtitle;

  /// Extension detail section header for service status
  ///
  /// In en, this message translates to:
  /// **'Service Status'**
  String get extensionServiceStatus;

  /// Extension capability label for service health checks
  ///
  /// In en, this message translates to:
  /// **'Service health'**
  String get extensionServiceHealth;

  /// Extension service health check count
  ///
  /// In en, this message translates to:
  /// **'{count} {count, plural, =1{check} other{checks}} configured'**
  String extensionHealthChecksConfigured(int count);

  /// Hint for an OAuth login link field before connecting Spotify
  ///
  /// In en, this message translates to:
  /// **'Tap Connect to Spotify to fill this field.'**
  String get extensionOauthConnectHint;

  /// Timestamp for the latest extension service health check
  ///
  /// In en, this message translates to:
  /// **'Last checked {time}'**
  String extensionLastChecked(String time);

  /// Tooltip for refreshing extension service health status
  ///
  /// In en, this message translates to:
  /// **'Refresh status'**
  String get extensionRefreshStatus;

  /// Extension detail section title for custom URL handling
  ///
  /// In en, this message translates to:
  /// **'Custom URL Handling'**
  String get extensionCustomUrlHandling;

  /// Extension detail subtitle for custom URL handling
  ///
  /// In en, this message translates to:
  /// **'This extension can handle links from these sites'**
  String get extensionCustomUrlHandlingSubtitle;

  /// Extension detail hint explaining share-to-app URL handling
  ///
  /// In en, this message translates to:
  /// **'Share links from these sites to Toadplayer and this extension will handle them.'**
  String get extensionCustomUrlHandlingShareHint;

  /// Count of settings exposed by an extension quality option
  ///
  /// In en, this message translates to:
  /// **'{count} {count, plural, =1{setting} other{settings}}'**
  String extensionSettingsCount(int count);

  /// Extension service health status - online
  ///
  /// In en, this message translates to:
  /// **'Online'**
  String get extensionHealthOnline;

  /// Extension service health status - degraded
  ///
  /// In en, this message translates to:
  /// **'Degraded'**
  String get extensionHealthDegraded;

  /// Extension service health status - offline
  ///
  /// In en, this message translates to:
  /// **'Offline'**
  String get extensionHealthOffline;

  /// Extension service health status - not configured
  ///
  /// In en, this message translates to:
  /// **'Not configured'**
  String get extensionHealthNotConfigured;

  /// Extension service health status - unknown
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get extensionHealthUnknown;

  /// Label for a required extension service health check
  ///
  /// In en, this message translates to:
  /// **'required'**
  String get extensionHealthRequired;

  /// Value shown when an extension setting has no value
  ///
  /// In en, this message translates to:
  /// **'Not set'**
  String get extensionSettingNotSet;

  /// Fallback error when an extension action fails without details
  ///
  /// In en, this message translates to:
  /// **'Action failed'**
  String get extensionActionFailed;

  /// Hint for editing an extension setting value
  ///
  /// In en, this message translates to:
  /// **'Enter value'**
  String get extensionEnterValue;

  /// Tooltip for online extension service
  ///
  /// In en, this message translates to:
  /// **'Service online'**
  String get extensionHealthServiceOnline;

  /// Tooltip for degraded extension service
  ///
  /// In en, this message translates to:
  /// **'Service degraded'**
  String get extensionHealthServiceDegraded;

  /// Tooltip for offline extension service
  ///
  /// In en, this message translates to:
  /// **'Service offline'**
  String get extensionHealthServiceOffline;

  /// Tooltip for unknown extension service health
  ///
  /// In en, this message translates to:
  /// **'Service status unknown'**
  String get extensionHealthServiceUnknown;

  /// Audio channel layout label - stereo
  ///
  /// In en, this message translates to:
  /// **'Stereo'**
  String get audioAnalysisStereo;

  /// Audio channel layout label - mono
  ///
  /// In en, this message translates to:
  /// **'Mono'**
  String get audioAnalysisMono;

  /// Button label to open a track in a named music service
  ///
  /// In en, this message translates to:
  /// **'Open in {serviceName}'**
  String trackOpenInService(String serviceName);

  /// Lyrics source label for embedded lyrics
  ///
  /// In en, this message translates to:
  /// **'Embedded'**
  String get trackLyricsEmbeddedSource;

  /// Fallback album name when metadata is missing
  ///
  /// In en, this message translates to:
  /// **'Unknown Album'**
  String get unknownAlbum;

  /// Fallback artist name when metadata is missing
  ///
  /// In en, this message translates to:
  /// **'Unknown Artist'**
  String get unknownArtist;

  /// Audio permission type label
  ///
  /// In en, this message translates to:
  /// **'Audio'**
  String get permissionAudio;

  /// Storage permission type label
  ///
  /// In en, this message translates to:
  /// **'Storage'**
  String get permissionStorage;

  /// Notification permission type label
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get permissionNotification;

  /// Error when the selected folder is invalid
  ///
  /// In en, this message translates to:
  /// **'Invalid folder selected'**
  String get errorInvalidFolderSelected;

  /// Store detail value when any app version is accepted
  ///
  /// In en, this message translates to:
  /// **'Any'**
  String get storeAnyVersion;

  /// Store extension category - metadata
  ///
  /// In en, this message translates to:
  /// **'Metadata'**
  String get storeCategoryMetadata;

  /// Store extension category - download
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get storeCategoryDownload;

  /// Store extension category - utility
  ///
  /// In en, this message translates to:
  /// **'Utility'**
  String get storeCategoryUtility;

  /// Store extension category - lyrics
  ///
  /// In en, this message translates to:
  /// **'Lyrics'**
  String get storeCategoryLyrics;

  /// Store extension category - integration
  ///
  /// In en, this message translates to:
  /// **'Integration'**
  String get storeCategoryIntegration;

  /// Section header for all artist releases
  ///
  /// In en, this message translates to:
  /// **'Releases'**
  String get artistReleases;

  /// Button to clear selected fields for auto-fill
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get editMetadataSelectNone;

  /// Button to retry every failed download in the queue
  ///
  /// In en, this message translates to:
  /// **'Retry {count} failed'**
  String queueRetryAllFailed(int count);

  /// Settings switch title for storing completed downloads in history
  ///
  /// In en, this message translates to:
  /// **'Save download history'**
  String get settingsSaveDownloadHistory;

  /// Settings switch subtitle for storing completed downloads in history
  ///
  /// In en, this message translates to:
  /// **'Keep completed downloads in history and library views'**
  String get settingsSaveDownloadHistorySubtitle;

  /// Confirmation dialog title shown before disabling download history
  ///
  /// In en, this message translates to:
  /// **'Turn off download history?'**
  String get dialogDisableHistoryTitle;

  /// Confirmation dialog message shown before disabling download history
  ///
  /// In en, this message translates to:
  /// **'Existing history will be cleared. Downloaded files will not be deleted.'**
  String get dialogDisableHistoryMessage;

  /// Confirmation action to disable download history and clear existing entries
  ///
  /// In en, this message translates to:
  /// **'Turn off and clear'**
  String get dialogDisableAndClear;

  /// Title and tooltip for finding the current collection in other services
  ///
  /// In en, this message translates to:
  /// **'Open in Other Services'**
  String get openInOtherServices;

  /// Empty state when no extensions can be searched for cross-service links
  ///
  /// In en, this message translates to:
  /// **'No other compatible services'**
  String get shareSheetNoExtensions;

  /// Cross-service share sheet row subtitle when a service has no match
  ///
  /// In en, this message translates to:
  /// **'Not found'**
  String get shareSheetNotFound;

  /// Tooltip for copying a cross-service link
  ///
  /// In en, this message translates to:
  /// **'Copy Link'**
  String get shareSheetCopyLink;

  /// Snackbar after copying a cross-service link
  ///
  /// In en, this message translates to:
  /// **'{service} link copied'**
  String shareSheetLinkCopied(Object service);

  /// Section header for playback settings in library settings
  ///
  /// In en, this message translates to:
  /// **'Playback'**
  String get libraryPlayback;

  /// Setting option to use an external music player
  ///
  /// In en, this message translates to:
  /// **'External player'**
  String get libraryExternalPlayer;

  /// Subtitle for external player option
  ///
  /// In en, this message translates to:
  /// **'Open tracks in another music app on your device'**
  String get libraryExternalPlayerSubtitle;

  /// Setting option to use the built-in preview player
  ///
  /// In en, this message translates to:
  /// **'Built-in player'**
  String get libraryBuiltInPreviewPlayer;

  /// Subtitle for built-in preview player option
  ///
  /// In en, this message translates to:
  /// **'Play your music right inside Toadplayer'**
  String get libraryBuiltInPreviewPlayerSubtitle;

  /// Title for the now playing screen
  ///
  /// In en, this message translates to:
  /// **'Now Playing'**
  String get nowPlayingTitle;

  /// Empty state when no track is currently playing
  ///
  /// In en, this message translates to:
  /// **'Nothing is playing'**
  String get nowPlayingNothingPlaying;

  /// Tooltip for minimizing the now playing screen
  ///
  /// In en, this message translates to:
  /// **'Minimize'**
  String get nowPlayingMinimize;

  /// Title for the playback queue sheet
  ///
  /// In en, this message translates to:
  /// **'Up next'**
  String get nowPlayingUpNext;

  /// No description provided for @nowPlayingAudioOutput.
  ///
  /// In en, this message translates to:
  /// **'Audio Output'**
  String get nowPlayingAudioOutput;

  /// No description provided for @nowPlayingWrittenBy.
  ///
  /// In en, this message translates to:
  /// **'Written by: {writers}'**
  String nowPlayingWrittenBy(String writers);

  /// No description provided for @nowPlayingLyricsProvider.
  ///
  /// In en, this message translates to:
  /// **'Lyrics: {provider}'**
  String nowPlayingLyricsProvider(String provider);

  /// No description provided for @concertGetTickets.
  ///
  /// In en, this message translates to:
  /// **'Get Tickets'**
  String get concertGetTickets;

  /// No description provided for @concertSetList.
  ///
  /// In en, this message translates to:
  /// **'Concert Set List'**
  String get concertSetList;

  /// No description provided for @concertSetListButton.
  ///
  /// In en, this message translates to:
  /// **'Set List'**
  String get concertSetListButton;

  /// No description provided for @concertAddToCalendar.
  ///
  /// In en, this message translates to:
  /// **'Add to Calendar'**
  String get concertAddToCalendar;

  /// No description provided for @concertOpenMaps.
  ///
  /// In en, this message translates to:
  /// **'Open Maps'**
  String get concertOpenMaps;

  /// No description provided for @concertDetailsUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Concert details are currently unavailable.'**
  String get concertDetailsUnavailable;

  /// No description provided for @concertCalendarUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Unable to open the calendar.'**
  String get concertCalendarUnavailable;

  /// No description provided for @nowPlayingAudioOutputUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Unable to open audio output settings.'**
  String get nowPlayingAudioOutputUnavailable;

  /// Tooltip for the previous-track playback control
  ///
  /// In en, this message translates to:
  /// **'Previous track'**
  String get nowPlayingPreviousTrack;

  /// Tooltip for the next-track playback control
  ///
  /// In en, this message translates to:
  /// **'Next track'**
  String get nowPlayingNextTrack;

  /// Menu item and section title for track metadata details
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get nowPlayingDetails;

  /// Menu item and sheet title for the playback sleep timer
  ///
  /// In en, this message translates to:
  /// **'Sleep timer'**
  String get nowPlayingSleepTimer;

  /// Active sleep timer deadline shown in the player menu
  ///
  /// In en, this message translates to:
  /// **'Ends at {time}'**
  String nowPlayingSleepTimerActive(String time);

  /// Duration choice for the playback sleep timer
  ///
  /// In en, this message translates to:
  /// **'{minutes, plural, =1{1 minute} other{{minutes} minutes}}'**
  String nowPlayingSleepTimerMinutes(int minutes);

  /// Action to cancel the active playback sleep timer
  ///
  /// In en, this message translates to:
  /// **'Turn off sleep timer'**
  String get nowPlayingSleepTimerOff;

  /// Sleep timer option that stops playback when the current track ends
  ///
  /// In en, this message translates to:
  /// **'Stop after current track'**
  String get nowPlayingSleepTimerStopAfterTrack;

  /// Sleep timer option to enter a custom duration
  ///
  /// In en, this message translates to:
  /// **'Custom…'**
  String get nowPlayingSleepTimerCustom;

  /// Custom sleep timer confirmation label
  ///
  /// In en, this message translates to:
  /// **'{minutes} min'**
  String nowPlayingSleepTimerMinutesCustom(int minutes);

  /// Menu item and sheet title for playback speed control
  ///
  /// In en, this message translates to:
  /// **'Playback speed'**
  String get nowPlayingPlaybackSpeed;

  /// Label for the 1.0x normal-speed preset
  ///
  /// In en, this message translates to:
  /// **'Normal'**
  String get nowPlayingPlaybackSpeedNormal;

  /// Menu item and sheet title for A–B section repeat
  ///
  /// In en, this message translates to:
  /// **'A–B repeat'**
  String get nowPlayingAbRepeat;

  /// Action marking the current position as the A–B loop start
  ///
  /// In en, this message translates to:
  /// **'Set start point (A)'**
  String get nowPlayingAbRepeatSetStart;

  /// Action marking the current position as the A–B loop end
  ///
  /// In en, this message translates to:
  /// **'Set end point (B)'**
  String get nowPlayingAbRepeatSetEnd;

  /// Action clearing the armed A–B loop
  ///
  /// In en, this message translates to:
  /// **'Clear loop'**
  String get nowPlayingAbRepeatClear;

  /// Subtitle shown when the A–B loop is armed
  ///
  /// In en, this message translates to:
  /// **'On'**
  String get nowPlayingAbRepeatOn;

  /// Confirmation after setting the playback sleep timer
  ///
  /// In en, this message translates to:
  /// **'Sleep timer set for {duration}'**
  String nowPlayingSleepTimerSet(String duration);

  /// Confirmation after cancelling the playback sleep timer
  ///
  /// In en, this message translates to:
  /// **'Sleep timer turned off'**
  String get nowPlayingSleepTimerCancelled;

  /// Menu item to open the current track in an external player
  ///
  /// In en, this message translates to:
  /// **'Open in external player'**
  String get nowPlayingOpenInExternalPlayer;

  /// Now Playing menu item that removes the volume slider from the player
  ///
  /// In en, this message translates to:
  /// **'Hide volume'**
  String get nowPlayingHideVolume;

  /// Now Playing menu item that brings the volume slider back to the player
  ///
  /// In en, this message translates to:
  /// **'Show volume'**
  String get nowPlayingShowVolume;

  /// Tab label for the player view
  ///
  /// In en, this message translates to:
  /// **'Player'**
  String get nowPlayingTabPlayer;

  /// Tab label for the lyrics view
  ///
  /// In en, this message translates to:
  /// **'Lyrics'**
  String get nowPlayingTabLyrics;

  /// Empty state when the playing file has no embedded lyrics
  ///
  /// In en, this message translates to:
  /// **'No lyrics in this file'**
  String get nowPlayingNoLyrics;

  /// Accessibility label for the three-dot countdown during an instrumental break before lyrics resume
  ///
  /// In en, this message translates to:
  /// **'Instrumental'**
  String get nowPlayingInstrumental;

  /// Tooltip for the player menu that shows or hides existing lyric pronunciation and translation
  ///
  /// In en, this message translates to:
  /// **'Lyrics language options'**
  String get nowPlayingLyricsLanguageOptions;

  /// No description provided for @nowPlayingHidePronunciation.
  ///
  /// In en, this message translates to:
  /// **'Hide Pronunciation'**
  String get nowPlayingHidePronunciation;

  /// No description provided for @nowPlayingShowPronunciation.
  ///
  /// In en, this message translates to:
  /// **'Show Pronunciation'**
  String get nowPlayingShowPronunciation;

  /// No description provided for @nowPlayingHideTranslation.
  ///
  /// In en, this message translates to:
  /// **'Hide Translation'**
  String get nowPlayingHideTranslation;

  /// No description provided for @nowPlayingShowTranslation.
  ///
  /// In en, this message translates to:
  /// **'Show Translation'**
  String get nowPlayingShowTranslation;

  /// Button in the player's empty lyrics state that looks up lyrics from the enabled lyrics providers
  ///
  /// In en, this message translates to:
  /// **'Search online'**
  String get nowPlayingSearchLyricsOnline;

  /// Empty state after an online lyrics search for the playing track found nothing
  ///
  /// In en, this message translates to:
  /// **'No lyrics found online'**
  String get nowPlayingNoLyricsOnline;

  /// Player lyrics menu action that translates the current lyrics with the user's AI provider into the language chosen in settings; language is that language's own name
  ///
  /// In en, this message translates to:
  /// **'Translate to {language}'**
  String nowPlayingTranslateLyricsTo(String language);

  /// Player lyrics menu action that opens a sheet to translate the current lyrics into a language other than the one in settings
  ///
  /// In en, this message translates to:
  /// **'Other Language…'**
  String get nowPlayingTranslateOtherLanguage;

  /// Player lyrics menu action that stops an AI lyrics translation in progress
  ///
  /// In en, this message translates to:
  /// **'Cancel Translation'**
  String get nowPlayingCancelTranslation;

  /// Tooltip and screen reader label of the lyrics menu button while an AI translation runs
  ///
  /// In en, this message translates to:
  /// **'Translating lyrics, {percent}%'**
  String nowPlayingTranslatingLyrics(int percent);

  /// Title of the sheet that picks the language to translate the current lyrics into
  ///
  /// In en, this message translates to:
  /// **'Translate Into'**
  String get lyricsTranslateSheetTitle;

  /// Notice under the translate sheet title naming the AI provider that receives the lyrics
  ///
  /// In en, this message translates to:
  /// **'The lyrics are sent to {provider}.'**
  String lyricsTranslateSheetSubtitle(String provider);

  /// Snackbar after an AI translation that left some lines untranslated
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 line} other{{count} lines}} could not be translated'**
  String lyricsTranslatePartial(int count);

  /// Snackbar after an AI translation returned every line unchanged; language is the target language's own name
  ///
  /// In en, this message translates to:
  /// **'These lyrics are already in {language}'**
  String lyricsTranslateAlreadyIn(String language);

  /// Lyrics settings row and page title for translating lyrics with the user's own AI provider
  ///
  /// In en, this message translates to:
  /// **'AI Translation'**
  String get lyricsAiTranslation;

  /// Subtitle of the AI Translation settings row before a provider is configured
  ///
  /// In en, this message translates to:
  /// **'Not set up'**
  String get lyricsAiTranslationOff;

  /// Privacy notice at the top of the AI translation settings page
  ///
  /// In en, this message translates to:
  /// **'Lyrics you translate are sent to the provider you choose, using your own API key. The provider\'s terms and pricing apply. Translations are saved on this device and never change your lyric files.'**
  String get lyricsAiTranslationNotice;

  /// AI translation settings section for the provider, key and model
  ///
  /// In en, this message translates to:
  /// **'Provider'**
  String get lyricsAiSectionProvider;

  /// AI translation settings section for the target language and behavior
  ///
  /// In en, this message translates to:
  /// **'Translation'**
  String get lyricsAiSectionTranslation;

  /// AI translation setting that picks the AI service
  ///
  /// In en, this message translates to:
  /// **'Provider'**
  String get lyricsAiProvider;

  /// AI provider choice for a self-hosted or other OpenAI-compatible server
  ///
  /// In en, this message translates to:
  /// **'Custom Server'**
  String get lyricsAiProviderCustom;

  /// Subtitle of the custom AI provider choice
  ///
  /// In en, this message translates to:
  /// **'Any OpenAI-compatible server, such as Ollama or LM Studio'**
  String get lyricsAiProviderCustomSubtitle;

  /// AI translation setting for the address of a custom OpenAI-compatible server
  ///
  /// In en, this message translates to:
  /// **'Server URL'**
  String get lyricsAiBaseUrl;

  /// Validation error for the custom AI server URL
  ///
  /// In en, this message translates to:
  /// **'Enter a URL that starts with http:// or https://'**
  String get lyricsAiBaseUrlInvalid;

  /// Subtitle of an AI translation setting that has no value yet
  ///
  /// In en, this message translates to:
  /// **'Not set'**
  String get lyricsAiNotSet;

  /// AI translation setting for the user's API key
  ///
  /// In en, this message translates to:
  /// **'API Key'**
  String get lyricsAiApiKey;

  /// Subtitle of the API key setting for a custom server without a key
  ///
  /// In en, this message translates to:
  /// **'Optional for local servers'**
  String get lyricsAiApiKeyOptional;

  /// Subtitle of the API key setting showing only its last characters
  ///
  /// In en, this message translates to:
  /// **'Saved, ends in {suffix}'**
  String lyricsAiApiKeySaved(String suffix);

  /// Explanation in the API key sheet
  ///
  /// In en, this message translates to:
  /// **'Kept in this device\'s secure storage and only sent to {provider}.'**
  String lyricsAiApiKeyDescription(String provider);

  /// AI translation setting for the model id
  ///
  /// In en, this message translates to:
  /// **'Model'**
  String get lyricsAiModel;

  /// Subtitle of the model setting when the provider's default model is used
  ///
  /// In en, this message translates to:
  /// **'Default ({model})'**
  String lyricsAiModelDefault(String model);

  /// Hint of the model id text field
  ///
  /// In en, this message translates to:
  /// **'Model ID'**
  String get lyricsAiModelHint;

  /// Action in the model sheet that returns to the provider's default model
  ///
  /// In en, this message translates to:
  /// **'Use Default'**
  String get lyricsAiModelUseDefault;

  /// Button in the model sheet that lists the models the provider offers
  ///
  /// In en, this message translates to:
  /// **'Load Models'**
  String get lyricsAiModelLoad;

  /// Shown in the model sheet when the provider's model list is empty
  ///
  /// In en, this message translates to:
  /// **'The provider listed no models'**
  String get lyricsAiModelsEmpty;

  /// AI translation settings action that translates one line to check the key and model
  ///
  /// In en, this message translates to:
  /// **'Test Connection'**
  String get lyricsAiTestConnection;

  /// Subtitle of the test connection action
  ///
  /// In en, this message translates to:
  /// **'Translates one line to check the key and model'**
  String get lyricsAiTestConnectionSubtitle;

  /// Snackbar after a successful AI translation connection test
  ///
  /// In en, this message translates to:
  /// **'The connection works'**
  String get lyricsAiTestSuccess;

  /// AI translation setting for the target language
  ///
  /// In en, this message translates to:
  /// **'Translate Into'**
  String get lyricsAiTargetLanguage;

  /// Target language choice that follows the app language
  ///
  /// In en, this message translates to:
  /// **'App language ({language})'**
  String lyricsAiTargetLanguageApp(String language);

  /// AI translation setting for optional guidance added to the translation request
  ///
  /// In en, this message translates to:
  /// **'Extra Instruction'**
  String get lyricsAiInstruction;

  /// Subtitle of the extra instruction setting when it is empty
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get lyricsAiInstructionNone;

  /// Hint of the extra instruction text field
  ///
  /// In en, this message translates to:
  /// **'For example: keep the rhymes where you can'**
  String get lyricsAiInstructionHint;

  /// AI translation switch that translates lyrics as they open
  ///
  /// In en, this message translates to:
  /// **'Translate Automatically'**
  String get lyricsAiAutoTranslate;

  /// Subtitle of the automatic AI translation switch
  ///
  /// In en, this message translates to:
  /// **'Translates synced lyrics that have no translation when you open them, using your provider\'s quota'**
  String get lyricsAiAutoTranslateSubtitle;

  /// Select fast line translation or slower word-synced translation
  ///
  /// In en, this message translates to:
  /// **'Translation Mode'**
  String get lyricsAiMode;

  /// No description provided for @lyricsAiModeFast.
  ///
  /// In en, this message translates to:
  /// **'Fast'**
  String get lyricsAiModeFast;

  /// No description provided for @lyricsAiModeFastDescription.
  ///
  /// In en, this message translates to:
  /// **'Translates per line without word timing. Uses less time and output.'**
  String get lyricsAiModeFastDescription;

  /// No description provided for @lyricsAiModeSynced.
  ///
  /// In en, this message translates to:
  /// **'Synced'**
  String get lyricsAiModeSynced;

  /// No description provided for @lyricsAiModeSyncedDescription.
  ///
  /// In en, this message translates to:
  /// **'Aligns translations and romanization to sung words and phrases. Takes longer and needs word-timed lyrics.'**
  String get lyricsAiModeSyncedDescription;

  /// AI translation switch that also asks for romanized lyrics
  ///
  /// In en, this message translates to:
  /// **'Add Romanization'**
  String get lyricsAiRomanize;

  /// Subtitle of the AI romanization switch
  ///
  /// In en, this message translates to:
  /// **'Shows how lyrics in other alphabets are sung, such as romaji for Japanese or pinyin for Chinese'**
  String get lyricsAiRomanizeSubtitle;

  /// AI translation settings action that deletes saved translations
  ///
  /// In en, this message translates to:
  /// **'Clear Saved Translations'**
  String get lyricsAiClearCache;

  /// Subtitle of the clear saved translations action
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No saved translations} =1{1 song} other{{count} songs}}'**
  String lyricsAiClearCacheSubtitle(int count);

  /// Title of the confirmation before deleting saved AI translations
  ///
  /// In en, this message translates to:
  /// **'Clear saved translations?'**
  String get lyricsAiClearCacheConfirm;

  /// Message of the confirmation before deleting saved AI translations
  ///
  /// In en, this message translates to:
  /// **'Songs will need to be translated again, which uses your provider\'s quota.'**
  String get lyricsAiClearCacheMessage;

  /// Snackbar after deleting saved AI translations
  ///
  /// In en, this message translates to:
  /// **'Saved translations cleared'**
  String get lyricsAiClearCacheDone;

  /// AI translation error when no provider, key or model is set
  ///
  /// In en, this message translates to:
  /// **'Set up AI translation in Lyrics settings first'**
  String get lyricsAiErrorNotConfigured;

  /// AI translation error for a rejected API key
  ///
  /// In en, this message translates to:
  /// **'The provider did not accept the API key'**
  String get lyricsAiErrorInvalidKey;

  /// AI translation error when the provider rate limits the requests
  ///
  /// In en, this message translates to:
  /// **'The provider is limiting requests. Try again in a moment'**
  String get lyricsAiErrorRateLimited;

  /// AI translation error for an exhausted quota or billing problem
  ///
  /// In en, this message translates to:
  /// **'Your provider account is out of credit or quota'**
  String get lyricsAiErrorQuota;

  /// AI translation error when the provider cannot be reached
  ///
  /// In en, this message translates to:
  /// **'Could not reach the provider. Check your connection'**
  String get lyricsAiErrorNetwork;

  /// AI translation error when a request times out
  ///
  /// In en, this message translates to:
  /// **'The provider took too long to answer'**
  String get lyricsAiErrorTimeout;

  /// AI translation error for an unknown model id
  ///
  /// In en, this message translates to:
  /// **'The provider does not offer this model'**
  String get lyricsAiErrorModelNotFound;

  /// AI translation error when the model refuses the request
  ///
  /// In en, this message translates to:
  /// **'The model declined to translate these lyrics'**
  String get lyricsAiErrorRefused;

  /// AI translation error when the reply hit the output limit
  ///
  /// In en, this message translates to:
  /// **'The model\'s answer was cut off. Try another model'**
  String get lyricsAiErrorTruncated;

  /// AI translation error when the reply is not the expected JSON
  ///
  /// In en, this message translates to:
  /// **'The model\'s answer could not be read. Try another model'**
  String get lyricsAiErrorBadResponse;

  /// AI translation error for other provider failures
  ///
  /// In en, this message translates to:
  /// **'The provider had a problem. Try again later'**
  String get lyricsAiErrorService;

  /// AI translation error when the lyrics have no translatable lines
  ///
  /// In en, this message translates to:
  /// **'These lyrics have nothing to translate'**
  String get lyricsAiErrorNoLyrics;

  /// Snackbar when shuffle library is requested but library has no tracks
  ///
  /// In en, this message translates to:
  /// **'Your library is empty'**
  String get nowPlayingLibraryEmpty;

  /// Snackbar when shuffling the library fails
  ///
  /// In en, this message translates to:
  /// **'Could not shuffle library: {error}'**
  String nowPlayingShuffleLibraryFailed(String error);

  /// Tooltip when shuffle mode is enabled
  ///
  /// In en, this message translates to:
  /// **'Shuffle on'**
  String get nowPlayingShuffleOn;

  /// Tooltip when shuffle mode is disabled
  ///
  /// In en, this message translates to:
  /// **'Play in order'**
  String get nowPlayingPlayInOrder;

  /// Button label to shuffle and play the entire local library
  ///
  /// In en, this message translates to:
  /// **'Shuffle library'**
  String get nowPlayingShuffleLibrary;

  /// Empty state when the playback queue has no items
  ///
  /// In en, this message translates to:
  /// **'Queue is empty'**
  String get nowPlayingQueueEmpty;

  /// Empty state when track metadata cannot be loaded
  ///
  /// In en, this message translates to:
  /// **'No metadata available'**
  String get nowPlayingNoMetadata;

  /// Toadplayer Link: title and button tooltip of the phone sheet that controls the paired desktop app
  ///
  /// In en, this message translates to:
  /// **'Devices'**
  String get linkDevicesTitle;

  /// Toadplayer Link: the phone is connected to the paired desktop
  ///
  /// In en, this message translates to:
  /// **'Connected'**
  String get linkConnectionConnected;

  /// Toadplayer Link: the phone is connecting to the paired desktop
  ///
  /// In en, this message translates to:
  /// **'Connecting'**
  String get linkConnectionConnecting;

  /// Toadplayer Link: the paired desktop cannot be reached
  ///
  /// In en, this message translates to:
  /// **'Not connected'**
  String get linkConnectionDisconnected;

  /// Toadplayer Link: the phone's own row in the Devices sheet; choosing it plays music here again
  ///
  /// In en, this message translates to:
  /// **'This phone'**
  String get linkThisPhone;

  /// Toadplayer Link: shown in the player while the paired desktop plays in the phone's place
  ///
  /// In en, this message translates to:
  /// **'Playing on {name}'**
  String linkPlayingOn(String name);

  /// Toadplayer Link: heading of the paired desktop's download queue
  ///
  /// In en, this message translates to:
  /// **'Downloads on {name}'**
  String linkDesktopDownloads(String name);

  /// Toadplayer Link: the paired desktop took over the phone's queue
  ///
  /// In en, this message translates to:
  /// **'Playing on {name}'**
  String linkHandoffStarted(String name);

  /// Toadplayer Link: the phone uploads the current song, which the paired desktop lacks, before it plays there
  ///
  /// In en, this message translates to:
  /// **'Sending this song to {name}...'**
  String linkHandoffSending(String name);

  /// Toadplayer Link: the paired desktop took over the phone's queue but lacks some tracks, listed by title
  ///
  /// In en, this message translates to:
  /// **'Playing on {name}. Not found there: {titles}'**
  String linkHandoffMissing(String name, String titles);

  /// Toadplayer Link: the paired desktop has none of the tracks in the phone's queue
  ///
  /// In en, this message translates to:
  /// **'{name} has none of these tracks'**
  String linkHandoffNotFound(String name);

  /// Toadplayer Link: Play on desktop needs a track playing on the phone
  ///
  /// In en, this message translates to:
  /// **'Nothing is playing on this phone'**
  String get linkHandoffNothingPlaying;

  /// Toadplayer Link: tracks of the desktop queue the phone could not play, listed by title
  ///
  /// In en, this message translates to:
  /// **'Not on this phone: {titles}'**
  String linkContinueSkipped(String titles);

  /// Toadplayer Link: the phone has none of the tracks of the desktop queue
  ///
  /// In en, this message translates to:
  /// **'None of these tracks are on this phone'**
  String get linkContinueNotFound;

  /// Toadplayer Link: a request to the paired desktop failed
  ///
  /// In en, this message translates to:
  /// **'Could not reach {name}'**
  String linkRequestFailed(String name);

  /// Toadplayer Link: queues a track, album or link for download in the paired desktop app
  ///
  /// In en, this message translates to:
  /// **'Download on {name}'**
  String linkDownloadOnDesktop(String name);

  /// Toadplayer Link: the paired desktop queued downloads
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Queued 1 track on {name}} other{Queued {count} tracks on {name}}}'**
  String linkDownloadQueuedOnDesktop(int count, String name);

  /// Toadplayer Link: opens a shared link in the paired desktop app
  ///
  /// In en, this message translates to:
  /// **'Open on {name}'**
  String linkOpenOnDesktop(String name);

  /// Toadplayer Link: the paired desktop opened the link
  ///
  /// In en, this message translates to:
  /// **'Opened on {name}'**
  String linkOpenedOnDesktop(String name);

  /// Toadplayer Link: action on a shared link that offers to open or download it on the paired desktop
  ///
  /// In en, this message translates to:
  /// **'Send to {name}'**
  String linkSendToDesktop(String name);

  /// Toadplayer Link: downloads songs of the paired desktop's library into the phone's download folder
  ///
  /// In en, this message translates to:
  /// **'Save to this phone'**
  String get linkSaveToPhone;

  /// Toadplayer Link: title of the progress dialog while desktop songs are saved to the phone
  ///
  /// In en, this message translates to:
  /// **'Saving to this phone'**
  String get linkSavingToPhone;

  /// Toadplayer Link: desktop songs were saved to the phone
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Saved 1 song to this phone} other{Saved {count} songs to this phone}}'**
  String linkSavedToPhone(int count);

  /// Toadplayer Link: some desktop songs could not be saved to the phone
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 song could not be saved} other{{count} songs could not be saved}}'**
  String linkSaveToPhoneFailed(int count);

  /// Toadplayer Link: the listener cancelled saving desktop songs to the phone
  ///
  /// In en, this message translates to:
  /// **'Saving stopped'**
  String get linkSaveToPhoneCancelled;

  /// Toadplayer Link: snackbar and notification when the phone starts copying songs from the paired computer into its download folder; title is the song's title when there is one song
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Saving {title} from {name}} other{Saving {count} songs from {name}}}'**
  String linkTransferPhoneReceiving(int count, String title, String name);

  /// Toadplayer Link: snackbar when the paired computer starts sending songs to the phone; title is the song's title when there is one song
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{{name} is sending {title} to this phone} other{{name} is sending {count} songs to this phone}}'**
  String linkTransferPhoneOffered(int count, String title, String name);

  /// Toadplayer Link: snackbar action that opens the list of song transfers
  ///
  /// In en, this message translates to:
  /// **'View'**
  String get linkTransferPhoneView;

  /// Toadplayer Link: tooltip and sheet title of a playlist's button that sends its songs to the paired computer or saves the computer's songs to the phone
  ///
  /// In en, this message translates to:
  /// **'Transfer with {name}'**
  String linkTransferPhoneWith(String name);

  /// Toadplayer Link: Save to this phone found none of the chosen songs in the paired computer's library
  ///
  /// In en, this message translates to:
  /// **'None of these songs are on {name}'**
  String linkTransferPhoneNothing(String name);

  /// Toadplayer Link: snackbar and notification when the phone starts copying its own songs to the paired computer; title is the song's title when there is one song
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Sending {title} to {name}} other{Sending {count} songs to {name}}}'**
  String linkSendSending(int count, String title, String name);

  /// Toadplayer Link: none of the chosen songs is a file on this phone in a format the paired computer takes
  ///
  /// In en, this message translates to:
  /// **'None of these songs can be sent to {name}'**
  String linkSendNothing(String name);

  /// Toadplayer Link: a download on the paired desktop has not started
  ///
  /// In en, this message translates to:
  /// **'Waiting'**
  String get linkDownloadStatusQueued;

  /// Toadplayer Link: a download on the paired desktop is running
  ///
  /// In en, this message translates to:
  /// **'Downloading'**
  String get linkDownloadStatusDownloading;

  /// Toadplayer Link: a download on the paired desktop finished
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get linkDownloadStatusDone;

  /// Toadplayer Link: a download on the paired desktop failed
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get linkDownloadStatusFailed;

  /// Snackbar shown when an announcement CTA link cannot be opened
  ///
  /// In en, this message translates to:
  /// **'Unable to open link. Please try again.'**
  String get announcementUnableToOpenLink;

  /// Hint shown when lossless conversion will cap bit depth or sample rate
  ///
  /// In en, this message translates to:
  /// **'Lossless output with {quality} cap'**
  String trackConvertLosslessOutputWithCap(String quality);

  /// Confirmation dialog message for capped lossless conversion of a single file
  ///
  /// In en, this message translates to:
  /// **'Convert from {sourceFormat} to {targetFormat} ({quality})?\n\nThe output stays in a lossless codec, but bit depth/sample rate will be capped. Original file will be deleted after conversion.'**
  String trackConvertConfirmMessageLosslessCapped(
    String sourceFormat,
    String targetFormat,
    String quality,
  );

  /// Confirmation dialog message for capped lossless batch conversion
  ///
  /// In en, this message translates to:
  /// **'Convert {count} {count, plural, =1{track} other{tracks}} to {format} ({quality})?\n\nThe output stays in a lossless codec, but bit depth/sample rate will be capped. Original files will be deleted after conversion.'**
  String selectionBatchConvertConfirmMessageLosslessCapped(
    int count,
    String format,
    String quality,
  );

  /// Convert button label for lossless conversion with quality cap
  ///
  /// In en, this message translates to:
  /// **'{sourceFormat} → {targetFormat} ({quality})'**
  String trackConvertActionLabelLossless(
    String sourceFormat,
    String targetFormat,
    String quality,
  );

  /// Convert button label for lossy conversion
  ///
  /// In en, this message translates to:
  /// **'{sourceFormat} → {targetFormat} @ {bitrate}'**
  String trackConvertActionLabelLossy(
    String sourceFormat,
    String targetFormat,
    String bitrate,
  );

  /// Subtitle for Paxsenix special thanks entry on the about page
  ///
  /// In en, this message translates to:
  /// **'Lyrics proxy for Musixmatch, Netease, Apple Music, QQ Music, Spotify, Deezer, YouTube, Kugou, and Genius'**
  String get aboutPaxsenixSubtitle;

  /// Snackbar when a track is inserted as the next queue item
  ///
  /// In en, this message translates to:
  /// **'Playing next'**
  String get snackbarPlayingNext;

  /// Snackbar when a track is added to the playback queue without naming it
  ///
  /// In en, this message translates to:
  /// **'Added to queue'**
  String get snackbarAddedToQueueGeneric;

  /// Button label for deleting multiple selected playlists
  ///
  /// In en, this message translates to:
  /// **'Delete {count} {count, plural, =1{playlist} other{playlists}}'**
  String selectionDeletePlaylistsCount(int count);

  /// Tooltip for shuffle playback action
  ///
  /// In en, this message translates to:
  /// **'Shuffle'**
  String get actionShuffle;

  /// Snackbar when shuffling an artist with no songs in the Library
  ///
  /// In en, this message translates to:
  /// **'No songs by this artist in your Library yet'**
  String get artistShuffleEmpty;

  /// Status label when primary-artist-only folder naming is enabled
  ///
  /// In en, this message translates to:
  /// **'Primary only: On'**
  String get downloadPrimaryArtistOnlyOn;

  /// Status label when primary-artist-only folder naming is disabled
  ///
  /// In en, this message translates to:
  /// **'Primary only: Off'**
  String get downloadPrimaryArtistOnlyOff;

  /// Status label when album-artist folder filtering uses primary artist only
  ///
  /// In en, this message translates to:
  /// **'Album Artist metadata: Primary only'**
  String get downloadAlbumArtistMetadataPrimaryOnly;

  /// Status label when album-artist folder filtering uses full metadata
  ///
  /// In en, this message translates to:
  /// **'Album Artist metadata: Full'**
  String get downloadAlbumArtistMetadataFull;

  /// Label for keeping original bit depth or sample rate during conversion
  ///
  /// In en, this message translates to:
  /// **'Original'**
  String get trackConvertOriginal;

  /// Label when no bit depth or sample rate cap is applied during lossless conversion
  ///
  /// In en, this message translates to:
  /// **'Original quality'**
  String get trackConvertOriginalQuality;

  /// Suffix used in converted lossless quality labels
  ///
  /// In en, this message translates to:
  /// **'Lossless'**
  String get trackConvertLosslessSuffix;

  /// Section label for lossless conversion dithering options
  ///
  /// In en, this message translates to:
  /// **'Dithering'**
  String get trackConvertDithering;

  /// Section label for lossless conversion resampler options
  ///
  /// In en, this message translates to:
  /// **'Resampler'**
  String get trackConvertResampler;

  /// Lossless conversion dither option with no dithering applied
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get trackConvertDitherNone;

  /// Lossless conversion triangular probability density function dither option
  ///
  /// In en, this message translates to:
  /// **'TPDF'**
  String get trackConvertDitherTriangular;

  /// Lossless conversion high-pass triangular dither option
  ///
  /// In en, this message translates to:
  /// **'Triangular HP'**
  String get trackConvertDitherTriangularHp;

  /// Lossless conversion default FFmpeg swresample resampler option
  ///
  /// In en, this message translates to:
  /// **'SWR'**
  String get trackConvertResamplerSwr;

  /// Lossless conversion SoX resampler option
  ///
  /// In en, this message translates to:
  /// **'SoXr'**
  String get trackConvertResamplerSoxr;

  /// Fallback changelog text when release notes cannot be parsed
  ///
  /// In en, this message translates to:
  /// **'See release notes for details.'**
  String get updateSeeReleaseNotes;

  /// Fallback track title when metadata is missing
  ///
  /// In en, this message translates to:
  /// **'Unknown title'**
  String get unknownTitle;

  /// Menu action to play a track as the next queue item
  ///
  /// In en, this message translates to:
  /// **'Play next'**
  String get trackPlayNext;

  /// Menu action to add a track to the playback queue
  ///
  /// In en, this message translates to:
  /// **'Add to queue'**
  String get trackAddToQueue;

  /// Snackbar after installing an extension from the repo tab
  ///
  /// In en, this message translates to:
  /// **'{extensionName} installed. Enable it in Settings > Extensions'**
  String snackbarExtensionInstalledEnable(String extensionName);

  /// Snackbar after updating an extension from the repo tab
  ///
  /// In en, this message translates to:
  /// **'{extensionName} updated to v{version}'**
  String snackbarExtensionUpdatedVersion(String extensionName, String version);

  /// Snackbar when extension install fails in the repo tab
  ///
  /// In en, this message translates to:
  /// **'Failed to install {extensionName}'**
  String snackbarFailedToInstallNamed(String extensionName);

  /// Snackbar when extension update fails in the repo tab
  ///
  /// In en, this message translates to:
  /// **'Failed to update {extensionName}'**
  String snackbarFailedToUpdateNamed(String extensionName);

  /// Badge label for EP releases
  ///
  /// In en, this message translates to:
  /// **'EP'**
  String get releaseTypeEp;

  /// Badge label for single releases
  ///
  /// In en, this message translates to:
  /// **'Single'**
  String get releaseTypeSingle;

  /// Label shown when metadata autofill downloaded cover art from the internet
  ///
  /// In en, this message translates to:
  /// **'Online cover'**
  String get trackCoverOnline;

  /// Country name for SongLink region picker
  ///
  /// In en, this message translates to:
  /// **'United States'**
  String get regionCountryUS;

  /// Country name for Italy
  ///
  /// In en, this message translates to:
  /// **'Italy'**
  String get regionCountryIT;

  /// Country name for Spain
  ///
  /// In en, this message translates to:
  /// **'Spain'**
  String get regionCountryES;

  /// Country name for SongLink region picker
  ///
  /// In en, this message translates to:
  /// **'United Kingdom'**
  String get regionCountryGB;

  /// Country name for SongLink region picker
  ///
  /// In en, this message translates to:
  /// **'France'**
  String get regionCountryFR;

  /// Country name for SongLink region picker
  ///
  /// In en, this message translates to:
  /// **'Germany'**
  String get regionCountryDE;

  /// Country name for SongLink region picker
  ///
  /// In en, this message translates to:
  /// **'Japan'**
  String get regionCountryJP;

  /// Country name for SongLink region picker
  ///
  /// In en, this message translates to:
  /// **'South Korea'**
  String get regionCountryKR;

  /// Country name for SongLink region picker
  ///
  /// In en, this message translates to:
  /// **'India'**
  String get regionCountryIN;

  /// Country name for SongLink region picker
  ///
  /// In en, this message translates to:
  /// **'Indonesia'**
  String get regionCountryID;

  /// Country name for SongLink region picker
  ///
  /// In en, this message translates to:
  /// **'Brazil'**
  String get regionCountryBR;

  /// Country name for SongLink region picker
  ///
  /// In en, this message translates to:
  /// **'Mexico'**
  String get regionCountryMX;

  /// Country name for SongLink region picker
  ///
  /// In en, this message translates to:
  /// **'Australia'**
  String get regionCountryAU;

  /// Country name for SongLink region picker
  ///
  /// In en, this message translates to:
  /// **'Canada'**
  String get regionCountryCA;

  /// Country name for SongLink region picker
  ///
  /// In en, this message translates to:
  /// **'Kosovo'**
  String get regionCountryXK;

  /// Settings option title for extension verification browser preference
  ///
  /// In en, this message translates to:
  /// **'Verification browser'**
  String get extensionVerificationBrowserTitle;

  /// Subtitle when external browser is preferred for extension verification
  ///
  /// In en, this message translates to:
  /// **'Open challenges in the default browser first'**
  String get extensionVerificationBrowserSubtitleExternal;

  /// Subtitle when in-app browser is preferred for extension verification
  ///
  /// In en, this message translates to:
  /// **'Open challenges in the in-app browser first'**
  String get extensionVerificationBrowserSubtitleInApp;

  /// Chip label for external browser verification mode
  ///
  /// In en, this message translates to:
  /// **'External'**
  String get extensionVerificationBrowserExternal;

  /// Chip label for in-app browser verification mode
  ///
  /// In en, this message translates to:
  /// **'In-app'**
  String get extensionVerificationBrowserInApp;

  /// Shown when the app cannot retrieve a pending verification challenge
  ///
  /// In en, this message translates to:
  /// **'No verification page is available for {extension}. Retry the download to request a new challenge.'**
  String extensionVerificationUnavailable(String extension);

  /// Dialog title when automatic browser launch for verification fails
  ///
  /// In en, this message translates to:
  /// **'Open verification manually'**
  String get extensionVerificationHelpTitleManual;

  /// Dialog title when verification is taking longer than expected
  ///
  /// In en, this message translates to:
  /// **'Verification still waiting'**
  String get extensionVerificationHelpTitleWaiting;

  /// Dialog message when automatic browser launch for verification fails
  ///
  /// In en, this message translates to:
  /// **'Toadplayer could not open the browser automatically. Open this link in your browser, or copy it manually.'**
  String get extensionVerificationHelpMessageManual;

  /// Dialog message when verification may need manual browser help
  ///
  /// In en, this message translates to:
  /// **'If the browser did not open, or verification finished but did not return to Toadplayer, open this link again or copy it manually.'**
  String get extensionVerificationHelpMessageWaiting;

  /// Button to dismiss the extension verification help dialog
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get extensionVerificationClose;

  /// Button to copy the extension verification URL
  ///
  /// In en, this message translates to:
  /// **'Copy link'**
  String get extensionVerificationCopyLink;

  /// Button that completes extension verification from a callback URL in the clipboard
  ///
  /// In en, this message translates to:
  /// **'Paste callback'**
  String get extensionVerificationPasteCallback;

  /// Snackbar after copying the extension verification URL
  ///
  /// In en, this message translates to:
  /// **'Verification link copied'**
  String get extensionVerificationLinkCopied;

  /// Button to open the extension verification URL in a browser
  ///
  /// In en, this message translates to:
  /// **'Open browser'**
  String get extensionVerificationOpenBrowser;

  /// Placeholder of the search field on the Settings tab
  ///
  /// In en, this message translates to:
  /// **'Search settings'**
  String get settingsSearchHint;

  /// Shown when a Settings search returns nothing
  ///
  /// In en, this message translates to:
  /// **'No settings match \"{query}\"'**
  String settingsSearchNoResults(String query);

  /// Filter option for tracks without embedded or sidecar lyrics
  ///
  /// In en, this message translates to:
  /// **'Missing lyrics'**
  String get libraryFilterMetadataMissingLyrics;

  /// Filter option for scanned tracks without ReplayGain gain tags
  ///
  /// In en, this message translates to:
  /// **'Missing ReplayGain'**
  String get libraryFilterMetadataMissingReplayGain;

  /// Filter option for tracks with indexed ReplayGain track or album gain tags
  ///
  /// In en, this message translates to:
  /// **'Has ReplayGain'**
  String get libraryFilterMetadataHasReplayGain;

  /// Library filter for albums with confirmed missing track positions
  ///
  /// In en, this message translates to:
  /// **'Incomplete albums'**
  String get libraryFilterIncompleteAlbums;

  /// Library filter and status for missing, conflicting or ambiguous album track counts
  ///
  /// In en, this message translates to:
  /// **'Album completeness unknown'**
  String get libraryAlbumCompletenessUnknown;

  /// Album completeness badge tooltip
  ///
  /// In en, this message translates to:
  /// **'{present}/{expected} tracks · {missing} missing'**
  String libraryAlbumMissingTracks(int present, int expected, int missing);

  /// Track menu action that copies the track title
  ///
  /// In en, this message translates to:
  /// **'Copy track name'**
  String get trackOptionCopyTrackName;

  /// Track menu action that copies the artist name
  ///
  /// In en, this message translates to:
  /// **'Copy artist'**
  String get trackOptionCopyArtist;

  /// Track menu action that copies the track title and artist
  ///
  /// In en, this message translates to:
  /// **'Copy track and artist'**
  String get trackOptionCopyTrackAndArtist;

  /// Track menu action that copies the track's web link on its streaming service
  ///
  /// In en, this message translates to:
  /// **'Copy {service} link'**
  String trackOptionCopyLink(String service);

  /// Metadata menu action that copies only the selected value
  ///
  /// In en, this message translates to:
  /// **'Copy value'**
  String get metadataCopyValue;

  /// Metadata menu action that copies the selected key and value
  ///
  /// In en, this message translates to:
  /// **'Copy field and value'**
  String get metadataCopyField;

  /// No description provided for @toadplayerSearch.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get toadplayerSearch;

  /// No description provided for @toadplayerContinuePlaying.
  ///
  /// In en, this message translates to:
  /// **'Continue Playing'**
  String get toadplayerContinuePlaying;

  /// Metadata menu action that copies every visible key and value
  ///
  /// In en, this message translates to:
  /// **'Copy all metadata'**
  String get metadataCopyAll;

  /// Metadata setting that limits downloaded artwork resolution before it is embedded
  ///
  /// In en, this message translates to:
  /// **'Embedded Cover Size'**
  String get optionsEmbeddedCoverSize;

  /// Description shown in the embedded cover size picker
  ///
  /// In en, this message translates to:
  /// **'Downscale remotely downloaded cover art before embedding it. Images already within the limit are kept unchanged.'**
  String get optionsEmbeddedCoverSizeDescription;

  /// Compact context menu action that adds a track to Loved
  ///
  /// In en, this message translates to:
  /// **'Favorite'**
  String get toadplayerFavorite;

  /// No description provided for @toadplayerGoToArtist.
  ///
  /// In en, this message translates to:
  /// **'Go to Artist'**
  String get toadplayerGoToArtist;

  /// No description provided for @toadplayerGetInfo.
  ///
  /// In en, this message translates to:
  /// **'Get Info'**
  String get toadplayerGetInfo;

  /// Selected state of the compact favorite action
  ///
  /// In en, this message translates to:
  /// **'Favorited'**
  String get toadplayerFavorited;

  /// No description provided for @autoMixDescription.
  ///
  /// In en, this message translates to:
  /// **'Blend songs with beat matching and pitch-preserving tempo adjustment. Uses crossfade when beats cannot be matched.'**
  String get autoMixDescription;

  /// Playback settings switch that starts the next song the moment one ends
  ///
  /// In en, this message translates to:
  /// **'Gapless playback'**
  String get gaplessPlayback;

  /// Subtitle of the Gapless playback switch
  ///
  /// In en, this message translates to:
  /// **'Start the next song the moment one ends, without silence between them. AutoMix replaces it while on.'**
  String get gaplessPlaybackDescription;

  /// Settings section choosing how the player shows cover art
  ///
  /// In en, this message translates to:
  /// **'Cover art'**
  String get playerCoverStyle;

  /// Switch choosing album artwork instead of track details alongside lyrics in landscape
  ///
  /// In en, this message translates to:
  /// **'Album art beside lyrics'**
  String get landscapeLyricsArtwork;

  /// Subtitle explaining the Material landscape lyrics layout setting
  ///
  /// In en, this message translates to:
  /// **'Show album art instead of track details in the Material landscape player'**
  String get landscapeLyricsArtworkDescription;

  /// Playback switch that lets lyrics take more screen space after five idle seconds
  ///
  /// In en, this message translates to:
  /// **'Automatic fullscreen lyrics'**
  String get autoHideLyricsControls;

  /// Subtitle explaining the five-second Now Playing lyrics timeout
  ///
  /// In en, this message translates to:
  /// **'Hide player controls after 5 seconds while lyrics are open. Turn off to keep the current view'**
  String get autoHideLyricsControlsDescription;

  /// Material player setting: idle lyrics shrink the player to a slim bar instead of hiding it
  ///
  /// In en, this message translates to:
  /// **'Compact player'**
  String get compactPlayer;

  /// Subtitle of the compact player setting
  ///
  /// In en, this message translates to:
  /// **'When lyrics are left alone, shrink the player to a slim bar so the lyrics get more room. A tap brings the full player back'**
  String get compactPlayerDescription;

  /// Cover art style: artwork card above the controls
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get playerCoverStyleDefault;

  /// Cover art style: artwork as a card above the controls (full screen is the default)
  ///
  /// In en, this message translates to:
  /// **'Card'**
  String get playerCoverStyleCard;

  /// Subtitle of the default cover art style
  ///
  /// In en, this message translates to:
  /// **'Artwork as a card above the controls'**
  String get playerCoverStyleDefaultDescription;

  /// Cover art style: artwork fills the top of the player
  ///
  /// In en, this message translates to:
  /// **'Full screen'**
  String get playerCoverStyleFullScreen;

  /// Subtitle of the full screen cover art style
  ///
  /// In en, this message translates to:
  /// **'Artwork fills the top of the player and fades into a blur. Motion artwork is always full screen in Toadplayer'**
  String get playerCoverStyleFullScreenDescription;

  /// Setting that vibrates the phone along with the music
  ///
  /// In en, this message translates to:
  /// **'Music haptics'**
  String get musicHaptics;

  /// Subtitle of the music haptics setting
  ///
  /// In en, this message translates to:
  /// **'Vibrate along with the beat of downloaded and local songs'**
  String get musicHapticsDescription;

  /// Slider for how many beats trigger music haptics; higher values vibrate on softer hits
  ///
  /// In en, this message translates to:
  /// **'Sensitivity'**
  String get musicHapticsSensitivity;

  /// Slider for how strongly the phone vibrates with music haptics
  ///
  /// In en, this message translates to:
  /// **'Strength'**
  String get musicHapticsStrength;

  /// No description provided for @autoMixOn.
  ///
  /// In en, this message translates to:
  /// **'AutoMix on'**
  String get autoMixOn;

  /// No description provided for @autoMixOff.
  ///
  /// In en, this message translates to:
  /// **'AutoMix off'**
  String get autoMixOff;

  /// No description provided for @autoplayOn.
  ///
  /// In en, this message translates to:
  /// **'Autoplay on'**
  String get autoplayOn;

  /// No description provided for @autoplayOff.
  ///
  /// In en, this message translates to:
  /// **'Autoplay off'**
  String get autoplayOff;

  /// No description provided for @queueAutoplay.
  ///
  /// In en, this message translates to:
  /// **'Autoplay'**
  String get queueAutoplay;

  /// No description provided for @queueAutoMix.
  ///
  /// In en, this message translates to:
  /// **'AutoMix'**
  String get queueAutoMix;

  /// No description provided for @autoplayFromLibrary.
  ///
  /// In en, this message translates to:
  /// **'Autoplay from your Library'**
  String get autoplayFromLibrary;

  /// No description provided for @autoplayDescription.
  ///
  /// In en, this message translates to:
  /// **'Continue with related songs from your Library when the queue ends.'**
  String get autoplayDescription;

  /// No description provided for @autoplayPersonalization.
  ///
  /// In en, this message translates to:
  /// **'Personalized autoplay'**
  String get autoplayPersonalization;

  /// No description provided for @autoplayPersonalizationDescription.
  ///
  /// In en, this message translates to:
  /// **'Learn from songs you listen to and skip, privately on this device. Turning this off stops learning and restores ordinary autoplay.'**
  String get autoplayPersonalizationDescription;

  /// No description provided for @autoplayResetLearning.
  ///
  /// In en, this message translates to:
  /// **'Reset recommendation learning'**
  String get autoplayResetLearning;

  /// No description provided for @autoplayResetLearningConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Reset recommendation learning?'**
  String get autoplayResetLearningConfirmTitle;

  /// No description provided for @autoplayResetLearningConfirmMessage.
  ///
  /// In en, this message translates to:
  /// **'Autoplay forgets what it learned from your listening and skips. This can\'t be undone.'**
  String get autoplayResetLearningConfirmMessage;

  /// No description provided for @autoplayResetLearningConfirm.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get autoplayResetLearningConfirm;

  /// How many Autoplay songs the listener has kept or skipped before ranking may learn from them
  ///
  /// In en, this message translates to:
  /// **'Ranking tunes to you after {minimum} Autoplay songs ({count} so far)'**
  String autoplayLearningProgress(int count, int minimum);

  /// Ranking cannot be checked yet because the latest Autoplay songs were all kept or all skipped
  ///
  /// In en, this message translates to:
  /// **'Standard ranking until you both keep and skip recent Autoplay songs'**
  String get autoplayLearningWaiting;

  /// Autoplay uses learned ranking, which orders the latest kept and skipped songs better than the standard ranking
  ///
  /// In en, this message translates to:
  /// **'Tuned to you: {learned}% accurate on your latest songs (standard {starting}%)'**
  String autoplayLearningTuned(int learned, int starting);

  /// Autoplay keeps the standard ranking because the learned one did not order the latest songs better
  ///
  /// In en, this message translates to:
  /// **'Standard ranking: tuning was not more accurate on your latest songs ({learned}% vs {starting}%)'**
  String autoplayLearningStandard(int learned, int starting);

  /// Switch that analyzes how each Library song sounds, on the device, for Autoplay
  ///
  /// In en, this message translates to:
  /// **'Song analysis'**
  String get songAnalysis;

  /// No description provided for @songAnalysisDescription.
  ///
  /// In en, this message translates to:
  /// **'Learn how each Library song sounds, privately on this device, so Autoplay picks songs that sound like what you play and flow into each other.'**
  String get songAnalysisDescription;

  /// No description provided for @songAnalysisOnlyWhileCharging.
  ///
  /// In en, this message translates to:
  /// **'Only while charging'**
  String get songAnalysisOnlyWhileCharging;

  /// No description provided for @songAnalysisOnlyWhileChargingDescription.
  ///
  /// In en, this message translates to:
  /// **'Analyze the Library only while this phone charges. The song playing is analyzed either way.'**
  String get songAnalysisOnlyWhileChargingDescription;

  /// How many Library songs song analysis has described so far
  ///
  /// In en, this message translates to:
  /// **'{analyzed} of {total} songs analyzed'**
  String songAnalysisProgress(int analyzed, int total);

  /// No description provided for @songAnalysisClear.
  ///
  /// In en, this message translates to:
  /// **'Clear song analysis'**
  String get songAnalysisClear;

  /// No description provided for @songAnalysisClearConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Clear song analysis?'**
  String get songAnalysisClearConfirmTitle;

  /// No description provided for @songAnalysisClearConfirmMessage.
  ///
  /// In en, this message translates to:
  /// **'Autoplay forgets how your songs sound. While song analysis is on, your Library is analyzed again.'**
  String get songAnalysisClearConfirmMessage;

  /// No description provided for @songAnalysisClearConfirm.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get songAnalysisClearConfirm;

  /// No description provided for @profileTitle.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profileTitle;

  /// No description provided for @profileSetUp.
  ///
  /// In en, this message translates to:
  /// **'Set up your profile'**
  String get profileSetUp;

  /// No description provided for @profileEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit name and photo'**
  String get profileEdit;

  /// No description provided for @backupIncludesProfile.
  ///
  /// In en, this message translates to:
  /// **'Includes your profile name and photo'**
  String get backupIncludesProfile;

  /// No description provided for @profileName.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get profileName;

  /// No description provided for @profileNameHint.
  ///
  /// In en, this message translates to:
  /// **'Your name'**
  String get profileNameHint;

  /// No description provided for @profileChangePhoto.
  ///
  /// In en, this message translates to:
  /// **'Choose photo'**
  String get profileChangePhoto;

  /// No description provided for @profileRemovePhoto.
  ///
  /// In en, this message translates to:
  /// **'Remove photo'**
  String get profileRemovePhoto;

  /// No description provided for @profilePhotoError.
  ///
  /// In en, this message translates to:
  /// **'Choose a valid image smaller than 20 MB.'**
  String get profilePhotoError;

  /// No description provided for @profileSaveError.
  ///
  /// In en, this message translates to:
  /// **'Could not save your profile. Please try again.'**
  String get profileSaveError;

  /// No description provided for @homeGreetingMorning1.
  ///
  /// In en, this message translates to:
  /// **'Good morning'**
  String get homeGreetingMorning1;

  /// No description provided for @homeGreetingMorning2.
  ///
  /// In en, this message translates to:
  /// **'Rise and shine'**
  String get homeGreetingMorning2;

  /// No description provided for @homeGreetingMorning3.
  ///
  /// In en, this message translates to:
  /// **'Fresh start'**
  String get homeGreetingMorning3;

  /// No description provided for @homeGreetingAfternoon1.
  ///
  /// In en, this message translates to:
  /// **'Good afternoon'**
  String get homeGreetingAfternoon1;

  /// No description provided for @homeGreetingAfternoon2.
  ///
  /// In en, this message translates to:
  /// **'Afternoon groove'**
  String get homeGreetingAfternoon2;

  /// No description provided for @homeGreetingAfternoon3.
  ///
  /// In en, this message translates to:
  /// **'Keep the vibe going'**
  String get homeGreetingAfternoon3;

  /// No description provided for @homeGreetingEvening1.
  ///
  /// In en, this message translates to:
  /// **'Good evening'**
  String get homeGreetingEvening1;

  /// No description provided for @homeGreetingEvening2.
  ///
  /// In en, this message translates to:
  /// **'Time to unwind'**
  String get homeGreetingEvening2;

  /// No description provided for @homeGreetingEvening3.
  ///
  /// In en, this message translates to:
  /// **'Golden hour'**
  String get homeGreetingEvening3;

  /// No description provided for @homeGreetingNight1.
  ///
  /// In en, this message translates to:
  /// **'Good night'**
  String get homeGreetingNight1;

  /// No description provided for @homeGreetingNight2.
  ///
  /// In en, this message translates to:
  /// **'Late-night session'**
  String get homeGreetingNight2;

  /// No description provided for @homeGreetingNight3.
  ///
  /// In en, this message translates to:
  /// **'Quiet hours'**
  String get homeGreetingNight3;

  /// Home greeting followed by the first name from the user's profile
  ///
  /// In en, this message translates to:
  /// **'{greeting}, {name}'**
  String homeGreetingNamed(String greeting, String name);

  /// Rotating Home prompt under the greeting
  ///
  /// In en, this message translates to:
  /// **'What are we listening to?'**
  String get homeTaglineListening;

  /// Rotating Home prompt explaining that links can be pasted into search
  ///
  /// In en, this message translates to:
  /// **'Got a link? Drop it in the search'**
  String get homeTaglineLink;

  /// Rotating Home prompt under the greeting
  ///
  /// In en, this message translates to:
  /// **'Find your next favorite album'**
  String get homeTaglineDiscover;

  /// Home section header for the track currently loaded in the player
  ///
  /// In en, this message translates to:
  /// **'Continue listening'**
  String get homeContinueListening;

  /// Toadplayer Home: heading of the shelf of what was played lately
  ///
  /// In en, this message translates to:
  /// **'Recently Played'**
  String get homeRecentlyPlayed;

  /// Home section header for the newest downloaded and scanned tracks
  ///
  /// In en, this message translates to:
  /// **'Recently added'**
  String get homeRecentlyAdded;

  /// Home section header for the most played tracks of the last four weeks
  ///
  /// In en, this message translates to:
  /// **'On repeat'**
  String get homeOnRepeat;

  /// Home section header for quick links to player tools
  ///
  /// In en, this message translates to:
  /// **'Shortcuts'**
  String get homeShortcuts;

  /// Heading of a mixed preview of search result types, without implying a relevance ranking
  ///
  /// In en, this message translates to:
  /// **'Search Results'**
  String get searchResults;

  /// Toadplayer Home: heading of the first shelf, the day's mixes shown as banners
  ///
  /// In en, this message translates to:
  /// **'Top Picks for You'**
  String get homeTopPicks;

  /// Toadplayer Home: small label on a mix banner
  ///
  /// In en, this message translates to:
  /// **'Made for You'**
  String get homeMadeForYou;

  /// Home section header for daily mixes made from the user's own Library songs
  ///
  /// In en, this message translates to:
  /// **'Mixes for you'**
  String get homeMixesForYou;

  /// Title of the daily mix of the user's most played songs and songs like them
  ///
  /// In en, this message translates to:
  /// **'Favorites Mix'**
  String get homeMixFavoritesTitle;

  /// Title of a daily mix of one genre from the user's Library, e.g. 'Hip-Hop Mix'
  ///
  /// In en, this message translates to:
  /// **'{genre} Mix'**
  String homeMixGenreTitle(String genre);

  /// Title of a daily mix built around one artist and similar songs from the user's Library
  ///
  /// In en, this message translates to:
  /// **'{artist} Mix'**
  String homeMixArtistTitle(String artist);

  /// Title of a daily mix of songs released in one decade, e.g. '2010s Mix'; decade is the decade's first year
  ///
  /// In en, this message translates to:
  /// **'{decade}s Mix'**
  String homeMixDecadeTitle(String decade);

  /// Title of the daily mix of songs added to the user's Library in the last month
  ///
  /// In en, this message translates to:
  /// **'New Additions Mix'**
  String get homeMixFreshTitle;

  /// Title of the daily mix of songs the user played often months ago but not lately
  ///
  /// In en, this message translates to:
  /// **'Rediscover Mix'**
  String get homeMixRediscoverTitle;

  /// Title of the daily mix of Library songs the user has never played, from their favorite genres
  ///
  /// In en, this message translates to:
  /// **'Discover Mix'**
  String get homeMixDiscoverTitle;

  /// Subtitle of a daily mix with one main artist, naming that artist
  ///
  /// In en, this message translates to:
  /// **'{first}'**
  String homeMixArtistsOne(String first);

  /// Subtitle of a daily mix with two main artists, e.g. 'Tyler, The Creator and Frank Ocean'
  ///
  /// In en, this message translates to:
  /// **'{first} and {second}'**
  String homeMixArtistsTwo(String first, String second);

  /// Subtitle of a daily mix with three or more main artists, naming the first two, e.g. 'Tyler, The Creator, Frank Ocean and more'
  ///
  /// In en, this message translates to:
  /// **'{first}, {second} and more'**
  String homeMixArtistsMore(String first, String second);

  /// Genre name used in a daily mix title such as 'Hip-Hop Mix'
  ///
  /// In en, this message translates to:
  /// **'Hip-Hop'**
  String get homeMixGenreHipHop;

  /// Genre name used in a daily mix title such as 'R&B Mix'
  ///
  /// In en, this message translates to:
  /// **'R&B'**
  String get homeMixGenreRnb;

  /// Genre name used in a daily mix title such as 'Pop Mix'
  ///
  /// In en, this message translates to:
  /// **'Pop'**
  String get homeMixGenrePop;

  /// Genre name (Korean pop) used in a daily mix title such as 'K-Pop Mix'
  ///
  /// In en, this message translates to:
  /// **'K-Pop'**
  String get homeMixGenreKpop;

  /// Genre name (Japanese pop, anime and related music) used in a daily mix title such as 'J-Pop Mix'
  ///
  /// In en, this message translates to:
  /// **'J-Pop'**
  String get homeMixGenreJpop;

  /// Genre name used in a daily mix title such as 'Rock Mix'
  ///
  /// In en, this message translates to:
  /// **'Rock'**
  String get homeMixGenreRock;

  /// Genre name used in a daily mix title such as 'Metal Mix'
  ///
  /// In en, this message translates to:
  /// **'Metal'**
  String get homeMixGenreMetal;

  /// Genre name used in a daily mix title such as 'Punk Mix'
  ///
  /// In en, this message translates to:
  /// **'Punk'**
  String get homeMixGenrePunk;

  /// Genre name used in a daily mix title such as 'Indie & Alternative Mix'
  ///
  /// In en, this message translates to:
  /// **'Indie & Alternative'**
  String get homeMixGenreIndie;

  /// Genre name used in a daily mix title such as 'Electronic Mix'
  ///
  /// In en, this message translates to:
  /// **'Electronic'**
  String get homeMixGenreElectronic;

  /// Genre name (ambient, lo-fi and relaxing music) used in a daily mix title such as 'Chill & Lo-Fi Mix'
  ///
  /// In en, this message translates to:
  /// **'Chill & Lo-Fi'**
  String get homeMixGenreChill;

  /// Genre name used in a daily mix title such as 'Jazz Mix'
  ///
  /// In en, this message translates to:
  /// **'Jazz'**
  String get homeMixGenreJazz;

  /// Genre name used in a daily mix title such as 'Blues Mix'
  ///
  /// In en, this message translates to:
  /// **'Blues'**
  String get homeMixGenreBlues;

  /// Genre name used in a daily mix title such as 'Classical Mix'
  ///
  /// In en, this message translates to:
  /// **'Classical'**
  String get homeMixGenreClassical;

  /// Genre name (film, game and TV music) used in a daily mix title such as 'Soundtrack Mix'
  ///
  /// In en, this message translates to:
  /// **'Soundtrack'**
  String get homeMixGenreSoundtrack;

  /// Genre name used in a daily mix title such as 'Country Mix'
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get homeMixGenreCountry;

  /// Genre name used in a daily mix title such as 'Folk & Acoustic Mix'
  ///
  /// In en, this message translates to:
  /// **'Folk & Acoustic'**
  String get homeMixGenreFolk;

  /// Genre name used in a daily mix title such as 'Latin Mix'
  ///
  /// In en, this message translates to:
  /// **'Latin'**
  String get homeMixGenreLatin;

  /// Genre name used in a daily mix title such as 'Reggae Mix'
  ///
  /// In en, this message translates to:
  /// **'Reggae'**
  String get homeMixGenreReggae;

  /// Genre name used in a daily mix title such as 'Afrobeats Mix'
  ///
  /// In en, this message translates to:
  /// **'Afrobeats'**
  String get homeMixGenreAfro;

  /// Genre name (Christian music) used in a daily mix title such as 'Gospel & Worship Mix'
  ///
  /// In en, this message translates to:
  /// **'Gospel & Worship'**
  String get homeMixGenreGospel;

  /// Genre name (Indonesian popular music) used in a daily mix title such as 'Dangdut Mix'
  ///
  /// In en, this message translates to:
  /// **'Dangdut'**
  String get homeMixGenreDangdut;

  /// Note in a daily mix's header explaining where its songs come from
  ///
  /// In en, this message translates to:
  /// **'Made from your Library, updated daily'**
  String get homeMixUpdatedDaily;

  /// Action that saves a daily mix's songs into one of the user's playlists
  ///
  /// In en, this message translates to:
  /// **'Save as playlist'**
  String get homeMixSaveAsPlaylist;

  /// No description provided for @artistUpcomingConcerts.
  ///
  /// In en, this message translates to:
  /// **'Upcoming Concerts'**
  String get artistUpcomingConcerts;

  /// No description provided for @artistAllUpcomingConcerts.
  ///
  /// In en, this message translates to:
  /// **'All Upcoming Concerts'**
  String get artistAllUpcomingConcerts;

  /// No description provided for @artistNoUpcomingConcerts.
  ///
  /// In en, this message translates to:
  /// **'No upcoming concerts.'**
  String get artistNoUpcomingConcerts;

  /// No description provided for @motionArtwork.
  ///
  /// In en, this message translates to:
  /// **'Animated artwork'**
  String get motionArtwork;

  /// No description provided for @listeningStats.
  ///
  /// In en, this message translates to:
  /// **'Listening statistics'**
  String get listeningStats;

  /// No description provided for @listeningStatsRecord.
  ///
  /// In en, this message translates to:
  /// **'Record listening'**
  String get listeningStatsRecord;

  /// No description provided for @listeningStatsDescription.
  ///
  /// In en, this message translates to:
  /// **'Stored only on this device, starting now. Records the built-in player only; pauses, buffering and seeking add no listening time. A play counts after 30 seconds.'**
  String get listeningStatsDescription;

  /// No description provided for @listeningStatsEmpty.
  ///
  /// In en, this message translates to:
  /// **'Play music with the built-in player to start your listening recap. Earlier listening cannot be recovered.'**
  String get listeningStatsEmpty;

  /// No description provided for @listeningStatsDays.
  ///
  /// In en, this message translates to:
  /// **'{days} days'**
  String listeningStatsDays(int days);

  /// No description provided for @listeningStatsMinutes.
  ///
  /// In en, this message translates to:
  /// **'{minutes} min'**
  String listeningStatsMinutes(int minutes);

  /// No description provided for @listeningStatsTotals.
  ///
  /// In en, this message translates to:
  /// **'{plays, plural, =1{1 play} other{{plays} plays}} · {tracks, plural, =1{1 track} other{{tracks} tracks}} · {days, plural, =1{1 active day} other{{days} active days}}'**
  String listeningStatsTotals(int plays, int tracks, int days);

  /// No description provided for @listeningStatsPreviousYear.
  ///
  /// In en, this message translates to:
  /// **'Previous year'**
  String get listeningStatsPreviousYear;

  /// No description provided for @listeningStatsNextYear.
  ///
  /// In en, this message translates to:
  /// **'Next year'**
  String get listeningStatsNextYear;

  /// No description provided for @listeningStatsActivity.
  ///
  /// In en, this message translates to:
  /// **'Recent listening days · minutes'**
  String get listeningStatsActivity;

  /// No description provided for @listeningStatsTopArtists.
  ///
  /// In en, this message translates to:
  /// **'Top artists'**
  String get listeningStatsTopArtists;

  /// No description provided for @listeningStatsTopTracks.
  ///
  /// In en, this message translates to:
  /// **'Top tracks'**
  String get listeningStatsTopTracks;

  /// No description provided for @listeningStatsLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load listening statistics'**
  String get listeningStatsLoadError;

  /// No description provided for @listeningStatsClear.
  ///
  /// In en, this message translates to:
  /// **'Clear listening statistics'**
  String get listeningStatsClear;

  /// No description provided for @listeningStatsClearError.
  ///
  /// In en, this message translates to:
  /// **'Could not clear listening statistics. Please try again.'**
  String get listeningStatsClearError;

  /// No description provided for @listeningStatsClearDescription.
  ///
  /// In en, this message translates to:
  /// **'Delete all listening statistics on this device? Your music and playlists will be kept.'**
  String get listeningStatsClearDescription;

  /// No description provided for @libraryArtistsEmpty.
  ///
  /// In en, this message translates to:
  /// **'Artists appear here once you download music or scan a local library.'**
  String get libraryArtistsEmpty;

  /// No description provided for @listeningRewind.
  ///
  /// In en, this message translates to:
  /// **'Rewind'**
  String get listeningRewind;

  /// No description provided for @listeningRewindDescription.
  ///
  /// In en, this message translates to:
  /// **'Relive the highlights of your recent weeks and months'**
  String get listeningRewindDescription;

  /// No description provided for @listeningRewindChoosePeriod.
  ///
  /// In en, this message translates to:
  /// **'Choose a period'**
  String get listeningRewindChoosePeriod;

  /// No description provided for @listeningRewindLastWeeks.
  ///
  /// In en, this message translates to:
  /// **'Last {weeks} weeks'**
  String listeningRewindLastWeeks(int weeks);

  /// No description provided for @listeningRewindLastMonths.
  ///
  /// In en, this message translates to:
  /// **'Last {months} months'**
  String listeningRewindLastMonths(int months);

  /// No description provided for @listeningRewindThisYear.
  ///
  /// In en, this message translates to:
  /// **'{year} so far'**
  String listeningRewindThisYear(int year);

  /// No description provided for @listeningRewindIntroTitle.
  ///
  /// In en, this message translates to:
  /// **'Your Rewind'**
  String get listeningRewindIntroTitle;

  /// No description provided for @listeningRewindIntroBody.
  ///
  /// In en, this message translates to:
  /// **'A look back at what you played from {start} to {end}.'**
  String listeningRewindIntroBody(String start, String end);

  /// No description provided for @listeningRewindMinutesTitle.
  ///
  /// In en, this message translates to:
  /// **'You listened for'**
  String get listeningRewindMinutesTitle;

  /// No description provided for @listeningRewindMinutesUnit.
  ///
  /// In en, this message translates to:
  /// **'{minutes, plural, =1{minute} other{minutes}}'**
  String listeningRewindMinutesUnit(int minutes);

  /// No description provided for @listeningRewindHours.
  ///
  /// In en, this message translates to:
  /// **'{hours, plural, =1{That\'s about 1 hour of music} other{That\'s about {hours} hours of music}}'**
  String listeningRewindHours(int hours);

  /// No description provided for @listeningRewindMore.
  ///
  /// In en, this message translates to:
  /// **'{percent}% more than the period before'**
  String listeningRewindMore(int percent);

  /// No description provided for @listeningRewindLess.
  ///
  /// In en, this message translates to:
  /// **'{percent}% less than the period before'**
  String listeningRewindLess(int percent);

  /// No description provided for @listeningRewindSame.
  ///
  /// In en, this message translates to:
  /// **'About the same as the period before'**
  String get listeningRewindSame;

  /// No description provided for @listeningRewindTopArtistTitle.
  ///
  /// In en, this message translates to:
  /// **'Your top artist'**
  String get listeningRewindTopArtistTitle;

  /// No description provided for @listeningRewindArtistShare.
  ///
  /// In en, this message translates to:
  /// **'{percent}% of your listening time'**
  String listeningRewindArtistShare(int percent);

  /// No description provided for @listeningRewindArtistsTitle.
  ///
  /// In en, this message translates to:
  /// **'Artists on rotation'**
  String get listeningRewindArtistsTitle;

  /// No description provided for @listeningRewindTopTrackTitle.
  ///
  /// In en, this message translates to:
  /// **'Your top song'**
  String get listeningRewindTopTrackTitle;

  /// No description provided for @listeningRewindPlays.
  ///
  /// In en, this message translates to:
  /// **'{plays, plural, =1{1 play} other{{plays} plays}}'**
  String listeningRewindPlays(int plays);

  /// No description provided for @listeningRewindTracksTitle.
  ///
  /// In en, this message translates to:
  /// **'Songs on repeat'**
  String get listeningRewindTracksTitle;

  /// No description provided for @listeningRewindTopAlbumTitle.
  ///
  /// In en, this message translates to:
  /// **'The album you kept coming back to'**
  String get listeningRewindTopAlbumTitle;

  /// No description provided for @listeningRewindNewArtistsTitle.
  ///
  /// In en, this message translates to:
  /// **'New discoveries'**
  String get listeningRewindNewArtistsTitle;

  /// No description provided for @listeningRewindNewArtistsBody.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{You found 1 new artist} other{You found {count} new artists}}'**
  String listeningRewindNewArtistsBody(int count);

  /// No description provided for @listeningRewindRhythmTitle.
  ///
  /// In en, this message translates to:
  /// **'Your listening rhythm'**
  String get listeningRewindRhythmTitle;

  /// No description provided for @listeningRewindPeakDay.
  ///
  /// In en, this message translates to:
  /// **'Biggest day'**
  String get listeningRewindPeakDay;

  /// No description provided for @listeningRewindFavoriteDay.
  ///
  /// In en, this message translates to:
  /// **'Favorite day'**
  String get listeningRewindFavoriteDay;

  /// No description provided for @listeningRewindStreak.
  ///
  /// In en, this message translates to:
  /// **'Longest streak'**
  String get listeningRewindStreak;

  /// No description provided for @listeningRewindStreakDays.
  ///
  /// In en, this message translates to:
  /// **'{days, plural, =1{1 day} other{{days} days in a row}}'**
  String listeningRewindStreakDays(int days);

  /// No description provided for @listeningRewindReplayTitle.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t stop playing'**
  String get listeningRewindReplayTitle;

  /// No description provided for @listeningRewindReplayBody.
  ///
  /// In en, this message translates to:
  /// **'You played it {plays} times on {date}'**
  String listeningRewindReplayBody(int plays, String date);

  /// No description provided for @listeningRewindOutroTitle.
  ///
  /// In en, this message translates to:
  /// **'That\'s your Rewind'**
  String get listeningRewindOutroTitle;

  /// No description provided for @listeningRewindOutroBody.
  ///
  /// In en, this message translates to:
  /// **'Keep listening. Your next Rewind is already taking shape.'**
  String get listeningRewindOutroBody;

  /// No description provided for @listeningRewindEmpty.
  ///
  /// In en, this message translates to:
  /// **'Not enough listening in this period yet. Play some music with the built-in player and come back later.'**
  String get listeningRewindEmpty;

  /// No description provided for @listeningRewindLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load your Rewind'**
  String get listeningRewindLoadError;

  /// No description provided for @listeningRewindSlide.
  ///
  /// In en, this message translates to:
  /// **'Slide {index} of {count}'**
  String listeningRewindSlide(int index, int count);

  /// No description provided for @listeningRewindShare.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get listeningRewindShare;

  /// No description provided for @listeningRewindShareError.
  ///
  /// In en, this message translates to:
  /// **'Could not share your Rewind'**
  String get listeningRewindShareError;

  /// No description provided for @listeningRewindNext.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get listeningRewindNext;

  /// No description provided for @listeningRewindPrevious.
  ///
  /// In en, this message translates to:
  /// **'Previous'**
  String get listeningRewindPrevious;

  /// No description provided for @listeningRewindMonthlyReady.
  ///
  /// In en, this message translates to:
  /// **'Your last 4 weeks are ready to replay'**
  String get listeningRewindMonthlyReady;

  /// No description provided for @listeningRewindYearTitle.
  ///
  /// In en, this message translates to:
  /// **'Your {year} in Music'**
  String listeningRewindYearTitle(String year);

  /// No description provided for @listeningRewindYearEyebrow.
  ///
  /// In en, this message translates to:
  /// **'Year-end Rewind'**
  String get listeningRewindYearEyebrow;

  /// No description provided for @listeningRewindYearBanner.
  ///
  /// In en, this message translates to:
  /// **'Your top artists, songs and moments of the year'**
  String get listeningRewindYearBanner;

  /// No description provided for @listeningRewindYearIntroBody.
  ///
  /// In en, this message translates to:
  /// **'Everything you played this year, from your first song to your biggest month.'**
  String get listeningRewindYearIntroBody;

  /// No description provided for @listeningRewindNumbersTitle.
  ///
  /// In en, this message translates to:
  /// **'Your year in numbers'**
  String get listeningRewindNumbersTitle;

  /// No description provided for @listeningRewindSongsLabel.
  ///
  /// In en, this message translates to:
  /// **'Songs'**
  String get listeningRewindSongsLabel;

  /// No description provided for @listeningRewindArtistsLabel.
  ///
  /// In en, this message translates to:
  /// **'Artists'**
  String get listeningRewindArtistsLabel;

  /// No description provided for @listeningRewindAlbumsLabel.
  ///
  /// In en, this message translates to:
  /// **'Albums'**
  String get listeningRewindAlbumsLabel;

  /// No description provided for @listeningRewindDaysLabel.
  ///
  /// In en, this message translates to:
  /// **'Days with music'**
  String get listeningRewindDaysLabel;

  /// No description provided for @listeningRewindDaysShare.
  ///
  /// In en, this message translates to:
  /// **'Music on {percent}% of your days'**
  String listeningRewindDaysShare(int percent);

  /// No description provided for @listeningRewindMonthsTitle.
  ///
  /// In en, this message translates to:
  /// **'Month by month'**
  String get listeningRewindMonthsTitle;

  /// No description provided for @listeningRewindBiggestMonthLabel.
  ///
  /// In en, this message translates to:
  /// **'Biggest month'**
  String get listeningRewindBiggestMonthLabel;

  /// No description provided for @listeningRewindBiggestMonth.
  ///
  /// In en, this message translates to:
  /// **'Your biggest month was {month}'**
  String listeningRewindBiggestMonth(String month);

  /// No description provided for @listeningRewindMonthlyArtistsTitle.
  ///
  /// In en, this message translates to:
  /// **'Artist of the month'**
  String get listeningRewindMonthlyArtistsTitle;

  /// No description provided for @listeningRewindLoyalTitle.
  ///
  /// In en, this message translates to:
  /// **'Always by your side'**
  String get listeningRewindLoyalTitle;

  /// No description provided for @listeningRewindLoyalBody.
  ///
  /// In en, this message translates to:
  /// **'{days, plural, =1{With you on 1 day} other{With you on {days} different days}}'**
  String listeningRewindLoyalBody(int days);

  /// No description provided for @listeningRewindFirstSongTitle.
  ///
  /// In en, this message translates to:
  /// **'Where your year began'**
  String get listeningRewindFirstSongTitle;

  /// No description provided for @listeningRewindFirstSongBody.
  ///
  /// In en, this message translates to:
  /// **'Your most-played song on your first listening day, {date}'**
  String listeningRewindFirstSongBody(String date);

  /// No description provided for @listeningRewindYearOutroTitle.
  ///
  /// In en, this message translates to:
  /// **'That was your {year}'**
  String listeningRewindYearOutroTitle(String year);

  /// No description provided for @listeningRewindYearOutroBody.
  ///
  /// In en, this message translates to:
  /// **'Here\'s to another year of great music.'**
  String get listeningRewindYearOutroBody;

  /// No description provided for @weeklyReleases.
  ///
  /// In en, this message translates to:
  /// **'New releases'**
  String get weeklyReleases;

  /// No description provided for @weeklyReleasesDescription.
  ///
  /// In en, this message translates to:
  /// **'Recent albums and singles from your favorite artists, supplied by installed metadata extensions.'**
  String get weeklyReleasesDescription;

  /// No description provided for @weeklyReleasesEmpty.
  ///
  /// In en, this message translates to:
  /// **'No dated releases found in this period. Add favorite artists or try a longer period.'**
  String get weeklyReleasesEmpty;

  /// No description provided for @weeklyReleasesUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Some artists could not be checked. Their saved results are kept. Providers may not supply artist catalogs or exact release dates.'**
  String get weeklyReleasesUnavailable;

  /// No description provided for @weeklyReleasesLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not check new releases. Pull to refresh.'**
  String get weeklyReleasesLoadError;

  /// No description provided for @motionArtworkDescription.
  ///
  /// In en, this message translates to:
  /// **'Loop video covers supplied by metadata providers. Turn off to use still artwork and reduce battery use.'**
  String get motionArtworkDescription;

  /// No description provided for @libraryLoading.
  ///
  /// In en, this message translates to:
  /// **'Loading Library…'**
  String get libraryLoading;

  /// No description provided for @libraryLoadFailed.
  ///
  /// In en, this message translates to:
  /// **'Library could not be loaded. Retry to load the saved folders and track index.'**
  String get libraryLoadFailed;

  /// No description provided for @discordPresenceDescription.
  ///
  /// In en, this message translates to:
  /// **'Share the title, artist, album and progress of music played in the built-in player on your Discord profile. Local audio and artwork files are never uploaded. Clears when playback pauses or stops.'**
  String get discordPresenceDescription;

  /// No description provided for @discordPresenceDisabled.
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get discordPresenceDisabled;

  /// No description provided for @discordPresenceLink.
  ///
  /// In en, this message translates to:
  /// **'Link Discord account'**
  String get discordPresenceLink;

  /// No description provided for @discordPresenceConnecting.
  ///
  /// In en, this message translates to:
  /// **'Connecting to Discord…'**
  String get discordPresenceConnecting;

  /// No description provided for @discordPresenceReady.
  ///
  /// In en, this message translates to:
  /// **'Ready when music plays'**
  String get discordPresenceReady;

  /// No description provided for @discordPresenceActive.
  ///
  /// In en, this message translates to:
  /// **'Sharing current track'**
  String get discordPresenceActive;

  /// No description provided for @discordPresenceUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Discord is unavailable. Retrying during playback.'**
  String get discordPresenceUnavailable;

  /// No description provided for @discordPresenceBuildUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Discord SDK is not available in this build.'**
  String get discordPresenceBuildUnavailable;

  /// No description provided for @discordPresenceAndroidHelp.
  ///
  /// In en, this message translates to:
  /// **'Install Discord and sign in on this phone. Allow activity sharing in Discord. External players are not supported.'**
  String get discordPresenceAndroidHelp;

  /// No description provided for @discordPresenceIosHelp.
  ///
  /// In en, this message translates to:
  /// **'Link your account through Discord and allow activity sharing. Tap to link again if authorization fails.'**
  String get discordPresenceIosHelp;

  /// No description provided for @discordPresenceDesktopHelp.
  ///
  /// In en, this message translates to:
  /// **'Keep the Discord desktop app running and signed in on this computer, and allow activity sharing in Discord.'**
  String get discordPresenceDesktopHelp;

  /// No description provided for @discordPresenceDisconnect.
  ///
  /// In en, this message translates to:
  /// **'Disconnect and forget account'**
  String get discordPresenceDisconnect;

  /// No description provided for @autoMixSettingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Mix transitions'**
  String get autoMixSettingsTitle;

  /// No description provided for @autoMixAutomaticDuration.
  ///
  /// In en, this message translates to:
  /// **'Automatic duration'**
  String get autoMixAutomaticDuration;

  /// No description provided for @autoMixDuration.
  ///
  /// In en, this message translates to:
  /// **'Mix duration'**
  String get autoMixDuration;

  /// No description provided for @autoMixEffect.
  ///
  /// In en, this message translates to:
  /// **'Transition effect'**
  String get autoMixEffect;

  /// No description provided for @autoMixEffectAuto.
  ///
  /// In en, this message translates to:
  /// **'Auto'**
  String get autoMixEffectAuto;

  /// No description provided for @autoMixEffectCrossfade.
  ///
  /// In en, this message translates to:
  /// **'Crossfade'**
  String get autoMixEffectCrossfade;

  /// No description provided for @autoMixEffectMuffled.
  ///
  /// In en, this message translates to:
  /// **'Muffled'**
  String get autoMixEffectMuffled;

  /// No description provided for @autoMixEffectEcho.
  ///
  /// In en, this message translates to:
  /// **'Echo'**
  String get autoMixEffectEcho;

  /// No description provided for @autoMixEffectPitch.
  ///
  /// In en, this message translates to:
  /// **'Pitch'**
  String get autoMixEffectPitch;

  /// No description provided for @autoMixEffectCustom.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get autoMixEffectCustom;

  /// No description provided for @autoMixEffectsHelp.
  ///
  /// In en, this message translates to:
  /// **'Effects apply to the end of the outgoing song during the mix. Short songs use a shorter overlap.'**
  String get autoMixEffectsHelp;

  /// No description provided for @autoMixSpeed.
  ///
  /// In en, this message translates to:
  /// **'Speed'**
  String get autoMixSpeed;

  /// No description provided for @autoMixPitch.
  ///
  /// In en, this message translates to:
  /// **'Pitch (semitones)'**
  String get autoMixPitch;

  /// No description provided for @autoMixEcho.
  ///
  /// In en, this message translates to:
  /// **'Echo'**
  String get autoMixEcho;

  /// No description provided for @autoMixLowPass.
  ///
  /// In en, this message translates to:
  /// **'Muffled filter'**
  String get autoMixLowPass;

  /// No description provided for @autoMixMixing.
  ///
  /// In en, this message translates to:
  /// **'Mixing'**
  String get autoMixMixing;

  /// No description provided for @autoMixCrossfading.
  ///
  /// In en, this message translates to:
  /// **'Crossfade'**
  String get autoMixCrossfading;

  /// No description provided for @playbackAutomation.
  ///
  /// In en, this message translates to:
  /// **'Automatic playback'**
  String get playbackAutomation;

  /// No description provided for @playbackPauseOnMute.
  ///
  /// In en, this message translates to:
  /// **'Pause when muted'**
  String get playbackPauseOnMute;

  /// Shown after mute automation pauses playback; another explicit play request can override the pause.
  ///
  /// In en, this message translates to:
  /// **'Media volume is zero. Playback paused. Press play again to continue.'**
  String get snackbarPlaybackMuted;

  /// Shown when the player cannot decode a song and stops on it. format is a file format name such as APE or WavPack.
  ///
  /// In en, this message translates to:
  /// **'This format can\'t be played on this device: {format}'**
  String snackbarPlaybackFormatUnsupported(String format);

  /// Shown when the player cannot decode a song and continues with the next one in the queue. format is a file format name such as APE or WavPack.
  ///
  /// In en, this message translates to:
  /// **'This format can\'t be played on this device: {format}. Playing the next song.'**
  String snackbarPlaybackFormatUnsupportedSkipped(String format);

  /// No description provided for @playbackPauseOnMuteDescription.
  ///
  /// In en, this message translates to:
  /// **'Pause at zero media volume and resume when raised. Manual pauses stay paused. Standard audio output only.'**
  String get playbackPauseOnMuteDescription;

  /// No description provided for @playbackOnHeadphonesConnected.
  ///
  /// In en, this message translates to:
  /// **'Play when headphones connect'**
  String get playbackOnHeadphonesConnected;

  /// No description provided for @playbackOnHeadphonesConnectedDescription.
  ///
  /// In en, this message translates to:
  /// **'Resume the current song when wired or Bluetooth headphones connect. Disconnecting pauses playback. Built-in player only.'**
  String get playbackOnHeadphonesConnectedDescription;

  /// No description provided for @appearanceCustomFont.
  ///
  /// In en, this message translates to:
  /// **'Custom font'**
  String get appearanceCustomFont;

  /// No description provided for @appearanceCustomFontSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Import a TTF or OTF file (up to 10 MB). Overrides the theme and system font.'**
  String get appearanceCustomFontSubtitle;

  /// No description provided for @appearanceCustomFontInvalid.
  ///
  /// In en, this message translates to:
  /// **'Could not load this font. Choose a valid TTF or OTF file up to 10 MB.'**
  String get appearanceCustomFontInvalid;

  /// No description provided for @appearanceCustomFontReset.
  ///
  /// In en, this message translates to:
  /// **'Use theme font'**
  String get appearanceCustomFontReset;

  /// No description provided for @equalizerTitle.
  ///
  /// In en, this message translates to:
  /// **'Equalizer'**
  String get equalizerTitle;

  /// No description provided for @equalizerDescription.
  ///
  /// In en, this message translates to:
  /// **'5–31 bands, tone controls, preamp and dynamics'**
  String get equalizerDescription;

  /// No description provided for @equalizerEnable.
  ///
  /// In en, this message translates to:
  /// **'Enable equalizer'**
  String get equalizerEnable;

  /// No description provided for @equalizerBands.
  ///
  /// In en, this message translates to:
  /// **'Bands'**
  String get equalizerBands;

  /// No description provided for @equalizerTone.
  ///
  /// In en, this message translates to:
  /// **'Tone & stereo'**
  String get equalizerTone;

  /// No description provided for @equalizerPreamp.
  ///
  /// In en, this message translates to:
  /// **'Preamp'**
  String get equalizerPreamp;

  /// No description provided for @equalizerBass.
  ///
  /// In en, this message translates to:
  /// **'Bass'**
  String get equalizerBass;

  /// No description provided for @equalizerTreble.
  ///
  /// In en, this message translates to:
  /// **'Treble'**
  String get equalizerTreble;

  /// No description provided for @equalizerBalance.
  ///
  /// In en, this message translates to:
  /// **'Balance'**
  String get equalizerBalance;

  /// No description provided for @equalizerDynamics.
  ///
  /// In en, this message translates to:
  /// **'Dynamics'**
  String get equalizerDynamics;

  /// No description provided for @equalizerHeadroom.
  ///
  /// In en, this message translates to:
  /// **'Automatic headroom'**
  String get equalizerHeadroom;

  /// No description provided for @equalizerHeadroomDescription.
  ///
  /// In en, this message translates to:
  /// **'Reduce input gain to make room for boosted frequencies.'**
  String get equalizerHeadroomDescription;

  /// No description provided for @equalizerLimiter.
  ///
  /// In en, this message translates to:
  /// **'Peak limiter'**
  String get equalizerLimiter;

  /// No description provided for @equalizerLimiterDescription.
  ///
  /// In en, this message translates to:
  /// **'Keep peaks below −0.5 dBFS to reduce clipping.'**
  String get equalizerLimiterDescription;

  /// No description provided for @equalizerCompressor.
  ///
  /// In en, this message translates to:
  /// **'Compressor'**
  String get equalizerCompressor;

  /// No description provided for @equalizerCompressorDescription.
  ///
  /// In en, this message translates to:
  /// **'Reduce the difference between quiet and loud passages.'**
  String get equalizerCompressorDescription;

  /// No description provided for @equalizerThreshold.
  ///
  /// In en, this message translates to:
  /// **'Threshold'**
  String get equalizerThreshold;

  /// No description provided for @equalizerRatio.
  ///
  /// In en, this message translates to:
  /// **'Ratio'**
  String get equalizerRatio;

  /// No description provided for @equalizerAttack.
  ///
  /// In en, this message translates to:
  /// **'Attack'**
  String get equalizerAttack;

  /// No description provided for @equalizerRelease.
  ///
  /// In en, this message translates to:
  /// **'Release'**
  String get equalizerRelease;

  /// No description provided for @equalizerPresets.
  ///
  /// In en, this message translates to:
  /// **'Presets'**
  String get equalizerPresets;

  /// No description provided for @equalizerSavePreset.
  ///
  /// In en, this message translates to:
  /// **'Save preset'**
  String get equalizerSavePreset;

  /// No description provided for @equalizerPresetName.
  ///
  /// In en, this message translates to:
  /// **'Preset name'**
  String get equalizerPresetName;

  /// No description provided for @equalizerImport.
  ///
  /// In en, this message translates to:
  /// **'Import preset'**
  String get equalizerImport;

  /// No description provided for @equalizerExport.
  ///
  /// In en, this message translates to:
  /// **'Share preset'**
  String get equalizerExport;

  /// No description provided for @equalizerImportInvalid.
  ///
  /// In en, this message translates to:
  /// **'Choose a valid Toadplayer equalizer preset (JSON, up to 64 KB).'**
  String get equalizerImportInvalid;

  /// No description provided for @equalizerSaved.
  ///
  /// In en, this message translates to:
  /// **'Preset saved'**
  String get equalizerSaved;

  /// No description provided for @equalizerResetTitle.
  ///
  /// In en, this message translates to:
  /// **'Reset equalizer?'**
  String get equalizerResetTitle;

  /// No description provided for @equalizerResetDescription.
  ///
  /// In en, this message translates to:
  /// **'Restore a flat curve, default tone and dynamics settings. Saved presets are kept.'**
  String get equalizerResetDescription;

  /// No description provided for @equalizerBypass.
  ///
  /// In en, this message translates to:
  /// **'Bit-perfect, Direct USB and exclusive Hi-Res outputs bypass EQ. Disable bit-perfect output to use EQ. External players manage their own effects.'**
  String get equalizerBypass;

  /// No description provided for @equalizerCurve.
  ///
  /// In en, this message translates to:
  /// **'EQ curve (estimated)'**
  String get equalizerCurve;

  /// No description provided for @equalizerCurveDescription.
  ///
  /// In en, this message translates to:
  /// **'The curve shows band gains; the exact response depends on the output engine.'**
  String get equalizerCurveDescription;

  /// No description provided for @equalizerEffectivePreamp.
  ///
  /// In en, this message translates to:
  /// **'Input gain after headroom'**
  String get equalizerEffectivePreamp;

  /// No description provided for @equalizerDeletePreset.
  ///
  /// In en, this message translates to:
  /// **'Delete preset'**
  String get equalizerDeletePreset;

  /// No description provided for @equalizerCustom.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get equalizerCustom;

  /// No description provided for @equalizerManagePresets.
  ///
  /// In en, this message translates to:
  /// **'Manage presets'**
  String get equalizerManagePresets;

  /// Screen that turns selected lyric lines into an image for stories
  ///
  /// In en, this message translates to:
  /// **'Share lyrics'**
  String get lyricsShareTitle;

  /// No description provided for @lyricsShareSelectHint.
  ///
  /// In en, this message translates to:
  /// **'Select up to {count} lines'**
  String lyricsShareSelectHint(int count);

  /// No description provided for @lyricsShareLimit.
  ///
  /// In en, this message translates to:
  /// **'You can share up to {count} lines'**
  String lyricsShareLimit(int count);

  /// No description provided for @lyricsShareAction.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get lyricsShareAction;

  /// No description provided for @lyricsShareError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t create the lyrics image'**
  String get lyricsShareError;

  /// No description provided for @lyricsShareBackgroundArtwork.
  ///
  /// In en, this message translates to:
  /// **'Artwork'**
  String get lyricsShareBackgroundArtwork;

  /// No description provided for @lyricsShareBackgroundColor.
  ///
  /// In en, this message translates to:
  /// **'Cover color'**
  String get lyricsShareBackgroundColor;

  /// No description provided for @lyricsShareBackgroundDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get lyricsShareBackgroundDark;

  /// No description provided for @lyricsShareBackgroundLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get lyricsShareBackgroundLight;

  /// Sheet with technical details of the playing track, opened from the quality badge
  ///
  /// In en, this message translates to:
  /// **'Audio info'**
  String get audioInfoTitle;

  /// No description provided for @audioInfoSource.
  ///
  /// In en, this message translates to:
  /// **'Source file'**
  String get audioInfoSource;

  /// No description provided for @audioInfoSignal.
  ///
  /// In en, this message translates to:
  /// **'Signal'**
  String get audioInfoSignal;

  /// No description provided for @audioInfoLoudness.
  ///
  /// In en, this message translates to:
  /// **'Loudness'**
  String get audioInfoLoudness;

  /// No description provided for @audioInfoProcessing.
  ///
  /// In en, this message translates to:
  /// **'Processing'**
  String get audioInfoProcessing;

  /// No description provided for @audioInfoOutput.
  ///
  /// In en, this message translates to:
  /// **'Output'**
  String get audioInfoOutput;

  /// No description provided for @audioInfoAnalysis.
  ///
  /// In en, this message translates to:
  /// **'Spectrum and level analysis'**
  String get audioInfoAnalysis;

  /// No description provided for @audioInfoQuality.
  ///
  /// In en, this message translates to:
  /// **'Quality'**
  String get audioInfoQuality;

  /// No description provided for @audioInfoHiResLossless.
  ///
  /// In en, this message translates to:
  /// **'Hi-Res Lossless'**
  String get audioInfoHiResLossless;

  /// No description provided for @audioInfoLossless.
  ///
  /// In en, this message translates to:
  /// **'Lossless'**
  String get audioInfoLossless;

  /// No description provided for @audioInfoLossy.
  ///
  /// In en, this message translates to:
  /// **'Lossy'**
  String get audioInfoLossy;

  /// No description provided for @audioInfoFormat.
  ///
  /// In en, this message translates to:
  /// **'Format'**
  String get audioInfoFormat;

  /// No description provided for @audioInfoCodec.
  ///
  /// In en, this message translates to:
  /// **'Codec'**
  String get audioInfoCodec;

  /// No description provided for @audioInfoSampleRate.
  ///
  /// In en, this message translates to:
  /// **'Sample rate'**
  String get audioInfoSampleRate;

  /// No description provided for @audioInfoBitDepth.
  ///
  /// In en, this message translates to:
  /// **'Bit depth'**
  String get audioInfoBitDepth;

  /// No description provided for @audioInfoChannels.
  ///
  /// In en, this message translates to:
  /// **'Channels'**
  String get audioInfoChannels;

  /// No description provided for @audioInfoChannelCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Mono} =2{Stereo} other{{count} channels}}'**
  String audioInfoChannelCount(int count);

  /// No description provided for @audioInfoBitrate.
  ///
  /// In en, this message translates to:
  /// **'Bitrate'**
  String get audioInfoBitrate;

  /// No description provided for @audioInfoDuration.
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get audioInfoDuration;

  /// No description provided for @audioInfoFileSize.
  ///
  /// In en, this message translates to:
  /// **'File size'**
  String get audioInfoFileSize;

  /// No description provided for @audioInfoCompression.
  ///
  /// In en, this message translates to:
  /// **'Compression'**
  String get audioInfoCompression;

  /// No description provided for @audioInfoCompressionValue.
  ///
  /// In en, this message translates to:
  /// **'{percent}% of uncompressed size'**
  String audioInfoCompressionValue(String percent);

  /// No description provided for @audioInfoLocation.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get audioInfoLocation;

  /// No description provided for @audioInfoLocationLocal.
  ///
  /// In en, this message translates to:
  /// **'Device storage'**
  String get audioInfoLocationLocal;

  /// No description provided for @audioInfoLocationShared.
  ///
  /// In en, this message translates to:
  /// **'Shared folder'**
  String get audioInfoLocationShared;

  /// No description provided for @audioInfoLocationNetwork.
  ///
  /// In en, this message translates to:
  /// **'Network storage'**
  String get audioInfoLocationNetwork;

  /// Audio info location of a song played from a paired computer or phone over Toadplayer Link; device is that device's name
  ///
  /// In en, this message translates to:
  /// **'{device} via Toadplayer Link'**
  String audioInfoLocationLink(String device);

  /// No description provided for @audioInfoPcmRate.
  ///
  /// In en, this message translates to:
  /// **'Uncompressed data rate'**
  String get audioInfoPcmRate;

  /// No description provided for @audioInfoFrequencyRange.
  ///
  /// In en, this message translates to:
  /// **'Frequency range'**
  String get audioInfoFrequencyRange;

  /// No description provided for @audioInfoFrequencyRangeValue.
  ///
  /// In en, this message translates to:
  /// **'Up to {frequency} (Nyquist)'**
  String audioInfoFrequencyRangeValue(String frequency);

  /// No description provided for @audioInfoDynamicRange.
  ///
  /// In en, this message translates to:
  /// **'Theoretical dynamic range'**
  String get audioInfoDynamicRange;

  /// No description provided for @audioInfoTrackGain.
  ///
  /// In en, this message translates to:
  /// **'Track gain'**
  String get audioInfoTrackGain;

  /// No description provided for @audioInfoTrackPeak.
  ///
  /// In en, this message translates to:
  /// **'Track peak'**
  String get audioInfoTrackPeak;

  /// No description provided for @audioInfoAlbumGain.
  ///
  /// In en, this message translates to:
  /// **'Album gain'**
  String get audioInfoAlbumGain;

  /// No description provided for @audioInfoAlbumPeak.
  ///
  /// In en, this message translates to:
  /// **'Album peak'**
  String get audioInfoAlbumPeak;

  /// No description provided for @audioInfoNoGainTags.
  ///
  /// In en, this message translates to:
  /// **'No ReplayGain tags'**
  String get audioInfoNoGainTags;

  /// No description provided for @audioInfoApplied.
  ///
  /// In en, this message translates to:
  /// **'Applied {gain}'**
  String audioInfoApplied(String gain);

  /// No description provided for @audioInfoOn.
  ///
  /// In en, this message translates to:
  /// **'On'**
  String get audioInfoOn;

  /// No description provided for @audioInfoOff.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get audioInfoOff;

  /// No description provided for @audioInfoBypassed.
  ///
  /// In en, this message translates to:
  /// **'Bypassed by direct output'**
  String get audioInfoBypassed;

  /// No description provided for @audioInfoPlayer.
  ///
  /// In en, this message translates to:
  /// **'Player'**
  String get audioInfoPlayer;

  /// No description provided for @audioInfoPlayerValue.
  ///
  /// In en, this message translates to:
  /// **'Toadplayer built-in player'**
  String get audioInfoPlayerValue;

  /// No description provided for @audioInfoSignalPath.
  ///
  /// In en, this message translates to:
  /// **'Signal path'**
  String get audioInfoSignalPath;

  /// No description provided for @audioInfoPathSystem.
  ///
  /// In en, this message translates to:
  /// **'System mixer'**
  String get audioInfoPathSystem;

  /// No description provided for @audioInfoPathDirect.
  ///
  /// In en, this message translates to:
  /// **'Direct USB, bypasses the system mixer'**
  String get audioInfoPathDirect;

  /// No description provided for @audioInfoPathExclusive.
  ///
  /// In en, this message translates to:
  /// **'Exclusive output, bypasses the system mixer'**
  String get audioInfoPathExclusive;

  /// No description provided for @audioInfoDecoder.
  ///
  /// In en, this message translates to:
  /// **'Decoder'**
  String get audioInfoDecoder;

  /// No description provided for @audioInfoHardware.
  ///
  /// In en, this message translates to:
  /// **'Hardware'**
  String get audioInfoHardware;

  /// No description provided for @audioInfoSoftware.
  ///
  /// In en, this message translates to:
  /// **'Software'**
  String get audioInfoSoftware;

  /// No description provided for @audioInfoBands.
  ///
  /// In en, this message translates to:
  /// **'{count} bands'**
  String audioInfoBands(int count);

  /// No description provided for @audioInfoTempo.
  ///
  /// In en, this message translates to:
  /// **'Tempo'**
  String get audioInfoTempo;

  /// No description provided for @audioInfoResampling.
  ///
  /// In en, this message translates to:
  /// **'Resampling'**
  String get audioInfoResampling;

  /// No description provided for @audioInfoResamplingNone.
  ///
  /// In en, this message translates to:
  /// **'None, rates match'**
  String get audioInfoResamplingNone;

  /// No description provided for @audioInfoBitPerfect.
  ///
  /// In en, this message translates to:
  /// **'Bit-perfect'**
  String get audioInfoBitPerfect;

  /// No description provided for @audioInfoBitPerfectActive.
  ///
  /// In en, this message translates to:
  /// **'Yes, unaltered samples'**
  String get audioInfoBitPerfectActive;

  /// No description provided for @audioInfoBitPerfectNo.
  ///
  /// In en, this message translates to:
  /// **'No, mixed by the system'**
  String get audioInfoBitPerfectNo;

  /// No description provided for @audioInfoBitPerfectUnverified.
  ///
  /// In en, this message translates to:
  /// **'Not verified'**
  String get audioInfoBitPerfectUnverified;

  /// No description provided for @audioInfoBitPerfectProcessed.
  ///
  /// In en, this message translates to:
  /// **'No, audio processing is active'**
  String get audioInfoBitPerfectProcessed;

  /// No description provided for @audioInfoDevice.
  ///
  /// In en, this message translates to:
  /// **'Device'**
  String get audioInfoDevice;

  /// No description provided for @audioInfoDeviceType.
  ///
  /// In en, this message translates to:
  /// **'{type, select, speaker{Phone speaker} earpiece{Earpiece} wired_headphones{Wired headphones} wired_headset{Wired headset} line{Line out} bluetooth{Bluetooth} bluetooth_le{Bluetooth LE Audio} usb{USB audio} usb_headset{USB headset} hdmi{HDMI} dock{Dock} cast{Cast} hearing_aid{Hearing aid} airplay{AirPlay} car{Car audio} other{Other}}'**
  String audioInfoDeviceType(String type);

  /// No description provided for @audioInfoOutputRate.
  ///
  /// In en, this message translates to:
  /// **'Output sample rate'**
  String get audioInfoOutputRate;

  /// No description provided for @audioInfoOutputFormat.
  ///
  /// In en, this message translates to:
  /// **'Output format'**
  String get audioInfoOutputFormat;

  /// Negotiated Bluetooth transport format, separate from Android PCM mixer properties
  ///
  /// In en, this message translates to:
  /// **'Bluetooth codec format'**
  String get audioInfoBluetoothFormat;

  /// No description provided for @audioInfoAndroidNotReported.
  ///
  /// In en, this message translates to:
  /// **'Not reported by Android'**
  String get audioInfoAndroidNotReported;

  /// No description provided for @audioInfoBluetoothUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Unavailable to this app'**
  String get audioInfoBluetoothUnavailable;

  /// No description provided for @audioInfoBluetoothUnavailableHint.
  ///
  /// In en, this message translates to:
  /// **'Android may show the active codec in Bluetooth settings without making it available to Toadplayer. This is separate from the song\'s file format.'**
  String get audioInfoBluetoothUnavailableHint;

  /// No description provided for @audioAnalysisFileBitrate.
  ///
  /// In en, this message translates to:
  /// **'Average file bitrate'**
  String get audioAnalysisFileBitrate;

  /// No description provided for @audioAnalysisFileBitrateHint.
  ///
  /// In en, this message translates to:
  /// **'Includes tags and container overhead. It can differ from the audio stream bitrate and is not the Bluetooth bitrate.'**
  String get audioAnalysisFileBitrateHint;

  /// No description provided for @audioInfoSystemDefaultRate.
  ///
  /// In en, this message translates to:
  /// **'System default sample rate'**
  String get audioInfoSystemDefaultRate;

  /// No description provided for @audioInfoAndroidPcmRates.
  ///
  /// In en, this message translates to:
  /// **'Android PCM sample rates'**
  String get audioInfoAndroidPcmRates;

  /// No description provided for @audioInfoAndroidPcmFormats.
  ///
  /// In en, this message translates to:
  /// **'Android PCM formats'**
  String get audioInfoAndroidPcmFormats;

  /// No description provided for @audioInfoSystemDefaultBuffer.
  ///
  /// In en, this message translates to:
  /// **'System default buffer'**
  String get audioInfoSystemDefaultBuffer;

  /// No description provided for @audioInfoDeviceRates.
  ///
  /// In en, this message translates to:
  /// **'Device sample rates'**
  String get audioInfoDeviceRates;

  /// No description provided for @audioInfoDeviceFormats.
  ///
  /// In en, this message translates to:
  /// **'Device formats'**
  String get audioInfoDeviceFormats;

  /// No description provided for @audioInfoAnyRate.
  ///
  /// In en, this message translates to:
  /// **'Any'**
  String get audioInfoAnyRate;

  /// No description provided for @audioInfoBuffer.
  ///
  /// In en, this message translates to:
  /// **'Mixer buffer'**
  String get audioInfoBuffer;

  /// No description provided for @audioInfoLatency.
  ///
  /// In en, this message translates to:
  /// **'Output latency'**
  String get audioInfoLatency;

  /// No description provided for @audioInfoLowLatency.
  ///
  /// In en, this message translates to:
  /// **'Low-latency audio'**
  String get audioInfoLowLatency;

  /// No description provided for @audioInfoProAudio.
  ///
  /// In en, this message translates to:
  /// **'Pro audio'**
  String get audioInfoProAudio;

  /// No description provided for @audioInfoSupported.
  ///
  /// In en, this message translates to:
  /// **'Supported'**
  String get audioInfoSupported;

  /// No description provided for @audioInfoNotSupported.
  ///
  /// In en, this message translates to:
  /// **'Not supported'**
  String get audioInfoNotSupported;

  /// No description provided for @audioInfoSpatial.
  ///
  /// In en, this message translates to:
  /// **'Spatial audio'**
  String get audioInfoSpatial;

  /// No description provided for @audioInfoHeadTracking.
  ///
  /// In en, this message translates to:
  /// **'Head tracking'**
  String get audioInfoHeadTracking;

  /// No description provided for @audioInfoUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Unavailable'**
  String get audioInfoUnavailable;

  /// No description provided for @audioInfoFixedVolume.
  ///
  /// In en, this message translates to:
  /// **'Controlled by the device'**
  String get audioInfoFixedVolume;

  /// No description provided for @audioInfoCopy.
  ///
  /// In en, this message translates to:
  /// **'Copy report'**
  String get audioInfoCopy;

  /// No description provided for @audioInfoCopied.
  ///
  /// In en, this message translates to:
  /// **'Audio info copied'**
  String get audioInfoCopied;

  /// No description provided for @lyricsTextSize.
  ///
  /// In en, this message translates to:
  /// **'Lyrics text size'**
  String get lyricsTextSize;

  /// No description provided for @lyricsTextPreview.
  ///
  /// In en, this message translates to:
  /// **'Follow every line of your favorite song'**
  String get lyricsTextPreview;

  /// Toadplayer setting: how strongly lyric lines around the current one are blurred
  ///
  /// In en, this message translates to:
  /// **'Lyrics blur'**
  String get lyricsBlur;

  /// No description provided for @lyricsBlurSubtitle.
  ///
  /// In en, this message translates to:
  /// **'How much the lines around the current one soften'**
  String get lyricsBlurSubtitle;

  /// Value of the lyrics blur slider at zero
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get lyricsBlurOff;

  /// Setting: move synced lyrics earlier or later than playback
  ///
  /// In en, this message translates to:
  /// **'Lyrics timing'**
  String get lyricsOffset;

  /// No description provided for @lyricsOffsetSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show synced lyrics later or earlier, for example when Bluetooth audio arrives late'**
  String get lyricsOffsetSubtitle;

  /// Value of the lyrics timing slider at zero
  ///
  /// In en, this message translates to:
  /// **'In sync'**
  String get lyricsOffsetNone;

  /// Value of the lyrics timing slider when lyrics follow playback late
  ///
  /// In en, this message translates to:
  /// **'{seconds} s later'**
  String lyricsOffsetLater(String seconds);

  /// Value of the lyrics timing slider when lyrics run ahead of playback
  ///
  /// In en, this message translates to:
  /// **'{seconds} s earlier'**
  String lyricsOffsetEarlier(String seconds);

  /// No description provided for @appCrashTitle.
  ///
  /// In en, this message translates to:
  /// **'The app previously crashed'**
  String get appCrashTitle;

  /// Title for an Android ANR report, distinct from a crash.
  ///
  /// In en, this message translates to:
  /// **'The app previously stopped responding'**
  String get appAnrTitle;

  /// Message shown for an Android process exit due to an ANR.
  ///
  /// In en, this message translates to:
  /// **'A diagnostic report was saved. You can copy it and send it to the developer to help investigate.'**
  String get appAnrMessage;

  /// No description provided for @appCrashMessage.
  ///
  /// In en, this message translates to:
  /// **'A crash report was saved. Copy it and send it to the developer to help investigate.'**
  String get appCrashMessage;

  /// No description provided for @appCrashDetails.
  ///
  /// In en, this message translates to:
  /// **'View error and log'**
  String get appCrashDetails;

  /// No description provided for @appCrashCopy.
  ///
  /// In en, this message translates to:
  /// **'Copy report for developer'**
  String get appCrashCopy;

  /// No description provided for @appCrashDismiss.
  ///
  /// In en, this message translates to:
  /// **'Dismiss'**
  String get appCrashDismiss;

  /// No description provided for @appCrashCopyFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not copy the crash report. Please try again.'**
  String get appCrashCopyFailed;

  /// No description provided for @appCrashDismissFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not dismiss the crash report. Please try again.'**
  String get appCrashDismissFailed;

  /// Option that preserves the provider artwork at its original resolution
  ///
  /// In en, this message translates to:
  /// **'Original resolution'**
  String get optionsEmbeddedCoverSizeOriginal;

  /// Desktop tooltip that names an action and its keyboard shortcut, for example 'Next track (Ctrl+Right)'
  ///
  /// In en, this message translates to:
  /// **'{action} ({shortcut})'**
  String desktopShortcutTooltip(String action, String shortcut);

  /// Desktop player bar text when no track is loaded
  ///
  /// In en, this message translates to:
  /// **'Not playing'**
  String get desktopPlayerIdle;

  /// No description provided for @desktopVolumeUp.
  ///
  /// In en, this message translates to:
  /// **'Increase volume'**
  String get desktopVolumeUp;

  /// No description provided for @desktopVolumeDown.
  ///
  /// In en, this message translates to:
  /// **'Decrease volume'**
  String get desktopVolumeDown;

  /// Screen reader label of a song table column header that sorts the table A to Z
  ///
  /// In en, this message translates to:
  /// **'{column}, sorted ascending'**
  String desktopTableSortedAscending(String column);

  /// Screen reader label of a song table column header that sorts the table Z to A
  ///
  /// In en, this message translates to:
  /// **'{column}, sorted descending'**
  String desktopTableSortedDescending(String column);

  /// Context menu item that opens an album, artist, playlist or folder
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get desktopMenuOpen;

  /// Context menu item that opens a track's metadata page
  ///
  /// In en, this message translates to:
  /// **'Show details'**
  String get desktopMenuShowDetails;

  /// Overlay shown while music files or folders are dragged over the desktop window
  ///
  /// In en, this message translates to:
  /// **'Drop to add to your library'**
  String get desktopDropToImport;

  /// Snackbar after dropping music onto the desktop window; the folders are scanned into the library
  ///
  /// In en, this message translates to:
  /// **'Adding {count} {count, plural, =1{folder} other{folders}} to your library'**
  String desktopDropImported(int count);

  /// Snackbar when the dropped items contain no folders or audio files
  ///
  /// In en, this message translates to:
  /// **'Drop music files or folders to add them to your library'**
  String get desktopDropNothingToImport;

  /// Desktop sidebar row that opens the list of every playlist
  ///
  /// In en, this message translates to:
  /// **'All Playlists'**
  String get desktopAllPlaylists;

  /// macOS app menu item that opens Settings
  ///
  /// In en, this message translates to:
  /// **'Settings…'**
  String get desktopMenuSettings;

  /// No description provided for @desktopMenuFile.
  ///
  /// In en, this message translates to:
  /// **'File'**
  String get desktopMenuFile;

  /// No description provided for @desktopMenuEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get desktopMenuEdit;

  /// No description provided for @desktopMenuView.
  ///
  /// In en, this message translates to:
  /// **'View'**
  String get desktopMenuView;

  /// No description provided for @desktopWindowMode.
  ///
  /// In en, this message translates to:
  /// **'Window mode'**
  String get desktopWindowMode;

  /// No description provided for @desktopWindowed.
  ///
  /// In en, this message translates to:
  /// **'Windowed'**
  String get desktopWindowed;

  /// No description provided for @desktopWindowFullscreen.
  ///
  /// In en, this message translates to:
  /// **'Full screen'**
  String get desktopWindowFullscreen;

  /// No description provided for @desktopWindowBorderless.
  ///
  /// In en, this message translates to:
  /// **'Borderless'**
  String get desktopWindowBorderless;

  /// No description provided for @desktopExitFullscreen.
  ///
  /// In en, this message translates to:
  /// **'Exit full screen'**
  String get desktopExitFullscreen;

  /// No description provided for @desktopMinimizeWindow.
  ///
  /// In en, this message translates to:
  /// **'Minimize window'**
  String get desktopMinimizeWindow;

  /// No description provided for @desktopZoomWindow.
  ///
  /// In en, this message translates to:
  /// **'Maximize or restore window'**
  String get desktopZoomWindow;

  /// No description provided for @desktopWindowModeUnavailable.
  ///
  /// In en, this message translates to:
  /// **'The window mode could not be changed. Try again after the current window transition finishes.'**
  String get desktopWindowModeUnavailable;

  /// No description provided for @desktopMenuControls.
  ///
  /// In en, this message translates to:
  /// **'Controls'**
  String get desktopMenuControls;

  /// No description provided for @desktopMenuWindow.
  ///
  /// In en, this message translates to:
  /// **'Window'**
  String get desktopMenuWindow;

  /// No description provided for @desktopMenuHelp.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get desktopMenuHelp;

  /// No description provided for @desktopMenuPlayPause.
  ///
  /// In en, this message translates to:
  /// **'Play/Pause'**
  String get desktopMenuPlayPause;

  /// Window menu item, player bar button and Keyboard Shortcuts row that shrink the window into a small player floating above other windows
  ///
  /// In en, this message translates to:
  /// **'Mini Player'**
  String get desktopMenuMiniPlayer;

  /// Mini player button that returns the window to its full size
  ///
  /// In en, this message translates to:
  /// **'Show Full Window'**
  String get desktopMiniPlayerExpand;

  /// View menu item and Keyboard Shortcuts row that reloads the page on screen (Home, Repo, statistics)
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get desktopMenuRefresh;

  /// Help menu item that opens the app's source repository
  ///
  /// In en, this message translates to:
  /// **'Project page'**
  String get desktopMenuProjectPage;

  /// Button in the desktop downloads popover that opens the full download queue
  ///
  /// In en, this message translates to:
  /// **'Show all'**
  String get desktopDownloadsShowAll;

  /// Status of a download in the desktop downloads popover that has not started yet
  ///
  /// In en, this message translates to:
  /// **'Waiting'**
  String get desktopDownloadsQueued;

  /// Tooltip of the button that cancels one download in the desktop downloads popover
  ///
  /// In en, this message translates to:
  /// **'Cancel download'**
  String get desktopDownloadsCancel;

  /// Desktop Settings page that shares this computer's library with the Toadplayer phone app over the local network
  ///
  /// In en, this message translates to:
  /// **'Toadplayer on your phone'**
  String get linkDesktopSettingsTitle;

  /// Subtitle of the Toadplayer on your phone entry in desktop Settings
  ///
  /// In en, this message translates to:
  /// **'Stream your library and control playback from your phone'**
  String get linkDesktopSettingsSubtitle;

  /// Switch that turns on the local server phones connect to
  ///
  /// In en, this message translates to:
  /// **'Share with Toadplayer on your phone'**
  String get linkDesktopEnableTitle;

  /// Subtitle of the switch that shares the library with phones, while it is off
  ///
  /// In en, this message translates to:
  /// **'Your phone can browse, play and download through this computer on your local network'**
  String get linkDesktopEnableSubtitle;

  /// Status of the phone link server while it starts
  ///
  /// In en, this message translates to:
  /// **'Starting'**
  String get linkDesktopStatusStarting;

  /// Status of the phone link server while it runs, with the number of connected phones
  ///
  /// In en, this message translates to:
  /// **'On, {count, plural, =0{no phone connected} =1{1 phone connected} other{{count} phones connected}}'**
  String linkDesktopStatusRunning(int count);

  /// Status of the phone link server when it failed to start
  ///
  /// In en, this message translates to:
  /// **'Could not start: {error}'**
  String linkDesktopStatusFailed(String error);

  /// Hint shown while the phone link server is on, about the operating system firewall prompt
  ///
  /// In en, this message translates to:
  /// **'Your computer may ask whether Toadplayer can accept incoming network connections. Allow it so your phone can connect.'**
  String get linkDesktopFirewallHint;

  /// Section of the phone link settings about this computer's name and address
  ///
  /// In en, this message translates to:
  /// **'This computer'**
  String get linkDesktopSectionComputer;

  /// Row and field label for the name phones see for this computer
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get linkDesktopDeviceName;

  /// Helper text of the field that renames this computer for phones
  ///
  /// In en, this message translates to:
  /// **'Phones show this name when they find this computer'**
  String get linkDesktopDeviceNameHint;

  /// Row that shows the network addresses phones and Subsonic apps connect to
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get linkDesktopAddress;

  /// Row that shows the short certificate fingerprint phones compare while pairing
  ///
  /// In en, this message translates to:
  /// **'Security code'**
  String get linkDesktopSecurityCode;

  /// Subtitle explaining the security code row
  ///
  /// In en, this message translates to:
  /// **'Your phone shows the same code when it pairs'**
  String get linkDesktopSecurityCodeHint;

  /// How many Library songs phones can see
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 song shared} other{{count} songs shared}}'**
  String linkDesktopCatalogSongs(int count);

  /// Section of the phone link settings that lists paired phones
  ///
  /// In en, this message translates to:
  /// **'Phones'**
  String get linkDesktopSectionPhones;

  /// Row and dialog title that shows a code to pair a phone with this computer
  ///
  /// In en, this message translates to:
  /// **'Pair a phone'**
  String get linkDesktopPairPhone;

  /// Subtitle of the Pair a phone row
  ///
  /// In en, this message translates to:
  /// **'Show a code to enter on your phone'**
  String get linkDesktopPairPhoneSubtitle;

  /// Shown in the paired phones list when it is empty
  ///
  /// In en, this message translates to:
  /// **'No phones paired yet'**
  String get linkDesktopNoDevices;

  /// Status of a paired phone that is connected now
  ///
  /// In en, this message translates to:
  /// **'Connected'**
  String get linkDesktopDeviceConnected;

  /// Status of a paired phone that is not connected
  ///
  /// In en, this message translates to:
  /// **'Last seen {date}'**
  String linkDesktopDeviceLastSeen(String date);

  /// Status of a paired device that never connected
  ///
  /// In en, this message translates to:
  /// **'Not connected yet'**
  String get linkDesktopDeviceNeverSeen;

  /// Label of a paired device that is a third-party Subsonic app
  ///
  /// In en, this message translates to:
  /// **'Subsonic app'**
  String get linkDesktopSubsonicApp;

  /// Tooltip and confirm button that removes a paired phone or Subsonic app
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get linkDesktopRevoke;

  /// Title of the dialog that confirms removing a paired device
  ///
  /// In en, this message translates to:
  /// **'Remove {name}?'**
  String linkDesktopRevokeTitle(String name);

  /// Message of the dialog that confirms removing a paired device
  ///
  /// In en, this message translates to:
  /// **'It has to pair again before it can connect to this computer.'**
  String get linkDesktopRevokeMessage;

  /// Snackbar after removing a paired device
  ///
  /// In en, this message translates to:
  /// **'{name} removed'**
  String linkDesktopRevoked(String name);

  /// Section of the phone link settings for third-party Subsonic apps
  ///
  /// In en, this message translates to:
  /// **'Other apps'**
  String get linkDesktopSectionOtherApps;

  /// Row and dialog title that creates a key for a third-party Subsonic app
  ///
  /// In en, this message translates to:
  /// **'Add another Subsonic app'**
  String get linkDesktopAddSubsonicApp;

  /// Subtitle of the Add another Subsonic app row
  ///
  /// In en, this message translates to:
  /// **'Create a key for a Subsonic player on another device'**
  String get linkDesktopAddSubsonicAppSubtitle;

  /// Field label for the name of a third-party Subsonic app
  ///
  /// In en, this message translates to:
  /// **'App name'**
  String get linkDesktopAppName;

  /// Button that creates a key for a third-party Subsonic app
  ///
  /// In en, this message translates to:
  /// **'Create key'**
  String get linkDesktopCreateKey;

  /// Title of the dialog that shows the details for a new Subsonic app key
  ///
  /// In en, this message translates to:
  /// **'Connect {name}'**
  String linkDesktopAppKeyTitle(String name);

  /// Message of the dialog that shows a new Subsonic app key
  ///
  /// In en, this message translates to:
  /// **'Enter these details in the app. The key is shown only now.'**
  String get linkDesktopAppKeyMessage;

  /// Label of the server address a Subsonic app connects to
  ///
  /// In en, this message translates to:
  /// **'Server address'**
  String get linkDesktopServerAddress;

  /// Label of the username a Subsonic app uses
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get linkDesktopUsername;

  /// Label of the key a Subsonic app uses as its password or API key
  ///
  /// In en, this message translates to:
  /// **'Password or API key'**
  String get linkDesktopApiKey;

  /// Tooltip of a copy button next to a value
  ///
  /// In en, this message translates to:
  /// **'Copy {label}'**
  String linkDesktopCopy(String label);

  /// Instructions in the pairing dialog above the code
  ///
  /// In en, this message translates to:
  /// **'Open Toadplayer on your phone, choose this computer and enter this code.'**
  String get linkDesktopPairInstructions;

  /// Line in the pairing dialog asking to compare the short certificate fingerprint
  ///
  /// In en, this message translates to:
  /// **'Check that your phone shows security code {code}.'**
  String linkDesktopPairCheckCode(String code);

  /// Countdown in the pairing dialog, as minutes and seconds
  ///
  /// In en, this message translates to:
  /// **'The code expires in {time}'**
  String linkDesktopPairExpires(String time);

  /// Snackbar after a phone paired
  ///
  /// In en, this message translates to:
  /// **'Paired with {name}'**
  String linkDesktopPaired(String name);

  /// Snackbar when the pairing code expired
  ///
  /// In en, this message translates to:
  /// **'The code expired. Pair again to get a new one.'**
  String get linkDesktopPairExpired;

  /// Snackbar when pairing ended after too many wrong codes
  ///
  /// In en, this message translates to:
  /// **'Too many wrong codes. Pair again to get a new one.'**
  String get linkDesktopPairAttempts;

  /// Snackbar when the pairing code could not be created
  ///
  /// In en, this message translates to:
  /// **'Could not start pairing'**
  String get linkDesktopPairFailed;

  /// Tooltip of the player bar button and title of its popover that list connected phones
  ///
  /// In en, this message translates to:
  /// **'Phones'**
  String get linkDesktopDevicesTitle;

  /// Shown for a connected phone that plays nothing
  ///
  /// In en, this message translates to:
  /// **'Nothing playing'**
  String get linkDesktopPhoneNothingPlaying;

  /// Button that moves the desktop queue and position to a phone and pauses the desktop
  ///
  /// In en, this message translates to:
  /// **'Continue on phone'**
  String get linkDesktopContinueOnPhone;

  /// Button that sends a link to a phone to open
  ///
  /// In en, this message translates to:
  /// **'Open a link on phone'**
  String get linkDesktopOpenOnPhone;

  /// Title of the dialog that sends a link to a phone
  ///
  /// In en, this message translates to:
  /// **'Open a link on {name}'**
  String linkDesktopOpenLinkTitle(String name);

  /// Field label for the link to open on a phone
  ///
  /// In en, this message translates to:
  /// **'Link'**
  String get linkDesktopOpenLinkLabel;

  /// Button that sends the link to the phone
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get linkDesktopOpen;

  /// Snackbar after something was sent to a phone
  ///
  /// In en, this message translates to:
  /// **'Sent to {name}'**
  String linkDesktopSentToPhone(String name);

  /// Snackbar when a message could not reach a phone
  ///
  /// In en, this message translates to:
  /// **'The phone did not receive it'**
  String get linkDesktopNotDelivered;

  /// Snackbar when Continue on phone is used without a current song
  ///
  /// In en, this message translates to:
  /// **'Nothing is playing on this computer'**
  String get linkDesktopNothingToContinue;

  /// Toadplayer Link desktop: song menu action that copies this computer's songs to the connected phone {name}
  ///
  /// In en, this message translates to:
  /// **'Send to {name}'**
  String linkTransferDesktopSendTo(String name);

  /// Toadplayer Link desktop: song menu action that copies a connected phone's songs into this computer's download folder
  ///
  /// In en, this message translates to:
  /// **'Save to this computer'**
  String get linkTransferDesktopSaveHere;

  /// Toadplayer Link desktop: snackbar when one song starts copying to the phone {name}
  ///
  /// In en, this message translates to:
  /// **'Sending \"{title}\" to {name}'**
  String linkTransferDesktopSendingSong(String title, String name);

  /// Toadplayer Link desktop: snackbar when songs start copying to the phone {name}
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Sending 1 song to {name}} other{Sending {count} songs to {name}}}'**
  String linkTransferDesktopSendingSongs(int count, String name);

  /// Toadplayer Link desktop: snackbar when one song of the phone {name} starts copying to this computer
  ///
  /// In en, this message translates to:
  /// **'Receiving \"{title}\" from {name}'**
  String linkTransferDesktopReceivingSong(String title, String name);

  /// Toadplayer Link desktop: snackbar when songs of the phone {name} start copying to this computer
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Receiving 1 song from {name}} other{Receiving {count} songs from {name}}}'**
  String linkTransferDesktopReceivingSongs(int count, String name);

  /// Toadplayer Link desktop: snackbar action that opens the list of song transfers
  ///
  /// In en, this message translates to:
  /// **'View'**
  String get linkTransferDesktopView;

  /// Toadplayer Link desktop: snackbar when Send to phone finds no song file on this computer to send
  ///
  /// In en, this message translates to:
  /// **'None of these songs can be sent right now'**
  String get linkTransferDesktopNothingToSend;

  /// Toadplayer Link desktop: snackbar when Save to this computer finds no song of a connected phone
  ///
  /// In en, this message translates to:
  /// **'None of these songs can be saved right now'**
  String get linkTransferDesktopNothingToSave;

  /// Tooltip of the desktop button that scrolls a horizontal shelf of albums or artists back
  ///
  /// In en, this message translates to:
  /// **'Scroll back'**
  String get desktopScrollBack;

  /// Tooltip of the desktop button that scrolls a horizontal shelf of albums or artists forward
  ///
  /// In en, this message translates to:
  /// **'Scroll forward'**
  String get desktopScrollForward;

  /// Desktop Settings page that lists the app's keyboard shortcuts
  ///
  /// In en, this message translates to:
  /// **'Keyboard Shortcuts'**
  String get settingsKeyboardShortcuts;

  /// Subtitle of the Keyboard Shortcuts entry in desktop Settings
  ///
  /// In en, this message translates to:
  /// **'Keys for playback, navigation and panels'**
  String get settingsKeyboardShortcutsSubtitle;

  /// Keyboard Shortcuts section for moving between pages
  ///
  /// In en, this message translates to:
  /// **'Navigation'**
  String get desktopShortcutsNavigation;

  /// Keyboard Shortcuts row for Escape, which leaves a text field or closes the top dialog or page
  ///
  /// In en, this message translates to:
  /// **'Close dialog or page'**
  String get desktopShortcutDismiss;

  /// Keyboard Shortcuts row and View menu item that returns to the destination left with Back
  ///
  /// In en, this message translates to:
  /// **'Forward'**
  String get desktopShortcutForward;

  /// Keyboard Shortcuts row for the shortcut that collapses or expands the desktop sidebar
  ///
  /// In en, this message translates to:
  /// **'Show or hide sidebar'**
  String get desktopShortcutToggleSidebar;

  /// Phone Settings entry that pairs the phone with the Toadplayer desktop app on the local network
  ///
  /// In en, this message translates to:
  /// **'Toadplayer on your computer'**
  String get linkSettingsTitle;

  /// Subtitle of the Toadplayer on your computer entry in phone Settings
  ///
  /// In en, this message translates to:
  /// **'Play and control your computer\'s library'**
  String get linkSettingsSubtitle;

  /// Title of the page listing computers running Toadplayer that the phone can pair with; kept short for the large title
  ///
  /// In en, this message translates to:
  /// **'Computers'**
  String get linkPageTitle;

  /// Introduction at the top of the computers page
  ///
  /// In en, this message translates to:
  /// **'Pair with Toadplayer on your computer to play its library on this phone and control what it plays. Both devices need to be on the same network.'**
  String get linkPageDescription;

  /// Section header for computers this phone is paired with
  ///
  /// In en, this message translates to:
  /// **'Paired computers'**
  String get linkPairedSection;

  /// Section header for what this phone shares with and how it follows its paired computer
  ///
  /// In en, this message translates to:
  /// **'This phone'**
  String get linkPhoneSection;

  /// Switch title: this phone's songs appear in the paired computer's Library
  ///
  /// In en, this message translates to:
  /// **'Show songs on the computer'**
  String get linkShareSongsTitle;

  /// Switch subtitle for showing this phone's songs on the computer
  ///
  /// In en, this message translates to:
  /// **'Songs on this phone appear in the computer\'s Library and play there while this phone is connected'**
  String get linkShareSongsSubtitle;

  /// Switch title: the phone's player shows the computer when the computer starts playing
  ///
  /// In en, this message translates to:
  /// **'Follow the computer\'s playback'**
  String get linkFollowDesktopTitle;

  /// Switch subtitle for following the computer's playback
  ///
  /// In en, this message translates to:
  /// **'When the computer starts playing, this phone shows and controls it'**
  String get linkFollowDesktopSubtitle;

  /// Section header for computers running Toadplayer found on the local network
  ///
  /// In en, this message translates to:
  /// **'On this network'**
  String get linkNearbySection;

  /// Row shown while the phone searches the local network for computers
  ///
  /// In en, this message translates to:
  /// **'Looking for computers...'**
  String get linkSearching;

  /// Row shown when the phone is not searching and found no computer
  ///
  /// In en, this message translates to:
  /// **'No computers found'**
  String get linkNoneFoundTitle;

  /// Hint under the search row when no computer was found yet; Share with Toadplayer on your phone is the name of the desktop setting
  ///
  /// In en, this message translates to:
  /// **'Open Toadplayer on your computer and turn on Share with Toadplayer on your phone in its settings.'**
  String get linkNoneFound;

  /// Button and dialog title for pairing with a computer by typing its address and port
  ///
  /// In en, this message translates to:
  /// **'Add by address'**
  String get linkAddManually;

  /// Field label for the computer's IP address or host name
  ///
  /// In en, this message translates to:
  /// **'Computer address'**
  String get linkManualHost;

  /// Field label for the network port of the Toadplayer desktop server
  ///
  /// In en, this message translates to:
  /// **'Port'**
  String get linkManualPort;

  /// Explains where to find the address and port to type
  ///
  /// In en, this message translates to:
  /// **'Toadplayer on your computer shows its address and port where you turn on sharing.'**
  String get linkManualMessage;

  /// Dialog action that continues to the PIN step after typing an address
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get linkContinue;

  /// Status of the paired computer that is connected
  ///
  /// In en, this message translates to:
  /// **'Connected'**
  String get linkStateConnected;

  /// Status of the paired computer while the phone connects to it
  ///
  /// In en, this message translates to:
  /// **'Connecting...'**
  String get linkStateConnecting;

  /// Status of the paired computer when it cannot be reached
  ///
  /// In en, this message translates to:
  /// **'Not connected'**
  String get linkStateDisconnected;

  /// Status of a paired computer other than the one in use; tapping it makes it the one in use
  ///
  /// In en, this message translates to:
  /// **'Tap to use this computer'**
  String get linkStateInactive;

  /// Label next to the paired computer the phone currently uses, shown when several are paired
  ///
  /// In en, this message translates to:
  /// **'In use'**
  String get linkActive;

  /// Action that unpairs a computer from this phone
  ///
  /// In en, this message translates to:
  /// **'Forget'**
  String get linkForget;

  /// Title of the dialog confirming that a paired computer is forgotten
  ///
  /// In en, this message translates to:
  /// **'Forget {name}?'**
  String linkForgetTitle(String name);

  /// Explanation in the forget computer dialog
  ///
  /// In en, this message translates to:
  /// **'This phone stops connecting to it. You can pair again later.'**
  String get linkForgetMessage;

  /// Switch in the forget computer dialog that also removes the computer's network connection and Library source
  ///
  /// In en, this message translates to:
  /// **'Also remove its music from Library'**
  String get linkForgetRemoveLibrary;

  /// Title of the dialog asking for the pairing PIN
  ///
  /// In en, this message translates to:
  /// **'Pair with {name}'**
  String linkPinTitle(String name);

  /// Instruction in the pairing PIN dialog
  ///
  /// In en, this message translates to:
  /// **'Enter the 6-digit PIN shown on your computer.'**
  String get linkPinMessage;

  /// Label of the pairing PIN field
  ///
  /// In en, this message translates to:
  /// **'PIN'**
  String get linkPinField;

  /// Security check in the PIN dialog; the placeholder is 8 hexadecimal characters of the computer's certificate fingerprint, grouped as 'ab12 cd34'
  ///
  /// In en, this message translates to:
  /// **'Your computer shows the code {code} next to the PIN. Pair only if it matches.'**
  String linkPinCode(String code);

  /// Note in the PIN dialog when the computer reports that no pairing window is open
  ///
  /// In en, this message translates to:
  /// **'Pairing is not open yet. Start pairing in Toadplayer on your computer to show a PIN.'**
  String get linkPinNotOpen;

  /// Action that sends the PIN to pair with the computer
  ///
  /// In en, this message translates to:
  /// **'Pair'**
  String get linkPair;

  /// Message after pairing succeeded
  ///
  /// In en, this message translates to:
  /// **'Paired with {name}. Its music is being added to Library.'**
  String linkPaired(String name);

  /// Action that repeats pairing with a computer that no longer accepts this phone
  ///
  /// In en, this message translates to:
  /// **'Pair again'**
  String get linkPairAgain;

  /// Toadplayer Link: title of the list of songs copied between this device and a linked phone or computer, and of the rows that open it
  ///
  /// In en, this message translates to:
  /// **'Transfers'**
  String get linkTransfersTitle;

  /// Section of the Transfers list for transfers that are running or waiting their turn
  ///
  /// In en, this message translates to:
  /// **'In progress'**
  String get linkTransfersInProgress;

  /// Section of the Transfers list for transfers that stopped: done, stopped by someone or failed
  ///
  /// In en, this message translates to:
  /// **'Finished'**
  String get linkTransfersFinished;

  /// Action that removes the finished transfers from the Transfers list; the copied songs stay
  ///
  /// In en, this message translates to:
  /// **'Clear finished'**
  String get linkTransfersClearFinished;

  /// Title of the empty Transfers list, also the status of the row that opens it while there is none
  ///
  /// In en, this message translates to:
  /// **'No transfers yet'**
  String get linkTransfersEmptyTitle;

  /// Hint under the empty Transfers list naming where a transfer starts (the Send to and Save to this device actions)
  ///
  /// In en, this message translates to:
  /// **'Send or save songs from a song\'s menu, an album or a selection.'**
  String get linkTransfersEmptyMessage;

  /// Title of a running or waiting transfer that copies this device's songs to a linked device
  ///
  /// In en, this message translates to:
  /// **'Sending {count, plural, =1{1 song} other{{count} songs}} to {name}'**
  String linkTransfersSending(int count, String name);

  /// Title of a running or waiting transfer that copies a linked device's songs to this device
  ///
  /// In en, this message translates to:
  /// **'Receiving {count, plural, =1{1 song} other{{count} songs}} from {name}'**
  String linkTransfersReceiving(int count, String name);

  /// Title of a running or waiting transfer of one song from this device; the placeholder is the song's title
  ///
  /// In en, this message translates to:
  /// **'Sending {title} to {name}'**
  String linkTransfersSendingSong(String title, String name);

  /// Title of a running or waiting transfer of one song to this device; the placeholder is the song's title
  ///
  /// In en, this message translates to:
  /// **'Receiving {title} from {name}'**
  String linkTransfersReceivingSong(String title, String name);

  /// Title of a finished transfer from this device to a linked one; its outcome shows below
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 song} other{{count} songs}} to {name}'**
  String linkTransfersSongsTo(int count, String name);

  /// Title of a finished transfer from a linked device to this one; its outcome shows below
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 song} other{{count} songs}} from {name}'**
  String linkTransfersSongsFrom(int count, String name);

  /// Title of a finished transfer of one song from this device; the placeholder is the song's title
  ///
  /// In en, this message translates to:
  /// **'{title} to {name}'**
  String linkTransfersSongTo(String title, String name);

  /// Title of a finished transfer of one song to this device; the placeholder is the song's title
  ///
  /// In en, this message translates to:
  /// **'{title} from {name}'**
  String linkTransfersSongFrom(String title, String name);

  /// Which song of a running transfer is being copied, for example '3 of 12'
  ///
  /// In en, this message translates to:
  /// **'{position} of {total}'**
  String linkTransfersPosition(int position, int total);

  /// How much of a transfer or song has been copied, as a percentage
  ///
  /// In en, this message translates to:
  /// **'{percent}%'**
  String linkTransfersPercent(int percent);

  /// Status of a transfer or song that waits for the ones before it
  ///
  /// In en, this message translates to:
  /// **'Waiting'**
  String get linkTransfersWaiting;

  /// Outcome of a finished transfer: how many songs were copied
  ///
  /// In en, this message translates to:
  /// **'{count, plural, other{{count} saved}}'**
  String linkTransfersSavedCount(int count);

  /// Outcome of a finished transfer: how many songs the receiving device already had, so they were not copied again
  ///
  /// In en, this message translates to:
  /// **'{count, plural, other{{count} already there}}'**
  String linkTransfersAlreadyThereCount(int count);

  /// Outcome of a finished transfer: how many songs could not be copied
  ///
  /// In en, this message translates to:
  /// **'{count, plural, other{{count} failed}}'**
  String linkTransfersFailedCount(int count);

  /// Outcome of a transfer someone stopped, with how many of its songs were finished
  ///
  /// In en, this message translates to:
  /// **'{done, plural, =0{Stopped} other{Stopped after {done} of {total}}}'**
  String linkTransfersStopped(int done, int total);

  /// Why a transfer failed: the devices lost their connection
  ///
  /// In en, this message translates to:
  /// **'Connection lost'**
  String get linkTransfersReasonDisconnected;

  /// Why a transfer to this device failed: no download folder is set
  ///
  /// In en, this message translates to:
  /// **'Choose a download folder first'**
  String get linkTransfersReasonNoFolder;

  /// Why a transfer to the linked device failed: that device has no download folder set
  ///
  /// In en, this message translates to:
  /// **'{name} has no download folder'**
  String linkTransfersReasonNoFolderPeer(String name);

  /// Why a transfer failed: the receiving device could not take it now
  ///
  /// In en, this message translates to:
  /// **'Busy, try again later'**
  String get linkTransfersReasonBusy;

  /// Why a transfer failed, when there is no more specific reason
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get linkTransfersReasonError;

  /// State of one song in a transfer: it was copied
  ///
  /// In en, this message translates to:
  /// **'Saved'**
  String get linkTransfersSongSaved;

  /// State of one song in a transfer: the receiving device already had it
  ///
  /// In en, this message translates to:
  /// **'Already there'**
  String get linkTransfersSongAlreadyThere;

  /// State of one song in a transfer: it could not be copied
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get linkTransfersSongFailed;

  /// State of the song a transfer copies right now
  ///
  /// In en, this message translates to:
  /// **'Copying'**
  String get linkTransfersSongCopying;

  /// State of a song a stopped or failed transfer did not reach
  ///
  /// In en, this message translates to:
  /// **'Not copied'**
  String get linkTransfersSongNotCopied;

  /// Tooltip of the button that stops a running or waiting transfer; songs already copied stay
  ///
  /// In en, this message translates to:
  /// **'Stop transfer'**
  String get linkTransfersStop;

  /// Status of the row that opens the Transfers list while several transfers run, followed by their progress
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 transfer} other{{count} transfers}}'**
  String linkTransfersActiveCount(int count);

  /// Status of the row that opens the Transfers list when none runs: how many finished since the app opened
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 transfer finished} other{{count} transfers finished}}'**
  String linkTransfersFinishedCount(int count);

  /// Pairing error when the PIN is wrong
  ///
  /// In en, this message translates to:
  /// **'That PIN is not right. Check the PIN on your computer and try again.'**
  String get linkErrorBadPin;

  /// Pairing error when the computer has no pairing window open
  ///
  /// In en, this message translates to:
  /// **'Pairing is not open on your computer. Start pairing there, then try again.'**
  String get linkErrorPairingClosed;

  /// Pairing error when the computer rate limits pairing attempts
  ///
  /// In en, this message translates to:
  /// **'Too many attempts. Wait a moment, then try again.'**
  String get linkErrorTooManyAttempts;

  /// Title of the warning shown when the computer's certificate does not match what it reported
  ///
  /// In en, this message translates to:
  /// **'Computer not verified'**
  String get linkErrorCertificateTitle;

  /// Warning shown when the certificate seen during the connection differs from the computer's reported fingerprint
  ///
  /// In en, this message translates to:
  /// **'The computer\'s security certificate does not match what it reported. Someone on this network may be intercepting the connection, so pairing stopped.'**
  String get linkErrorCertificate;

  /// Pairing error when the computer is not a compatible Toadplayer desktop
  ///
  /// In en, this message translates to:
  /// **'This computer runs a Toadplayer version that cannot pair with this phone. Update Toadplayer on both devices.'**
  String get linkErrorIncompatible;

  /// Pairing error when the computer cannot be reached
  ///
  /// In en, this message translates to:
  /// **'The computer could not be reached. Check that Toadplayer is open on it and that both devices are on the same network.'**
  String get linkErrorUnreachable;

  /// Pairing error when the computer does not answer
  ///
  /// In en, this message translates to:
  /// **'The computer did not answer in time. Try again.'**
  String get linkErrorTimeout;

  /// Error for an address or port that cannot be used
  ///
  /// In en, this message translates to:
  /// **'Enter a valid address and port, such as 192.168.1.20 and 47710.'**
  String get linkErrorInvalidAddress;

  /// Generic pairing error
  ///
  /// In en, this message translates to:
  /// **'Pairing failed. Try again.'**
  String get linkErrorFailed;

  /// Title of the notice shown when the phone is not allowed to use the local network
  ///
  /// In en, this message translates to:
  /// **'Local network access needed'**
  String get linkLocalNetworkTitle;

  /// Explains why local network access is needed
  ///
  /// In en, this message translates to:
  /// **'Toadplayer needs local network access to find your computer and connect to it.'**
  String get linkLocalNetworkMessage;

  /// Button that asks for local network access again
  ///
  /// In en, this message translates to:
  /// **'Allow access'**
  String get linkLocalNetworkAllow;

  /// Title of the notice shown when the phone is not connected to Wi-Fi or Ethernet
  ///
  /// In en, this message translates to:
  /// **'Not on Wi-Fi'**
  String get linkWifiOffTitle;

  /// Explains that the phone must join the computer's Wi-Fi network
  ///
  /// In en, this message translates to:
  /// **'Connect this phone to the same Wi-Fi network as your computer.'**
  String get linkWifiOffMessage;

  /// Notice when the paired computer refuses the phone's key
  ///
  /// In en, this message translates to:
  /// **'{name} no longer accepts this phone. Pair again to reconnect.'**
  String linkIssueUnauthorized(String name);

  /// Warning when a paired computer's certificate changed
  ///
  /// In en, this message translates to:
  /// **'{name} presented a different security certificate. Pair again only if you reinstalled or reset Toadplayer on that computer.'**
  String linkIssueCertificate(String name);

  /// Notice when the paired computer speaks another protocol version
  ///
  /// In en, this message translates to:
  /// **'Update Toadplayer on this phone and on {name} to connect.'**
  String linkIssueIncompatible(String name);

  /// Playlist header action and page title for reordering the playlist's tracks
  ///
  /// In en, this message translates to:
  /// **'Edit order'**
  String get playlistEditOrder;

  /// Explanation at the top of the playlist reorder page
  ///
  /// In en, this message translates to:
  /// **'Drag a track by its handle, or touch and hold it, to move it.'**
  String get playlistEditOrderDescription;

  /// Snackbar after saving a new playlist track order
  ///
  /// In en, this message translates to:
  /// **'Playlist order saved'**
  String get playlistEditOrderSaved;

  /// No description provided for @collectionOrderSaved.
  ///
  /// In en, this message translates to:
  /// **'Song order saved'**
  String get collectionOrderSaved;

  /// No description provided for @collectionOrderChanged.
  ///
  /// In en, this message translates to:
  /// **'This collection changed while editing. Please reorder it again.'**
  String get collectionOrderChanged;

  /// No description provided for @collectionOrderSaveFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not save the song order. Try again.'**
  String get collectionOrderSaveFailed;

  /// Create playlist option that starts with no tracks
  ///
  /// In en, this message translates to:
  /// **'Empty playlist'**
  String get playlistCreateEmpty;

  /// Subtitle of the empty playlist option
  ///
  /// In en, this message translates to:
  /// **'Add tracks later from any list'**
  String get playlistCreateEmptySubtitle;

  /// Create playlist option that uses the tracks of one Library folder
  ///
  /// In en, this message translates to:
  /// **'From a folder'**
  String get playlistCreateFromFolder;

  /// Subtitle of the create playlist from folder option
  ///
  /// In en, this message translates to:
  /// **'Every track in one folder of your Library'**
  String get playlistCreateFromFolderSubtitle;

  /// Create playlist option that imports an M3U or CSV file
  ///
  /// In en, this message translates to:
  /// **'Import playlist file'**
  String get playlistImportFile;

  /// Subtitle of the import playlist file option
  ///
  /// In en, this message translates to:
  /// **'M3U, M3U8 or CSV, matched to files on this device'**
  String get playlistImportFileSubtitle;

  /// Title of the sheet listing Library folders to turn into a playlist
  ///
  /// In en, this message translates to:
  /// **'Choose a folder'**
  String get playlistFolderPickerTitle;

  /// Title of the empty folder picker when no Library folder has tracks
  ///
  /// In en, this message translates to:
  /// **'No folders yet'**
  String get playlistFolderPickerEmptyTitle;

  /// Shown when no Library folder has tracks to create a playlist from
  ///
  /// In en, this message translates to:
  /// **'No scanned tracks yet. Add a Library folder and scan it first.'**
  String get playlistFolderPickerEmpty;

  /// Snackbar after creating a playlist from a folder
  ///
  /// In en, this message translates to:
  /// **'Created {name} with {count, plural, =1{1 track} other{{count} tracks}}'**
  String playlistCreatedWithTracks(String name, int count);

  /// Snackbar after importing a playlist file; matched counts tracks linked to a local file
  ///
  /// In en, this message translates to:
  /// **'Imported {count, plural, =1{1 track} other{{count} tracks}} into {name}, {matched} matched to files on this device'**
  String playlistImportResult(int count, String name, int matched);

  /// Snackbar when an imported playlist file has no entries
  ///
  /// In en, this message translates to:
  /// **'No tracks found in this file'**
  String get playlistImportNoTracks;

  /// Snackbar when reading or parsing an imported playlist file fails
  ///
  /// In en, this message translates to:
  /// **'Could not read this playlist file'**
  String get playlistImportFailed;

  /// Title of the screen that identifies a song playing nearby through the microphone (keep short)
  ///
  /// In en, this message translates to:
  /// **'Identify Song'**
  String get recognizeTitle;

  /// Tooltip of the microphone button in the search field that opens song identification
  ///
  /// In en, this message translates to:
  /// **'Identify a song playing nearby'**
  String get recognizeSearchTooltip;

  /// Headline of the song identification screen before listening starts
  ///
  /// In en, this message translates to:
  /// **'What\'s playing?'**
  String get recognizeIdleTitle;

  /// Hint under the headline before listening starts
  ///
  /// In en, this message translates to:
  /// **'Hold your device near the music, then tap to listen.'**
  String get recognizeIdleMessage;

  /// Accessible name of the large microphone button that starts listening
  ///
  /// In en, this message translates to:
  /// **'Start listening'**
  String get recognizeStartListening;

  /// Privacy note on the identification screen; Shazam is the recognition service and must not be translated
  ///
  /// In en, this message translates to:
  /// **'A sound fingerprint is sent to Shazam to find the song. The recording stays on your device.'**
  String get recognizeServiceNote;

  /// Status while the microphone listens for a song
  ///
  /// In en, this message translates to:
  /// **'Listening…'**
  String get recognizeListening;

  /// Hint while the microphone listens
  ///
  /// In en, this message translates to:
  /// **'Keep the music playing near your device.'**
  String get recognizeListeningMessage;

  /// Status after listening stops while the last answer is on its way
  ///
  /// In en, this message translates to:
  /// **'Searching…'**
  String get recognizeSearching;

  /// Title when the recognition service did not know the song
  ///
  /// In en, this message translates to:
  /// **'No match found'**
  String get recognizeNoMatchTitle;

  /// Hint when no song was found
  ///
  /// In en, this message translates to:
  /// **'Try again closer to the music, or when it\'s louder.'**
  String get recognizeNoMatchMessage;

  /// Button that starts listening again after no match or an error
  ///
  /// In en, this message translates to:
  /// **'Try Again'**
  String get recognizeTryAgain;

  /// Title when the microphone captured too little or too quiet audio to identify
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t hear the music'**
  String get recognizeQuietTitle;

  /// Hint when the captured audio was too quiet or short
  ///
  /// In en, this message translates to:
  /// **'Move closer to the music and try again.'**
  String get recognizeQuietMessage;

  /// Title when identification failed because the network is unreachable
  ///
  /// In en, this message translates to:
  /// **'No connection'**
  String get recognizeNetworkTitle;

  /// Hint when identification failed because of the network
  ///
  /// In en, this message translates to:
  /// **'Check your internet connection and try again.'**
  String get recognizeNetworkMessage;

  /// Title when the recognition service asked to slow down
  ///
  /// In en, this message translates to:
  /// **'Too many tries'**
  String get recognizeRateLimitedTitle;

  /// Hint when the recognition service rate limited the app
  ///
  /// In en, this message translates to:
  /// **'Wait a minute, then try again.'**
  String get recognizeRateLimitedMessage;

  /// Title when the recognition service failed or answered unexpectedly
  ///
  /// In en, this message translates to:
  /// **'Identification unavailable'**
  String get recognizeUnavailableTitle;

  /// Hint when the recognition service failed
  ///
  /// In en, this message translates to:
  /// **'The recognition service didn\'t answer. Try again later.'**
  String get recognizeUnavailableMessage;

  /// Title when the microphone could not record
  ///
  /// In en, this message translates to:
  /// **'Microphone unavailable'**
  String get recognizeMicrophoneTitle;

  /// Hint when the microphone could not record
  ///
  /// In en, this message translates to:
  /// **'No microphone is available, or another app is using it.'**
  String get recognizeMicrophoneMessage;

  /// Title when microphone permission was denied
  ///
  /// In en, this message translates to:
  /// **'Microphone access is off'**
  String get recognizePermissionTitle;

  /// Explanation when microphone permission was denied
  ///
  /// In en, this message translates to:
  /// **'Toadplayer uses the microphone only while you identify a song.'**
  String get recognizePermissionMessage;

  /// Button that asks for microphone permission again
  ///
  /// In en, this message translates to:
  /// **'Allow Microphone'**
  String get recognizePermissionAllow;

  /// Button that plays the identified song from the downloads or library
  ///
  /// In en, this message translates to:
  /// **'Play in Toadplayer'**
  String get recognizePlay;

  /// Button that searches for the identified song when it is not in the library
  ///
  /// In en, this message translates to:
  /// **'Search in Toadplayer'**
  String get recognizeSearch;

  /// Button that opens the identified song on the Shazam website; Shazam must not be translated
  ///
  /// In en, this message translates to:
  /// **'Open in Shazam'**
  String get recognizeOpenInShazam;

  /// Button that starts a new identification from a result
  ///
  /// In en, this message translates to:
  /// **'Listen Again'**
  String get recognizeListenAgain;

  /// Section header for the list of songs identified before
  ///
  /// In en, this message translates to:
  /// **'Recently Identified'**
  String get recognizeHistory;

  /// Tooltip of the header button that clears the identification history
  ///
  /// In en, this message translates to:
  /// **'Clear identified songs'**
  String get recognizeClearHistory;

  /// Confirmation message before clearing the identification history
  ///
  /// In en, this message translates to:
  /// **'Remove every song from this list?'**
  String get recognizeClearHistoryMessage;

  /// Heading of the songs suggested below an album, single or playlist
  ///
  /// In en, this message translates to:
  /// **'Suggested songs'**
  String get collectionSuggestionsTitle;

  /// Line under the suggestions heading when an extension suggested songs like the album's or playlist's
  ///
  /// In en, this message translates to:
  /// **'Based on the songs above'**
  String get collectionSuggestionsRelated;

  /// Line under the suggestions heading when the songs were found by searching the album's or playlist's artists
  ///
  /// In en, this message translates to:
  /// **'More from these artists'**
  String get collectionSuggestionsByArtists;

  /// Tooltip of the button that loads other suggestions
  ///
  /// In en, this message translates to:
  /// **'Suggest other songs'**
  String get collectionSuggestionsRefresh;

  /// No description provided for @lastfmDescription.
  ///
  /// In en, this message translates to:
  /// **'Track your listening and show what is playing on Last.fm.'**
  String get lastfmDescription;

  /// No description provided for @lastfmConnect.
  ///
  /// In en, this message translates to:
  /// **'Connect Last.fm'**
  String get lastfmConnect;

  /// No description provided for @lastfmConnecting.
  ///
  /// In en, this message translates to:
  /// **'Connecting to Last.fm...'**
  String get lastfmConnecting;

  /// No description provided for @lastfmFinishConnection.
  ///
  /// In en, this message translates to:
  /// **'Finish connecting'**
  String get lastfmFinishConnection;

  /// No description provided for @lastfmAuthorizeHelp.
  ///
  /// In en, this message translates to:
  /// **'Approve access in your browser, then return here and choose Finish connecting.'**
  String get lastfmAuthorizeHelp;

  /// No description provided for @lastfmScrobbling.
  ///
  /// In en, this message translates to:
  /// **'Scrobbling'**
  String get lastfmScrobbling;

  /// No description provided for @lastfmScrobblingDescription.
  ///
  /// In en, this message translates to:
  /// **'Send songs you listen to in the built-in player to Last.fm.'**
  String get lastfmScrobblingDescription;

  /// No description provided for @lastfmNowPlaying.
  ///
  /// In en, this message translates to:
  /// **'Show Now Playing'**
  String get lastfmNowPlaying;

  /// No description provided for @lastfmNowPlayingDescription.
  ///
  /// In en, this message translates to:
  /// **'Show the current song on your Last.fm profile.'**
  String get lastfmNowPlayingDescription;

  /// No description provided for @lastfmDisconnect.
  ///
  /// In en, this message translates to:
  /// **'Disconnect Last.fm'**
  String get lastfmDisconnect;

  /// No description provided for @lastfmConnectionError.
  ///
  /// In en, this message translates to:
  /// **'Last.fm could not be reached. Saved scrobbles will be retried automatically.'**
  String get lastfmConnectionError;

  /// No description provided for @lastfmStorageError.
  ///
  /// In en, this message translates to:
  /// **'Last.fm settings could not be saved. Check access to this device\'s secure storage and try again.'**
  String get lastfmStorageError;

  /// No description provided for @lastfmAuthorizationPending.
  ///
  /// In en, this message translates to:
  /// **'Access has not been approved yet. Finish authorizing Toadplayer in your browser.'**
  String get lastfmAuthorizationPending;

  /// No description provided for @lastfmAuthorizationExpired.
  ///
  /// In en, this message translates to:
  /// **'This connection request expired. Connect again to continue.'**
  String get lastfmAuthorizationExpired;

  /// No description provided for @lastfmReauthenticate.
  ///
  /// In en, this message translates to:
  /// **'Your Last.fm connection expired. Connect again to resume scrobbling.'**
  String get lastfmReauthenticate;

  /// No description provided for @lastfmUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Last.fm is unavailable in this build.'**
  String get lastfmUnavailable;

  /// No description provided for @lastfmRejected.
  ///
  /// In en, this message translates to:
  /// **'Last.fm rejected a scrobble. Check the song\'s title and artist tags.'**
  String get lastfmRejected;

  /// Number of saved Last.fm scrobbles awaiting submission
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 scrobble waiting to sync} other{{count} scrobbles waiting to sync}}'**
  String lastfmPending(int count);

  /// No description provided for @audioOutputSystem.
  ///
  /// In en, this message translates to:
  /// **'This device and Bluetooth'**
  String get audioOutputSystem;

  /// No description provided for @audioOutputCast.
  ///
  /// In en, this message translates to:
  /// **'Cast to TV'**
  String get audioOutputCast;

  /// No description provided for @audioOutputCastDescription.
  ///
  /// In en, this message translates to:
  /// **'Google Cast devices on the same Wi-Fi network'**
  String get audioOutputCastDescription;

  /// No description provided for @audioOutputStopCasting.
  ///
  /// In en, this message translates to:
  /// **'Stop casting'**
  String get audioOutputStopCasting;

  /// No description provided for @audioOutputCastUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Unable to open Google Cast. Check Google Play services and local network access.'**
  String get audioOutputCastUnavailable;

  /// iOS Audio output sheet row that opens the system picker for AirPlay, Bluetooth and this iPhone
  ///
  /// In en, this message translates to:
  /// **'AirPlay and Bluetooth'**
  String get audioOutputAirPlay;

  /// Shown in the Cast device picker on iOS and desktop while no receiver has been found on the network yet
  ///
  /// In en, this message translates to:
  /// **'Looking for Google Cast devices…'**
  String get audioOutputCastSearching;

  /// Snackbar after connecting to a Google Cast receiver failed; device is the name the owner gave it
  ///
  /// In en, this message translates to:
  /// **'Could not connect to {device}'**
  String audioOutputCastConnectFailed(String device);

  /// Tooltip of the button that adds a suggested song to the user's playlist shown above
  ///
  /// In en, this message translates to:
  /// **'Add to this playlist'**
  String get collectionSuggestionsAddHere;

  /// Files settings section header for actions on already-downloaded files
  ///
  /// In en, this message translates to:
  /// **'Existing Files'**
  String get sectionExistingDownloads;

  /// Files settings action that moves and renames already-downloaded tracks to match the current folder and filename rules
  ///
  /// In en, this message translates to:
  /// **'Apply Rules to Existing Files'**
  String get reorganizeLibraryTitle;

  /// Subtitle of the apply-rules-to-existing-files action
  ///
  /// In en, this message translates to:
  /// **'Move and rename downloads and Local Library files in your download folder so they follow the folder and filename rules above'**
  String get reorganizeLibrarySubtitle;

  /// Shown while Toadplayer works out which downloaded files need to move
  ///
  /// In en, this message translates to:
  /// **'Checking your files…'**
  String get reorganizeLibraryScanning;

  /// Snackbar when the user tries to reorganize files while downloads are running
  ///
  /// In en, this message translates to:
  /// **'Wait for active downloads to finish before reorganizing files'**
  String get reorganizeLibraryBusy;

  /// Dialog title when every downloaded file already follows the rules
  ///
  /// In en, this message translates to:
  /// **'Already Organized'**
  String get reorganizeLibraryNothingTitle;

  /// Dialog message when there is nothing to move
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{There are no tracks in your download folder to reorganize. Files Toadplayer did not download are included once the folder is added and scanned in Local Library.} =1{The track in your download folder already follows the current rules.} other{All {count} tracks in your download folder already follow the current rules.}}'**
  String reorganizeLibraryNothingMessage(int count);

  /// Confirmation dialog title before moving files
  ///
  /// In en, this message translates to:
  /// **'Reorganize {count} {count, plural, =1{file} other{files}}?'**
  String reorganizeLibraryConfirmTitle(int count);

  /// Confirmation dialog body before moving files
  ///
  /// In en, this message translates to:
  /// **'These tracks will be moved or renamed to match your current Files settings, using their tags. Lyrics (.lrc) files next to them move too, and folders left empty are removed.'**
  String get reorganizeLibraryConfirmMessage;

  /// Label above a few sample moves in the reorganize confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'For example:'**
  String get reorganizeLibraryExamples;

  /// Shown under the sample moves when more files will be moved
  ///
  /// In en, this message translates to:
  /// **'…and {count} more'**
  String reorganizeLibraryMoreChanges(int count);

  /// Note in the reorganize confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'{count} {count, plural, =1{track already matches} other{tracks already match}} and will stay where {count, plural, =1{it is} other{they are}}.'**
  String reorganizeLibraryAlreadyOrganized(int count);

  /// Note in the reorganize confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'{count} {count, plural, =1{track is} other{tracks are}} stored outside the current download folder and will be left alone.'**
  String reorganizeLibraryOutsideFolder(int count);

  /// Note in the reorganize confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'{count} {count, plural, =1{file} other{files}} could not be found and will be skipped.'**
  String reorganizeLibraryMissing(int count);

  /// Note in the reorganize confirmation dialog about scanned files without tags
  ///
  /// In en, this message translates to:
  /// **'{count} {count, plural, =1{file has} other{files have}} no artist tag and will be left alone.'**
  String reorganizeLibraryUntagged(int count);

  /// Hint in the reorganize confirmation dialog about which files are covered
  ///
  /// In en, this message translates to:
  /// **'Files Toadplayer did not download are only included after their folder is added and scanned in Local Library.'**
  String get reorganizeLibraryScanHint;

  /// Warning in the reorganize confirmation dialog when the folder rule depends on the playlist
  ///
  /// In en, this message translates to:
  /// **'Your folder rule uses the playlist name, which Toadplayer doesn\'t keep for past downloads, so files stay in their current folder and are only renamed.'**
  String get reorganizeLibraryKeepsPlaylistFolders;

  /// Warning in the reorganize confirmation dialog when playlist folders are enabled
  ///
  /// In en, this message translates to:
  /// **'Toadplayer doesn\'t keep which playlist a past download came from, so tracks inside playlist folders will be moved out of them.'**
  String get reorganizeLibraryDropsPlaylistFolders;

  /// Note in the reorganize confirmation dialog in Android SAF storage mode
  ///
  /// In en, this message translates to:
  /// **'Your download folder was picked through Android\'s folder picker, so each file is copied to its new place and then removed. This can take a while for a large library.'**
  String get reorganizeLibrarySafNote;

  /// Confirm button of the reorganize dialog
  ///
  /// In en, this message translates to:
  /// **'Move Files'**
  String get reorganizeLibraryConfirmAction;

  /// Title of the progress dialog while files are moved
  ///
  /// In en, this message translates to:
  /// **'Moving files'**
  String get reorganizeLibraryMoving;

  /// Snackbar after reorganizing files
  ///
  /// In en, this message translates to:
  /// **'Moved {moved} of {total} {total, plural, =1{file} other{files}}'**
  String reorganizeLibraryDone(int moved, int total);

  /// Snackbar after reorganizing files when some moves failed
  ///
  /// In en, this message translates to:
  /// **'Moved {moved} of {total} {total, plural, =1{file} other{files}} · {failed} failed'**
  String reorganizeLibraryDoneWithFailures(int moved, int total, int failed);

  /// No description provided for @offlineSave.
  ///
  /// In en, this message translates to:
  /// **'Save offline'**
  String get offlineSave;

  /// No description provided for @offlineOnDevice.
  ///
  /// In en, this message translates to:
  /// **'On this device'**
  String get offlineOnDevice;

  /// No description provided for @offlineOnIPhone.
  ///
  /// In en, this message translates to:
  /// **'On iPhone'**
  String get offlineOnIPhone;

  /// No description provided for @offlineOnPhone.
  ///
  /// In en, this message translates to:
  /// **'On phone'**
  String get offlineOnPhone;

  /// No description provided for @offlineServerOnly.
  ///
  /// In en, this message translates to:
  /// **'Server only'**
  String get offlineServerOnly;

  /// No description provided for @offlineServerAndDevice.
  ///
  /// In en, this message translates to:
  /// **'Server + device'**
  String get offlineServerAndDevice;

  /// No description provided for @offlineDeviceOnly.
  ///
  /// In en, this message translates to:
  /// **'Device only'**
  String get offlineDeviceOnly;

  /// No description provided for @offlineRemove.
  ///
  /// In en, this message translates to:
  /// **'Remove offline copy'**
  String get offlineRemove;

  /// No description provided for @offlineRemoveMessage.
  ///
  /// In en, this message translates to:
  /// **'Remove the offline copy from this device? The server file will be kept.'**
  String get offlineRemoveMessage;

  /// No description provided for @offlineDeleteServer.
  ///
  /// In en, this message translates to:
  /// **'Delete server copy'**
  String get offlineDeleteServer;

  /// No description provided for @offlineServerReadOnly.
  ///
  /// In en, this message translates to:
  /// **'This server connection does not support deleting files.'**
  String get offlineServerReadOnly;

  /// No description provided for @offlineDeleteServerMessage.
  ///
  /// In en, this message translates to:
  /// **'Delete the original file from the server? The offline copy on this device will be kept.'**
  String get offlineDeleteServerMessage;

  /// No description provided for @offlineSaving.
  ///
  /// In en, this message translates to:
  /// **'Saving offline'**
  String get offlineSaving;

  /// No description provided for @offlineResult.
  ///
  /// In en, this message translates to:
  /// **'Saved {saved}, already available {skipped}, failed {failed}'**
  String offlineResult(int saved, int skipped, int failed);

  /// No description provided for @offlineFailed.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t save the offline copy. Check the server connection and download folder access.'**
  String get offlineFailed;

  /// No description provided for @offlineNoSongs.
  ///
  /// In en, this message translates to:
  /// **'No network Library songs in this selection.'**
  String get offlineNoSongs;

  /// No description provided for @offlineCopyUnavailable.
  ///
  /// In en, this message translates to:
  /// **'The offline copy is unavailable. Save it again before deleting the server copy.'**
  String get offlineCopyUnavailable;

  /// No description provided for @offlinePlayingLocal.
  ///
  /// In en, this message translates to:
  /// **'Playing from this device'**
  String get offlinePlayingLocal;

  /// No description provided for @offlineStreaming.
  ///
  /// In en, this message translates to:
  /// **'Streaming from {server}'**
  String offlineStreaming(String server);

  /// No description provided for @openAudio.
  ///
  /// In en, this message translates to:
  /// **'Open audio'**
  String get openAudio;

  /// No description provided for @openAudioFolder.
  ///
  /// In en, this message translates to:
  /// **'Play folder'**
  String get openAudioFolder;

  /// Snackbar when planning or applying the reorganization fails
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t reorganize your files: {error}'**
  String reorganizeLibraryFailed(String error);

  /// Lyrics menu action and title of the lyrics editor, which edits lines and their times
  ///
  /// In en, this message translates to:
  /// **'Edit lyrics'**
  String get lyricsEditTitle;

  /// Button under 'No lyrics' in the player that opens the lyrics editor with an empty line
  ///
  /// In en, this message translates to:
  /// **'Write lyrics'**
  String get lyricsEditWrite;

  /// Lyrics editor button that gives the selected line the current playback position, then selects the next line
  ///
  /// In en, this message translates to:
  /// **'Set time'**
  String get lyricsEditSetTime;

  /// No description provided for @lyricsEditSetTimeTooltip.
  ///
  /// In en, this message translates to:
  /// **'Give the selected line the current position'**
  String get lyricsEditSetTimeTooltip;

  /// Short label of the button that moves the selected line's time 0.1 seconds earlier
  ///
  /// In en, this message translates to:
  /// **'−0.1'**
  String get lyricsEditEarlier;

  /// Short label of the button that moves the selected line's time 0.1 seconds later
  ///
  /// In en, this message translates to:
  /// **'+0.1'**
  String get lyricsEditLater;

  /// No description provided for @lyricsEditEarlierTooltip.
  ///
  /// In en, this message translates to:
  /// **'Move 0.1 s earlier'**
  String get lyricsEditEarlierTooltip;

  /// No description provided for @lyricsEditLaterTooltip.
  ///
  /// In en, this message translates to:
  /// **'Move 0.1 s later'**
  String get lyricsEditLaterTooltip;

  /// Shown for a lyric line that has no time yet
  ///
  /// In en, this message translates to:
  /// **'No time'**
  String get lyricsEditNoTime;

  /// No description provided for @lyricsEditPlayFrom.
  ///
  /// In en, this message translates to:
  /// **'Play from {time}'**
  String lyricsEditPlayFrom(String time);

  /// No description provided for @lyricsEditOutOfOrder.
  ///
  /// In en, this message translates to:
  /// **'Earlier than the line before it'**
  String get lyricsEditOutOfOrder;

  /// No description provided for @lyricsEditLineHint.
  ///
  /// In en, this message translates to:
  /// **'Lyric line'**
  String get lyricsEditLineHint;

  /// No description provided for @lyricsEditAddLine.
  ///
  /// In en, this message translates to:
  /// **'Add line'**
  String get lyricsEditAddLine;

  /// No description provided for @lyricsEditInsertBelow.
  ///
  /// In en, this message translates to:
  /// **'Insert line below'**
  String get lyricsEditInsertBelow;

  /// No description provided for @lyricsEditRemoveTime.
  ///
  /// In en, this message translates to:
  /// **'Remove time'**
  String get lyricsEditRemoveTime;

  /// No description provided for @lyricsEditDeleteLine.
  ///
  /// In en, this message translates to:
  /// **'Delete line'**
  String get lyricsEditDeleteLine;

  /// No description provided for @lyricsEditLineActions.
  ///
  /// In en, this message translates to:
  /// **'Line actions'**
  String get lyricsEditLineActions;

  /// No description provided for @lyricsEditSaved.
  ///
  /// In en, this message translates to:
  /// **'Lyrics saved'**
  String get lyricsEditSaved;

  /// No description provided for @lyricsEditSaveFailed.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t save the lyrics to this file'**
  String get lyricsEditSaveFailed;

  /// No description provided for @lyricsEditReadOnly.
  ///
  /// In en, this message translates to:
  /// **'Lyrics can\'t be saved to this song\'s file'**
  String get lyricsEditReadOnly;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => const <String>[
    'en',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  // Only English is shipped; anything else falls back to English.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    default:
      return AppLocalizationsEn();
  }
}
