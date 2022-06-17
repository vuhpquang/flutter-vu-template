/// Flutter
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    Key? key,
    required this.index,
    required this.onPress,
  }) : super(key: key);

  final int index;
  final void Function() onPress;
  String btnText = "Press";

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 12, 15, 12),
            child: Column(
              children: <Widget>[
                Text('Card $index'),
                // TextButton(
                //   child: const Text('Press'),
                //   onPressed: onPress,
                // ),
                ElevatedButton(
                  onPressed: onPress,
                  child: Text(btnText),
                  style: ElevatedButton.styleFrom(
                      onPrimary: Colors.white,
                      primary: index % 2 == 0
                          ? Colors.lightGreen
                          : Colors.lightBlue),
                )
              ],
            )));
  }
}
