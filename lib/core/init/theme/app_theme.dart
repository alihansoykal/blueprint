import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

import '../../../app/resources/colors.dart';

part 'app_theme.tailor.dart';

@Tailor(
  themes: ['light', 'dark'],
  themeGetter: ThemeGetter.onBuildContext,
  generateStaticGetters: true,
)
class _$AppTheme {
  static const List<Color> background = [
    AppColors.tertiaryColor,
    AppColors.primaryColor,
  ];

  static const List<Color> button = [
    AppColors.primaryColor,
    Color(0xFFFDF0F0),
  ];

  static List<TextStyle> text = [
    const TextStyle(color: Colors.white, fontSize: 18),
    const TextStyle(color: AppColors.quaternaryColor, fontSize: 18),
  ];
}
