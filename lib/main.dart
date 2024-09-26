import 'package:flutter/material.dart';
import 'package:ts_4_1_1_4_3_2_simple_weather_app/weatherData.dart';

void main() {
  Weatherdata weatherdata = Weatherdata(city: "Berlin", temperature: 21.5, weatherCondition: "regnerisch");
  runApp(MainApp(
    weatherdata: weatherdata,
  ));
}

class MainApp extends StatelessWidget {
  Weatherdata weatherdata;
  MainApp({super.key, required this.weatherdata});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Simple Weater App',
              style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 24,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              weatherWidget(
                weatherdata: weatherdata,
              )
            ],
          )),
    );
  }
}

class weatherWidget extends StatelessWidget {
  final Weatherdata weatherdata;
  const weatherWidget({super.key, required this.weatherdata});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Stadt: ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(weatherdata.city)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Temperatur: ", style: TextStyle(fontWeight: FontWeight.bold)),
            Text(weatherdata.temperature.toString())
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Wetter: ", style: TextStyle(fontWeight: FontWeight.bold)),
            Text(weatherdata.weatherCondition)
          ],
        )
      ],
    );
  }
}
