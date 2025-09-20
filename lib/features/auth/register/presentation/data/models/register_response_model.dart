import 'package:json_annotation/json_annotation.dart';
part 'register_response_model.g.dart';
@JsonSerializable()
class RegisterResponseModel {
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "data")
  final dynamic data;
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "dev_message")
  final int? devMessage;

  RegisterResponseModel({
    this.status,
    this.data,
    this.message,
    this.devMessage,
  });

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) => _$RegisterResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterResponseModelToJson(this);
}
