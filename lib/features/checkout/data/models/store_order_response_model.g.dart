// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_order_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreOrderResponseModel _$StoreOrderResponseModelFromJson(
        Map<String, dynamic> json) =>
    StoreOrderResponseModel(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$StoreOrderResponseModelToJson(
        StoreOrderResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
