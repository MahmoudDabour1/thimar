import 'package:json_annotation/json_annotation.dart';

part 'forget_password_request_body.g.dart';
@JsonSerializable()
class ForgetPasswordRequestBody {
  final String phone;

  ForgetPasswordRequestBody( {
    required this.phone
  });
  factory ForgetPasswordRequestBody.fromJson(Map<String, dynamic> json) => _$ForgetPasswordRequestBodyFromJson(json);
  Map<String, dynamic> toJson() => _$ForgetPasswordRequestBodyToJson(this);
}