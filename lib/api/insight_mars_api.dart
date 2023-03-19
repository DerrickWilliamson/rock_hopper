import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rock_hopper/models/mars_weather.dart';
import 'package:rock_hopper/views/constants.dart';

class MarsWeatherRepository {
  Future<MarsWeather> getLatestMarsWeather() async {
    final url = Uri.parse(kInsightMarsWeatherUrl);

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final jsonMap = response.body != null ? json.decode(response.body) : null;
      if (jsonMap != null) {
        final solKeys = (jsonMap['sol_keys'] as List<dynamic>).cast<String>();

        final latestSolKey = solKeys.isNotEmpty ? solKeys.last : '';
        final latestMarsWeather = jsonMap[latestSolKey];

        return MarsWeather.fromJson(latestMarsWeather);
      }
    }
    throw Exception('Failed to load latest Mars weather data');
  }
}


// import 'dart:convert';

// import 'package:http/http.dart' as http;
// import 'package:rock_hopper/models/mars_weather.dart';
// import 'package:rock_hopper/views/constants.dart';

// class MarsWeatherRepository {
//   Future<MarsWeather> getLatestMarsWeather() async {
//     final url = Uri.parse(kInsightMarsWeatherUrl);

//     final response = await http.get(url);

//     if (response.statusCode == 200) {
//       final jsonMap = json.decode(response.body);
//       final solKeys = (jsonMap['sol_keys'] as List<dynamic>).cast<String>();

//       final latestSolKey = solKeys.isNotEmpty ? solKeys.last : '';
//       final latestMarsWeather = jsonMap[latestSolKey];

//       return MarsWeather.fromJson(latestMarsWeather);
//     } else {
//       throw Exception('Failed to load latest Mars weather data');
//     }
//   }
// }
