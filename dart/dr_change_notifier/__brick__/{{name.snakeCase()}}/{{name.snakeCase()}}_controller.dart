import 'package:flutter/material.dart';

/*
Learn more: https://api.flutter.dev/flutter/foundation/ChangeNotifier-class.html#foundation.ChangeNotifier.1
This is the way that control a widget in outside.
*/

/// Part II: Controller
class {{name.pascalCase()}}Controller with ChangeNotifier implements Listenable {
  /// Learn more: url_to_document_of_package

  int _example = 0;
  int get example => _example;

  // USE | controller.example = example;
  set example(int index){
    _example = index;
    notifyListeners();
  }

  //  @override
  //   void dispose() {
  //   super.dispose();
  //
  // }
}
