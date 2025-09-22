import 'dart:io';

import 'package:json_annotation/json_annotation.dart';

class UpdateProfileDataRequestModel {
  final String fullName;
  final String phone;
  @JsonKey(name: "city_id")
  final String? cityId;
  final File? image;
  final String? oldImage;

  final String? password;
  @JsonKey(name: "password_confirmation")
  final String? passwordConfirmation;

  UpdateProfileDataRequestModel({
    required this.fullName,
    required this.phone,
    this.cityId,
    this.image,
    this.password,
    this.passwordConfirmation,
    this.oldImage,
  });

  Map<String, dynamic> toJson() {
    return {
      "fullname": fullName,
      "phone": phone,
      if (cityId != null) "city_id": cityId,
      if (image != null) "image": image,
      if (image == null && oldImage != null) "image": oldImage,
      if (password != null) "password": password,
      if (passwordConfirmation != null)
        "password_confirmation": passwordConfirmation,
    };
  }
}
