import 'package:blueprint/core/constants/app/app_constants.dart';
import 'package:blueprint/view/welcome/welcome_view.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'core/constants/language/language_constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    path: ApplicationConstants.ASSET_LANG_PATH,
    supportedLocales: LanguageConstants.instance.supportedLocales,
    fallbackLocale: LanguageConstants.instance.enLocale,
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      home: const WelcomeView(),
    );
  }
}
