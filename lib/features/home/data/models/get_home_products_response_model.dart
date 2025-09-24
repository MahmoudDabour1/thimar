import 'package:json_annotation/json_annotation.dart';
part 'get_home_products_response_model.g.dart';

@JsonSerializable()
class GetHomeProductsResponseModel {
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
  @JsonKey(name: "user_cart_count")
  final int? userCartCount;
  @JsonKey(name: "max_price")
  final int? maxPrice;
  @JsonKey(name: "min_price")
  final double? minPrice;

  GetHomeProductsResponseModel({
    this.data,
    this.links,
    this.meta,
    this.status,
    this.message,
    this.userCartCount,
    this.maxPrice,
    this.minPrice,
  });

  factory GetHomeProductsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetHomeProductsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetHomeProductsResponseModelToJson(this);
}

@JsonSerializable()
class Datum {
  @JsonKey(name: "category_id")
  final int? categoryId;
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "description")
  final String? description;
  @JsonKey(name: "code")
  final String? code;
  @JsonKey(name: "price_before_discount")
  final int? priceBeforeDiscount;
  @JsonKey(name: "price")
  final double? price;
  @JsonKey(name: "discount")
  final double? discount;
  @JsonKey(name: "amount")
  final double? amount;
  @JsonKey(name: "is_active")
  final int? isActive;
  @JsonKey(name: "is_favorite")
  final bool? isFavorite;
  @JsonKey(name: "unit")
  final Unit? unit;
  @JsonKey(name: "images")
  final List<Image>? images;
  @JsonKey(name: "main_image")
  final String? mainImage;
  @JsonKey(name: "created_at")
  final DateTime? createdAt;

  Datum({
    this.categoryId,
    this.id,
    this.title,
    this.description,
    this.code,
    this.priceBeforeDiscount,
    this.price,
    this.discount,
    this.amount,
    this.isActive,
    this.isFavorite,
    this.unit,
    this.images,
    this.mainImage,
    this.createdAt,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}

@JsonSerializable()
class Image {
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "url")
  final String? url;

  Image({
    this.name,
    this.url,
  });

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  Map<String, dynamic> toJson() => _$ImageToJson(this);
}

@JsonSerializable()
class Unit {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "name")
  final Name? name;
  @JsonKey(name: "type")
  final Type? type;
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  Unit({
    this.id,
    this.name,
    this.type,
    this.createdAt,
    this.updatedAt,
  });

  factory Unit.fromJson(Map<String, dynamic> json) => _$UnitFromJson(json);

  Map<String, dynamic> toJson() => _$UnitToJson(this);
}

enum Name {
  @JsonValue("كيلوجرام")
  EMPTY
}

enum Type {
  @JsonValue("kilogram")
  KILOGRAM
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
