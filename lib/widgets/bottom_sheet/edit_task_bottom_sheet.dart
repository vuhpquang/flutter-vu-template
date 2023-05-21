import 'package:f_super/models/task_model.dart';
import 'package:f_super/provider/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditTaskBottomSheet extends StatefulWidget {
  final Task data;
  const EditTaskBottomSheet({required this.data, Key? key}) : super(key: key);

  @override
  State<EditTaskBottomSheet> createState() => _EditTaskBottomSheetState();
}

class _EditTaskBottomSheetState extends State<EditTaskBottomSheet> {
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TextEditingController(text: widget.data.title);
  }

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
                Provider.of<AppProvider>(context, listen: false)
                    .editTask(widget.data.id, value);
              },
            ),
          ),
        ),
      ),
    );
  }
}
