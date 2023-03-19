// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mars_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarsWeather _$MarsWeatherFromJson(Map<String, dynamic> json) => MarsWeather(
      sol: (json['sol'] as num?)?.toDouble(),
      ls: (json['ls'] as num?)?.toDouble(),
      minTemp: (json['minTemp'] as num?)?.toDouble(),
      maxTemp: (json['maxTemp'] as num?)?.toDouble(),
      pressure: (json['pressure'] as num?)?.toDouble(),
      season: json['season'] as String?,
      windSpeed: (json['windSpeed'] as num?)?.toDouble(),
      windDirectionDegrees: (json['windDirectionDegrees'] as num?)?.toDouble(),
      windDirectionCardinal: json['windDirectionCardinal'] as String?,
    );

Map<String, dynamic> _$MarsWeatherToJson(MarsWeather instance) =>
    <String, dynamic>{
      'sol': instance.sol,
      'ls': instance.ls,
      'minTemp': instance.minTemp,
      'maxTemp': instance.maxTemp,
      'pressure': instance.pressure,
      'season': instance.season,
      'windSpeed': instance.windSpeed,
      'windDirectionDegrees': instance.windDirectionDegrees,
      'windDirectionCardinal': instance.windDirectionCardinal,
    };

MarsWeatherResponse _$MarsWeatherResponseFromJson(Map<String, dynamic> json) =>
    MarsWeatherResponse(
      results: (json['results'] as List<dynamic>)
          .map((e) => MarsWeather.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MarsWeatherResponseToJson(
        MarsWeatherResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
