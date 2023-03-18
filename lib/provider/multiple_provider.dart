import 'package:f_super/provider/category_provider.dart';
import 'package:f_super/screens/my_app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => CategoryProvider(),
        ),
      ],
      child: MyApp(),
    );
  }
}
