import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack widget'),
        ),
        body: Body(),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
        Container(
          width: 500,
        height: 500,
        color: Colors.grey,
        child: Text('hello'),

        ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
              margin: EdgeInsets.symmetric(vertical: 25),

            ),
          ),
          Align(
            alignment: Alignment(0,0),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
              margin: EdgeInsets.symmetric(vertical: 25),

            ),
          ),

        ],
    );
  }
}

