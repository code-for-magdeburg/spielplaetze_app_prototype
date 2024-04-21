import 'package:flutter/material.dart';
import 'package:spielplaetze_app_prototype/data/models/playground.dart';

class ScreenArguments {
  final Playground playground;

  ScreenArguments(this.playground);
}

class PlaygroundScreen extends StatelessWidget {
  const PlaygroundScreen({super.key});

  static const routeName = '/playground';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.playground.title),
      ),
      body: Text(args.playground.title),
    );
  }
}