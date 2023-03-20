import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rock_hopper/models/mars_weather.dart';

class MarsWeatherRepository {
  final String _baseUrl = 'https://api.nasa.gov';
  final String _apiKey = 'your_api_key_here';

  Future<MarsWeather> getLatestMarsWeather() async {
<<<<<<< HEAD
    final url = Uri.parse('______________________________');
=======
    final url = Uri.parse(
        '$_baseUrl/insight_weather/?api_key=$_apiKey&feedtype=json&ver=1.0');
>>>>>>> parent of ce75c0f (updated to correct constant uri string for Insight Mars Weather API call)

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
