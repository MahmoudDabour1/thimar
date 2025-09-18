// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forget_password_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForgetPasswordResponseModel _$ForgetPasswordResponseModelFromJson(
        Map<String, dynamic> json) =>
    ForgetPasswordResponseModel(
      status: json['status'] as String?,
      data: json['data'],
      message: json['message'] as String?,
      isActive: json['is_active'] as bool?,
      devMessage: (json['dev_message'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ForgetPasswordResponseModelToJson(
        ForgetPasswordResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
      'is_active': instance.isActive,
      'dev_message': instance.devMessage,
    };
