
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:flutter_core/testing/envi.dart';
import 'package:{{name.snakeCase()}}/helper/units/constants.dart';
import 'package:{{name.snakeCase()}}/bootstrap/envi_enum.dart';
import 'package:storage_core/src.dart';


/// run: flutter pub add get_it
final getIt = GetIt.instance;

MyPrefs myStorage = MyPrefs(); //for Storage
// MyDio myDio = MyDio(); //for RESTful API
// MyGraphql myGraphql = MyGraphql(); //for GraphQL
// MyWebSocket myWss = MyWebSocket(); //for web socket

/// Step 2: shortcut for repository
// final getExample = getIt<ExampleRepository>();
final getMyInterpreter = getIt<MyInterpreter>();

void setup() {

  /// Step 1: setup for get it
  // getIt.registerLazySingleton<ExamleRepository>(
  //       () => ExampleRepository(),
  // );

  getIt.registerLazySingleton<MyInterpreter>(() => MyInterpreter(),);

  // WidgetsFlutterBinding.ensureInitialized();
  //
  // HydratedBloc.storage = await HydratedStorage.build(
  //   storageDirectory: kIsWeb
  //       ? HydratedStorage.webStorageDirectory
  //       : await MyFlutter.file.appDocumentsDir,
  // );
  // Bloc.observer = const OurBlocObserver();
}

Future<void> init() async {
  /// Setup language
  getMyInterpreter.setUp(listLocale: listLocale);

  /// Setup Theme
  // try {
  //   final index = await myStorage.readSave<int>(ourStorageKeyThemeMode);
  //   if(index != null) DsgArtist.changeBrightness(index == DsgArtist.themeLightIndex);
  // } catch (e) {
  //   myLog.info(e);
  // }
  /// Setup network
  // myPrint(ourEnvi.baseUrl, tag: "Envi: ${ourEnvi.name}");
  // myDio.setUp(baseUrl: ourEnvi.baseUrl);
}

/// {@template app_bloc_observer}
/// Custom [BlocObserver] that observes all bloc and cubit state changes.
/// {@endtemplate}
class OurBlocObserver extends BlocObserver {
  /// {@macro app_bloc_observer}
  const OurBlocObserver();
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    if (bloc is Cubit) myLog.trace(change.toString().myPrintStringJson, flag: "Blog");
  }

  @override
  void onTransition(
      Bloc<dynamic, dynamic> bloc,
      Transition<dynamic, dynamic> transition,
      ) {
    super.onTransition(bloc, transition);
    // myLog.trace((transition.toString().myToStringJson() ?? "").myPrintStringJson, flag: "Blog");
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    myLog.warning('${bloc.runtimeType} $error $stackTrace');
    super.onError(bloc, error, stackTrace);
  }
}
