// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slider_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SliderResponseModel _$SliderResponseModelFromJson(Map<String, dynamic> json) =>
    SliderResponseModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$SliderResponseModelToJson(
        SliderResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'message': instance.message,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: (json['id'] as num?)?.toInt(),
      media: json['media'] as String?,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'media': instance.media,
    };
