import 'package:json_annotation/json_annotation.dart';

part 'launches_model.g.dart';

@JsonSerializable()
class LaunchesModel {
  int count;

  LaunchesModel(this.count);

  factory LaunchesModel.fromJson(Map<String, dynamic> json) =>
      _$LaunchesModelFromJson(json);
}
