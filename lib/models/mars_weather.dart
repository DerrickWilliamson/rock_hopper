import 'package:json_annotation/json_annotation.dart';

part 'mars_weather.g.dart';

@JsonSerializable()
class MarsWeather {
  final num? temp;
  final double? windSpeed;

  MarsWeather({required this.temp, required this.windSpeed});

  factory MarsWeather.fromJson(Map<String, dynamic> json) =>
      _$MarsWeatherFromJson(json);

  Map<String, dynamic> toJson() => _$MarsWeatherToJson(this);
}
