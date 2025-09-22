import 'package:json_annotation/json_annotation.dart';

part 'charge_wallet_response_model.g.dart';

@JsonSerializable()
class ChargeWalletResponseModel {
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "data")
  final dynamic data;

  ChargeWalletResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory ChargeWalletResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ChargeWalletResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChargeWalletResponseModelToJson(this);
}
