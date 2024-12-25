
import 'package:test/test.dart';

/*
 Learn more: https://docs.flutter.dev/cookbook/testing/unit/introduction
 A unit test tests a single function, method, or class.
*/
void main() {
  main{{name.pascalCase()}}1();
  main{{name.pascalCase()}}2();
}

void main{{name.pascalCase()}}1(){
  group('{{name.pascalCase()}}1', () {

    /// Remind comment on tested function: // #TESTED
    test('example', () {
      const counter = 1;
      expect(counter, 1);
    });
  });
}

void main{{name.pascalCase()}}2(){
  group('{{name.pascalCase()}}2', () {

    /// Remind comment on tested widget: // #TESTED
    test('example', () {
      const counter = 1;
      expect(counter, 1);
    });
  });
}