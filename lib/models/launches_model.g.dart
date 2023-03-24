// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launches_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchesModel _$LaunchesModelFromJson(Map<String, dynamic> json) =>
    LaunchesModel(
      json['count'] as int,
      json['next'] as String,
      json['results'] as List<dynamic>,
    );

Map<String, dynamic> _$LaunchesModelToJson(LaunchesModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'results': instance.results,
    };
