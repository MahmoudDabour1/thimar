import 'package:json_annotation/json_annotation.dart';

part 'update_address_response_model.g.dart';

@JsonSerializable()
class UpdateAddressResponseModel {
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "data")
  final Data? data;

  UpdateAddressResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory UpdateAddressResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateAddressResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateAddressResponseModelToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "lat")
  final double? lat;
  @JsonKey(name: "lng")
  final double? lng;
  @JsonKey(name: "location")
  final String? location;
  @JsonKey(name: "description")
  final String? description;
  @JsonKey(name: "is_default")
  final bool? isDefault;
  @JsonKey(name: "phone")
  final String? phone;

  Data({
    this.id,
    this.type,
    this.lat,
    this.lng,
    this.location,
    this.description,
    this.isDefault,
    this.phone,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
