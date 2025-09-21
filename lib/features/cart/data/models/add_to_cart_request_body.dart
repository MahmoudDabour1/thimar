import 'package:json_annotation/json_annotation.dart';

part 'add_to_cart_request_body.g.dart';

@JsonSerializable()
class AddToCartRequestBody {
  @JsonKey(name: "product_id")
  final int productId;
  @JsonKey(name: "amount")
  final int amount;

  AddToCartRequestBody({
    required this.productId,
    required this.amount,
  });

  factory AddToCartRequestBody.fromJson(Map<String, dynamic> json) =>
      _$AddToCartRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$AddToCartRequestBodyToJson(this);
}
