import 'package:json_annotation/json_annotation.dart';
part 'resend_code_response_model.g.dart';

@JsonSerializable()
class ResendCodeResponseModel {
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

  ResendCodeResponseModel({
    this.status,
    this.data,
    this.message,
    this.isActive,
    this.devMessage,
  });

  factory ResendCodeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResendCodeResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ResendCodeResponseModelToJson(this);
}
