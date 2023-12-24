import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // On Press Handler
  void handleClick()  {
    if (kDebugMode) {
      print("The button has been pressed");
    }
  }

  @override
  Widget build(BuildContext context) {
    // return const MaterialApp(home: Text("Hello Flutter App"),);
    var questions = ['what\'s  your color', 'What is favourite animal'];
    return MaterialApp(
        title: "Flutter Demo",
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
          useMaterial3: true,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text("My First Application"),
            ),
            // body: const Text("Flutter Simple App"),
            body: Column(
              // children: <Widget>[],
              children: [
                Text(
                  questions.elementAt(1),
                ),
                ElevatedButton(
                  child: const Text("Press me"),
                  onPressed: () {
                    if (kDebugMode) {
                      print("Button pressed");
                    }
                  },
                ),
                ElevatedButton(
                    onPressed: handleClick, child: const Text("Click Me"))
              ],
            )));
  }
}
