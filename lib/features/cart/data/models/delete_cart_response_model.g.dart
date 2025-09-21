// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_cart_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteCartResponseModel _$DeleteCartResponseModelFromJson(
        Map<String, dynamic> json) =>
    DeleteCartResponseModel(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$DeleteCartResponseModelToJson(
        DeleteCartResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
