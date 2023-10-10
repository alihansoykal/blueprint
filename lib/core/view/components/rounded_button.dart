import 'package:flutter/material.dart';

import '../../../feature/login/login_view.dart';
import '../../extensions/context_extension.dart';
import '../../init/theme/app_theme.dart';

Widget roundedButton(String buttonText, Color color, BuildContext context) {
  return SizedBox(
    width: context.width * 0.9,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.symmetric(vertical: 17.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginView()),
        );
      },
      child: Text(
        buttonText,
        style: context.appTheme.text,
        textAlign: TextAlign.center,
      ),
    ),
  );
}
