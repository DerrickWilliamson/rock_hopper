// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mars_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarsWeather _$MarsWeatherFromJson(Map<String, dynamic> json) => MarsWeather(
      temp: (json['temp'] as num).toDouble(),
      windSpeed: (json['windSpeed'] as num).toDouble(),
    );

Map<String, dynamic> _$MarsWeatherToJson(MarsWeather instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'windSpeed': instance.windSpeed,
    };
