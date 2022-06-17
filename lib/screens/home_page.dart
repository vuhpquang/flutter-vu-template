import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/screens/search_page.dart';
import 'package:flutter_boilerplate/screens/settiings_page.dart';
import 'package:flutter_boilerplate/widgets/child_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int currentTabIndex = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: IndexedStack(
        index: currentTabIndex,
        children: <Widget>[
          Center(
            // color: Colors.pink,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                const Text('You have pushed the button this many times:',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(color: Colors.green)),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
                // CustomCard(
                //   index: _counter,
                //   onPress: _incrementCounter,
                // )
                ChildWidget(index: _counter, onPress: _incrementCounter)
              ],
            ),
          ),
          SearchPage(),
          SettingsPage(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              semanticLabel: "HOME",
              size: 24,
              color: Color(0xffb74093),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              activeIcon: Icon(Icons.settings_outlined)),
        ],
        backgroundColor: Colors.teal[100],
        currentIndex: currentTabIndex,
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}
