import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/task_model.dart';

class SharedPreferencesUtils {
  static Future<void> saveTasks(List<Task> tasks) async {
    final prefs = await SharedPreferences.getInstance();
    final encodedTasks = jsonEncode(tasks);
    await prefs.setString('tasks', encodedTasks);
  }

  static Future<List<Task>> loadTasks() async {
    final prefs = await SharedPreferences.getInstance();
    final encodedTasks = prefs.getString('tasks');
    if (encodedTasks != null) {
      final List<dynamic> decodedTasks = jsonDecode(encodedTasks);
      final tasks = decodedTasks.map((task) => Task.fromJson(task)).toList();
      return tasks;
    }
    return [];
  }
}
