package com.toadplayer.app

import android.app.DownloadManager
import android.content.ClipData
import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Environment
import android.provider.Settings
import io.flutter.plugin.common.MethodChannel
import java.io.File

/**
 * The native half of the self-update flow: the system DownloadManager job
 * and the package-installer handoff, exposed to Dart over the
 * `com.toadplayer.app/update` MethodChannel. Ported from toadFILES'
 * UpdateDownloader + Intents.installApkFromUri (the family's proven flow).
 *
 * PRIVACY STANCE: used only after the user taps "Download & install" on the
 * About screen; the download goes to the GitHub release asset URL and
 * nowhere else. Needs no storage permission — the APK lands in the
 * app-private external files dir, which is exactly why it reaches the
 * installer as a DownloadManager content URI.
 */
object UpdatePlugin {

    const val CHANNEL = "com.toadplayer.app/update"

    private const val APK_MIME = "application/vnd.android.package-archive"
    private const val DEFAULT_FILE_NAME = "toadplayer-update.apk"

    /** What the install call reports back to Dart. */
    object InstallResult {
        const val STARTED = "started"
        const val NEEDS_PERMISSION = "needsPermission"
        const val SETTINGS_FAILED = "settingsFailed"
        const val FAILED = "failed"
        const val NO_DOWNLOAD = "noDownload"
    }

    fun register(activity: MainActivity, messenger: io.flutter.plugin.common.BinaryMessenger) {
        MethodChannel(messenger, CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "download" -> download(activity, call, result)
                "progress" -> progress(activity, call, result)
                "install" -> install(activity, call, result)
                "cancel" -> cancel(activity, call, result)
                else -> result.notImplemented()
            }
        }
    }

    /**
     * Enqueues the APK download; returns the DownloadManager id. The
     * destination is deleted first because DownloadManager refuses to
     * overwrite an existing file — this is what makes a retry re-download.
     */
    private fun download(context: Context, call: io.flutter.plugin.common.MethodCall, result: MethodChannel.Result) {
        try {
            val url = call.argument<String>("url")
            if (url.isNullOrBlank()) {
                result.error("update", "The release has no downloadable APK URL.", null)
                return
            }
            val dm = context.getSystemService(Context.DOWNLOAD_SERVICE) as? DownloadManager
            if (dm == null) {
                result.error("update", "The system download service is unavailable.", null)
                return
            }
            val dir = context.getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS)
            if (dir == null) {
                result.error("update", "External storage is not available for the update download.", null)
                return
            }
            val requested = call.argument<String>("fileName") ?: DEFAULT_FILE_NAME
            val name = requested.takeLastWhile { it != '/' && it != '\\' }.ifBlank { DEFAULT_FILE_NAME }
            val dest = File(dir, name)
            if (dest.exists() && !dest.delete()) {
                result.error("update", "Could not prepare the download destination.", null)
                return
            }
            val req = DownloadManager.Request(Uri.parse(url)).apply {
                setTitle(call.argument<String>("title") ?: "Toadplayer update")
                setDescription(call.argument<String>("description") ?: "Downloading the new release")
                setMimeType(APK_MIME)
                setNotificationVisibility(DownloadManager.Request.VISIBILITY_VISIBLE_NOTIFY_COMPLETED)
                setDestinationUri(Uri.fromFile(dest))
                // User-initiated: honor the tap on whatever network the user is on.
                setAllowedOverMetered(true)
            }
            result.success(dm.enqueue(req))
        } catch (e: Exception) {
            result.error("update", e.message ?: "The download could not be started.", null)
        }
    }

    /**
     * One poll of the download job: status plus byte counters read off the
     * same cursor row, so the progress bar never sees bytes newer than its
     * status. status maps DownloadManager's constants as strings: running,
     * paused, pending, successful, failed, vanished.
     */
    private fun progress(context: Context, call: io.flutter.plugin.common.MethodCall, result: MethodChannel.Result) {
        try {
            val id = (call.arguments as? Number)?.toLong()
                ?: call.argument<Number>("id")?.toLong()
            if (id == null) {
                result.error("update", "No download id.", null)
                return
            }
            val dm = context.getSystemService(Context.DOWNLOAD_SERVICE) as? DownloadManager
            if (dm == null) {
                result.error("update", "The system download service is unavailable.", null)
                return
            }
            dm.query(DownloadManager.Query().setFilterById(id))?.use { c ->
                if (c.moveToFirst()) {
                    val status = when (c.getInt(c.getColumnIndexOrThrow(DownloadManager.COLUMN_STATUS))) {
                        DownloadManager.STATUS_SUCCESSFUL -> "successful"
                        DownloadManager.STATUS_FAILED -> "failed"
                        DownloadManager.STATUS_PAUSED -> "paused"
                        DownloadManager.STATUS_PENDING -> "pending"
                        else -> "running"
                    }
                    val bytes = c.getLong(c.getColumnIndexOrThrow(DownloadManager.COLUMN_BYTES_DOWNLOADED_SO_FAR))
                    val total = c.getLong(c.getColumnIndexOrThrow(DownloadManager.COLUMN_TOTAL_SIZE_BYTES))
                    result.success(mapOf("status" to status, "bytesSoFar" to bytes, "totalBytes" to total))
                } else {
                    // Row vanished (job cancelled underneath us).
                    result.success(mapOf("status" to "vanished", "bytesSoFar" to 0L, "totalBytes" to -1L))
                }
            } ?: result.success(mapOf("status" to "vanished", "bytesSoFar" to 0L, "totalBytes" to -1L))
        } catch (e: Exception) {
            result.error("update", e.message ?: "The download could not be queried.", null)
        }
    }

    /**
     * Hands the completed download to the package installer. Enforces the
     * "Install unknown apps" gate first: without the toggle the handoff
     * would silently fail, so the user is taken to the setting and
     * NEEDS_PERMISSION is reported — the APK is kept so the same button
     * works after the round-trip.
     */
    private fun install(activity: MainActivity, call: io.flutter.plugin.common.MethodCall, result: MethodChannel.Result) {
        try {
            val id = (call.arguments as? Number)?.toLong()
                ?: call.argument<Number>("id")?.toLong()
            if (id == null) {
                result.error("update", "No download id.", null)
                return
            }
            val dm = activity.getSystemService(Context.DOWNLOAD_SERVICE) as? DownloadManager
            val uri = dm?.getUriForDownloadedFile(id)
            if (dm == null || uri == null) {
                result.success(InstallResult.NO_DOWNLOAD)
                return
            }
            if (!canRequestPackageInstalls(activity)) {
                result.success(
                    if (openInstallPermissionSettings(activity)) InstallResult.NEEDS_PERMISSION
                    else InstallResult.SETTINGS_FAILED,
                )
                return
            }
            val intent = Intent(Intent.ACTION_VIEW).apply {
                setDataAndTypeAndNormalize(uri, APK_MIME)
                clipData = ClipData.newRawUri(null, uri)
                addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
                // The handoff can run from the application context after the
                // download finishes; NEW_TASK keeps that legal, and is a
                // no-op difference when launched from an activity.
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            }
            result.success(
                try {
                    activity.startActivity(intent) // no chooser: must reach the installer
                    InstallResult.STARTED
                } catch (_: Exception) {
                    InstallResult.FAILED
                },
            )
        } catch (e: Exception) {
            result.error("update", e.message ?: "The installer could not be opened.", null)
        }
    }

    /** Cancels (removes) a download job; harmless when it already finished. */
    private fun cancel(context: Context, call: io.flutter.plugin.common.MethodCall, result: MethodChannel.Result) {
        try {
            val id = (call.arguments as? Number)?.toLong()
                ?: call.argument<Number>("id")?.toLong()
            val dm = context.getSystemService(Context.DOWNLOAD_SERVICE) as? DownloadManager
            if (id == null || dm == null) {
                result.success(false)
                return
            }
            result.success(dm.remove(id) > 0)
        } catch (e: Exception) {
            result.error("update", e.message ?: "The download could not be cancelled.", null)
        }
    }

    private fun canRequestPackageInstalls(context: Context): Boolean =
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.O) {
            context.packageManager.canRequestPackageInstalls()
        } else {
            true // pre-O the REQUEST_INSTALL_PACKAGES permission itself governs
        }

    /** Deep-links into this app's "Install unknown apps" toggle. */
    private fun openInstallPermissionSettings(activity: MainActivity): Boolean {
        if (android.os.Build.VERSION.SDK_INT < android.os.Build.VERSION_CODES.O) return true
        return try {
            activity.startActivity(
                Intent(
                    Settings.ACTION_MANAGE_UNKNOWN_APP_SOURCES,
                    Uri.parse("package:${activity.packageName}"),
                ).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK),
            )
            true
        } catch (_: Exception) {
            try {
                activity.startActivity(
                    Intent(Settings.ACTION_MANAGE_UNKNOWN_APP_SOURCES)
                        .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK),
                )
                true
            } catch (_: Exception) {
                false
            }
        }
    }
}
