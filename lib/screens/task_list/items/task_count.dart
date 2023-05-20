import 'package:f_super/screens/task_list/items/task_count_item.dart';
import 'package:flutter/material.dart';

class TaskCount extends StatelessWidget {
  final int total;
  final int remaining;
  const TaskCount({required this.total, required this.remaining, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 16.0, 0, 16.0),
      child: Container(
        color: Theme.of(context).colorScheme.background,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // border radius
            TaskCountItem(title: 'Total', count: total, index: 0),
            TaskCountItem(title: 'Remaining', count: remaining, index: 1),
          ],
        ),
      ),
    );
  }
}
