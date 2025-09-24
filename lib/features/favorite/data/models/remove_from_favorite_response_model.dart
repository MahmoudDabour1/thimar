import 'package:json_annotation/json_annotation.dart';

part 'remove_from_favorite_response_model.g.dart';
@JsonSerializable()
class RemoveFromFavoriteResponseModel {
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "data")
  final dynamic data;

  RemoveFromFavoriteResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory RemoveFromFavoriteResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RemoveFromFavoriteResponseModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$RemoveFromFavoriteResponseModelToJson(this);
}
