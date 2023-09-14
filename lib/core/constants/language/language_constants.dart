// File: language_constants.dart

import 'package:flutter/material.dart';

class LanguageConstants {
  static final LanguageConstants instance = LanguageConstants._internal();

  LanguageConstants._internal();

  List<Locale> get supportedLocales => [
        const Locale('en', 'US'),
        const Locale('de', 'DE'),
      ];

  Locale get enLocale => const Locale('en', 'US');
}
