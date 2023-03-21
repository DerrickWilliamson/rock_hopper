import 'package:json_annotation/json_annotation.dart';

part 'open_weather.g.dart';

class OpenWeather {
  MainWeather mainWeather;
  Wind wind;
  String weatherDescription;

  OpenWeather(
    this.mainWeather,
    this.wind,
    this.weatherDescription,
  );
}

@JsonSerializable()
class MainWeather {
  double temp;

  @JsonKey(name: 'feels_like')
  double feelsLike;

  @JsonKey(name: 'temp_min')
  double tempMin;

  @JsonKey(name: 'temp_max')
  double tempMax;

  int humidity;

  MainWeather(
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.humidity,
  );

  factory MainWeather.fromJson(Map<String, dynamic> json) =>
      _$MainWeatherFromJson(json);
}

@JsonSerializable()
class Wind {
  double speed;

  Wind({
    required this.speed,
  });

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}
