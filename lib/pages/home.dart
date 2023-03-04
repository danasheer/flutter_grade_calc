import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var textController = TextEditingController();
  String grade = "";

  void calculate() {
    setState(() {
      int score = int.parse(textController.text);
      if (score >= 90) {
        grade = "A";
        print("A");
      } else if (score >= 80) {
        grade = "B";
        print("B");
      } else if (score >= 70) {
        grade = "C";
        print("C");
      } else if (score >= 60) {
        grade = "D";
        print("D");
      } else {
        grade = "F";
        print("f");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("calculate"),
      ),
      body: Column(
        children: [
          Container(
            child: TextField(
              keyboardType: TextInputType.number,
              controller: textController,
              decoration: InputDecoration(
                  hintText: "type your score", prefixIcon: Icon(Icons.percent)),
            ),
            margin: EdgeInsets.all(30),
          ),
          ElevatedButton(
              onPressed: () {
                calculate();
              },
              child: Text("calc")),
          Text(grade),
        ],
      ),
    );
  }
}
