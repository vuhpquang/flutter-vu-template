import 'package:f_super/constants/app_themes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      // theme: _themeStore.darkMode
      //     ? AppThemeData.c
      //     : AppThemeData.lightThemeData,
      theme: AppThemeData.darkThemeData,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
