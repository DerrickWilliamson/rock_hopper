import 'package:json_annotation/json_annotation.dart';

part 'open_weather.g.dart';

@JsonSerializable()
class OpenWeather {
  @JsonKey(name: 'temp')
  final double? temp;

  @JsonKey(name: 'tempMin')
  final double? tempMin;

  @JsonKey(name: 'tempMax')
  final double? tempMax;

  @JsonKey(name: 'humidity')
  final double? humidity;

  @JsonKey(name: 'cityName')
  final String? cityName;

  OpenWeather({
    this.temp,
    this.tempMin,
    this.tempMax,
    this.humidity,
    this.cityName,
  });

  factory OpenWeather.fromJson(Map<String, dynamic> json) =>
      _$OpenWeatherFromJson(json);

  Map<String, dynamic> toJson() => _$OpenWeatherToJson(this);
}


// import 'dart:convert';
// import 'package:json_annotation/json_annotation.dart';

// part 'open_weather.g.dart';

// @JsonSerializable()
// class OpenWeather {
//   final double temp;
//   final double tempMin;
//   final double tempMax;
//   final double humidity;
//   final String? cityName;

//   OpenWeather(
//       {required this.temp,
//       required this.tempMin,
//       required this.tempMax,
//       required this.humidity,
//       required this.cityName});

//   factory OpenWeather.fromJson(Map<String, dynamic> json) =>
//       _$OpenWeatherFromJson(json);
// }
