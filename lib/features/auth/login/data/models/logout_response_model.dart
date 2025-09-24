import 'package:json_annotation/json_annotation.dart';

part 'logout_response_model.g.dart';

@JsonSerializable()
class LogoutResponseModel {
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "data")
  final dynamic data;
  @JsonKey(name: "message")
  final String? message;

  LogoutResponseModel({
    this.status,
    this.data,
    this.message,
  });

  factory LogoutResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LogoutResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$LogoutResponseModelToJson(this);
}
