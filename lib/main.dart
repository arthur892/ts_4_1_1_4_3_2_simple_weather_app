import 'package:flutter/material.dart';
import 'package:ts_4_1_1_4_3_2_simple_weather_app/data/weather_repository_data.dart';
import 'package:ts_4_1_1_4_3_2_simple_weather_app/models/weatherdata.dart';

void main() {
  WeatherRepositoryData weatherRepositoryData = WeatherRepositoryData();
  weatherRepositoryData.addWeather(
      weatherId: 'Berlin',
      weatherData: Weatherdata(city: "Berlin", temperature: 21.5, weatherCondition: "regnerisch"));
  weatherRepositoryData.addWeather(
      weatherId: 'Köln ',
      weatherData: Weatherdata(city: "Köln", temperature: 18.5, weatherCondition: "bewölkt"));
  weatherRepositoryData.addWeather(
      weatherId: 'Berlin',
      weatherData: Weatherdata(city: "Berlin", temperature: 19.0, weatherCondition: "sonnig"));

  weatherRepositoryData.addWeather(
      weatherId: 'Paris',
      weatherData: Weatherdata(city: "Paris", temperature: 21.5, weatherCondition: "bewölkt"));

  weatherRepositoryData.addWeather(
      weatherId: 'Madrid',
      weatherData: Weatherdata(city: "Madrid", temperature: 25.0, weatherCondition: "sonnig"));

  weatherRepositoryData.addWeather(
      weatherId: 'Rom',
      weatherData: Weatherdata(city: "Rom", temperature: 23.0, weatherCondition: "regnerisch"));

  weatherRepositoryData.addWeather(
      weatherId: 'Amsterdam',
      weatherData: Weatherdata(city: "Amsterdam", temperature: 17.0, weatherCondition: "windig"));

  weatherRepositoryData.addWeather(
      weatherId: 'Wien',
      weatherData: Weatherdata(city: "Wien", temperature: 20.0, weatherCondition: "bewölkt"));

  weatherRepositoryData.addWeather(
      weatherId: 'Zürich',
      weatherData: Weatherdata(city: "Zürich", temperature: 18.5, weatherCondition: "sonnig"));

  weatherRepositoryData.addWeather(
      weatherId: 'London',
      weatherData: Weatherdata(city: "London", temperature: 16.0, weatherCondition: "regnerisch"));

  weatherRepositoryData.addWeather(
      weatherId: 'Oslo',
      weatherData: Weatherdata(city: "Oslo", temperature: 14.0, weatherCondition: "bewölkt"));

  weatherRepositoryData.addWeather(
      weatherId: 'Kopenhagen',
      weatherData: Weatherdata(city: "Kopenhagen", temperature: 15.5, weatherCondition: "sonnig"));

  runApp(MainApp(
    weatherRepositoryData: weatherRepositoryData,
  ));
}

class MainApp extends StatelessWidget {
  final WeatherRepositoryData weatherRepositoryData;
  late Weatherdata randomWeatherdata = weatherRepositoryData.getRandomWeaterData();
  MainApp({super.key, required this.weatherRepositoryData});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Simple Weater App',
              style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 24,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.cyan,
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //const Center(child: Text("Dein Standort")),
                // weatherWidget(
                //   weatherRepositoryData: weatherRepositoryData.getWeatherData("Berlin"),
                // ),
                weatherWidgetRandom(
                  weatherRepositoryData: weatherRepositoryData,
                ),
              ],
            ),
          )),
    );
  }
}

class weatherWidgetRandom extends StatefulWidget {
  final WeatherRepositoryData weatherRepositoryData;
  const weatherWidgetRandom({super.key, required this.weatherRepositoryData});

  @override
  State<StatefulWidget> createState() => weatherWidgetRandomState();
}

class weatherWidgetRandomState extends State<weatherWidgetRandom> {
  late Weatherdata weatherdata = widget.weatherRepositoryData.getRandomWeaterData();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.cyanAccent,
      ),
      child: Column(
        children: [
          const Center(child: Text("Zufälliger Standort")),
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
          ),
          ElevatedButton(
              onPressed: () {
                weatherdata = widget.weatherRepositoryData.getRandomWeaterData();
                setState(() {});
              },
              child: const Text("Neue Temperatur"))
        ],
      ),
    );
  }
}
