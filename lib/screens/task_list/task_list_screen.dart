import 'package:f_super/models/task_model.dart';
import 'package:f_super/provider/app_provider.dart';
import 'package:f_super/screens/task_list/items/task_add_view.dart';
import 'package:f_super/screens/task_list/items/task_count.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'items/task_list.dart';

class TaskListScreen extends StatelessWidget {
  const TaskListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // bool englishEnabled = Provider.of<LanguageProvider>(context).isEnglish();

    List<Task> taskList = Provider.of<AppProvider>(context).tasks;

    onTap(String id) {
      print('id: $id');
      HapticFeedback.mediumImpact();
      Provider.of<AppProvider>(context, listen: false).toggleTask(id);
    }

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title: const Text('Welcome back, Quang Vũ')),
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: TaskCount(
                      total: taskList.length,
                      remaining:
                          taskList.where((Task task) => !task.isDone).length)),
              Expanded(
                  flex: 7,
                  child: TaskList(
                    taskList: taskList,
                    onTap: onTap,
                  )),
            ],
          ),
        ),
        floatingActionButton: const TaskAddView());
  }
}
