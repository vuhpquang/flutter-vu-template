import 'package:f_super/widgets/theme_toggle_button.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
        actions: const [ThemeToggleButton()],
      ),
      body: Center(
        child: Container(
          child: const Text('Hello World'),
        ),
      ),
    );
  }
}
