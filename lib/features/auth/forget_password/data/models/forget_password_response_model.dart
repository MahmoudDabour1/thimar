import 'package:json_annotation/json_annotation.dart';
part 'forget_password_response_model.g.dart';

@JsonSerializable()
class ForgetPasswordResponseModel {
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "data")
  final dynamic data;
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "is_active")
  final bool? isActive;
  @JsonKey(name: "dev_message")
  final int? devMessage;

  ForgetPasswordResponseModel({
    this.status,
    this.data,
    this.message,
    this.isActive,
    this.devMessage,
  });

  factory ForgetPasswordResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ForgetPasswordResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ForgetPasswordResponseModelToJson(this);
}
