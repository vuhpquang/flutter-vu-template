import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/screens/second_page.dart';
import 'package:flutter_boilerplate/widgets/list_view.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      // color: Colors.accents[0],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network('https://picsum.photos/250?image=9'),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (BuildContext context) {
                //   return const SecondPage();
                // }));
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const SecondPage()),
                // );
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (contexty) => const SecondPage(),
                  ),
                );
              },
              child: const Text('Navigate to Screen 2'),
            ),
            ListViewWidget(),
          ],
        ),
      ),
    );
  }
}
