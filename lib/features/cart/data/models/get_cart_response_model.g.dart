// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cart_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCartResponseModel _$GetCartResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetCartResponseModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPriceBeforeDiscount:
          (json['total_price_before_discount'] as num?)?.toInt(),
      totalDiscount: (json['total_discount'] as num?)?.toInt(),
      totalPriceWithVat: (json['total_price_with_vat'] as num?)?.toInt(),
      deliveryCost: (json['delivery_cost'] as num?)?.toInt(),
      freeDeliveryPrice: (json['free_delivery_price'] as num?)?.toInt(),
      vat: (json['vat'] as num?)?.toDouble(),
      isVip: (json['is_vip'] as num?)?.toInt(),
      vipDiscountPercentage: (json['vip_discount_percentage'] as num?)?.toInt(),
      minVipPrice: (json['min_vip_price'] as num?)?.toInt(),
      vipMessage: json['vip_message'] as String?,
      status: json['status'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$GetCartResponseModelToJson(
        GetCartResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'total_price_before_discount': instance.totalPriceBeforeDiscount,
      'total_discount': instance.totalDiscount,
      'total_price_with_vat': instance.totalPriceWithVat,
      'delivery_cost': instance.deliveryCost,
      'free_delivery_price': instance.freeDeliveryPrice,
      'vat': instance.vat,
      'is_vip': instance.isVip,
      'vip_discount_percentage': instance.vipDiscountPercentage,
      'min_vip_price': instance.minVipPrice,
      'vip_message': instance.vipMessage,
      'status': instance.status,
      'message': instance.message,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      image: json['image'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
      priceBeforeDiscount: (json['price_before_discount'] as num?)?.toInt(),
      discount: (json['discount'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toInt(),
      remainingAmount: (json['remaining_amount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'amount': instance.amount,
      'price_before_discount': instance.priceBeforeDiscount,
      'discount': instance.discount,
      'price': instance.price,
      'remaining_amount': instance.remainingAmount,
    };
