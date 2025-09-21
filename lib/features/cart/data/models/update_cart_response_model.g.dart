// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_cart_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCartResponseModel _$UpdateCartResponseModelFromJson(
        Map<String, dynamic> json) =>
    UpdateCartResponseModel(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$UpdateCartResponseModelToJson(
        UpdateCartResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
