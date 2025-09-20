import 'package:json_annotation/json_annotation.dart';

part 'register_request_body.g.dart';

@JsonSerializable()
class RegisterRequestBody {
  @JsonKey(name: "fullname")
  final String name;
  final String phone;
  final String password;
  @JsonKey(name: "password_confirmation")
  final String passwordConfirmation;

  RegisterRequestBody({
    required this.name,
    required this.phone,
    required this.password,
    required this.passwordConfirmation,
  });

  factory RegisterRequestBody.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);
}
