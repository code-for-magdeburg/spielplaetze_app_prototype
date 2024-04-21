import 'package:flutter/material.dart';
import 'package:spielplaetze_app_prototype/screens/check_in_screen.dart';
import 'package:spielplaetze_app_prototype/screens/check_in_with_qr_code_screen.dart';
import 'package:spielplaetze_app_prototype/screens/playground_screen.dart';
import 'package:spielplaetze_app_prototype/screens/playgrounds_grid_screen.dart';
import 'package:spielplaetze_app_prototype/screens/playgrounds_map_screen.dart';
import 'package:spielplaetze_app_prototype/screens/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World App',
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        PlaygroundsMapScreen.routeName: (context) => const PlaygroundsMapScreen(),
        PlaygroundsGridScreen.routeName: (context) => const PlaygroundsGridScreen(),
        PlaygroundScreen.routeName: (context) => const PlaygroundScreen(),
        CheckInScreen.routeName: (context) => const CheckInScreen(),
        CheckInWithQRCodeScreen.routeName: (context) => const CheckInWithQRCodeScreen(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
    );
  }
}
