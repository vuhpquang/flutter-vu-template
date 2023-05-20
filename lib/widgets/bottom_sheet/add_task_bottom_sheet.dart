import 'package:f_super/provider/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddTaskBottomSheet extends StatelessWidget {
  const AddTaskBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SizedBox(
        height: 80.0,
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 32.0,
            height: 40.0,
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Enter a task',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  fillColor: Theme.of(context).colorScheme.onBackground,
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  )),
              autocorrect: true,
              autofocus: true,
              onSubmitted: (value) {
                Navigator.pop(context, value);
                Provider.of<AppProvider>(context, listen: false).addTask(value);
              },
            ),
          ),
        ),
      ),
    );
  }
}
