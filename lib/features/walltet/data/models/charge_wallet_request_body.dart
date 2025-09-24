import 'package:json_annotation/json_annotation.dart';
part 'charge_wallet_request_body.g.dart';

@JsonSerializable()
class ChargeWalletRequestBody {
  final String amount;
  @JsonKey(name: "transaction_id")
  final String transactionId;

  ChargeWalletRequestBody({
    required this.amount,
    required this.transactionId,
  });

  factory ChargeWalletRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ChargeWalletRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ChargeWalletRequestBodyToJson(this);
}
