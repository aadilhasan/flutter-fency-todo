import 'dart:math';

import 'package:flutter/material.dart';

class MinuteHandPainter extends CustomPainter {
  // final  Paint secondHandPaint;
  int minutes = 0;
  MinuteHandPainter({this.minutes});

  @override
  void paint(Canvas canvas, Size size) {
    final radius = size.height / 2;
    canvas.save();
    canvas.translate(radius, radius);
    canvas.rotate(2 * pi * minutes / 60);
    Paint minutesHandPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Color.fromRGBO(45, 118, 177, 1)
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round;

    var clockRadius = radius - 20;
    canvas.drawLine(
        Offset(0, 0), Offset(0, -clockRadius + 15), minutesHandPaint);
    canvas.restore();
  }

  @override
  bool shouldRepaint(MinuteHandPainter oldDelegate) {
    return oldDelegate.minutes != minutes;
  }
}
