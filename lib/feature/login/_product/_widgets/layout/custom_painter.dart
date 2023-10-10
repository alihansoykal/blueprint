import 'package:flutter/material.dart';

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();
    Color colorTwo = const Color.fromARGB(255, 130, 206, 215);
    Color colorOne = const Color(0xFF3EC1D3);

    path = Path();
    path.lineTo(0, size.height * 0.50);
    path.quadraticBezierTo(size.width * 0.30, size.height * 0.60,
        size.width * 0.6, size.height * 0.50);
    path.quadraticBezierTo(
        size.width * 0.9, size.height * 0.4, size.width * 1, size.height * 0.5);
    path.lineTo(size.width, 0);
    path.close();

    paint.color = colorTwo;
    canvas.drawPath(path, paint);

    path = Path();
    path.lineTo(0, size.height * 0.4);
    path.quadraticBezierTo(size.width * 0.20, size.height * 0.4,
        size.width * 0.4, size.height * 0.30);
    path.quadraticBezierTo(
        size.width * 0.8, size.height * 0.1, size.width * 1, size.height * 0.3);

    path.lineTo(size.width, 0);
    path.close();

    paint.color = colorOne;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
