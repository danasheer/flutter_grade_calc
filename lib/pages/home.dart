import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  var textController = TextEditingController();

  void calculate() {
    int score = int.parse(textController.text);
    if (score >= 90) {
      print("A");
    } else if (score >= 80) {
      print("B");
    } else if (score >= 70) {
      print("C");
    } else if (score >= 60) {
      print("D");
    } else {
      print("f");
    }
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
          Text(""),
        ],
      ),
    );
  }
}
