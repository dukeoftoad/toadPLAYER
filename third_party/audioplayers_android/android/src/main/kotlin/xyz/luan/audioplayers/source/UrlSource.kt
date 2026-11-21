package xyz.luan.audioplayers.source

import android.media.MediaPlayer
import android.os.ParcelFileDescriptor
import xyz.luan.audioplayers.player.SoundPoolPlayer
import java.io.ByteArrayOutputStream
import java.io.File
import java.io.FileOutputStream
import java.net.URI
import java.net.URL

data class UrlSource(
    val url: String,
    val isLocal: Boolean,
) : Source {
    // An independently dup'd ParcelFileDescriptor kept open for the lifetime
    // of this source so MediaPlayer can read it lazily during prepareAsync(),
    // which runs AFTER setForMediaPlayer returns. Closed in release().
    private var heldDescriptor: ParcelFileDescriptor? = null

    override fun setForMediaPlayer(mediaPlayer: MediaPlayer) {
        // Release any descriptor held by a previous call on this instance.
        release()
        val descriptor = if (isLocal && url.startsWith("/proc/self/fd/")) {
            url.removePrefix("/proc/self/fd/").toIntOrNull()?.takeIf { it >= 0 }
        } else null
        if (descriptor != null) {
            // The SAF playback lease returns a /proc/self/fd/<n> path.
            // MediaPlayer reads the descriptor lazily during prepareAsync(),
            // which happens after this method returns. The previous .use{}
            // closed the descriptor before prepare, so MediaPlayer hit
            // MEDIA_ERROR_UNKNOWN on a closed fd. dup() the lease fd into an
            // independent ParcelFileDescriptor that stays open for the
            // source's lifetime (closed in release()); the original lease is
            // never touched here, so the app's lease closure and this dup are
            // fully decoupled.
            val wrapper = ParcelFileDescriptor.fromFd(descriptor)
            val owned = ParcelFileDescriptor.dup(wrapper.fileDescriptor)
            // wrapper may share or dup the lease fd; either way `owned` is
            // independent. Closing wrapper now is safe for playback.
            try { wrapper.close() } catch (_: Exception) {}
            heldDescriptor = owned
            mediaPlayer.setDataSource(owned.fileDescriptor)
        } else {
            mediaPlayer.setDataSource(url)
        }
    }

    override fun release() {
        heldDescriptor?.let { pfd ->
            heldDescriptor = null
            try { pfd.close() } catch (_: Exception) {}
        }
    }

    override fun setForSoundPool(soundPoolPlayer: SoundPoolPlayer) {
        soundPoolPlayer.release()
        soundPoolPlayer.urlSource = this
    }

    fun getAudioPathForSoundPool(): String {
        if (isLocal) {
            return url.removePrefix("file://")
        }

        return loadTempFileFromNetwork().absolutePath
    }

    private fun loadTempFileFromNetwork(): File {
        val bytes = downloadUrl(URI.create(url).toURL())
        val tempFile = File.createTempFile("sound", "")
        FileOutputStream(tempFile).use {
            it.write(bytes)
            tempFile.deleteOnExit()
        }
        return tempFile
    }

    private fun downloadUrl(url: URL): ByteArray {
        val outputStream = ByteArrayOutputStream()
        url.openStream().use { stream ->
            val chunk = ByteArray(4096)
            while (true) {
                val bytesRead = stream.read(chunk).takeIf { it > 0 } ?: break
                outputStream.write(chunk, 0, bytesRead)
            }
        }
        return outputStream.toByteArray()
    }
}
