// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_otp_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckOtpRequestBody _$CheckOtpRequestBodyFromJson(Map<String, dynamic> json) =>
    CheckOtpRequestBody(
      phone: json['phone'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$CheckOtpRequestBodyToJson(
        CheckOtpRequestBody instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'code': instance.code,
    };
