import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/language/language_constants.dart';

class LocaleSelectionButton extends StatelessWidget {
  const LocaleSelectionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Locale>(
      value: context.locale,
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
    );
  }
}

Widget get localeSelectionButton => const LocaleSelectionButton();
