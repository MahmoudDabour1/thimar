// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_password_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewPasswordRequestBody _$NewPasswordRequestBodyFromJson(
        Map<String, dynamic> json) =>
    NewPasswordRequestBody(
      phone: json['phone'] as String,
      code: json['code'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$NewPasswordRequestBodyToJson(
        NewPasswordRequestBody instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'code': instance.code,
      'password': instance.password,
    };
