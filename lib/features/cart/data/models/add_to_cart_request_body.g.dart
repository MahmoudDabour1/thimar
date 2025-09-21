// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_cart_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddToCartRequestBody _$AddToCartRequestBodyFromJson(
        Map<String, dynamic> json) =>
    AddToCartRequestBody(
      productId: (json['product_id'] as num).toInt(),
      amount: (json['amount'] as num).toInt(),
    );

Map<String, dynamic> _$AddToCartRequestBodyToJson(
        AddToCartRequestBody instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'amount': instance.amount,
    };
