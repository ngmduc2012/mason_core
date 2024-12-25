import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_core/base/context.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_core/src.dart';

/*
Case 1: screen
Case 2: piece screen (a part of screen)
Case 3: widget
*/
class OurListenRouterWidget extends StatefulWidget {
  const OurListenRouterWidget({super.key, required this.child, this.listen});

  final Widget child;
  final Function(Uri, Uri)? listen;

  @override
  State<OurListenRouterWidget> createState() => _OurListenRouterWidgetState();
}

class _OurListenRouterWidgetState extends State<OurListenRouterWidget> with MyExtendStatefulMixin {

  late Uri oldUri;

  @override
  Widget build(BuildContext context) {

    return widget.child;
  }

  @override
  FutureOr<void>? afterFirstLayout(BuildContext context) {
    oldUri = myNavigatorKey.currentContext!.getCurrentRouter;

    GoRouter.of(myNavigatorKey.currentContext!).routeInformationProvider.addListener((){
      final uri = myNavigatorKey.currentContext!.getCurrentRouter;
      widget.listen?.call(oldUri, uri);
      oldUri = uri;
    });
  }
}

extension ExtensionGoRouter on BuildContext{
  Uri get getCurrentRouter => GoRouter.of(this).routeInformationProvider.value.uri;
  String? get currentPath => GoRouterState.of(this).path;
}


