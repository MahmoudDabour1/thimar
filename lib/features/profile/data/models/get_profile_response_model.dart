import 'package:json_annotation/json_annotation.dart';

part 'get_profile_response_model.g.dart';

@JsonSerializable()
class GetProfileResponseModel {
  @JsonKey(name: "data")
  final Data? data;
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "message")
  final String? message;

  GetProfileResponseModel({
    this.data,
    this.status,
    this.message,
  });

  factory GetProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetProfileResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetProfileResponseModelToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "fullname")
  final String? fullname;
  @JsonKey(name: "phone")
  final String? phone;
  @JsonKey(name: "image")
  final String? image;
  @JsonKey(name: "city")
  final City? city;
  @JsonKey(name: "is_vip")
  final int? isVip;

  Data({
    this.id,
    this.fullname,
    this.phone,
    this.image,
    this.city,
    this.isVip,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class City {
  final int? id;
  final String? name;

  City({this.id, this.name});

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  Map<String, dynamic> toJson() => _$CityToJson(this);
}
