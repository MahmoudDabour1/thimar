import 'package:json_annotation/json_annotation.dart';
part 'delete_cart_response_model.g.dart';

@JsonSerializable()
class DeleteCartResponseModel {
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "data")
  final dynamic data;

  DeleteCartResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory DeleteCartResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteCartResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteCartResponseModelToJson(this);
}
