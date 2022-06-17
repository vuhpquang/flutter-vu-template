import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/screens/home_page.dart';
import 'package:flutter_boilerplate/screens/search_page.dart';
import 'package:flutter_boilerplate/screens/second_page.dart';
import 'package:flutter_boilerplate/screens/settiings_page.dart';
import 'package:flutter_boilerplate/widgets/test.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class Example {
  Future<String> _getIPAddress() {
    final url = Uri.https('httpbin.org', '/ip');
    return http.get(url).then((response) {
      String ip = jsonDecode(response.body)['origin'];
      return ip;
    });
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.green,
        brightness: Brightness.light,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) =>
            const MyHomePage(title: 'Flutter Demo Home Page'),
        '/settings': (BuildContext context) => const SettingsPage(),
        '/search': (BuildContext context) => const SearchPage(),
        '/second': (BuildContext context) => const SecondPage(),
      },
      // home: TestWidget(),
    );
  }
}
