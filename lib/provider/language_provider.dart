import 'package:flutter/material.dart';

class LanguageProvider with ChangeNotifier {
  Locale _locale = const Locale('en', 'US');

  Locale get locale => _locale;

  void setLocale(Locale locale) {
    _locale = locale;
    notifyListeners();
  }

  void toggleLocale() {
    if (_locale == const Locale('en', 'US')) {
      _locale = const Locale('vi', 'VN');
    } else {
      _locale = const Locale('en', 'US');
    }
    notifyListeners();
  }
}
