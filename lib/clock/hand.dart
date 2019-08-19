import 'package:flutter/material.dart';
import 'package:flutter_todo/clock/second_hand.dart';

class Hands extends StatelessWidget {
  final dateTime;
  Hands({this.dateTime});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CustomPaint(
          painter: SecondHandPainter(seconds: dateTime.second),
          child: null,
        )
      ],
    );
  }
}
