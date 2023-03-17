import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rock_hopper/models/mars_weather.dart';
import 'package:rock_hopper/views/constants.dart';

class WeatherApi {
  Future<MarsWeather> getWeatherData() async {
    final uri = Uri.parse(kInsightMarsWeatherUrl);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return MarsWeather.fromJson(json);
    } else {
      throw Exception('Failed to load weather');
    }
  }
}
