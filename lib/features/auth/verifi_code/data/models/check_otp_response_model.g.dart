// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_otp_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckOtpResponseModel _$CheckOtpResponseModelFromJson(
        Map<String, dynamic> json) =>
    CheckOtpResponseModel(
      status: json['status'] as String?,
      data: json['data'],
      message: json['message'] as String?,
      isActive: json['is_active'] as bool?,
    );

Map<String, dynamic> _$CheckOtpResponseModelToJson(
        CheckOtpResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
      'is_active': instance.isActive,
    };
