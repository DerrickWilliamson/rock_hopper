import 'package:json_annotation/json_annotation.dart';

part 'launches_model.g.dart';

@JsonSerializable()
class LaunchesModel {
  int count;
  String next;
  List results;

  LaunchesModel(this.count, this.next, this.results);

  factory LaunchesModel.fromJson(Map<String, dynamic> json) =>
      _$LaunchesModelFromJson(json);
}
