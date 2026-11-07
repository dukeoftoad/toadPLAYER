package com.toadplayer.app

import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

internal fun MainActivity.handleDownloadByStrategy(call: MethodCall, result: MethodChannel.Result) {
    result.error("UNSUPPORTED", "Downloads are disabled in isolated music player", null)
}

internal fun MainActivity.handleStartDownloadService(call: MethodCall, result: MethodChannel.Result) {
    result.success(null)
}

internal fun MainActivity.handleUpdateDownloadServiceProgress(call: MethodCall, result: MethodChannel.Result) {
    result.success(null)
}

internal fun MainActivity.handleStartBackgroundWork(call: MethodCall, result: MethodChannel.Result) {
    result.success(
        BackgroundWorkService.start(
            this@handleStartBackgroundWork,
            call.argument<String>("kind") ?: "",
            call.argument<String>("title") ?: "",
            call.argument<String>("text") ?: "",
        ),
    )
}

internal fun MainActivity.handleUpdateBackgroundWork(call: MethodCall, result: MethodChannel.Result) {
    BackgroundWorkService.update(
        call.argument<String>("kind") ?: "",
        call.argument<String>("title") ?: "",
        call.argument<String>("text") ?: "",
        call.argument<Int>("progress") ?: -1,
    )
    result.success(null)
}

internal fun MainActivity.handleStartNativeDownloadWorker(call: MethodCall, result: MethodChannel.Result) {
    result.success(null)
}

internal fun MainActivity.handleAppendNativeDownloadWorkerRequests(call: MethodCall, result: MethodChannel.Result) {
    result.success(null)
}

internal fun MainActivity.handleFinishNativeDownloadWorkerPreparation(call: MethodCall, result: MethodChannel.Result) {
    result.success(null)
}

internal fun MainActivity.handleAcknowledgeNativeDownloadWorkerItems(call: MethodCall, result: MethodChannel.Result) {
    result.success(null)
}

internal fun MainActivity.handleGetNativeDownloadWorkerSnapshot(call: MethodCall, result: MethodChannel.Result) {
    result.success(mapOf("active" to false, "items" to emptyList<Any>()))
}
