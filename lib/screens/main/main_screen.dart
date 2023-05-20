import 'package:f_super/screens/task_list/task_list_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const TaskListScreen();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Main Screen'),
        ),
        // body: GestureDetector(
        //   onTap: () {
        //     Navigator.push(context, MaterialPageRoute(builder: (context) {
        //       return const DetailScreen();
        //     }));
        //   },
        //   // child: Hero(
        //   //   tag: 'imageHero',
        //   //   child: Image.network(
        //   //     'https://picsum.photos/900?image=9',
        //   //     width: 300,
        //   //     height: 300,
        //   //   ),
        //   // ),
        //   child: const TaskListScreen(),
        // ));
        body: const TaskListScreen());
  }
}
