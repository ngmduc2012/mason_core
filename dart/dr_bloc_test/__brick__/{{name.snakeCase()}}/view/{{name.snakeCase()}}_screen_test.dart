// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';


class Mock{{name.pascalCase()}}Bloc extends MockBloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> implements {{name.pascalCase()}}Bloc {}

// class Mock{{name.pascalCase()}}Cubit extends MockCubit<{{name.pascalCase()}}State> implements {{name.pascalCase()}}Cubit {}

void main() {
  /// Bloc with hydrated storage: https://github.com/felangel/bloc/tree/master/packages/hydrated_bloc
  // initHydratedStorage();

  group('{{name.pascalCase()}}Screen GO_TO_SCHOOL', () {
    late {{name.pascalCase()}}Bloc {{name.camelCase()}}Bloc;

    setUp(() {
      {{name.camelCase()}}Bloc = Mock{{name.pascalCase()}}Bloc();
    });

    /// Remind comment on tested function: // #TESTED
    testWidgets('{{name.pascalCase()}}Screen at SCHOOL', (tester) async {

      Future<void> run() async {
        await tester.pumpWidget(
          MultiBlocProvider(
            providers: [
              BlocProvider.value(
                value: {{name.camelCase()}}Bloc,
              ),
            ],
            child: MaterialApp(
                home: {{name.pascalCase()}}Screen(
            ),),
        ),
        );
      }

      // STEP 1: change value bloc
      when(() => {{name.camelCase()}}Bloc.state).thenReturn({{name.pascalCase()}}State(),);


      // STEP 2: tester build widget
      await run();

      var state = {{name.camelCase()}}Bloc.state;

      // STEP 3: expect
      /// Tìm text tìm text xuất hiện
      expect(find.text("{{name.pascalCase()}}Screen"), findsOneWidget);

      /// Tìm widget có hiển thị không, phù hợp ẩn hiện widget
      /// findsNothing | findsWidgets | findsNWidgets | matchesGoldenFile
      expect(find.byType({{name.pascalCase()}}Screen), findsOneWidget);
    });
  });

}

/// HELP: https://docs.flutter.dev/cookbook/testing/widget/introduction#additional-matchers

