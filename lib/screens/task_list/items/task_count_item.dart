import 'package:flutter/material.dart';

class TaskCountItem extends StatelessWidget {
  final String title;
  final int count;
  final int index;

  const TaskCountItem({
    Key? key,
    required this.title,
    required this.count,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        // padding: const EdgeInsets.fromLTRB(16.0, 0, 8.0, 0),
        padding: index == 0
            ? const EdgeInsets.fromLTRB(16.0, 0, 8.0, 0)
            : const EdgeInsets.fromLTRB(8.0, 0, 16.0, 0),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onBackground,
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(count.toString(),
                    style: Theme.of(context).textTheme.headlineMedium),
                Text(title, style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
