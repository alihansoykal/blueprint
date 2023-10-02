import 'package:blueprint/core/extensions/context_extension.dart';
import 'package:blueprint/core/init/theme/app_theme.dart';
import 'package:flutter/material.dart';

Widget buildButton(String buttonText, Color color, BuildContext context) {
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
      onPressed: () {},
      child: Text(
        buttonText,
        style: context.appTheme.text,
        textAlign: TextAlign.center,
      ),
    ),
  );
}
