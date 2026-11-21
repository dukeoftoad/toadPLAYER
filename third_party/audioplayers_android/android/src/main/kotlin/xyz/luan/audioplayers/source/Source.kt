package xyz.luan.audioplayers.source

import android.media.MediaPlayer
import xyz.luan.audioplayers.player.SoundPoolPlayer

// TODO(luan) replace this indirection with a sealed interface once we have that option!
interface Source {
    fun setForMediaPlayer(mediaPlayer: MediaPlayer)
    fun setForSoundPool(soundPoolPlayer: SoundPoolPlayer)

    /**
     * Releases native resources (e.g. a dup'd file descriptor) held open for
     * MediaPlayer's lifetime. Called by the player wrapper when this source is
     * replaced or the player is released. The default is a no-op so existing
     * implementations are unaffected.
     */
    fun release() {}
}
