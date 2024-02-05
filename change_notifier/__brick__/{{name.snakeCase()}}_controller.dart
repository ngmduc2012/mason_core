import 'package:flutter/material.dart';

class {{name.pascalCase()}}Controller with ChangeNotifier implements Listenable {
  int _example = 0;
  int get example => _example;

  void onChange(int index){
    _example = index;
    notifyListeners();
  }
}
