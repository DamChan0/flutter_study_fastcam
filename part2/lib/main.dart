import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("this is AppBar"),
          backgroundColor: Colors.deepPurple,
          actions: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                print("tab");
              },
            )
          ],
        ),
        body: Test(),           //메인 내용들이 들어가는 내용
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
    ),
  );
}

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Text(
          "hello flutter",
          style: TextStyle(
            fontSize: 50,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
