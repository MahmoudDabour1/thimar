// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_app_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AboutAppResponseModel _$AboutAppResponseModelFromJson(
        Map<String, dynamic> json) =>
    AboutAppResponseModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$AboutAppResponseModelToJson(
        AboutAppResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'message': instance.message,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      about: json['about'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'about': instance.about,
    };
