// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_favorite_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddToFavoriteResponseModel _$AddToFavoriteResponseModelFromJson(
        Map<String, dynamic> json) =>
    AddToFavoriteResponseModel(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$AddToFavoriteResponseModelToJson(
        AddToFavoriteResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
