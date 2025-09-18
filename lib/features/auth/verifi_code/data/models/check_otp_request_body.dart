import 'package:json_annotation/json_annotation.dart';

part 'check_otp_request_body.g.dart';

@JsonSerializable()
class CheckOtpRequestBody {
  final String phone;
  final String code;

  CheckOtpRequestBody({
    required this.phone,
    required this.code,
  });

  factory CheckOtpRequestBody.fromJson(Map<String, dynamic> json) =>
      _$CheckOtpRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CheckOtpRequestBodyToJson(this);
}
