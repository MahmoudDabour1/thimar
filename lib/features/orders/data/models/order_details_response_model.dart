import 'package:json_annotation/json_annotation.dart';

part 'order_details_response_model.g.dart';

@JsonSerializable()
class OrdersDetailsResponseModel {
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "data")
  final Data? data;

  OrdersDetailsResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory OrdersDetailsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$OrdersDetailsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrdersDetailsResponseModelToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "date")
  final DateTime? date;
  @JsonKey(name: "time")
  final String? time;
  @JsonKey(name: "order_price")
  final int? orderPrice;
  @JsonKey(name: "delivery_price")
  final int? deliveryPrice;
  @JsonKey(name: "total_price")
  final double? totalPrice;
  @JsonKey(name: "client_name")
  final String? clientName;
  @JsonKey(name: "phone")
  final String? phone;
  @JsonKey(name: "address")
  final Address? address;
  @JsonKey(name: "products")
  final List<Product>? products;
  @JsonKey(name: "pay_type")
  final String? payType;
  @JsonKey(name: "note")
  final dynamic note;
  @JsonKey(name: "delivery_payer")
  final String? deliveryPayer;
  @JsonKey(name: "is_vip")
  final int? isVip;
  @JsonKey(name: "vip_discount")
  final double? vipDiscount;
  @JsonKey(name: "price_before_discount")
  final int? priceBeforeDiscount;
  @JsonKey(name: "discount")
  final int? discount;

  Data({
    this.id,
    this.status,
    this.date,
    this.time,
    this.orderPrice,
    this.deliveryPrice,
    this.totalPrice,
    this.clientName,
    this.phone,
    this.address,
    this.products,
    this.payType,
    this.note,
    this.deliveryPayer,
    this.isVip,
    this.vipDiscount,
    this.priceBeforeDiscount,
    this.discount,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Address {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "lat")
  final double? lat;
  @JsonKey(name: "lng")
  final double? lng;
  @JsonKey(name: "location")
  final String? location;
  @JsonKey(name: "description")
  final dynamic description;
  @JsonKey(name: "is_default")
  final bool? isDefault;
  @JsonKey(name: "phone")
  final String? phone;

  Address({
    this.id,
    this.type,
    this.lat,
    this.lng,
    this.location,
    this.description,
    this.isDefault,
    this.phone,
  });

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}

@JsonSerializable()
class Product {
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "url")
  final String? url;

  Product({
    this.name,
    this.url,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
