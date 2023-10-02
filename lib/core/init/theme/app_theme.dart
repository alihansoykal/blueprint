import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'app_theme.tailor.dart';

@Tailor(
  themes: ['light', 'dark'],
  themeGetter: ThemeGetter.onBuildContext,
  generateStaticGetters: true,
)
class _$AppTheme {
  static const List<Color> background = [
    Color(0xffF1B4BB),
    Color(0xFF232323),
  ];

  static const List<Color> button = [
    Color(0xFF0E2954),
    Color(0xFFFDF0F0),
  ];

  static List<TextStyle> text = [
    const TextStyle(color: Colors.white, fontSize: 18),
    const TextStyle(color: Color(0xFF464646), fontSize: 18),
  ];
}
