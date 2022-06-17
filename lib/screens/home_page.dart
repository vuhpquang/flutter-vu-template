import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/screens/search_page.dart';
import 'package:flutter_boilerplate/screens/settiings_page.dart';
import 'package:flutter_boilerplate/widgets/child_widget.dart';
import 'package:flutter_boilerplate/widgets/list_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int _counter = 0;
  int currentTabIndex = 0;
  double turns = 0.0;
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

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
        // backgroundColor: Colors.indigo[200],
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit))],
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
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
          ListViewWidget(),
          SettingsPage(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.home,
      //         semanticLabel: "HOME",
      //         size: 24,
      //         color: Color(0xffb74093),
      //       ),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.search,
      //       ),
      //       label: 'Search',
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.settings),
      //         label: 'Settings',
      //         activeIcon: Icon(Icons.settings_outlined)),
      //   ],
      //   backgroundColor: Colors.teal[100],
      //   currentIndex: currentTabIndex,
      //   onTap: (int index) {
      //     setState(() {
      //       currentTabIndex = index;
      //     });
      //   },
      //   selectedItemColor: Colors.amber[800],
      // ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentTabIndex,
        backgroundColor: Colors.teal[100],
        animationDuration: const Duration(seconds: 1),
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        onDestinationSelected: (int index) {
          setState(() {
            currentTabIndex = index;
            if (index == 0) {
              _animationController.forward();
              setState(() {
                turns -= 1 / 4;
              });
            } else {
              _animationController.reverse();
              setState(() {
                turns += 1 / 4;
              });
            }
          });
        },
        destinations: [
          NavigationDestination(
            // icon: Icon(Icons.home_outlined),
            // selectedIcon: AnimatedRotation(
            //   curve: Curves.easeOutExpo,
            //   // turns: turns,
            //   turns: turns,
            //   duration: const Duration(milliseconds: 500),
            //   child: Icon(Icons.home),
            // ),
            icon: AnimatedIcon(
                icon: AnimatedIcons.menu_close, progress: _animationController),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
