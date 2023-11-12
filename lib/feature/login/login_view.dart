import 'package:blueprint/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

import '_product/_widgets/layout/custom_painter.dart';
import '_product/mixin/login_view_mixin.dart';

final class LoginView extends StatelessWidget with LoginViewMixin {
  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            width: context.width,
            height: context.height,
            child: CustomPaint(
              size: Size.infinite,
              painter: LoginViewCurvePainter(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                  verticalSpacer(context, 0.3),
                  header(context),
                  emailField,
                  passwordField,
                  forgotPassword(context),
                  alternativeLogin,
                  verticalSpacer(context, 0.06),
                  loginButton,
                  dontHaveAnAccount(context),
                  verticalSpacer(context, 0.04),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
