// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggestions_and_complaints_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuggestionsAndComplaintsRequestBody
    _$SuggestionsAndComplaintsRequestBodyFromJson(Map<String, dynamic> json) =>
        SuggestionsAndComplaintsRequestBody(
          name: json['fullname'] as String,
          phone: json['phone'] as String,
          title: json['title'] as String,
          content: json['content'] as String,
        );

Map<String, dynamic> _$SuggestionsAndComplaintsRequestBodyToJson(
        SuggestionsAndComplaintsRequestBody instance) =>
    <String, dynamic>{
      'fullname': instance.name,
      'phone': instance.phone,
      'title': instance.title,
      'content': instance.content,
    };
