import 'dart:math';

import 'package:flutter/material.dart';

class SecondHandPainter extends CustomPainter {
  // final  Paint secondHandPaint;
  int seconds = 0;
  SecondHandPainter({this.seconds});

  @override
  void paint(Canvas canvas, Size size) {
    final radius = size.height / 2;
    canvas.save();
    canvas.translate(radius, radius);
    canvas.rotate(2 * pi * seconds / 60);
    Paint secondHandPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.black38
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;
    var clockRadius = radius - 20;
    canvas.drawLine(Offset(0, 0), Offset(0, -clockRadius + 5), secondHandPaint);
    var paintRed = Paint()..color = Colors.red;
    canvas.drawCircle(Offset(0, 0), 6, paintRed);
    canvas.restore();
  }

  @override
  bool shouldRepaint(SecondHandPainter oldDelegate) {
    // print(' oldDelegate ${oldDelegate}');
    return oldDelegate.seconds != seconds;
  }
}
