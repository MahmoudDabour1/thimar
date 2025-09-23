// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_address_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteAddressResponseModel _$DeleteAddressResponseModelFromJson(
        Map<String, dynamic> json) =>
    DeleteAddressResponseModel(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$DeleteAddressResponseModelToJson(
        DeleteAddressResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
