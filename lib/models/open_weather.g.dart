// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenWeather _$OpenWeatherFromJson(Map<String, dynamic> json) => OpenWeather(
      base: json['base'] as String?,
      tempMin: json['dt'] as int?,
      tempMax: json['visibility'] as int?,
      humidity: json['humidity'] as String?,
      cityName: json['name'] as String?,
    );

Map<String, dynamic> _$OpenWeatherToJson(OpenWeather instance) =>
    <String, dynamic>{
      'base': instance.base,
      'dt': instance.tempMin,
      'visibility': instance.tempMax,
      'humidity': instance.humidity,
      'name': instance.cityName,
    };
