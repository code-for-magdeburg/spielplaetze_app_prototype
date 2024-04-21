import 'package:flutter/material.dart';
import 'package:spielplaetze_app_prototype/data/models/playground.dart';
import 'package:spielplaetze_app_prototype/screens/playground_screen.dart';

class PlaygroundsGridView extends StatelessWidget {
  final List<Playground> playgrounds;

  const PlaygroundsGridView({super.key, required this.playgrounds});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GridView.builder(
          itemCount: playgrounds.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(
                    '/playground',
                    arguments: ScreenArguments(playgrounds[index])
                );
              },
              child: GridTile(
                child: Stack(children: [
                  const Placeholder(),
                  Container(decoration: const BoxDecoration()),
                  const Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.check_circle, color: Colors.green)),
                ]),
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 20, mainAxisSpacing: 20)),
    );
  }
}
