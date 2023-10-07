import 'package:blueprint/core/init/theme/typography.dart';
import 'package:flutter/material.dart';

import 'app_theme.dart';
import 'color_schemes.g.dart';

ThemeData themeData(ThemeMode themeMode) {
  return ThemeData(
    useMaterial3: true,
    colorScheme:
        themeMode == ThemeMode.light ? lightColorScheme : darkColorScheme,
    textTheme: textTheme,
    extensions:
        themeMode == ThemeMode.light ? [AppTheme.light] : [AppTheme.dark],
    scaffoldBackgroundColor: themeMode == ThemeMode.light
        ? AppTheme.light.background
        : AppTheme.dark.background,
  );
}
