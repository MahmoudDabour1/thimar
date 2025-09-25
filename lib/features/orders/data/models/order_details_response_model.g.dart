// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrdersDetailsResponseModel _$OrdersDetailsResponseModelFromJson(
        Map<String, dynamic> json) =>
    OrdersDetailsResponseModel(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrdersDetailsResponseModelToJson(
        OrdersDetailsResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: (json['id'] as num?)?.toInt(),
      status: json['status'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      time: json['time'] as String?,
      orderPrice: (json['order_price'] as num?)?.toInt(),
      deliveryPrice: (json['delivery_price'] as num?)?.toInt(),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      clientName: json['client_name'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      payType: json['pay_type'] as String?,
      note: json['note'],
      deliveryPayer: json['delivery_payer'] as String?,
      isVip: (json['is_vip'] as num?)?.toInt(),
      vipDiscount: (json['vip_discount'] as num?)?.toDouble(),
      priceBeforeDiscount: (json['price_before_discount'] as num?)?.toInt(),
      discount: (json['discount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'date': instance.date?.toIso8601String(),
      'time': instance.time,
      'order_price': instance.orderPrice,
      'delivery_price': instance.deliveryPrice,
      'total_price': instance.totalPrice,
      'client_name': instance.clientName,
      'phone': instance.phone,
      'address': instance.address,
      'products': instance.products,
      'pay_type': instance.payType,
      'note': instance.note,
      'delivery_payer': instance.deliveryPayer,
      'is_vip': instance.isVip,
      'vip_discount': instance.vipDiscount,
      'price_before_discount': instance.priceBeforeDiscount,
      'discount': instance.discount,
    };

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      id: (json['id'] as num?)?.toInt(),
      type: json['type'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      location: json['location'] as String?,
      description: json['description'],
      isDefault: json['is_default'] as bool?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'lat': instance.lat,
      'lng': instance.lng,
      'location': instance.location,
      'description': instance.description,
      'is_default': instance.isDefault,
      'phone': instance.phone,
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
