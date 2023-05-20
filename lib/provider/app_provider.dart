import 'package:f_super/models/task_model.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class AppProvider extends ChangeNotifier {
  List<Task> tasks = <Task>[
    Task(id: '4', title: 'Task 1', isDone: false),
    Task(id: '2', title: 'Task 2', isDone: true),
    Task(id: '3', title: 'Task 3', isDone: false),
  ];

  void addTask(String title) {
    final Task task = Task(id: const Uuid().v4(), title: title);
    tasks.add(task);
    notifyListeners();
  }

  void toggleTask(String id) {
    tasks = tasks.map((Task task) {
      if (task.id == id) {
        task.isDone = !task.isDone;
      }
      return task;
    }).toList();
    notifyListeners();
  }

  void bottomSheetBuilder(Widget bottomSheetView, BuildContext context) {
    showModalBottomSheet(
        context: context,
        isDismissible: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0))),
        builder: (BuildContext context) {
          return bottomSheetView;
        });
  }
}
