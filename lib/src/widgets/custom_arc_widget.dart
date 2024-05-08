import 'package:flutter/material.dart';
import 'package:sincofarma/src/theme/sincofarma_theme.dart';

class CustomArcWidget extends CustomPainter {
  CustomArcWidget({
    this.lineTo2Y = 150,
    this.x1 = 230,
    this.y1 = 215,
    this.x2 = 0,
    this.y2 = 150,
  });

  final double lineTo2Y;
  final double x1;
  final double y1;
  final double x2;
  final double y2;

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, lineTo2Y)
      ..quadraticBezierTo(x1, y1, x2, y2);

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
