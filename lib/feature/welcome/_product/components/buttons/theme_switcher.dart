import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/providers/providers.dart';

class ThemeSwitcher extends ConsumerWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeNotifier = ref.read(themeModeProvider.notifier);
    final themeMode = ref.watch(themeModeProvider);
    return DayNightSwitcher(
      isDarkModeEnabled: themeMode == ThemeMode.dark,
      onStateChanged: (isDarkModeEnabled) {
        themeNotifier.toggleTheme();
      },
    );
  }
}

Widget get themeSwitcher => const ThemeSwitcher();
