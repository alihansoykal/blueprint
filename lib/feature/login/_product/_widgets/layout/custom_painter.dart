import 'package:blueprint/app/resources/colors.dart';
import 'package:flutter/material.dart';

class LoginViewCurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();
    Color colorTwo = AppColors.secondaryColor;
    Color colorOne = AppColors.primaryColor;

    path = Path();
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.30, size.height * 0.30, size.width * 0.6, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.9, size.height * 0.20, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    path.close();

    paint.color = colorTwo;
    canvas.drawPath(path, paint);

    path = Path();
    path.lineTo(0, size.height * 0.2);
    path.quadraticBezierTo(size.width * 0.20, size.height * 0.2, size.width * 0.4, size.height * 0.15);
    path.quadraticBezierTo(size.width * 0.8, size.height * 0.05, size.width * 1, size.height * 0.15);

    path.lineTo(size.width, 0);
    path.close();

    paint.color = colorOne;
    canvas.drawPath(path, paint);

    // path = Path();
    // path.moveTo(0, size.height);
    // path.lineTo(0, size.height * 0.90);
    // path.quadraticBezierTo(size.width * 0.25, size.height * 0.95, size.width * 0.5, size.height * 0.90);
    // path.quadraticBezierTo(size.width * 0.75, size.height * 0.85, size.width, size.height * 0.82);
    // path.lineTo(size.width, size.height);
    // path.close();

    // paint.color = colorOne;
    // canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
