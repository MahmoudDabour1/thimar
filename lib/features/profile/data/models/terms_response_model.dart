import 'package:json_annotation/json_annotation.dart';
part 'terms_response_model.g.dart';
@JsonSerializable()
class TermsResponseModel {
  @JsonKey(name: "data")
  final Data? data;
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "message")
  final String? message;

  TermsResponseModel({
    this.data,
    this.status,
    this.message,
  });

  factory TermsResponseModel.fromJson(Map<String, dynamic> json) => _$TermsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$TermsResponseModelToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "terms")
  final String? terms;

  Data({
    this.terms,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
