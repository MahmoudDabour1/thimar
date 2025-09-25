import 'package:json_annotation/json_annotation.dart';

part 'cancel_order_response_model.g.dart';

@JsonSerializable()
class CancelOrderResponseModel {
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "message")
  final String? message;

  CancelOrderResponseModel({
    this.status,
    this.message,
  });

  factory CancelOrderResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CancelOrderResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$CancelOrderResponseModelToJson(this);
}
