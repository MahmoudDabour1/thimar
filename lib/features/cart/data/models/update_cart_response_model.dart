import 'package:json_annotation/json_annotation.dart';

part 'update_cart_response_model.g.dart';

@JsonSerializable()
class UpdateCartResponseModel {
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "data")
  final dynamic data;

  UpdateCartResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory UpdateCartResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateCartResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateCartResponseModelToJson(this);
}
