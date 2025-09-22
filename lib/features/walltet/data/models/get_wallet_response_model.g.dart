// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_wallet_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetWalletResponseModel _$GetWalletResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetWalletResponseModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
      message: json['message'] as String?,
      wallet: (json['wallet'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GetWalletResponseModelToJson(
        GetWalletResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'message': instance.message,
      'wallet': instance.wallet,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: (json['id'] as num?)?.toInt(),
      amount: (json['amount'] as num?)?.toInt(),
      beforeCharge: (json['before_charge'] as num?)?.toInt(),
      afterCharge: (json['after_charge'] as num?)?.toInt(),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      statusTrans: json['status_trans'] as String?,
      status: json['status'] as String?,
      transactionType: json['transaction_type'] as String?,
      modelType: json['model_type'] as String?,
      modelId: (json['model_id'] as num?)?.toInt(),
      state: json['state'] as String?,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'before_charge': instance.beforeCharge,
      'after_charge': instance.afterCharge,
      'date': instance.date?.toIso8601String(),
      'status_trans': instance.statusTrans,
      'status': instance.status,
      'transaction_type': instance.transactionType,
      'model_type': instance.modelType,
      'model_id': instance.modelId,
      'state': instance.state,
    };
