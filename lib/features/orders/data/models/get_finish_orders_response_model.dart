import 'package:json_annotation/json_annotation.dart';
part 'get_finish_orders_response_model.g.dart';

@JsonSerializable()
class GetFinishOrdersResponseModel {
  @JsonKey(name: "data")
  final List<Datum>? data;
  @JsonKey(name: "links")
  final Links? links;
  @JsonKey(name: "meta")
  final Meta? meta;
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "message")
  final String? message;

  GetFinishOrdersResponseModel({
    this.data,
    this.links,
    this.meta,
    this.status,
    this.message,
  });

  factory GetFinishOrdersResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetFinishOrdersResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetFinishOrdersResponseModelToJson(this);
}

@JsonSerializable()
class Datum {
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
  @JsonKey(name: "location")
  final String? location;
  @JsonKey(name: "delivery_payer")
  final String? deliveryPayer;
  @JsonKey(name: "products")
  final List<Product>? products;
  @JsonKey(name: "pay_type")
  final String? payType;
  @JsonKey(name: "note")
  final dynamic note;
  @JsonKey(name: "is_vip")
  final int? isVip;
  @JsonKey(name: "vip_discount_percentage")
  final int? vipDiscountPercentage;

  Datum({
    this.id,
    this.status,
    this.date,
    this.time,
    this.orderPrice,
    this.deliveryPrice,
    this.totalPrice,
    this.clientName,
    this.phone,
    this.location,
    this.deliveryPayer,
    this.products,
    this.payType,
    this.note,
    this.isVip,
    this.vipDiscountPercentage,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
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

@JsonSerializable()
class Links {
  @JsonKey(name: "first")
  final String? first;
  @JsonKey(name: "last")
  final String? last;
  @JsonKey(name: "prev")
  final dynamic prev;
  @JsonKey(name: "next")
  final dynamic next;

  Links({
    this.first,
    this.last,
    this.prev,
    this.next,
  });

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  Map<String, dynamic> toJson() => _$LinksToJson(this);
}

@JsonSerializable()
class Meta {
  @JsonKey(name: "current_page")
  final int? currentPage;
  @JsonKey(name: "from")
  final int? from;
  @JsonKey(name: "last_page")
  final int? lastPage;
  @JsonKey(name: "links")
  final List<Link>? links;
  @JsonKey(name: "path")
  final String? path;
  @JsonKey(name: "per_page")
  final int? perPage;
  @JsonKey(name: "to")
  final int? to;
  @JsonKey(name: "total")
  final int? total;

  Meta({
    this.currentPage,
    this.from,
    this.lastPage,
    this.links,
    this.path,
    this.perPage,
    this.to,
    this.total,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}

@JsonSerializable()
class Link {
  @JsonKey(name: "url")
  final String? url;
  @JsonKey(name: "label")
  final String? label;
  @JsonKey(name: "active")
  final bool? active;

  Link({
    this.url,
    this.label,
    this.active,
  });

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);

  Map<String, dynamic> toJson() => _$LinkToJson(this);
}
