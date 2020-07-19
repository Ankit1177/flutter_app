import 'package:flutter/material.dart';

import 'dart:math';

void main() => runApp(new MyApp());

String s = " \$ & # ";

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey<FormState> _key = new GlobalKey();

  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Login'),
        ),
        body: Center(
          child: new SingleChildScrollView(
            child: new Container(
              margin: new EdgeInsets.all(15.0),
              child: new Container(
                key: _key,
                child: FormUI(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget FormUI() {
    return new Column(
      children: <Widget>[
        new Card(
          color: Color(0xFF7A54FF).withOpacity(0.9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(100.0),
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 5),
                  color: Color(0xFF7A54FF),
                  shape: BoxShape.circle,
                ),
                child: Text(
                  "8.00",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF).withOpacity(0.9),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                " UNTIL BREAK ",
                style: TextStyle(
                  color: Color(0xFFFFFFFF).withOpacity(0.9),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}