import 'package:flutter/material.dart';

import '../../../../core/extensions/context_extension.dart';
import '../mixin/welcome_view_mixin.dart';

class WelcomeView extends StatelessWidget with WelcomeViewMixin {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              themeAndLocaleHeader(context),
              svgLogo(context),
              subtitle(context),
              context.defaultVerticalSpace,
              description,
              context.highVerticalSpace,
              loginButton(context),
              context.defaultVerticalSpace,
              registerButton(context),
            ],
          ),
        ),
      ),
    );
  }
}
