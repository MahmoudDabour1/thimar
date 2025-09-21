import 'package:json_annotation/json_annotation.dart';

part 'add_to_cart_response_model.g.dart';

@JsonSerializable()
class AddToCartResponseModel {
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "data")
  final Data? data;

  AddToCartResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory AddToCartResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AddToCartResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddToCartResponseModelToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "image")
  final String? image;
  @JsonKey(name: "amount")
  final int? amount;
  @JsonKey(name: "delivery_cost")
  final int? deliveryCost;
  @JsonKey(name: "price")
  final int? price;

  Data({
    this.title,
    this.image,
    this.amount,
    this.deliveryCost,
    this.price,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
