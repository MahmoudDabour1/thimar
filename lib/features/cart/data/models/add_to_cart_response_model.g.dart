// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_cart_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddToCartResponseModel _$AddToCartResponseModelFromJson(
        Map<String, dynamic> json) =>
    AddToCartResponseModel(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddToCartResponseModelToJson(
        AddToCartResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      title: json['title'] as String?,
      image: json['image'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
      deliveryCost: (json['delivery_cost'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'title': instance.title,
      'image': instance.image,
      'amount': instance.amount,
      'delivery_cost': instance.deliveryCost,
      'price': instance.price,
    };
