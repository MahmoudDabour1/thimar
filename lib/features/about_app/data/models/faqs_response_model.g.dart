// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faqs_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FaqsResponseModel _$FaqsResponseModelFromJson(Map<String, dynamic> json) =>
    FaqsResponseModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$FaqsResponseModelToJson(FaqsResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'message': instance.message,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: (json['id'] as num?)?.toInt(),
      question: json['question'] as String?,
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'answer': instance.answer,
    };
