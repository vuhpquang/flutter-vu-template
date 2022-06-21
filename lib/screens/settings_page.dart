import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    child: Image.asset('lib/assets/images/mastercard.png'),
                    onTap: () {
                      print("Hello");
                    },
                  ),
                  GestureDetector(
                    child: Image.asset('lib/assets/images/mastercard.png'),
                    onTap: () {
                      print("Hello");
                    },
                  ),
                  GestureDetector(
                    child: Image.asset('lib/assets/images/mastercard.png'),
                    onTap: () {
                      print("Hello");
                    },
                  ),
                  GestureDetector(
                    child: Image.asset('lib/assets/images/mastercard.png'),
                    onTap: () {
                      print("Hello");
                    },
                  ),
                  GestureDetector(
                    child: Image.asset('lib/assets/images/mastercard.png'),
                    onTap: () {
                      print("Hello");
                    },
                  ),
                ],
              ),
            )));
  }
}
