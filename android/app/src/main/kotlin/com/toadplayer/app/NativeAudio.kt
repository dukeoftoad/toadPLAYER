package com.toadplayer.app

import java.nio.ByteBuffer

/** All calls are serialized on the owning playback worker. */
internal object NativeAudio {
    init { System.loadLibrary("toadplayer_audio") }
    external fun openOboe(rate: Int, channels: Int, bits: Int, device: Int): Long
    external fun writeOboe(handle: Long, data: ByteBuffer, offset: Int, count: Int): Int
    external fun bitsOboe(handle: Long): Int
    external fun deviceOboe(handle: Long): Int
    external fun startOboe(handle: Long)
    external fun flushOboe(handle: Long)
    external fun framesOboe(handle: Long): Long
    external fun closeOboe(handle: Long)
    external fun openWavPack(path: String): Long
    external fun infoWavPack(handle: Long): LongArray
    external fun readWavPack(handle: Long, frames: Int): ByteArray
    external fun seekWavPack(handle: Long, sample: Long)
    external fun closeWavPack(handle: Long)
    external fun openFlac(path: String): Long
    external fun infoFlac(handle: Long): LongArray
    external fun readFlac(handle: Long, data: ByteBuffer, bits: Int): Int
    external fun seekFlac(handle: Long, sample: Long)
    external fun closeFlac(handle: Long)

    /**
     * Reads a system property without the 92-byte (PROP_VALUE_MAX) truncation
     * of [android.os.SystemProperties] / __system_property_get. The native
     * implementation uses __system_property_read_callback (API 26+) when
     * available, falling back to the legacy call on older devices. Use this
     * instead of any truncated read for long-valued properties such as
     * ro.build.version.known_codenames.
     */
    external fun readSystemPropertyFull(name: String): String
}
