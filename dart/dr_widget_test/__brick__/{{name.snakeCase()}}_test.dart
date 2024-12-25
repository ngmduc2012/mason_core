// ignore_for_file: prefer_const_constructors

import 'package:dsg_ui_core/dsg_ui_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:snapshap/features/PRINTING/src.dart';
import 'package:snapshap/helper/src.dart';
import 'package:ui_core/src.dart';

/*
 Learn more: https://docs.flutter.dev/cookbook/testing/widget/introduction
 A widget test (in other UI frameworks referred to as component test) tests a single widget.
*/

void main() {
  main{{name.pascalCase()}}1();
}

void main{{name.pascalCase()}}1() {

  group('{{name.pascalCase()}}1', () {

    /// Remind comment on tested widget: // #TESTED
    testWidgets('{{name.pascalCase()}}1 at ', (tester) async {

      Future<void> run() async {
            await tester.pumpWidget(
              MaterialApp(
                home: Scaffold(
                  body: Text("{{name.pascalCase()}}1"),
                ),
              ),
            );
      }

      await run();

      /// Tìm text tìm text xuất hiện
      expect(find.text("{{name.pascalCase()}}1"), findsOneWidget);

      /// Tìm widget có hiển thị không, phù hợp ẩn hiện widget
      /// findsNothing | findsWidgets | findsNWidgets | matchesGoldenFile
      expect(find.byType(Text), findsOneWidget);
    });
  });
}

/// HELP: https://docs.flutter.dev/cookbook/testing/widget/introduction#additional-matchers

