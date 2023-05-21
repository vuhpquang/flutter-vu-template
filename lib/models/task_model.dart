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

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      isDone: json['isDone'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'isDone': isDone,
    };
  }
}
