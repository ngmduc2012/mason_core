package {{package}};

import android.app.Activity;
import android.content.Context;
import android.content.Intent;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import java.util.HashMap;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry;

/** {{name.pascalCase()}} */
public class {{name.pascalCase()}} implements FlutterPlugin, MethodCallHandler, PluginRegistry.ActivityResultListener {

  /**
   * I.Step 1: Setup method
   */
  private Context context;
  private ActivityPluginBinding activityBinding;
  private final Utils utils = new Utils();
  private final TalkingWithFlutter talkingWithFlutter = new TalkingWithFlutter(utils);

  // Run on background (Learn more: https://docs.flutter.dev/platform-integration/platform-channels?tab=ios-channel-swift-tab#executing-channel-handlers-on-background-threads)
  @Override
  public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
    context = flutterPluginBinding.getApplicationContext();

    talkingWithFlutter.methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "{{name.snakeCase()}}/methods");
    talkingWithFlutter.methodChannel.setMethodCallHandler(this);
  }

  @Override
  public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
//    talkingWithFlutter.invokeMethodUIThread("OnDetachedFromEngine", new HashMap<>());
    context = null;
    talkingWithFlutter.remove();
  }

  @Override
  public boolean onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
    return false;
  }

  @Override
  public void onMethodCall(@NonNull MethodCall call, @NonNull Result result) {
    switch (call.method) {
      case "exTalk": {
        exTalk(call, result);
        break;
      }
      default:
        result.notImplemented();
        break;
    }
  }

  private void exTalk(@NonNull MethodCall call, @NonNull Result result) {
    HashMap<String, Object> data = call.arguments();
    int copies = (int) data.get("ex_message");
    utils.log(copies + "");

    talkingWithFlutter.onListenStateChanged(TalkingWithFlutter.FREE);

    result.success(TalkingWithFlutter.WORKING);
  }

}
