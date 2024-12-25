import 'dart:async';

import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/{{name.snakeCase()}}.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final _{{name.camelCase()}} = {{name.pascalCase()}}();

  ListenStateEnum _listenState = ListenStateEnum.working;
  late StreamSubscription<ListenState> _listenStateSubscription;

  @override
  void initState() {
    super.initState();
    _listenStateSubscription = _{{name.camelCase()}}.listenState.listen((value) {
      _listenState = value.state;
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _listenStateSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app | {{name.pascalCase()}}'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text("TYPE 1: call to Native and get data"),
                TextButton(
                    onPressed: () async {
                      final a = await _{{name.camelCase()}}.exTalk(exMessage: 3);
                      print(a);
                    },
                    child: const Text("exTalk")),

                const Text("TYPE 2: listen data from Native"),
                StreamBuilder(
                  stream: _{{name.camelCase()}}.listenState,
                  builder: (context, s) {
                    return Text("Way 1 - listenState: ${s.data?.state.toString()}");
                  }
                ),
                Text("Way 2 - listenState: $_listenState"),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
