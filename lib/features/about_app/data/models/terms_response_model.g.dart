// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terms_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TermsResponseModel _$TermsResponseModelFromJson(Map<String, dynamic> json) =>
    TermsResponseModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$TermsResponseModelToJson(TermsResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'message': instance.message,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      terms: json['terms'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'terms': instance.terms,
    };
