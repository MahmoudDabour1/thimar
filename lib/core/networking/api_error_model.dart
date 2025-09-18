import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "data")
  final dynamic data;
  @JsonKey(name: "is_ban")
  final bool? isBan;
  @JsonKey(name: "message")
  final String? message;

  ApiErrorModel({
    this.status,
    this.data,
    this.isBan,
    this.message,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) => _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}