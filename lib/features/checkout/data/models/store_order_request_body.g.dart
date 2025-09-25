// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_order_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreOrderRequestBody _$StoreOrderRequestBodyFromJson(
        Map<String, dynamic> json) =>
    StoreOrderRequestBody(
      addressId: json['address_id'] as String?,
      date: json['date'] as String?,
      time: json['time'] as String?,
      payType: json['pay_type'] as String?,
    );

Map<String, dynamic> _$StoreOrderRequestBodyToJson(
        StoreOrderRequestBody instance) =>
    <String, dynamic>{
      'address_id': instance.addressId,
      'date': instance.date,
      'time': instance.time,
      'pay_type': instance.payType,
    };
