import 'package:json_annotation/json_annotation.dart';
part 'get_contact_response_model.g.dart';
@JsonSerializable()
class GetContactResponseModel {
  @JsonKey(name: "data")
  final Data? data;
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "message")
  final String? message;

  GetContactResponseModel({
    this.data,
    this.status,
    this.message,
  });

  factory GetContactResponseModel.fromJson(Map<String, dynamic> json) => _$GetContactResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetContactResponseModelToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "phone")
  final String? phone;
  @JsonKey(name: "email")
  final String? email;
  @JsonKey(name: "whatsapp")
  final String? whatsapp;
  @JsonKey(name: "social")
  final Social? social;
  @JsonKey(name: "lat")
  final double? lat;
  @JsonKey(name: "lng")
  final double? lng;
  @JsonKey(name: "location")
  final String? location;

  Data({
    this.phone,
    this.email,
    this.whatsapp,
    this.social,
    this.lat,
    this.lng,
    this.location,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Social {
  @JsonKey(name: "facebook")
  final String? facebook;
  @JsonKey(name: "twitter")
  final String? twitter;
  @JsonKey(name: "instagram")
  final String? instagram;

  Social({
    this.facebook,
    this.twitter,
    this.instagram,
  });

  factory Social.fromJson(Map<String, dynamic> json) => _$SocialFromJson(json);

  Map<String, dynamic> toJson() => _$SocialToJson(this);
}
