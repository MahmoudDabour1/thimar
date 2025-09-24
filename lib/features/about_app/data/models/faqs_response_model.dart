import 'package:json_annotation/json_annotation.dart';
part 'faqs_response_model.g.dart';

@JsonSerializable()
class FaqsResponseModel {
  @JsonKey(name: "data")
  final List<Datum>? data;
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "message")
  final String? message;

  FaqsResponseModel({
    this.data,
    this.status,
    this.message,
  });

  factory FaqsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$FaqsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$FaqsResponseModelToJson(this);
}

@JsonSerializable()
class Datum {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "question")
  final String? question;
  @JsonKey(name: "answer")
  final String? answer;

  Datum({
    this.id,
    this.question,
    this.answer,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
