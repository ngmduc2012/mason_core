import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/helper/src.dart';
import 'package:{{name.snakeCase()}}/injection.dart';
import 'package:storage_core/interpreter/interpreter.dart';
import 'package:ui_core/src.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  MyLayout(
      isUsedScrollView: false,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
                "${OurInterpreter.welcomeBackNameApp("Duc", ourNameApp)}",
              style: MyStyle.text.mediumTextRegular14,
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyIconCircleButton(
                    onTap: () async {
                      if (await myStorage.write(ourStorageKeyThemeMode, MyArtist.isBrightnessLight ? ThemeMode.dark.index : ThemeMode.light.index)) {
                        MyArtist.changeBrightness(!MyArtist.isBrightnessLight);
                      }
                    },
                ),
                MyIconCircleButton(
                    onTap: () {
                      getMyInterpreter.loadFileJson(locale: getMyInterpreter.locale == const Locale('vi') ? const Locale('en') : const Locale('vi'));
                    },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
