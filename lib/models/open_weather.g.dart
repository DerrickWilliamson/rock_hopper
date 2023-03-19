// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenWeather _$OpenWeatherFromJson(Map<String, dynamic> json) => OpenWeather(
      temp: (json['temp'] as num?)?.toDouble(),
      tempMin: (json['tempMin'] as num?)?.toDouble(),
      tempMax: (json['tempMax'] as num?)?.toDouble(),
      humidity: (json['humidity'] as num?)?.toDouble(),
      cityName: json['cityName'] as String?,
    );

Map<String, dynamic> _$OpenWeatherToJson(OpenWeather instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'tempMin': instance.tempMin,
      'tempMax': instance.tempMax,
      'humidity': instance.humidity,
      'cityName': instance.cityName,
    };
