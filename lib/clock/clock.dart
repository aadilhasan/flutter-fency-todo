import 'package:flutter/material.dart';
import 'package:flutter_todo/clock/hand.dart';
import 'package:flutter_todo/clock/hour_hand.dart';
import 'package:flutter_todo/clock/minute_hand.dart';
// import 'package:flutter_todo/clock/hand.dart';
import 'package:flutter_todo/clock/second_hand.dart';
import 'dart:async';

import 'clock_dial_painter.dart';
import 'second_hand.dart';

double height = 200;

class Clock extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Clock();
  }
}

class _Clock extends State<Clock> {
  Timer _timer;
  DateTime dateTime;

  @override
  void initState() {
    super.initState();
    dateTime = new DateTime.now();
    this._timer = new Timer.periodic(Duration(seconds: 1), setTime);
  }

  void setTime(Timer timer) {
    setState(() {
      dateTime = new DateTime.now();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(children: <Widget>[
      SizedBox(
        width: height,
        height: height,
        child: CustomPaint(
          painter: ClockPainter(),
          child: null,
        ),
      ),
      SizedBox(
        width: height,
        height: height,
        child: CustomPaint(
          painter: ClockDialPainter(seconds: dateTime.second),
          child: null,
        ),
      ),
      SizedBox(
          width: height,
          height: height,
          child: CustomPaint(
            painter: HourHandPainter(hours: dateTime.hour),
            child: null,
          )),
      SizedBox(
          width: height,
          height: height,
          child: CustomPaint(
            painter: MinuteHandPainter(minutes: dateTime.minute),
            child: null,
          )),
      SizedBox(
          width: height,
          height: height,
          child: CustomPaint(
            painter: SecondHandPainter(seconds: dateTime.second),
            child: null,
          )),
    ]));
  }
}

class ClockPainter extends CustomPainter {
  final List dots = List(60);
  @override
  void paint(Canvas canvas, Size size) {
    final radius = size.height / 2;
    // canvas.drawRect(Rect.fromLTRB(0, 0, size.width, size.height), Paint());
    Paint circlePaint = Paint()..color = Colors.white;
    Paint nodePaint = Paint()..color = Colors.black;

    Paint hourHandPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Color.fromRGBO(45, 118, 177, 1)
      ..strokeWidth = 6
      ..strokeCap = StrokeCap.round;

    Paint minutesHandPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Color.fromRGBO(45, 118, 177, 1)
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round;

    // var redCanvas = Paint()..color = Colors.red;
    // canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), redCanvas);
    canvas.translate(radius, radius);
    var clockRadius = radius - 20;
    canvas.drawCircle(Offset(0, 0), clockRadius, circlePaint);
    canvas.drawCircle(Offset(0, 0), 5, nodePaint);
    var paintRed = Paint()..color = Colors.red;
    canvas.drawCircle(Offset(0, 0), 5, paintRed);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
