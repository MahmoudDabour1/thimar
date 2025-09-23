import 'package:json_annotation/json_annotation.dart';

part 'about_app_response_model.g.dart';

@JsonSerializable()
class AboutAppResponseModel {
  @JsonKey(name: "data")
  final Data? data;
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "message")
  final String? message;

  AboutAppResponseModel({
    this.data,
    this.status,
    this.message,
  });

  factory AboutAppResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AboutAppResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$AboutAppResponseModelToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "about")
  final String? about;

  Data({
    this.about,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
