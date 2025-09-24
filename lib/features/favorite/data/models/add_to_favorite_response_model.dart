import 'package:json_annotation/json_annotation.dart';

part 'add_to_favorite_response_model.g.dart';

@JsonSerializable()
class AddToFavoriteResponseModel {
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "data")
  final dynamic data;

  AddToFavoriteResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory AddToFavoriteResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AddToFavoriteResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddToFavoriteResponseModelToJson(this);
}
