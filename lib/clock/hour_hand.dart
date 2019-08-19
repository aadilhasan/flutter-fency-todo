import 'dart:math';

import 'package:flutter/material.dart';

class HourHandPainter extends CustomPainter {
  // final  Paint secondHandPaint;
  int hours = 0;
  HourHandPainter({this.hours});

  @override
  void paint(Canvas canvas, Size size) {
    final radius = size.height / 2;
    canvas.save();
    canvas.translate(radius, radius);
    canvas.rotate(2 * pi * (hours * 5) / 60);
    Paint hourHandPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Color.fromRGBO(45, 118, 177, 1)
      ..strokeWidth = 6
      ..strokeCap = StrokeCap.round;
    var clockRadius = radius - 20;
    canvas.drawLine(Offset(0, 0), Offset(0, -clockRadius + 40), hourHandPaint);
    canvas.restore();
  }

  @override
  bool shouldRepaint(HourHandPainter oldDelegate) {
    return oldDelegate.hours != hours;
  }
}
