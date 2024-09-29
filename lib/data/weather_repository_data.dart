import 'dart:math';

import 'package:ts_4_1_1_4_3_2_simple_weather_app/data/weather_repository.dart';
import 'package:ts_4_1_1_4_3_2_simple_weather_app/models/weatherdata.dart';

class WeatherRepositoryData implements WeatherRepository {
  Map<String, Weatherdata> _weatherData = {};
  @override
  void addWeather({required String weatherId, required Weatherdata weatherData}) {
    _weatherData[weatherId] = weatherData;
  }

  @override
  Weatherdata getWeatherData(String weatherId) {
    if (_weatherData.containsKey(weatherId)) {
      return _weatherData[weatherId]!;
    } else {
      return Weatherdata(city: "Unknown", temperature: -200, weatherCondition: "Unknown");
    }
  }

  Weatherdata getRandomWeaterData() {
    Random random = Random();
    List<String> keys = _weatherData.keys.toList();
    return _weatherData[keys[random.nextInt(keys.length)]]!;
  }
}
