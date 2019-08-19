import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TaskListState();
  }
}

class TaskListState extends State<TaskList> {
  List list;

  @override
  void initState() {
    list = List();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[Card(), Card(), Card()],
      ),
    );
  }
}

class Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.fromLTRB(0, 0, 30, 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          new BoxShadow(
            color: Color.fromRGBO(128, 128, 128, 0.4),
            offset: new Offset(12.0, 12.0),
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Daily Task',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(83, 100, 108, 1),
                      fontSize: 22),
                ),
                Text('+',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(100, 147, 166, 1),
                        fontSize: 25)),
              ],
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: true,
                        ),
                        Text(' list item 2')
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: false,
                        ),
                        Text(' list item 2')
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: false,
                        ),
                        Text(' list item 3')
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
