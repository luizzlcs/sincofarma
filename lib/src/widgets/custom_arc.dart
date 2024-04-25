import 'package:flutter/material.dart';
import 'package:sincofarma/src/theme/sincofarma_theme.dart';

class CustomArc extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..moveTo(0, 50)
      ..lineTo(size.width, 50)
      ..lineTo(size.width, 140 * 1.5)
      ..quadraticBezierTo(120 * 1.6, 190 * 1.5, 0, 140 * 1.5);

    final paint = Paint()
      ..color = SincofarmaTheme.blueColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
