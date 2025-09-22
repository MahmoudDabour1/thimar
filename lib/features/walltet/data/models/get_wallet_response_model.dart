import 'package:json_annotation/json_annotation.dart';
part 'get_wallet_response_model.g.dart';
@JsonSerializable()
class GetWalletResponseModel {
  @JsonKey(name: "data")
  final List<Datum>? data;
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "wallet")
  final int? wallet;

  GetWalletResponseModel({
    this.data,
    this.status,
    this.message,
    this.wallet,
  });

  factory GetWalletResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetWalletResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetWalletResponseModelToJson(this);
}

@JsonSerializable()
class Datum {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "amount")
  final int? amount;
  @JsonKey(name: "before_charge")
  final int? beforeCharge;
  @JsonKey(name: "after_charge")
  final int? afterCharge;
  @JsonKey(name: "date")
  final DateTime? date;
  @JsonKey(name: "status_trans")
  final String? statusTrans;
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "transaction_type")
  final String? transactionType;
  @JsonKey(name: "model_type")
  final String? modelType;
  @JsonKey(name: "model_id")
  final int? modelId;
  @JsonKey(name: "state")
  final String? state;

  Datum({
    this.id,
    this.amount,
    this.beforeCharge,
    this.afterCharge,
    this.date,
    this.statusTrans,
    this.status,
    this.transactionType,
    this.modelType,
    this.modelId,
    this.state,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
