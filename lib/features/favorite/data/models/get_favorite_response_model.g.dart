// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_favorite_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetFavoriteResponseModel _$GetFavoriteResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetFavoriteResponseModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$GetFavoriteResponseModelToJson(
        GetFavoriteResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'message': instance.message,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      categoryId: (json['category_id'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      code: json['code'] as String?,
      priceBeforeDiscount: (json['price_before_discount'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toInt(),
      discount: (json['discount'] as num?)?.toDouble(),
      amount: (json['amount'] as num?)?.toInt(),
      isActive: (json['is_active'] as num?)?.toInt(),
      isFavorite: json['is_favorite'] as bool?,
      unit: json['unit'] == null
          ? null
          : Unit.fromJson(json['unit'] as Map<String, dynamic>),
      images: json['images'] as List<dynamic>?,
      mainImage: json['main_image'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'category_id': instance.categoryId,
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'code': instance.code,
      'price_before_discount': instance.priceBeforeDiscount,
      'price': instance.price,
      'discount': instance.discount,
      'amount': instance.amount,
      'is_active': instance.isActive,
      'is_favorite': instance.isFavorite,
      'unit': instance.unit,
      'images': instance.images,
      'main_image': instance.mainImage,
      'created_at': instance.createdAt?.toIso8601String(),
    };

Unit _$UnitFromJson(Map<String, dynamic> json) => Unit(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      type: json['type'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$UnitToJson(Unit instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
