import 'package:json_annotation/json_annotation.dart';

part 'verified_account_request_body.g.dart';

@JsonSerializable()
class VerifiedAccountRequestBody {
  final String phone;
  final String code;
  @JsonKey(name: "device_token")
  final String? deviceToken;
  @JsonKey(name: "type")
  final String? type;

  VerifiedAccountRequestBody({
    required this.phone,
    required this.code,
    this.deviceToken,
    this.type,
  });

  factory VerifiedAccountRequestBody.fromJson(Map<String, dynamic> json) =>
      _$VerifiedAccountRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$VerifiedAccountRequestBodyToJson(this);
}
