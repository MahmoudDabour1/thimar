import 'package:json_annotation/json_annotation.dart';

part 'delete_address_response_model.g.dart';

@JsonSerializable()
class DeleteAddressResponseModel {
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "data")
  final dynamic data;

  DeleteAddressResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory DeleteAddressResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteAddressResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteAddressResponseModelToJson(this);
}
