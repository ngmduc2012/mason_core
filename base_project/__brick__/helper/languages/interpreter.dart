import 'package:storage_core/src.dart';

class OurInterpreter extends MyInterpreter {

  static String? welcomeBackNameApp(String nameUser, String nameApp) => MyInterpreter.translate('welcomeBackNameApp', params: {'nameUser': nameUser, 'nameApp': nameApp});
  static String get welcomeBack => MyInterpreter.translate('welcomeBack');

}
