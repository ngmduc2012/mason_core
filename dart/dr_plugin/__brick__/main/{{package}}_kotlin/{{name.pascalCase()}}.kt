package {{package}}

import android.content.Context
import android.content.Intent
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.FlutterPlugin.FlutterPluginBinding
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.PluginRegistry.ActivityResultListener

/** {{name.pascalCase()}}  */
class {{name.pascalCase()}} : FlutterPlugin, MethodCallHandler,
  ActivityResultListener {
  /**
   * I.Step 1: Setup method
   */
  private var context: Context? = null
  private val activityBinding: ActivityPluginBinding? = null
  private val utils: Utils = Utils()
  private val talkingWithFlutter: TalkingWithFlutter = TalkingWithFlutter(utils)

  // Run on background (Learn more: https://docs.flutter.dev/platform-integration/platform-channels?tab=ios-channel-swift-tab#executing-channel-handlers-on-background-threads)
  override fun onAttachedToEngine(flutterPluginBinding: FlutterPluginBinding) {
    context = flutterPluginBinding.applicationContext

    talkingWithFlutter.methodChannel =
      MethodChannel(flutterPluginBinding.binaryMessenger, "{{name.snakeCase()}}/methods")
      talkingWithFlutter.methodChannel!!.setMethodCallHandler(this)
  }

  override fun onDetachedFromEngine(binding: FlutterPluginBinding) {
//    talkingWithFlutter.invokeMethodUIThread("OnDetachedFromEngine", new HashMap<>());
    context = null
    talkingWithFlutter.remove()
  }

  override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?): Boolean {
    return false
  }

  override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
    when (call.method) {
      "exTalk" -> {
        exTalk(call, result)
      }

      else -> result.notImplemented()
    }
  }

  private fun exTalk(call: MethodCall, result: MethodChannel.Result) {
    val data = call.arguments<HashMap<String, Any>>()!!
    val copies = data["ex_message"] as Int
    utils.log(copies.toString() + "")

    talkingWithFlutter.onListenStateChanged(TalkingWithFlutter.FREE)

    result.success(TalkingWithFlutter.WORKING)
  }
}