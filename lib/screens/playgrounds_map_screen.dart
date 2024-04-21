import 'package:flutter/material.dart';
import 'package:spielplaetze_app_prototype/data/models/playground.dart';
import 'package:spielplaetze_app_prototype/data/repositories/fake_playground_repository.dart';
import 'package:spielplaetze_app_prototype/screens/check_in_screen.dart';
import 'package:spielplaetze_app_prototype/screens/playgrounds_grid_screen.dart';
import 'package:spielplaetze_app_prototype/widgets/playgrounds_map_view.dart';

class PlaygroundsMapScreen extends StatefulWidget {
  const PlaygroundsMapScreen({super.key});

  static const routeName = '/playgrounds_map';

  @override
  State<PlaygroundsMapScreen> createState() => _PlaygroundsMapScreenState();
}

class _PlaygroundsMapScreenState extends State<PlaygroundsMapScreen> {
  final repository = FakePlaygroundRepository();
  List<Playground> playgrounds = [];

  @override
  void initState() {
    super.initState();
    playgrounds = repository.getAllPlaygrounds();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PlaygroundMapView(playgrounds: playgrounds),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(CheckInScreen.routeName);
        },
        child: const Icon(Icons.person_pin_circle_outlined, size: 40),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: 1,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Liste',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Karte',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menü',
          ),
        ],
        onTap: (int index) {
          if (index == 0) {
            Navigator.of(context)
                .pushReplacementNamed(PlaygroundsGridScreen.routeName);
          }
        },
      ),
    );
  }
}
