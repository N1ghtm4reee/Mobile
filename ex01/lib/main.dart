import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  @Preview(name: 'ex01 app')
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final first = "Click the button!";
  final second = 'Hello World!';
  late String buttonText = first;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ex01',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(buttonText),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (buttonText == first) {
                      buttonText = second;
                    } else {
                      buttonText = first;
                    }
                  });
                  debugPrint("Button pressed");
                },
                child: Text("I am the botona!"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
