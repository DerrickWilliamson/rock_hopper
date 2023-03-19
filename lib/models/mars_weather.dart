import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';
import 'package:rock_hopper/views/constants.dart';

part 'mars_weather.g.dart';

@JsonSerializable()
class MarsWeather {
  final double? sol;
  final double? ls;
  final double? minTemp;
  final double? maxTemp;
  final double? pressure;
  final String? season;
  final double? windSpeed;
  final double? windDirectionDegrees;
  final String? windDirectionCardinal;

  MarsWeather({
    required this.sol,
    required this.ls,
    required this.minTemp,
    required this.maxTemp,
    required this.pressure,
    required this.season,
    required this.windSpeed,
    required this.windDirectionDegrees,
    required this.windDirectionCardinal,
  });

  factory MarsWeather.fromJson(Map<String, dynamic> json) =>
      _$MarsWeatherFromJson(json);

  Map<String, dynamic> toJson() => _$MarsWeatherToJson(this);
}

@JsonSerializable()
class MarsWeatherResponse {
  final List<MarsWeather> results;

  MarsWeatherResponse({required this.results});

  factory MarsWeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$MarsWeatherResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MarsWeatherResponseToJson(this);
}

class MarsWeatherService {
  final http.Client _client = http.Client();

  Future<MarsWeatherResponse> fetchMarsWeather() async {
    final response = await _client.get(Uri.parse(kInsightMarsWeatherUrl));

    if (response.statusCode == 200) {
      final json = await http
          .get(Uri.parse(kInsightMarsWeatherUrl))
          .then((response) => response.body);

      return MarsWeatherResponse.fromJson(jsonDecode(json));
    } else {
      throw Exception('Failed to load mars weather data');
    }
  }
}
