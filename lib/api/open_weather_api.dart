import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:rock_hopper/models/open_weather.dart';

class OpenWeatherApi {
  late String openWeatherApiKey = dotenv.env['OPENWEATHER_API_KEY']!;
  late String finalUrl =
      'https://api.openweathermap.org/data/2.5/weather?q=Oklahoma City&appid=$openWeatherApiKey&units=imperial';
  Future<OpenWeather> getCurrentWeather() async {
    final url = Uri.parse(finalUrl);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var mainWeather = MainWeather.fromJson(data['main']);
      var wind = Wind.fromJson(data['wind']);
      var weatherDescription = data['weather'][0]['description'];
      var cityName = data['name'];
      var sysWeather = SysWeather.fromJson(data['sys']);
      return OpenWeather(
          mainWeather, wind, weatherDescription, cityName, sysWeather);
    } else {
      throw Exception('Failed to load current weather data');
    }
  }
}
