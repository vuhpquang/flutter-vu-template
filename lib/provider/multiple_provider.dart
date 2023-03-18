import 'package:f_super/constants/app_themes.dart';
import 'package:f_super/provider/category_provider.dart';
import 'package:f_super/provider/theme_provider.dart';
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
        ChangeNotifierProvider(
          create: (ctx) => ThemeProvider(),
        ),
      ],
      // child: MyApp(),
      child: Consumer<ThemeProvider>(
        builder: (ctx, themeProvider, _) => MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          themeMode: themeProvider.themeMode,
          theme: AppThemeData.lightThemeData,
          darkTheme: AppThemeData.darkThemeData,
          home: MyApp(),
        ),
      ),
    );
  }
}
