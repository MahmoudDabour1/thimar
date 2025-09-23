// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggestions_and_complaints_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuggestionsAndComplaintsResponseModel
    _$SuggestionsAndComplaintsResponseModelFromJson(
            Map<String, dynamic> json) =>
        SuggestionsAndComplaintsResponseModel(
          status: json['status'] as String?,
          data: json['data'],
          message: json['message'] as String?,
        );

Map<String, dynamic> _$SuggestionsAndComplaintsResponseModelToJson(
        SuggestionsAndComplaintsResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
    };
