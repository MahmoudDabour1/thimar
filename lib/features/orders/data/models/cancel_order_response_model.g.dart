// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_order_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CancelOrderResponseModel _$CancelOrderResponseModelFromJson(
        Map<String, dynamic> json) =>
    CancelOrderResponseModel(
      status: json['status'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$CancelOrderResponseModelToJson(
        CancelOrderResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
