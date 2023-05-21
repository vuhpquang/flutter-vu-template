import 'package:f_super/models/task_model.dart';
import 'package:f_super/screens/task_list/items/task_list_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/app_provider.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ReorderableListView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          physics: const BouncingScrollPhysics(),
          proxyDecorator: (child, index, animation) => Material(
            borderRadius: BorderRadius.circular(16.0),
            child: child,
          ),
          onReorder: (int oldIndex, int newIndex) {
            Provider.of<AppProvider>(context, listen: false)
                .reorderTask(oldIndex, newIndex);
          },
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          children: taskList
              .map((Task task) => TaskListItem(
                    data: task,
                    onTap: onTap,
                    key: ValueKey<String>(task.id),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
