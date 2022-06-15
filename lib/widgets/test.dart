import 'package:flutter/material.dart';

class TestWidget extends StatefulWidget {
  const TestWidget({Key? key}) : super(key: key);

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  void onPress() {
    print("Hello");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Column(
            children: <Widget>[
              const Text("Hello World"),
              TextButton(
                child: const Text('TextButton'),
                onPressed: onPress,
              )
            ],
          ),
        ),
        // Expanded(
        //   flex: 2,
        //   child: Column(
        //     children: const <Widget>[
        //       Text(
        //           "This is a long text this is a long test this is This is a long text this is a long test this is This is a long text this is a long test this is This is a long text this is a long test this is This is a long text this is a long test this is This is a long text this is a long test this is ")
        //     ],
        //   ),
        // )
      ],
    ));
  }
}
