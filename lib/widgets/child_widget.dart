import 'package:flutter/material.dart';

class ChildWidget extends StatefulWidget {
  const ChildWidget({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  State<ChildWidget> createState() => _ChildWidgetState();
}

class _ChildWidgetState extends State<ChildWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text('Child Widget $widget.index'),
      ],
    );
  }
}
