import 'package:json_annotation/json_annotation.dart';

part 'login_request_body.g.dart';

@JsonSerializable()
class LoginRequestBody {
  final String phone;

  final String password;
  final String? type;
  @JsonKey(name: "device_token")
  final String? deviceToken;

  @JsonKey(name: "user_type")
  final String? userType;

  LoginRequestBody({
    required this.phone,
    required this.password,
    this.type,
    this.deviceToken,
    this.userType,
  });

  factory LoginRequestBody.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRequestBodyToJson(this);
}
