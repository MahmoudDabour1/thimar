// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_from_favorite_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoveFromFavoriteResponseModel _$RemoveFromFavoriteResponseModelFromJson(
        Map<String, dynamic> json) =>
    RemoveFromFavoriteResponseModel(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$RemoveFromFavoriteResponseModelToJson(
        RemoveFromFavoriteResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
