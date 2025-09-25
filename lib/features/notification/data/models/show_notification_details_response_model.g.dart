// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_notification_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShowNotificationDetailsResponseModel
    _$ShowNotificationDetailsResponseModelFromJson(Map<String, dynamic> json) =>
        ShowNotificationDetailsResponseModel(
          data: json['data'] == null
              ? null
              : Data.fromJson(json['data'] as Map<String, dynamic>),
          status: json['status'] as String?,
          message: json['message'] as String?,
        );

Map<String, dynamic> _$ShowNotificationDetailsResponseModelToJson(
        ShowNotificationDetailsResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'message': instance.message,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as String?,
      title: json['title'] as String?,
      body: json['body'] as String?,
      notifyType: json['notify_type'] as String?,
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
      offer: json['offer'],
      chat: json['chat'],
      createdAt: json['created_at'] as String?,
      readAt: json['read_at'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'notify_type': instance.notifyType,
      'order': instance.order,
      'offer': instance.offer,
      'chat': instance.chat,
      'created_at': instance.createdAt,
      'read_at': instance.readAt,
      'image': instance.image,
    };

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      orderId: (json['order_id'] as num?)?.toInt(),
      clientId: (json['client_id'] as num?)?.toInt(),
      driverId: (json['driver_id'] as num?)?.toInt(),
      orderType: json['order_type'],
      orderStatus: json['order_status'] as String?,
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'order_id': instance.orderId,
      'client_id': instance.clientId,
      'driver_id': instance.driverId,
      'order_type': instance.orderType,
      'order_status': instance.orderStatus,
    };
