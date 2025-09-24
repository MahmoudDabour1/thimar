import 'package:json_annotation/json_annotation.dart';
part 'new_password_response_model.g.dart';

@JsonSerializable()
class NewPasswordResponseModel {
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "data")
  final dynamic data;
  @JsonKey(name: "message")
  final String? message;

  NewPasswordResponseModel({
    this.status,
    this.data,
    this.message,
  });

  factory NewPasswordResponseModel.fromJson(Map<String, dynamic> json) =>
      _$NewPasswordResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewPasswordResponseModelToJson(this);
}
