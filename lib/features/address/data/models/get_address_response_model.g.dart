// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_address_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAddressResponseModel _$GetAddressResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetAddressResponseModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$GetAddressResponseModelToJson(
        GetAddressResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'message': instance.message,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: (json['id'] as num?)?.toInt(),
      type: json['type'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      location: json['location'] as String?,
      description: json['description'] as String?,
      isDefault: json['is_default'] as bool?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'lat': instance.lat,
      'lng': instance.lng,
      'location': instance.location,
      'description': instance.description,
      'is_default': instance.isDefault,
      'phone': instance.phone,
    };
