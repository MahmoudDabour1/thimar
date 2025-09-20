// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_account_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifiedAccountResponseModel _$VerifiedAccountResponseModelFromJson(
        Map<String, dynamic> json) =>
    VerifiedAccountResponseModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$VerifiedAccountResponseModelToJson(
        VerifiedAccountResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'message': instance.message,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: (json['id'] as num?)?.toInt(),
      fullname: json['fullname'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      image: json['image'] as String?,
      isBan: (json['is_ban'] as num?)?.toInt(),
      isActive: json['is_active'] as bool?,
      unreadNotifications: (json['unread_notifications'] as num?)?.toInt(),
      userType: json['user_type'] as String?,
      token: json['token'] as String?,
      country: json['country'],
      city: json['city'],
      identityNumber: json['identity_number'],
      userCartCount: (json['user_cart_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
      'phone': instance.phone,
      'email': instance.email,
      'image': instance.image,
      'is_ban': instance.isBan,
      'is_active': instance.isActive,
      'unread_notifications': instance.unreadNotifications,
      'user_type': instance.userType,
      'token': instance.token,
      'country': instance.country,
      'city': instance.city,
      'identity_number': instance.identityNumber,
      'user_cart_count': instance.userCartCount,
    };
