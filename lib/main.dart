import 'package:blueprint/core/init/theme/typography.dart';
import 'package:blueprint/view/welcome/welcome_view.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/constants/app/app_constants.dart';
import 'core/constants/language/language_constants.dart';
import 'core/init/theme/app_theme.dart';
import 'core/init/theme/color_schemes.g.dart';
import 'core/providers/providers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      path: ApplicationConstants.ASSET_LANG_PATH,
      supportedLocales: LanguageConstants.instance.supportedLocales,
      fallbackLocale: LanguageConstants.instance.enLocale,
      child: const ProviderScope(child: MyApp())));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);

    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme:
            themeMode == ThemeMode.light ? lightColorScheme : darkColorScheme,
        textTheme: textTheme,
        extensions:
            themeMode == ThemeMode.light ? [AppTheme.light] : [AppTheme.dark],
        scaffoldBackgroundColor: themeMode == ThemeMode.light
            ? AppTheme.light.background
            : AppTheme.dark.background,
      ),
      themeMode: themeMode,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      home: const WelcomeView(),
    );
  }
}
