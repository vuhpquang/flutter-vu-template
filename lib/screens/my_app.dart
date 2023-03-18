import 'package:f_super/widgets/language_choose.dart';
import 'package:f_super/widgets/theme_toggle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        actions: const [ThemeToggleButton(), LanguageChoose()],
      ),
      body: Center(
        child: Container(
            // child: const Text(AppLocalizations.of(context).translate('helloWorld')
            child: Text(AppLocalizations.of(context)!.hello('Vũ'))),
      ),
    );
  }
}
