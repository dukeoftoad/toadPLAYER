package com.toadplayer.app

import android.appwidget.AppWidgetManager
import android.appwidget.AppWidgetProvider
import android.content.ComponentName
import android.content.Context
import android.os.Bundle
import android.view.View
import android.widget.RemoteViews
import org.json.JSONObject

/**
 * The launcher's lyrics widget: the playing song's title and current lyric
 * line. It shares the player widget bridge's persisted state — every update
 * the app pushes (including the `lyric` field) re-renders both widgets, so
 * no separate channel or periodic refresh is needed.
 */
class LyricsWidgetProvider : AppWidgetProvider() {
    override fun onUpdate(context: Context, manager: AppWidgetManager, ids: IntArray) {
        update(context, ids)
    }

    override fun onAppWidgetOptionsChanged(
        context: Context,
        manager: AppWidgetManager,
        id: Int,
        options: Bundle,
    ) {
        update(context, intArrayOf(id))
    }

    companion object {
        fun installedCount(context: Context): Int = AppWidgetManager.getInstance(context)
            .getAppWidgetIds(ComponentName(context, LyricsWidgetProvider::class.java)).size

        fun update(context: Context, ids: IntArray? = null) {
            val manager = AppWidgetManager.getInstance(context)
            val widgets = ids
                ?: manager.getAppWidgetIds(ComponentName(context, LyricsWidgetProvider::class.java))
            if (widgets.isEmpty()) return
            val state = PlayerWidgetProvider.state(context)
            // The artwork-derived palette follows the player widget's look;
            // no per-instance theme configuration for this widget (yet).
            val colors = PlayerWidgetProvider.palette(context, null, PlayerWidgetProvider.seed(state))
            for (id in widgets) {
                manager.updateAppWidget(id, render(context, state, colors))
            }
        }

        /** Builds one widget instance. */
        fun render(
            context: Context,
            state: JSONObject,
            colors: PlayerWidgetProvider.Companion.Palette,
        ): RemoteViews {
            val active = state.optBoolean("canPlay")
            val lyric = state.optString("lyric").trim()
            val views = RemoteViews(context.packageName, R.layout.widget_lyrics)
            views.setInt(R.id.lyrics_widget_background, "setColorFilter", colors.container)
            views.setInt(R.id.lyrics_widget_icon, "setColorFilter", colors.primary)
            views.setTextColor(R.id.lyrics_widget_title, colors.onContainerVariant)
            views.setTextColor(R.id.lyrics_widget_line, colors.onContainer)
            views.setTextColor(R.id.lyrics_widget_hint, colors.onContainerVariant)
            views.setTextViewText(
                R.id.lyrics_widget_title,
                state.optString("title").ifEmpty { context.getString(R.string.lyrics_widget_name) },
            )
            if (active && lyric.isNotEmpty()) {
                views.setViewVisibility(R.id.lyrics_widget_line, View.VISIBLE)
                views.setViewVisibility(R.id.lyrics_widget_hint, View.GONE)
                views.setTextViewText(R.id.lyrics_widget_line, lyric)
            } else {
                views.setViewVisibility(R.id.lyrics_widget_line, View.GONE)
                views.setViewVisibility(R.id.lyrics_widget_hint, View.VISIBLE)
                views.setTextViewText(
                    R.id.lyrics_widget_hint,
                    context.getString(
                        if (active) R.string.lyrics_widget_no_lyrics else R.string.lyrics_widget_empty,
                    ),
                )
            }
            views.setOnClickPendingIntent(R.id.lyrics_widget_root, PlayerWidgetProvider.launchIntent(context, "open"))
            return views
        }
    }
}
