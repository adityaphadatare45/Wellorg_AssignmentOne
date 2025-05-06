import 'package:flutter/material.dart';

class LocalizationProvider with ChangeNotifier {
  String _currentLang = 'en';

  String get currentLang => _currentLang;

  void changeLang(String lang) {
    _currentLang = lang;
    notifyListeners();
  }

  TextDirection get textDirection => _currentLang == 'ar' ? TextDirection.rtl : TextDirection.ltr;
}
