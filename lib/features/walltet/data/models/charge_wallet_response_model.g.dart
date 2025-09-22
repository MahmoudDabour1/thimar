// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charge_wallet_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChargeWalletResponseModel _$ChargeWalletResponseModelFromJson(
        Map<String, dynamic> json) =>
    ChargeWalletResponseModel(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$ChargeWalletResponseModelToJson(
        ChargeWalletResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
