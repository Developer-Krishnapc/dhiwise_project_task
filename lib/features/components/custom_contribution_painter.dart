import 'package:dhiwise_project/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomContributionPainter extends CustomPainter {
  CustomContributionPainter(
      {required this.salaryContribution,
      required this.bonusContribution,
      required this.otherContribution});
  final double salaryContribution;
  final double bonusContribution;
  final double otherContribution;
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeCap = StrokeCap.round
      ..color = AppColor.limeGreen
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10.0;

    canvas.drawLine(
        const Offset(0, 0),
        Offset(
            (salaryContribution + bonusContribution + otherContribution) *
                size.width,
            0),
        paint);
    paint.color = AppColor.yellow;
    canvas.drawLine(
        const Offset(0, 0),
        Offset((salaryContribution + bonusContribution) * size.width, 0),
        paint);

    paint.color = AppColor.lightBlue;
    canvas.drawLine(
        const Offset(0, 0), Offset(salaryContribution * size.width, 0), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
