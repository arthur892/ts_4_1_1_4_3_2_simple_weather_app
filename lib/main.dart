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
            title: const Text(
              'Simple Weater App',
              style: TextStyle(
                  color: Colors.blue, fontSize: 24, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
            ),
          ),
          body: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [weatherWidget(city: "Berlin", temperature: 21, weather: "Regnerisch")],
          )),
    );
  }
}

class weatherWidget extends StatelessWidget {
  final String city;
  final double temperature;
  final String weather;
  const weatherWidget({super.key, required this.city, required this.temperature, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Stadt: ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(city)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Temperatur: ", style: TextStyle(fontWeight: FontWeight.bold)),
            Text(temperature.toString())
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Wetter: ", style: TextStyle(fontWeight: FontWeight.bold)), Text(weather)],
        )
      ],
    );
  }
}
