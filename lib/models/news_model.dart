import 'package:json_annotation/json_annotation.dart';

part 'news_model.g.dart';

@JsonSerializable()
class NewsModel {
  String status;
  int totalResults;
  List articles;

  NewsModel(this.status, this.totalResults, this.articles);

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);
}
