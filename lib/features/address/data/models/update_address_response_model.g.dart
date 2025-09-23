// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_address_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateAddressResponseModel _$UpdateAddressResponseModelFromJson(
        Map<String, dynamic> json) =>
    UpdateAddressResponseModel(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateAddressResponseModelToJson(
        UpdateAddressResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: (json['id'] as num?)?.toInt(),
      type: json['type'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      location: json['location'] as String?,
      description: json['description'] as String?,
      isDefault: json['is_default'] as bool?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'lat': instance.lat,
      'lng': instance.lng,
      'location': instance.location,
      'description': instance.description,
      'is_default': instance.isDefault,
      'phone': instance.phone,
    };
