import 'package:flutter/material.dart';
import 'package:flutter_todo/task_list.dart';
import 'clock/clock.dart';
import 'header.dart';

final backgroundColor = Color.fromRGBO(238, 243, 247, 1);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text(' Flutter TODO '),
        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Column(
              children: <Widget>[
                Header(),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        child: Text(
                          'Good Evening',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(145, 150, 154, 1)),
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        width: double.infinity,
                        child: Text(
                          'Aadil Hasan',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(100, 147, 166, 1)),
                        ),
                      ),
                      SizedBox(height: 30),
                      Clock(),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Task Lists',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(83, 100, 108, 1),
                                fontSize: 26),
                          ),
                          Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('+',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          fontSize: 25))
                                ],
                              ))
                        ],
                      ),
                      SizedBox(height: 30),
                      SizedBox(
                        child: TaskList(),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
