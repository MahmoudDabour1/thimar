import 'package:json_annotation/json_annotation.dart';
part 'new_password_request_body.g.dart';

@JsonSerializable()
class NewPasswordRequestBody {
  final String phone;
  final String code;
  final String password;

  NewPasswordRequestBody({
    required this.phone,
    required this.code,
    required this.password,
  });
  factory NewPasswordRequestBody.fromJson(Map<String, dynamic> json) =>
      _$NewPasswordRequestBodyFromJson(json);
  Map<String, dynamic> toJson() => _$NewPasswordRequestBodyToJson(this);
}
