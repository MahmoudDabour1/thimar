import 'package:json_annotation/json_annotation.dart';

part 'insert_address_request_body.g.dart';

@JsonSerializable()
class InsertAddressRequestBody {
  final String phone;
  final String location;
  final String lat;
  final String lng;
  final String type;
  @JsonKey(name: "is_default")
  final String isDefault;

  InsertAddressRequestBody({
    required this.phone,
    required this.location,
    required this.lat,
    required this.lng,
    required this.type,
    required this.isDefault,
  });

  Map<String, dynamic> toJson() => _$InsertAddressRequestBodyToJson(this);

  factory InsertAddressRequestBody.fromJson(Map<String, dynamic> json) =>
      _$InsertAddressRequestBodyFromJson(json);
}
