// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_home_products_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetHomeProductsResponseModel _$GetHomeProductsResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetHomeProductsResponseModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      status: json['status'] as String?,
      message: json['message'] as String?,
      userCartCount: (json['user_cart_count'] as num?)?.toInt(),
      maxPrice: (json['max_price'] as num?)?.toInt(),
      minPrice: (json['min_price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$GetHomeProductsResponseModelToJson(
        GetHomeProductsResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'links': instance.links,
      'meta': instance.meta,
      'status': instance.status,
      'message': instance.message,
      'user_cart_count': instance.userCartCount,
      'max_price': instance.maxPrice,
      'min_price': instance.minPrice,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      categoryId: (json['category_id'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      code: json['code'] as String?,
      priceBeforeDiscount: (json['price_before_discount'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      amount: (json['amount'] as num?)?.toDouble(),
      isActive: (json['is_active'] as num?)?.toInt(),
      isFavorite: json['is_favorite'] as bool?,
      unit: json['unit'] == null
          ? null
          : Unit.fromJson(json['unit'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
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

Image _$ImageFromJson(Map<String, dynamic> json) => Image(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Unit _$UnitFromJson(Map<String, dynamic> json) => Unit(
      id: (json['id'] as num?)?.toInt(),
      name: $enumDecodeNullable(_$NameEnumMap, json['name']),
      type: $enumDecodeNullable(_$TypeEnumMap, json['type']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$UnitToJson(Unit instance) => <String, dynamic>{
      'id': instance.id,
      'name': _$NameEnumMap[instance.name],
      'type': _$TypeEnumMap[instance.type],
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

const _$NameEnumMap = {
  Name.EMPTY: 'كيلوجرام',
};

const _$TypeEnumMap = {
  Type.KILOGRAM: 'kilogram',
};

Links _$LinksFromJson(Map<String, dynamic> json) => Links(
      first: json['first'] as String?,
      last: json['last'] as String?,
      prev: json['prev'],
      next: json['next'],
    );

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'first': instance.first,
      'last': instance.last,
      'prev': instance.prev,
      'next': instance.next,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      currentPage: (json['current_page'] as num?)?.toInt(),
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      path: json['path'] as String?,
      perPage: (json['per_page'] as num?)?.toInt(),
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'current_page': instance.currentPage,
      'from': instance.from,
      'last_page': instance.lastPage,
      'links': instance.links,
      'path': instance.path,
      'per_page': instance.perPage,
      'to': instance.to,
      'total': instance.total,
    };

Link _$LinkFromJson(Map<String, dynamic> json) => Link(
      url: json['url'] as String?,
      label: json['label'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$LinkToJson(Link instance) => <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
