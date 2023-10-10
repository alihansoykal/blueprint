import 'package:blueprint/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

import '_product/_widgets/layout/custom_painter.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomPaint(
          size: Size.infinite,
          painter: CurvePainter(),
          child: Container(
            height: context.height / 2,
          ),
        ),
      ),
    );
  }
}
