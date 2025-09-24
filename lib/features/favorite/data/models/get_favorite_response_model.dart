import 'package:json_annotation/json_annotation.dart';

part 'get_favorite_response_model.g.dart';

@JsonSerializable()
class GetFavoriteResponseModel {
  @JsonKey(name: "data")
  final List<Datum>? data;
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "message")
  final String? message;

  GetFavoriteResponseModel({
    this.data,
    this.status,
    this.message,
  });

  factory GetFavoriteResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetFavoriteResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetFavoriteResponseModelToJson(this);
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
  final int? price;
  @JsonKey(name: "discount")
  final double? discount;
  @JsonKey(name: "amount")
  final int? amount;
  @JsonKey(name: "is_active")
  final int? isActive;
  @JsonKey(name: "is_favorite")
  final bool? isFavorite;
  @JsonKey(name: "unit")
  final Unit? unit;
  @JsonKey(name: "images")
  final List<dynamic>? images;
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
class Unit {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "type")
  final String? type;
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
