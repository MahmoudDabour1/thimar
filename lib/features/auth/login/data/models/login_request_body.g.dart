// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequestBody _$LoginRequestBodyFromJson(Map<String, dynamic> json) =>
    LoginRequestBody(
      phone: json['phone'] as String,
      password: json['password'] as String,
      type: json['type'] as String?,
      deviceToken: json['device_token'] as String?,
      userType: json['user_type'] as String?,
    );

Map<String, dynamic> _$LoginRequestBodyToJson(LoginRequestBody instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'password': instance.password,
      'type': instance.type,
      'device_token': instance.deviceToken,
      'user_type': instance.userType,
    };
