import 'package:get/get.dart';

class {{name.pascalCase()}}Binding implements Bindings {
  @override
  void dependencies() {
    Get.put<{{name.pascalCase()}}Controller>({{name.pascalCase()}}Controller());
  }
}
