


import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ui_core/src.dart';

extension {{name.pascalCase()}}DialogHelper  on BuildContext{


  FutureOr<T?> dialog<T>({
    /// Không cho tắt khi ấn ra ngoài.
    bool barrierDismissible = true,
    Function()? onPopInvoked,
    required Widget child,
    double ratio = 1,
    /// 0 to 1
    double? verticalOffsetForKeyboard
  }) async {
     return showDialog<T>(
      barrierDismissible: barrierDismissible, // Không cho tắt khi ấn ra ngoài.
      barrierColor: Theme.of(this).colorScheme.onBackground.withOpacity(0.05),
      context: this,
      builder: (context) {
        return MyAnimatedContainer(
          alignment: Alignment.center,
        padding:  MediaQuery.of(context).padding,
          transform: verticalOffsetForKeyboard == null ? null : Matrix4.translationValues(
            0.0,
            MediaQuery.of(context).viewInsets.bottom * -verticalOffsetForKeyboard,
            0.0,
          ),
        child: PopScope(
          canPop: barrierDismissible,
          onPopInvoked: (value) {
            if(value){
              return;
            }
            onPopInvoked?.call();
          },
          child: Container(
            // margin: EdgeInsets.symmetric(horizontal: 30*ratio),
            padding: EdgeInsets.symmetric(horizontal: 66*ratio, vertical: 52*ratio),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24*ratio),
              color: Theme.of(context).colorScheme.background,
            ),
            child: MyMaterial(child: child),
          ),
        ),
      );
      },
    );
  }


  void snackBar({
    String? message,
    double ratio = 1,
    int seconds = 2
  }) =>
      ScaffoldMessenger.of(this)..hideCurrentSnackBar()..showSnackBar(
        SnackBar(content: MyGestureContainer(
          // height: 18,
          onTap: () {
            ScaffoldMessenger.of(this).hideCurrentSnackBar();
          },
          child: Row(
            children: [
              Expanded(
                child: Text(message ?? "",
                  style: b14M,
                ),
              ),
            ],
          ),
        ),
          backgroundColor: white,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          elevation: 4,
          duration: Duration(seconds: seconds),
          behavior: SnackBarBehavior.floating,
          showCloseIcon: false,
            // action: SnackBarAction(onPressed: (){Navigator.pop(context);}, label: 'Close',),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),

      );



}