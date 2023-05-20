class Task {
  String id;
  String title;
  String description;
  bool isDone;

  Task(
      {required this.id,
      required this.title,
      this.description = '',
      this.isDone = false});
}
