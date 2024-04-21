import 'package:flutter/material.dart';
import 'package:spielplaetze_app_prototype/data/models/playground.dart';
import 'package:spielplaetze_app_prototype/data/repositories/fake_playground_repository.dart';
import 'package:spielplaetze_app_prototype/screens/playgrounds_map_screen.dart';
import 'package:spielplaetze_app_prototype/widgets/playgrounds_grid_view.dart';

class PlaygroundsGridScreen extends StatefulWidget {
  const PlaygroundsGridScreen({super.key});

  static const routeName = '/playgrounds_grid';

  @override
  State<PlaygroundsGridScreen> createState() => _PlaygroundsGridScreenState();
}

class _PlaygroundsGridScreenState extends State<PlaygroundsGridScreen> {
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
      body: PlaygroundsGridView(playgrounds: playgrounds),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: 0,
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
          if (index == 1) {
            Navigator.of(context)
                .pushReplacementNamed(PlaygroundsMapScreen.routeName);
          }
        },
      ),
    );
  }
}
