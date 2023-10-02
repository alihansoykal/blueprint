// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'app_theme.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

class AppTheme extends ThemeExtension<AppTheme> {
  const AppTheme({
    required this.background,
    required this.button,
    required this.text,
  });

  final Color background;
  final Color button;
  final TextStyle text;

  static AppTheme get light => kDebugMode ? _lightGetter : _lightFinal;

  static AppTheme get dark => kDebugMode ? _darkGetter : _darkFinal;

  static AppTheme get _lightGetter => AppTheme(
        background: _$AppTheme.background[0],
        button: _$AppTheme.button[0],
        text: _$AppTheme.text[0],
      );

  static final AppTheme _lightFinal = AppTheme(
    background: _$AppTheme.background[0],
    button: _$AppTheme.button[0],
    text: _$AppTheme.text[0],
  );

  static AppTheme get _darkGetter => AppTheme(
        background: _$AppTheme.background[1],
        button: _$AppTheme.button[1],
        text: _$AppTheme.text[1],
      );

  static final AppTheme _darkFinal = AppTheme(
    background: _$AppTheme.background[1],
    button: _$AppTheme.button[1],
    text: _$AppTheme.text[1],
  );

  static final themes = [
    light,
    dark,
  ];

  @override
  AppTheme copyWith({
    Color? background,
    Color? button,
    TextStyle? text,
  }) {
    return AppTheme(
      background: background ?? this.background,
      button: button ?? this.button,
      text: text ?? this.text,
    );
  }

  @override
  AppTheme lerp(covariant ThemeExtension<AppTheme>? other, double t) {
    if (other is! AppTheme) return this as AppTheme;
    return AppTheme(
      background: Color.lerp(background, other.background, t)!,
      button: Color.lerp(button, other.button, t)!,
      text: TextStyle.lerp(text, other.text, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppTheme &&
            const DeepCollectionEquality()
                .equals(background, other.background) &&
            const DeepCollectionEquality().equals(button, other.button) &&
            const DeepCollectionEquality().equals(text, other.text));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(background),
      const DeepCollectionEquality().hash(button),
      const DeepCollectionEquality().hash(text),
    );
  }
}

extension AppThemeBuildContext on BuildContext {
  AppTheme get appTheme => Theme.of(this).extension<AppTheme>()!;
}
