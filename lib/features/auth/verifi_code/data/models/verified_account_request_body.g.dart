// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_account_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifiedAccountRequestBody _$VerifiedAccountRequestBodyFromJson(
        Map<String, dynamic> json) =>
    VerifiedAccountRequestBody(
      phone: json['phone'] as String,
      code: json['code'] as String,
      deviceToken: json['device_token'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$VerifiedAccountRequestBodyToJson(
        VerifiedAccountRequestBody instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'code': instance.code,
      'device_token': instance.deviceToken,
      'type': instance.type,
    };
