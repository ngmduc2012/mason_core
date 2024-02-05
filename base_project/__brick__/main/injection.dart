
import 'package:get_it/get_it.dart';
import 'package:storage_core/src.dart';
import 'package:ui_core/src.dart';

import 'helper/src.dart';


/// run: flutter pub add get_it
final getIt = GetIt.instance;

MyPrefs myStorage = MyPrefs(); //for Storage
// MyDio myDio = MyDio(); //for RESTful API
// MyGraphql myGraphql = MyGraphql(); //for GraphQL
// MyWebSocket myWss = MyWebSocket(); //for web socket
OurNetwork   ourNetwork = OurNetwork(); //for envi

/// Step 2: shortcut for repository
// final getExamle = getIt<ExamleRepository>();
final getMyInterpreter = getIt<MyInterpreter>();

/// Environment
late final Environment envi;

void setup() {

  /// Step 1: setup for get it
  // getIt.registerLazySingleton<ExamleRepository>(
  //       () => ExamleRepository(),
  // );

  getIt.registerLazySingleton<MyInterpreter>(() => MyInterpreter(),);

  /// Setup envi
  ourNetwork.setEnvi(envi);
}

Future<void> init() async {
  /// Setup language
  getMyInterpreter.onInit(listLocale: listLocale);

  /// Setup Theme
  final index = await myStorage.readSave<int>(ourStorageKeyThemeMode);
  if(index != null) MyArtist.changeBrightness(index == MyArtist.themeLightIndex);

  /// Setup network
  // myPrint(ourNetwork.envi.baseUrl, tag: "Envi: ${ourNetwork.envi.name}");
  // myDio.setUp(baseUrl: ourNetwork.envi.baseUrl);
}
