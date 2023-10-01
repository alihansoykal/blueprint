import 'package:blueprint/core/constants/language/language_constants.dart';
import 'package:blueprint/core/extensions/string_localization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/init/lang/locale_keys.g.dart';

class LanguageSwitcher extends StatefulWidget {
  const LanguageSwitcher({super.key});

  @override
  _LanguageSwitcherState createState() => _LanguageSwitcherState();
}

class _LanguageSwitcherState extends State<LanguageSwitcher> {
  final Locale _selectedLocale = LanguageConstants.instance.enLocale;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton<Locale>(
          value: _selectedLocale,
          items: [
            DropdownMenuItem(
              value: LanguageConstants.instance.enLocale,
              child: const Text("English"),
            ),
            DropdownMenuItem(
              value: LanguageConstants.instance.deLocale,
              child: const Text("German"),
            ),
          ],
          onChanged: (value) {
            if (value != null) {
              context.setLocale(value);
            }
          },
        ),
        Text(LocaleKeys.confirm.locale),
      ],
    );
  }
}
