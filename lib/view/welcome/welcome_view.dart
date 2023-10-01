import 'package:blueprint/core/extensions/context_extension.dart';
import 'package:blueprint/core/extensions/string_localization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../core/constants/language/language_constants.dart';
import '../../core/init/lang/locale_keys.g.dart';
import '../../core/resources/resources.dart';
import '../../core/view/components/adaptive_text.dart';
import '_product/components/buttons/input_field.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  Locale _selectedLocale = LanguageConstants.instance.enLocale;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 32.0),
                  child: DropdownButton<Locale>(
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
                        setState(() {
                          _selectedLocale = value;
                        });
                      }
                    },
                  ),
                ),
              ),
              const Image(
                image: AssetImage(
                  Images.blueprintLogoTransparent,
                ),
                height: 300,
              ),
              SizedBox(
                width: context.width * 0.85,
                child: AdaptiveText(
                  text: LocaleKeys.welcome_subtitle.locale,
                  style: const TextStyle(fontSize: 40),
                ),
              ),
              const SizedBox(height: 20),
              AdaptiveText(
                  text: LocaleKeys.welcome_description.locale,
                  style: TextStyle(color: Colors.grey[700], fontSize: 20)),
              const SizedBox(height: 40),
              buildButton(LocaleKeys.welcome_login.locale.locale,
                  const Color(0xFF144272), context),
              const SizedBox(height: 20.0),
              buildButton(LocaleKeys.welcome_register.locale,
                  const Color(0xFF205295), context),
            ],
          ),
        ),
      ),
    );
  }
}
