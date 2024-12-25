package {{package}};

import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
import io.flutter.plugin.common.MethodChannel;


public class TalkingWithFlutter {

    TalkingWithFlutter(Utils utils){
        this.utils = utils;
    }
    public MethodChannel methodChannel;

    public void remove(){
        methodChannel.setMethodCallHandler(null);
        methodChannel = null;
    }

    private final Utils utils;

    // Send data back to Flutter plugin
    public void invokeMethodUIThread(final String method, HashMap<String, Object> data) {
        new Handler(Looper.getMainLooper()).post(() -> {
            //Could already be teared down at this moment
            if (methodChannel != null) {
                methodChannel.invokeMethod(method, data);
            } else {
                utils.log("invokeMethodUIThread: tried to call method on closed channel: " + method);
            }
        });
    }

    public static final int WORKING = 0;
    public static final int FREE = 1;
    public void onListenStateChanged(int state) {
        HashMap<String, Object> map = new HashMap<>();
        map.put("state", state);
        invokeMethodUIThread("OnListenStateChanged", map);
    }

}
