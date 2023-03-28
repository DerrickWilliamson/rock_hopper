import 'package:json_annotation/json_annotation.dart';

part 'weather.g.dart';

class Weather {
  MainWeather mainWeather;
  Wind wind;
  String weatherDescription;
  @JsonKey(name: 'name')
  String cityName;
  SysWeather sysWeather;

  Weather(
    this.mainWeather,
    this.wind,
    this.weatherDescription,
    this.cityName,
    this.sysWeather,
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

@JsonSerializable()
class SysWeather {
  String country;
  int sunrise;
  int sunset;

  SysWeather(this.country, this.sunrise, this.sunset);

  factory SysWeather.fromJson(Map<String, dynamic> json) =>
      _$SysWeatherFromJson(json);
}
