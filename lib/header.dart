import 'package:flutter/material.dart';

double size = 25;

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
            child: null,
            height: size,
            width: size,
            decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
            )),
        Container(
            child: null,
            height: size,
            width: size,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(size),
              border: Border.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
            )),
      ],
    );
  }
}
