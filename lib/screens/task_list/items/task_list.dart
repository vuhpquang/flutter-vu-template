import 'package:f_super/models/task_model.dart';
import 'package:f_super/screens/task_list/items/task_list_item.dart';
import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  final List<Task> taskList;
  final void Function(String id) onTap;

  const TaskList({required this.taskList, required this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.onBackground,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          itemCount: taskList.length,
          itemBuilder: (BuildContext context, int index) {
            return TaskListItem(data: taskList[index], onTap: onTap);
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 16.0);
          },
        ),
      ),
    );
  }
}
