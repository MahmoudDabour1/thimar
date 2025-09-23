import 'package:json_annotation/json_annotation.dart';

part 'policy_response_model.g.dart';
@JsonSerializable()
class PolicyResponseModel {
  @JsonKey(name: "data")
  final Data? data;
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "message")
  final String? message;

  PolicyResponseModel({
    this.data,
    this.status,
    this.message,
  });

  factory PolicyResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PolicyResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$PolicyResponseModelToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "policy")
  final String? policy;

  Data({
    this.policy,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
