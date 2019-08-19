import 'package:flutter/material.dart';
import 'dart:math';

class ClockDialPainter extends CustomPainter {
  final minuteTickMarkLength = 15.0;
  final minuteTickMarkWidth = 3.0;
  Paint tickPaint;
  int seconds;

  ClockDialPainter({this.seconds});

  @override
  void paint(Canvas canvas, Size size) {
    tickPaint = new Paint();
    final angle = 2 * pi / 60;
    final radius = size.height / 2;
    tickPaint.strokeWidth = minuteTickMarkWidth;
    canvas.translate(radius, radius);
    for (var i = 0; i < 60; i++) {
      tickPaint.strokeWidth = minuteTickMarkWidth;
      if (i < this.seconds + 1) {
        tickPaint.color = Color.fromRGBO(100, 147, 166, 1);
      } else {
        tickPaint.color = Color.fromRGBO(223, 230, 233, 1);
      }
      canvas.drawLine(new Offset(0.0, -radius),
          new Offset(0, -radius + minuteTickMarkLength), tickPaint);
      canvas.rotate(angle);
    }
  }

  @override
  bool shouldRepaint(ClockDialPainter oldDelegate) {
    return oldDelegate.seconds != seconds;
  }
}
