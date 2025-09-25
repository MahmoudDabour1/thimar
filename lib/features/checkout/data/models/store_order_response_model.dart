import 'package:json_annotation/json_annotation.dart';

part 'store_order_response_model.g.dart';

@JsonSerializable()
class StoreOrderResponseModel {
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "data")
  final dynamic data;

  StoreOrderResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory StoreOrderResponseModel.fromJson(Map<String, dynamic> json) =>
      _$StoreOrderResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$StoreOrderResponseModelToJson(this);
}
