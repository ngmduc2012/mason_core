package {{package}}

import android.os.Handler
import android.os.Looper
import io.flutter.plugin.common.MethodChannel


class TalkingWithFlutter internal constructor(private val utils: Utils) {
    var methodChannel: MethodChannel? = null

    fun remove() {
        methodChannel!!.setMethodCallHandler(null)
        methodChannel = null
    }

    // Send data back to Flutter plugin
    fun invokeMethodUIThread(method: String, data: HashMap<String, Any>?) {
        Handler(Looper.getMainLooper()).post {
            //Could already be teared down at this moment
            if (methodChannel != null) {
                methodChannel!!.invokeMethod(method, data)
            } else {
                utils.log("invokeMethodUIThread: tried to call method on closed channel: $method")
            }
        }
    }

    fun onListenStateChanged(state: Int) {
        val map = HashMap<String, Any>()
        map["state"] = state
        invokeMethodUIThread("OnListenStateChanged", map)
    }

    companion object {
        const val WORKING: Int = 0
        const val FREE: Int = 1
    }
}
