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






// @JsonSerializable()
// class OpenWeather {
//   final String? base;

//   @JsonKey(name: 'dt')
//   final int? tempMin;

//   @JsonKey(name: 'visibility')
//   final int? tempMax;

//   final String? humidity;

//   @JsonKey(name: 'name')
//   final String? cityName;

//   OpenWeather({
//     this.base,
//     this.tempMin,
//     this.tempMax,
//     this.humidity,
//     this.cityName,
//   });

//   factory OpenWeather.fromJson(Map<String, dynamic> json) =>
//       _$OpenWeatherFromJson(json);

//   Map<String, dynamic> toJson() => _$OpenWeatherToJson(this);
// }
