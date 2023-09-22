import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class ClockPainter extends CustomPainter {
  final double hours;
  final double minutes;
  final double seconds;

  ClockPainter(this.hours, this.minutes, this.seconds);

  @override
  void paint(Canvas canvas, Size size) {
    final centerX = size.width / 2;
    final centerY = size.height / 2;
    final center = Offset(centerX, centerY);
    final radius = centerX;

    // Draw clock face
    final facePaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    canvas.drawCircle(center, radius, facePaint);

    // Draw clock outline
    final outlinePaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;
    canvas.drawCircle(center, radius, outlinePaint);

    // Draw clock hands
    drawHand(
      canvas,
      center,
      radius * 0.5,
      -pi / 2 + 2 * pi * hours / 12,
      outlinePaint,
    );
    drawHand(
      canvas,
      center,
      radius * 0.7,
      -pi / 2 + 2 * pi * minutes / 60,
      outlinePaint,
    );
    drawHand(
      canvas,
      center,
      radius * 0.7,
      -pi / 2 + 2 * pi * seconds / 60,
      Paint()
        ..color = Colors.red
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2.0,
    );
  }

  void drawHand(
      Canvas canvas,
      Offset center,
      double length,
      double angle,
      Paint paint,
      ) {
    final line = Path()
      ..moveTo(center.dx, center.dy)
      ..lineTo(center.dx + length * cos(angle), center.dy + length * sin(angle));
    canvas.drawPath(line, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}