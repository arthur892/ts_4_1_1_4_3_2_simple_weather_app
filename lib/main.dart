import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Simple Weather App"),
        ),
        body: Container(
          child: const Text(
            'Willkommen zur Wetter-App!',
            style: TextStyle(color: Colors.blue, fontSize: 24),
          ),
        ),
      ),
    );
  }
}
