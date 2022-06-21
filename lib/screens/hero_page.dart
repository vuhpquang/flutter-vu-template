import 'package:flutter/material.dart';

class HeroPage extends StatefulWidget {
  HeroPage({Key? key}) : super(key: key);

  @override
  State<HeroPage> createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: 'https://picsum.photos/250?image=9',
              child: Image.network('https://picsum.photos/250?image=9'),
            ),
          ],
        ),
      ),
    );
  }
}
