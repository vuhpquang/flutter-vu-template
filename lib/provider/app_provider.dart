import 'package:f_super/models/task_model.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class AppProvider extends ChangeNotifier {
  List<Task> tasks = <Task>[];

  void loadTasks(List<Task> tasks) {
    this.tasks = tasks;
    notifyListeners();
  }

  void addTask(String title) {
    final Task task = Task(id: const Uuid().v4(), title: title);
    // Insert at the beginning of the list.
    tasks.insert(0, task);
    notifyListeners();
  }

  void reorderTask(int oldIndex, int newIndex) {
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    final Task task = tasks.removeAt(oldIndex);
    tasks.insert(newIndex, task);
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
