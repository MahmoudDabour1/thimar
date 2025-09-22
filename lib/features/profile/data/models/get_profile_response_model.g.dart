// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_profile_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProfileResponseModel _$GetProfileResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetProfileResponseModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$GetProfileResponseModelToJson(
        GetProfileResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'message': instance.message,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: (json['id'] as num?)?.toInt(),
      fullname: json['fullname'] as String?,
      phone: json['phone'] as String?,
      image: json['image'] as String?,
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
      isVip: (json['is_vip'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
      'phone': instance.phone,
      'image': instance.image,
      'city': instance.city,
      'is_vip': instance.isVip,
    };

City _$CityFromJson(Map<String, dynamic> json) => City(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
