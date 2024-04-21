import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:spielplaetze_app_prototype/screens/check_in_with_qr_code_screen.dart';

class CheckInScreen extends StatefulWidget {
  const CheckInScreen({super.key});

  static const routeName = '/check_in';

  @override
  State<CheckInScreen> createState() => _CheckInScreenState();
}

class _CheckInScreenState extends State<CheckInScreen> {
  final Location location = Location();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Spielplatz einchecken')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(CheckInWithQRCodeScreen.routeName);
                },
                child: const Text('QR Code scannen'),
              ),
              ElevatedButton(
                onPressed: () async {
                  await location.changeSettings(accuracy: LocationAccuracy.high);
                  final loc = await location.getLocation();

                  print("Location: ${loc.latitude}, ${loc.longitude}");
                },
                child: const Text('GPS Standort verwenden'),
              ),
            ],
          ),
        ));
  }
}
