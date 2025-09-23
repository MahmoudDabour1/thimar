import 'package:json_annotation/json_annotation.dart';

part 'suggestions_and_complaints_request_body.g.dart';

@JsonSerializable()
class SuggestionsAndComplaintsRequestBody {
  @JsonKey(name: "fullname")
  final String name;
  final String phone;
  final String title;
  final String content;

  SuggestionsAndComplaintsRequestBody({
    required this.name,
    required this.phone,
    required this.title,
    required this.content,
  });

  Map<String, dynamic> toJson() =>
      _$SuggestionsAndComplaintsRequestBodyToJson(this);

  factory SuggestionsAndComplaintsRequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$SuggestionsAndComplaintsRequestBodyFromJson(json);
}
