// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_password_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewPasswordResponseModel _$NewPasswordResponseModelFromJson(
        Map<String, dynamic> json) =>
    NewPasswordResponseModel(
      status: json['status'] as String?,
      data: json['data'],
      message: json['message'] as String?,
    );

Map<String, dynamic> _$NewPasswordResponseModelToJson(
        NewPasswordResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
    };
