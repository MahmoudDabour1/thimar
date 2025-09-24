import 'package:json_annotation/json_annotation.dart';
part 'get_cart_response_model.g.dart';

@JsonSerializable()
class GetCartResponseModel {
  @JsonKey(name: "data")
  final List<Datum>? data;
  @JsonKey(name: "total_price_before_discount")
  final int? totalPriceBeforeDiscount;
  @JsonKey(name: "total_discount")
  final int? totalDiscount;
  @JsonKey(name: "total_price_with_vat")
  final int? totalPriceWithVat;
  @JsonKey(name: "delivery_cost")
  final int? deliveryCost;
  @JsonKey(name: "free_delivery_price")
  final int? freeDeliveryPrice;
  @JsonKey(name: "vat")
  final double? vat;
  @JsonKey(name: "is_vip")
  final int? isVip;
  @JsonKey(name: "vip_discount_percentage")
  final int? vipDiscountPercentage;
  @JsonKey(name: "min_vip_price")
  final int? minVipPrice;
  @JsonKey(name: "vip_message")
  final String? vipMessage;
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "message")
  final String? message;

  GetCartResponseModel({
    this.data,
    this.totalPriceBeforeDiscount,
    this.totalDiscount,
    this.totalPriceWithVat,
    this.deliveryCost,
    this.freeDeliveryPrice,
    this.vat,
    this.isVip,
    this.vipDiscountPercentage,
    this.minVipPrice,
    this.vipMessage,
    this.status,
    this.message,
  });

  factory GetCartResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetCartResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetCartResponseModelToJson(this);
}

@JsonSerializable()
class Datum {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "image")
  final String? image;
  @JsonKey(name: "amount")
  final int? amount;
  @JsonKey(name: "price_before_discount")
  final int? priceBeforeDiscount;
  @JsonKey(name: "discount")
  final int? discount;
  @JsonKey(name: "price")
  final int? price;
  @JsonKey(name: "remaining_amount")
  final double? remainingAmount;

  Datum({
    this.id,
    this.title,
    this.image,
    this.amount,
    this.priceBeforeDiscount,
    this.discount,
    this.price,
    this.remainingAmount,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
