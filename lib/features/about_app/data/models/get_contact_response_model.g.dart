// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_contact_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetContactResponseModel _$GetContactResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetContactResponseModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$GetContactResponseModelToJson(
        GetContactResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'message': instance.message,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      whatsapp: json['whatsapp'] as String?,
      social: json['social'] == null
          ? null
          : Social.fromJson(json['social'] as Map<String, dynamic>),
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      location: json['location'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'phone': instance.phone,
      'email': instance.email,
      'whatsapp': instance.whatsapp,
      'social': instance.social,
      'lat': instance.lat,
      'lng': instance.lng,
      'location': instance.location,
    };

Social _$SocialFromJson(Map<String, dynamic> json) => Social(
      facebook: json['facebook'] as String?,
      twitter: json['twitter'] as String?,
      instagram: json['instagram'] as String?,
    );

Map<String, dynamic> _$SocialToJson(Social instance) => <String, dynamic>{
      'facebook': instance.facebook,
      'twitter': instance.twitter,
      'instagram': instance.instagram,
    };
