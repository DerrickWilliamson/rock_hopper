import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rock_hopper/models/open_weather.dart';

class OpenWeatherApi {
  Future<OpenWeather> getCurrentWeather() async {
    final url = Uri.parse('_______________________');
    final response = await http.get(url);

    if (response.body.isNotEmpty) {
      final jsonMap = json.decode(response.body);
      print(jsonMap);
      return OpenWeather.fromJson(jsonMap);
    } else {
      throw Exception('Failed to load current weather data');
    }
  }
}
