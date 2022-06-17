import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          // return Container(
          //   height: 50,
          //   color: Colors.amber[index * 100 % 900],
          //   child: Center(child: Text('Entry $index')),
          // );
          return ListTile(
            title: Text('Entry $index'),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.remove),
          );
        });
  }
}
