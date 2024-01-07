import 'dart:math';

import 'package:dhiwise_project/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCircularPainter extends CustomPainter {
  CustomCircularPainter({required this.animationValue});
  final double animationValue;
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeCap = StrokeCap.round
      ..color = AppColor.grey
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6.0;

    final rectangle = Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: size.width / 2 - paint.strokeWidth);

    canvas.drawArc(rectangle, 11 * pi / 16, 13 * pi / 8, false, paint);

    paint.color = Colors.white;

    canvas.drawArc(
        rectangle, 11 * pi / 16, animationValue * 13 * pi / 8, false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
