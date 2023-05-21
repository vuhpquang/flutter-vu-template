import 'package:f_super/models/task_model.dart';
import 'package:f_super/widgets/bottom_sheet/edit_task_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/app_provider.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class TaskListItem extends StatelessWidget {
  final Task data;
  final void Function(String id) onTap;
  const TaskListItem({required this.data, required this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _onChoiceSelected(SampleItem item) {
      switch (item) {
        case SampleItem.itemOne:
          print('Edit: ${data.title}');
          Provider.of<AppProvider>(context, listen: false)
              .bottomSheetBuilder(EditTaskBottomSheet(data: data), context);
          break;
        case SampleItem.itemTwo:
          print('Delete: ${data.title}');
          Provider.of<AppProvider>(context, listen: false).deleteTask(data.id);
          break;
        case SampleItem.itemThree:
          print('Cancel: ${data.title}');
          break;
      }
    }

    return Column(
      children: [
        const SizedBox(height: 8.0),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: Theme.of(context).colorScheme.background),
          child: ListTile(
            title: Text(data.title),
            // subtitle: Text('Desc: ${data.description}'),
            leading: data.isDone
                ? const Icon(Icons.check_box)
                : const Icon(Icons.check_box_outline_blank),
            trailing: PopupMenuButton<SampleItem>(
                onSelected: _onChoiceSelected,
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem(
                      value: SampleItem.itemOne,
                      child: Text('Edit'),
                    ),
                    const PopupMenuItem(
                      value: SampleItem.itemTwo,
                      child: Text('Delete'),
                    ),
                  ];
                }),
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
