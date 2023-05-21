import 'package:f_super/models/task_model.dart';
import 'package:flutter/material.dart';

class TaskListItem extends StatelessWidget {
  final Task data;
  final void Function(String id) onTap;
  const TaskListItem({required this.data, required this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 8.0),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: Theme.of(context).colorScheme.background),
          child: ListTile(
            title: Text(data.title),
            subtitle: Text('Desc: ${data.description}'),
            leading: data.isDone
                ? const Icon(Icons.check_box)
                : const Icon(Icons.check_box_outline_blank),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
            onTap: () {
              onTap(data.id);
            },
          ),
        ),
        const SizedBox(height: 8.0),
      ],
    );
  }
}
