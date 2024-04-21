import "dart:async";

import "package:flutter/material.dart";
import "package:spielplaetze_app_prototype/screens/playgrounds_map_screen.dart";

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const routeName = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacementNamed(PlaygroundsMapScreen.routeName));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(64),
            child: Placeholder(),
          ),
        ),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
