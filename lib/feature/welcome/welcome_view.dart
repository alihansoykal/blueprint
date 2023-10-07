import 'package:blueprint/core/extensions/context_extension.dart';
import 'package:blueprint/core/extensions/string_localization.dart';
import 'package:blueprint/core/init/theme/app_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../app/resources/resources.dart';
import '../../core/constants/language/language_constants.dart';
import '../../core/init/lang/locale_keys.g.dart';
import '../../core/providers/providers.dart';
import '../../core/view/components/adaptive_text.dart';
import '_product/components/buttons/welcome_button.dart';

class WelcomeView extends ConsumerWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customTheme = context.appTheme;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.light_mode),
                      onPressed: () {
                        final themeNotifier =
                            ref.read(themeModeProvider.notifier);
                        themeNotifier.toggleTheme();
                      },
                    ),
                    DropdownButton<Locale>(
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
                    ),
                  ],
                ),
              ),
              SvgPicture.asset(
                Svgs.blueprintLogo,
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
                  customTheme.button, context),
              const SizedBox(height: 20.0),
              buildButton(LocaleKeys.welcome_register.locale,
                  customTheme.button, context),
            ],
          ),
        ),
      ),
    );
  }
}
