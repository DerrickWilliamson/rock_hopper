import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class NewsModel {
  String? status;
  int? totalResults;

  NewsModel(status, totalResults);

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);
}
