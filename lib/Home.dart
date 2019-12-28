import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget buildElement(String s) {
    return Expanded(
      child: OutlineButton(
        child: Text(s,style: TextStyle(fontSize: 20.0),),
        onPressed: () {},
        textColor: Colors.white,
        padding: EdgeInsets.all(25.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              buildElement('7'),
              buildElement('8'),
              buildElement('9'),
              buildElement("/"),
            ],
          ),
          Row(
            children: <Widget>[
              buildElement('4'),
              buildElement('5'),
              buildElement('6'),
              buildElement("x"),
            ],
          ),
          Row(
            children: <Widget>[
              buildElement('3'),
              buildElement('2'),
              buildElement('1'),
              buildElement("-"),
            ],
          ),
          Row(
            children: <Widget>[
              buildElement('.'),
              buildElement('0'),
              buildElement('00'),
              buildElement("+"),
            ],
          ),
          Row(
            children: <Widget>[
              buildElement("CLEAR"),
              buildElement("="),
            ],
          )
        ],
      ),
    );
  }
}
