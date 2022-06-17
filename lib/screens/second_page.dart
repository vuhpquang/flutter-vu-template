import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo 2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
          child: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Image.network('https://picsum.photos/250?image=9'),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Navigate back')),
        ],
      ))),
      // home: TestWidget(),
    );
  }
}
