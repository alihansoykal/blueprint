import 'package:blueprint/core/extensions/context_extension.dart';
import 'package:blueprint/core/extensions/string_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../app/resources/colors.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../_widgets/button/alternative_login.dart';
import '../store/visibility_icon_store.dart';

mixin LoginViewMixin {
  final VisibilityIconStore visibilityIconStore = VisibilityIconStore();

  SizedBox header(BuildContext context) => SizedBox(
        width: context.width,
        child: Text(
          LocaleKeys.login_title.locale,
          textAlign: TextAlign.start,
          style: const TextStyle(fontSize: 30, color: AppColors.primaryColor),
        ),
      );

  TextFormField get emailField => TextFormField(
        decoration: InputDecoration(
            labelText: LocaleKeys.login_email.locale,
            hintText: LocaleKeys.login_emailHint.locale,
            suffixIcon: const Icon(
              Icons.email,
            ),
            border: const UnderlineInputBorder()),
        keyboardType: TextInputType.emailAddress,
      );

  Observer get passwordField => Observer(
        builder: (_) => TextFormField(
          decoration: InputDecoration(
              labelText: LocaleKeys.login_password.locale,
              hintText: LocaleKeys.login_passwordHint.locale,
              suffixIcon: IconButton(
                icon: Icon(
                  visibilityIconStore.isVisible ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () => visibilityIconStore.setVisible(!visibilityIconStore.isVisible),
              ),
              border: const UnderlineInputBorder()),
          obscureText: !visibilityIconStore.isVisible,
        ),
      );

  SizedBox forgotPassword(BuildContext context) => SizedBox(
        width: context.width,
        child: Text(
          LocaleKeys.login_forgotPassword.locale,
          style: const TextStyle(color: AppColors.primaryColor),
          textAlign: TextAlign.end,
        ),
      );

  Row get alternativeLogin => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ...alternativeLoginButtons
              .map((button) => FloatingActionButton(
                    onPressed: button['onPressed'],
                    backgroundColor: Colors.white,
                    elevation: 5.0,
                    child: button['icon'],
                  ))
              .toList(),
        ],
      );

  ElevatedButton get loginButton => ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          minimumSize: const Size(double.infinity, 50),
        ),
        onPressed: () {},
        child: Text(LocaleKeys.login_login.locale),
      );

  SizedBox dontHaveAnAccount(BuildContext context) => SizedBox(
        width: MediaQuery.of(context).size.width,
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: const TextStyle(color: Colors.black),
            children: <TextSpan>[
              TextSpan(text: LocaleKeys.login_noAccount.locale),
              TextSpan(
                text: LocaleKeys.login_signUp.locale.toUpperCase(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
      );

  SizedBox verticalSpacer(BuildContext context, double height) => SizedBox(height: context.height * height);
}
