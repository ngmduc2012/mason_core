{{> header.md }}
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:dart_core/dart_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core/flutter_core.dart';
// import 'package:replay_bloc/replay_bloc.dart';

/// Learn more: https://bloclibrary.dev/architecture/

part '{{name.snakeCase()}}_bloc.g.dart';
part '{{name.snakeCase()}}_state_event.dart';
/// Part III: Bloc
// Learn more bloc: https://bloclibrary.dev/bloc-concepts/#bloc
class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {
  {{name.pascalCase()}}Bloc() : super({{name.pascalCase()}}State.origin) {
    on<{{name.pascalCase()}}Pressed>(on{{name.pascalCase()}}Pressed);
  }

  Future<void> on{{name.pascalCase()}}Pressed({{name.pascalCase()}}Pressed event, Emitter<void> emit) async {
    emit(state);
  }


/*
  Save bloc to local: https://pub.dev/packages/replay_bloc#replayblocmixin
  STEP 1:
   Replace sealed class {{name.pascalCase()}}Event
   to      sealed class {{name.pascalCase()}}Event extends ReplayEvent {}

  STEP 2:
   Replace   class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {
   to        class {{name.pascalCase()}}Bloc extends HydratedBloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> with ReplayBlocMixin {
   import
             import 'package:hydrated_bloc/hydrated_bloc.dart';
             import 'package:replay_bloc/replay_bloc.dart';

  STEP 3: Add 2 function in class {{name.pascalCase()}}Bloc
    @override
    {{name.pascalCase()}}State? fromJson(MyJsonMap json) {
      return {{name.pascalCase()}}State.fromJson(json);
    }

    @override
    MyJsonMap? toJson({{name.pascalCase()}}State state) {
      return state.toJson();
    }

  STEP 4: init HydratedBloc in bootstrap.dart (follow: https://pub.dev/packages/hydrated_bloc#usage)
  ...setup(){
    ...
    WidgetsFlutterBinding.ensureInitialized();

    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorage.webStorageDirectory
          : await MyFlutter.file.appDocumentsDir,
     );
  }

*/

 /*
  /// Logging state area
  @override
  void onChange(Change<{{name.pascalCase()}}State> change) {
    super.onChange(change);
    // myLog.trace(change);
  }

  // capture information about what triggered the state change
  // Learn more: https://bloclibrary.dev/bloc-concepts/#:~:text=One%20key%20differentiating,overriding%20onTransition.
  @override
  void onTransition(Transition<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> transition) {
    super.onTransition(transition);
    myLog.trace(transition);
  }

  @override
  void onEvent({{name.pascalCase()}}Event event) {
    super.onEvent(event);
    // myLog.trace(event);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    myLog.trace('$error, $stackTrace');
    super.onError(error, stackTrace);
  }

  */
}

/// Part IV: Cubit (option)
// Learn more cubit: https://bloclibrary.dev/bloc-concepts/#cubit
/*class {{name.pascalCase()}}Cubit extends Cubit<{{name.pascalCase()}}State> {
  {{name.pascalCase()}}Cubit() : super({{name.pascalCase()}}State.origin);

  void on{{name.pascalCase()}}Pressed() {
    emit(state);
  }

  @override
  void onChange(Change<{{name.pascalCase()}}State> change) {
    super.onChange(change);
    myLog.trace(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    myLog.trace('$error, $stackTrace');
    super.onError(error, stackTrace);
  }
}*/

/* Help:
 prevent event using bloc_concurrency: https://pub.dev/packages/bloc_concurrency

 on<{{name.pascalCase()}}IncrementPressed>(
      (event, emit) async {
        await Future.delayed(Duration(seconds: 1));
        emit(state + 1);
      },

      transformer: sequential(),
    );

    Bloc-to-Bloc Communication: https://bloclibrary.dev/architecture/#bloc-to-bloc-communication
 */
