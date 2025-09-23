// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insert_address_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InsertAddressRequestBody _$InsertAddressRequestBodyFromJson(
        Map<String, dynamic> json) =>
    InsertAddressRequestBody(
      phone: json['phone'] as String,
      location: json['location'] as String,
      lat: json['lat'] as String,
      lng: json['lng'] as String,
      type: json['type'] as String,
      isDefault: json['is_default'] as String,
    );

Map<String, dynamic> _$InsertAddressRequestBodyToJson(
        InsertAddressRequestBody instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'location': instance.location,
      'lat': instance.lat,
      'lng': instance.lng,
      'type': instance.type,
      'is_default': instance.isDefault,
    };
