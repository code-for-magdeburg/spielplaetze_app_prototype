import 'package:collection/collection.dart';
import 'package:spielplaetze_app_prototype/data/models/playground.dart';
import 'package:spielplaetze_app_prototype/data/repositories/playground_repository.dart';

class FakePlaygroundRepository implements PlaygroundRepository {
  final List<Playground> _playgrounds = [
    const Playground(
      id: '1',
      title: 'Playground 1',
    ),
    const Playground(
      id: '2',
      title: 'Playground 2',
    ),
    const Playground(
      id: '3',
      title: 'Playground 3',
    ),
    const Playground(
      id: '4',
      title: 'Playground 4',
    ),
    const Playground(
      id: '5',
      title: 'Playground 5',
    ),
    const Playground(
      id: '6',
      title: 'Playground 6',
    ),
    const Playground(
      id: '7',
      title: 'Playground 7',
    ),
    const Playground(
      id: '8',
      title: 'Playground 8',
    ),
    const Playground(
      id: '9',
      title: 'Playground 9',
    ),
    const Playground(
      id: '10',
      title: 'Playground 10',
    ),
    const Playground(
      id: '11',
      title: 'Playground 11',
    ),
    const Playground(
      id: '12',
      title: 'Playground 12',
    ),
    const Playground(
      id: '13',
      title: 'Playground 13',
    ),
    const Playground(
      id: '14',
      title: 'Playground 14',
    ),
    const Playground(
      id: '15',
      title: 'Playground 15',
    ),
    const Playground(
      id: '16',
      title: 'Playground 16',
    ),
    const Playground(
      id: '17',
      title: 'Playground 17',
    ),
    const Playground(
      id: '18',
      title: 'Playground 18',
    ),
    const Playground(
      id: '19',
      title: 'Playground 19',
    ),
    const Playground(
      id: '20',
      title: 'Playground 20',
    ),
    const Playground(
      id: '21',
      title: 'Playground 21',
    ),
    const Playground(
      id: '22',
      title: 'Playground 22',
    ),
    const Playground(
      id: '23',
      title: 'Playground 23',
    ),
    const Playground(
      id: '24',
      title: 'Playground 24',
    ),
    const Playground(
      id: '25',
      title: 'Playground 25',
    ),
    const Playground(
      id: '26',
      title: 'Playground 26',
    ),
    const Playground(
      id: '27',
      title: 'Playground 27',
    ),
    const Playground(
      id: '28',
      title: 'Playground 28',
    ),
    const Playground(
      id: '29',
      title: 'Playground 29',
    ),
    const Playground(
      id: '30',
      title: 'Playground 30',
    ),
  ];

  @override
  List<Playground> getAllPlaygrounds() {
    return _playgrounds;
  }

  @override
  Playground? getPlaygroundById(String id) {
    return _playgrounds.firstWhereOrNull((playground) => playground.id == id);
  }
}