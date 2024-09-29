import 'package:ts_4_1_1_4_3_2_simple_weather_app/models/weatherdata.dart';

abstract class WeatherRepository {
  Weatherdata getWeatherData(String weatherId);
  void addWeather({required String weatherId, required Weatherdata weatherData});
}
