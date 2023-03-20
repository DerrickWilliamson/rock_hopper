import 'package:json_annotation/json_annotation.dart';

part 'open_weather.g.dart';

@JsonSerializable()
class OpenWeather {
  final String? base;

  @JsonKey(name: 'dt')
  final int? tempMin;

  @JsonKey(name: 'visibility')
  final int? tempMax;

  final String? humidity;

  @JsonKey(name: 'name')
  final String? cityName;

  OpenWeather({
    this.base,
    this.tempMin,
    this.tempMax,
    this.humidity,
    this.cityName,
  });

  factory OpenWeather.fromJson(Map<String, dynamic> json) =>
      _$OpenWeatherFromJson(json);

  Map<String, dynamic> toJson() => _$OpenWeatherToJson(this);
}
