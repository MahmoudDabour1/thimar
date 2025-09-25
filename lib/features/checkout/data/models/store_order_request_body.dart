import 'package:json_annotation/json_annotation.dart';

part 'store_order_request_body.g.dart';

@JsonSerializable()
class StoreOrderRequestBody {
  @JsonKey(name: "address_id")
  final String? addressId;
  final String? date;
  final String? time;
  @JsonKey(name: "pay_type")
  final String? payType;

  StoreOrderRequestBody({
    required this.addressId,
    required this.date,
    required this.time,
    required this.payType,
  });

  factory StoreOrderRequestBody.fromJson(Map<String, dynamic> json) =>
      _$StoreOrderRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$StoreOrderRequestBodyToJson(this);
}
