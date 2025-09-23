// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'policy_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PolicyResponseModel _$PolicyResponseModelFromJson(Map<String, dynamic> json) =>
    PolicyResponseModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$PolicyResponseModelToJson(
        PolicyResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'message': instance.message,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      policy: json['policy'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'policy': instance.policy,
    };
