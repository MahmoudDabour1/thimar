import 'package:json_annotation/json_annotation.dart';
part 'check_otp_response_model.g.dart';

@JsonSerializable()
class CheckOtpResponseModel {
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "data")
  final dynamic data;
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "is_active")
  final bool? isActive;

  CheckOtpResponseModel({
    this.status,
    this.data,
    this.message,
    this.isActive,
  });

  factory CheckOtpResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CheckOtpResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$CheckOtpResponseModelToJson(this);
}
