import 'package:json_annotation/json_annotation.dart';

part 'slider_response_model.g.dart';

@JsonSerializable()
class SliderResponseModel {
  @JsonKey(name: "data")
  final List<Datum>? data;
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "message")
  final String? message;

  SliderResponseModel({
    this.data,
    this.status,
    this.message,
  });

  factory SliderResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SliderResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$SliderResponseModelToJson(this);
}

@JsonSerializable()
class Datum {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "media")
  final String? media;

  Datum({
    this.id,
    this.media,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
