import 'package:f_super/models/task_model.dart';
import 'package:f_super/provider/app_provider.dart';
import 'package:f_super/screens/task_list/items/task_add_view.dart';
import 'package:f_super/screens/task_list/items/task_count.dart';
import 'package:f_super/utils/shared_prefererences.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'items/task_list.dart';

class TaskListScreen extends StatefulWidget {
  const TaskListScreen({Key? key}) : super(key: key);

  @override
  State<TaskListScreen> createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  AppProvider notifier = AppProvider();

  void _loadTasks() async {
    List<Task> tasks = await SharedPreferencesUtils.loadTasks();
    notifier.loadTasks(tasks);
  }

  @override
  void initState() {
    super.initState();
    _loadTasks();

    // notifier = context.read<AppProvider>();
    notifier = Provider.of<AppProvider>(context, listen: false);
    notifier.addListener(() {
      mounted ? setState(() {}) : null;
      SharedPreferencesUtils.saveTasks(notifier.tasks);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    notifier.removeListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    List<Task> taskList = notifier.tasks;

    onTap(String id) {
      HapticFeedback.mediumImpact();
      notifier.toggleTask(id);
      // Provider.of<AppProvider>(context, listen: false).toggleTask(id);
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
