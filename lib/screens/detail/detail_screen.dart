import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  void initState() {
    super.initState();
    // fetchWeatherDetail();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Center(
          child: Hero(
        tag: 'imageHero',
        child: Image.network(
          'https://picsum.photos/250?image=9',
          width: 100,
          height: 100,
        ),
      )),
      // child: FutureBuilder<String>(
      //   future: WeatherService.fetchWeatherDetail(),
      //   builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
      //     if (snapshot.hasData) {
      //       return Text(snapshot.data!);
      //     } else if (snapshot.hasError) {
      //       return Text('${snapshot.error}');
      //     }
      //     return const CircularProgressIndicator();
      //   },
      // )),
    ));
  }
}
