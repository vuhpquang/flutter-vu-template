import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          GestureDetector(
            child: SizedBox(
              width: 100,
              height: 100,
              child: Hero(
                tag: 'https://picsum.photos/250?image=9',
                child: Image.network('https://picsum.photos/250?image=9'),
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/hero');
            },
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/color');
              },
              child: const Text('Colors'),
            ),
          )
        ],
      ),
    );
  }
}
