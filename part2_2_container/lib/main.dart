import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("study Flutter"),
        ),
        body: myContainer(),
      ),
    ),
  );
}

class myContainer extends StatelessWidget {
  const myContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
        decoration: BoxDecoration(
            color: Colors.deepPurple,
            border: Border.all(
                color: Colors.black12, width: 4, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(150),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.6),
                offset: Offset(6, 6),
                blurRadius: 30,
                spreadRadius: 4,
              )
            ]),
        child: Center(
          child: Container(
            child: const Text(
              'Hello Container',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
