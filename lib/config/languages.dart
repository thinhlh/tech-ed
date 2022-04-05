import 'package:flutter/material.dart';

class Languages {
  Languages._internal();

  static const List<Locale> supportedLocales = [
    Locale('vi'),
    Locale('en'),
  ];

  static Locale defaultLocale = supportedLocales.first;

  static String? defaultLocaleString = supportedLocales.first.countryCode;

  static Locale fallbackLocale = supportedLocales[1];
}
