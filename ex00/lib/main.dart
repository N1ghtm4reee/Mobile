import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  @Preview(name: 'ex00 app')
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ex00',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Click the button below!"),
              ElevatedButton(
                onPressed: () {
                  debugPrint("Button clicked!");
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
