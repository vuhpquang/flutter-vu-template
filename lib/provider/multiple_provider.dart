import 'package:f_super/constants/app_themes.dart';
import 'package:f_super/provider/category_provider.dart';
import 'package:f_super/provider/language_provider.dart';
import 'package:f_super/provider/theme_provider.dart';
import 'package:f_super/screens/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class ProviderContainer extends StatelessWidget {
  const ProviderContainer({super.key});

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
        ChangeNotifierProvider(
          create: (ctx) => LanguageProvider(),
        ),
      ],
      // child: MyApp(),
      child: Consumer2<ThemeProvider, LanguageProvider>(
        builder: (ctx, themeProvider, languageProvider, _) => MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          themeMode: themeProvider.themeMode,
          theme: AppThemeData.lightThemeData,
          darkTheme: AppThemeData.darkThemeData,
          // localizationsDelegates: const [
          //   AppLocalizations.delegate,
          //   GlobalMaterialLocalizations.delegate,
          //   GlobalWidgetsLocalizations.delegate,
          //   GlobalCupertinoLocalizations.delegate,
          // ],
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          // supportedLocales: const [Locale('en', 'US'), Locale('vi', 'VN')],
          supportedLocales: AppLocalizations.supportedLocales,
          locale: languageProvider.locale,
          home: MyApp(),
        ),
      ),
    );
  }
}
