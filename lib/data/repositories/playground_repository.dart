import 'package:spielplaetze_app_prototype/data/models/playground.dart';

abstract class PlaygroundRepository {
  List<Playground> getAllPlaygrounds();
  Playground? getPlaygroundById(String id);
}