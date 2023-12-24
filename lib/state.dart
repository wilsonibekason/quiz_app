import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import "./question.dart";

class MyState extends StatefulWidget {
  const MyState({super.key, required this.title});

  final String title;

  @override
  State<MyState> createState() => _MyStateState();
}

class _MyStateState extends State<MyState> {
  var questions = ['what\'s  your color', 'What is favourite animal'];
  int _questionIndex = 0;

  void handleClick() {
    if (kDebugMode) {
      print("The button has been pressed");
    }
  }

  void incrementIndex() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(questions.elementAt(_questionIndex)),
            Text(
              '$_questionIndex',
              style: Theme
                  .of(context)
                  .textTheme
                  .headlineMedium,
            ),
          ],

        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: incrementIndex,
        tooltip: "ChANGE QUESTIONS",
        child: const Icon(Icons.add_alert_rounded),),
    );
  }
}
