import 'package:f_super/provider/app_provider.dart';
import 'package:f_super/widgets/bottom_sheet/add_task_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskAddView extends StatelessWidget {
  const TaskAddView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(builder: (context, appProvider, _) {
      return FloatingActionButton(
          onPressed: () {
            appProvider.bottomSheetBuilder(const AddTaskBottomSheet(), context);
          },
          child: const Icon(Icons.add));
    });
  }
}
