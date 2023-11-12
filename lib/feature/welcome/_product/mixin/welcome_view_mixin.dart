import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../app/resources/resources.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/extensions/string_localization.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../../../../core/init/theme/app_theme.dart';
import '../../../../core/view/components/adaptive_text.dart';
import '../../../../core/view/components/rounded_button.dart';
import '../components/buttons/locale_selection_button.dart';
import '../components/buttons/theme_switcher.dart';

mixin WelcomeViewMixin {
  Widget loginButton(BuildContext context) {
    return roundedButton(LocaleKeys.welcome_login.locale.locale, context.appTheme.button, context);
  }

  Widget registerButton(BuildContext context) {
    return roundedButton(LocaleKeys.welcome_register.locale.locale, context.appTheme.button, context);
  }

  Widget svgLogo(BuildContext context) {
    return SvgPicture.asset(
      Svgs.blueprintLogo,
      height: context.height * 0.3,
    );
  }

  Widget subtitle(BuildContext context) {
    return SizedBox(
      width: context.width * 0.85,
      child: AdaptiveText(
        text: LocaleKeys.welcome_subtitle.locale,
        style: const TextStyle(fontSize: 40),
      ),
    );
  }

  Widget get description => AdaptiveText(
        text: LocaleKeys.welcome_description.locale,
        style: TextStyle(color: Colors.grey[900], fontSize: 20),
      );

  Widget themeAndLocaleHeader(BuildContext context) {
    return Padding(
      padding: context.paddingAllLow,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          themeSwitcher,
          localeSelectionButton,
        ],
      ),
    );
  }
}
