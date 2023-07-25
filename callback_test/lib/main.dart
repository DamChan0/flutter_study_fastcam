import 'package:flutter/material.dart';

double textSize = 40;

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("callBack"),
      ),
      body: Body(),
    ),
  ));
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Count : ' '$index',
          style: TextStyle(fontSize: textSize),
        ),
        TestButton(count)
      ],
    );
  }
  void count(){
    setState(() {
      ++index;
    });
  }
}

class TestButton extends StatelessWidget {
  final VoidCallback callback;
   TestButton(this.callback, {super.key});

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onTap: () => callback.call(),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all()),
              child: Text(
                'UP!',
                style: TextStyle(fontSize: textSize / 2),
              )),
        ),
      ),
    );
  }
}

