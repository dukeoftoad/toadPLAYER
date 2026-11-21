package com.toadplayer.app

import android.os.ParcelFileDescriptor
import java.io.FileChannel
import java.io.FileInputStream

/**
 * Opens `/proc/self/fd/<n>` SAF playback leases without reopening them.
 *
 * AppFuse-backed descriptors (network SAF providers, some cloud documents)
 * reject a second open with EACCES, so every read goes through a dup() of the
 * live descriptor — the same rule the Rust tag readers
 * (`open_audio_file`) and the audioplayers engine source follow. Ordinary
 * paths take the plain file APIs.
 */
internal object SafFd {
    private const val PREFIX = "/proc/self/fd/"

    /** The lease descriptor number inside [path], or null for ordinary paths. */
    fun descriptor(path: String): Int? {
        if (!path.startsWith(PREFIX)) return null
        val number = path.removePrefix(PREFIX)
        if (number.isEmpty() || number.any { !it.isDigit() }) return null
        return number.toIntOrNull()?.takeIf { it >= 0 }
    }

    /** A stream over a fresh dup of the lease that the caller may close freely. */
    fun openStream(path: String): FileInputStream {
        val descriptor = descriptor(path) ?: return FileInputStream(path)
        val lease = ParcelFileDescriptor.fromFd(descriptor)
        val stream = FileInputStream(lease.fileDescriptor)
        // The stream now owns the dup; the lease holder must not close it again.
        lease.detachFd()
        return stream
    }

    /** A seekable channel over a fresh dup of the lease, closable by the caller. */
    fun openChannel(path: String): FileChannel {
        // The channel keeps the owning stream alive; closing the channel closes it.
        return openStream(path).channel
    }
}
