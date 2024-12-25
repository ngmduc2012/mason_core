part of {{name.snakeCase()}};

class {{name.pascalCase()}} {

  /// STEP I | setup method

  static const String nameMethod = '{{name.snakeCase()}}';
  static const MethodChannel _methods = MethodChannel('$nameMethod/methods');
  final StreamController<MethodCall> _methodStream = StreamController.broadcast();

  // 1.1: Create stream method
  bool _initialized = false;
    Future<dynamic> _initFlutterBluePlus() async {
    if (_initialized) {
      return;
    }
      _initialized = true;
      _methods.setMethodCallHandler((call) async {
        _updateMethodStream(call);
    });
  }

  // 1.2: invoke a platform method
  Future<dynamic> _invokeMethod(String method, [dynamic arguments]) async {
    dynamic out;
    print("_invokeMethod | $method | $arguments");
    try {
      _initFlutterBluePlus();
      out = await _methods.invokeMethod(method, arguments);
    } catch (e) {
      rethrow;
    }
    return out;
  }

  // 1.3: Update Stream _methodStream on flutter
  void _updateMethodStream(MethodCall methodCall) {
    _methodStream.add(methodCall);
  }

  /// STEP II | Talk (and get) to native
  /// 2.1 | Type 1 Flutter -> Native -> Flutter
  Future<int> exTalk({
      int exMessage = 1,
    }) async {
      final Map<dynamic, dynamic> data = {};
      data['ex_message'] = exMessage;
      return await _invokeMethod('exTalk', data);
  }

  /// 2.2 | Type 2 Native -> Flutter: Listen native
  Stream<ListenState> get listenState async* {
  yield* _methodStream.stream
      .where((m) => m.method == "OnListenStateChanged")
      .map((m) => m.arguments)
      .map((args) => ListenState.fromMap(args));
  }
}