// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charge_wallet_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChargeWalletRequestBody _$ChargeWalletRequestBodyFromJson(
        Map<String, dynamic> json) =>
    ChargeWalletRequestBody(
      amount: json['amount'] as String,
      transactionId: json['transaction_id'] as String,
    );

Map<String, dynamic> _$ChargeWalletRequestBodyToJson(
        ChargeWalletRequestBody instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'transaction_id': instance.transactionId,
    };
