class Playground {
  final String id;
  final String title;

  const Playground({
    required this.id,
    required this.title,
  });

  @override
  String toString() {
    return "Playground {id: $id, title: $title}";
  }
}