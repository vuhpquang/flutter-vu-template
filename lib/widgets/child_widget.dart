import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/widgets/custom_card.dart';

class ChildWidget extends StatefulWidget {
  const ChildWidget({Key? key, required this.index, required this.onPress})
      : super(key: key);

  final int index;
  final void Function() onPress;

  @override
  State<ChildWidget> createState() => _ChildWidgetState();
}

class _ChildWidgetState extends State<ChildWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red[100],
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: <Widget>[
              Text('Child Widget $widget.index'),
              CustomCard(index: widget.index, onPress: widget.onPress)
            ],
          ),
        ));
  }
}
