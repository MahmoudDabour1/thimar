import 'package:json_annotation/json_annotation.dart';

part 'suggestions_and_complaints_response_model.g.dart';

@JsonSerializable()
class SuggestionsAndComplaintsResponseModel {
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "data")
  final dynamic data;
  @JsonKey(name: "message")
  final String? message;

  SuggestionsAndComplaintsResponseModel({
    this.status,
    this.data,
    this.message,
  });

  factory SuggestionsAndComplaintsResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$SuggestionsAndComplaintsResponseModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SuggestionsAndComplaintsResponseModelToJson(this);
}
