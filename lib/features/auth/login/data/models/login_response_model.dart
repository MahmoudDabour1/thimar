import 'package:json_annotation/json_annotation.dart';
part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  @JsonKey(name: "data")
  final Data? data;
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "message")
  final String? message;

  LoginResponseModel({
    this.data,
    this.status,
    this.message,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseModelToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "fullname")
  final String? fullname;
  @JsonKey(name: "phone")
  final String? phone;
  @JsonKey(name: "email")
  final String? email;
  @JsonKey(name: "image")
  final String? image;
  @JsonKey(name: "is_ban")
  final int? isBan;
  @JsonKey(name: "is_active")
  final bool? isActive;
  @JsonKey(name: "unread_notifications")
  final int? unreadNotifications;
  @JsonKey(name: "user_type")
  final String? userType;
  @JsonKey(name: "token")
  final String? token;
  @JsonKey(name: "country")
  final dynamic country;
  @JsonKey(name: "city")
  final dynamic city;
  @JsonKey(name: "identity_number")
  final dynamic identityNumber;
  @JsonKey(name: "user_cart_count")
  final int? userCartCount;

  Data({
    this.id,
    this.fullname,
    this.phone,
    this.email,
    this.image,
    this.isBan,
    this.isActive,
    this.unreadNotifications,
    this.userType,
    this.token,
    this.country,
    this.city,
    this.identityNumber,
    this.userCartCount,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
