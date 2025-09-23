import 'package:json_annotation/json_annotation.dart';

part 'get_address_response_model.g.dart';

@JsonSerializable()
class GetAddressResponseModel {
  @JsonKey(name: "data")
  final List<Datum>? data;
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "message")
  final String? message;

  GetAddressResponseModel({
    this.data,
    this.status,
    this.message,
  });

  factory GetAddressResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetAddressResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetAddressResponseModelToJson(this);
}

@JsonSerializable()
class Datum {
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

  Datum({
    this.id,
    this.type,
    this.lat,
    this.lng,
    this.location,
    this.description,
    this.isDefault,
    this.phone,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
