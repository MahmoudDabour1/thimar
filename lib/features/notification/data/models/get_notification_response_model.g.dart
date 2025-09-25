// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_notification_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetNotificationResponseModel _$GetNotificationResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetNotificationResponseModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      status: json['status'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$GetNotificationResponseModelToJson(
        GetNotificationResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'links': instance.links,
      'meta': instance.meta,
      'status': instance.status,
      'message': instance.message,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      unreadnotificationsCount:
          (json['unreadnotifications_count'] as num?)?.toInt(),
      notifications: (json['notifications'] as List<dynamic>?)
          ?.map((e) => Notification.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'unreadnotifications_count': instance.unreadnotificationsCount,
      'notifications': instance.notifications,
    };

Notification _$NotificationFromJson(Map<String, dynamic> json) => Notification(
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
      readAt: json['read_at'],
      image: json['image'] as String?,
    );

Map<String, dynamic> _$NotificationToJson(Notification instance) =>
    <String, dynamic>{
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

Links _$LinksFromJson(Map<String, dynamic> json) => Links(
      first: json['first'] as String?,
      last: json['last'] as String?,
      prev: json['prev'],
      next: json['next'],
    );

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'first': instance.first,
      'last': instance.last,
      'prev': instance.prev,
      'next': instance.next,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      currentPage: (json['current_page'] as num?)?.toInt(),
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      path: json['path'] as String?,
      perPage: (json['per_page'] as num?)?.toInt(),
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'current_page': instance.currentPage,
      'from': instance.from,
      'last_page': instance.lastPage,
      'links': instance.links,
      'path': instance.path,
      'per_page': instance.perPage,
      'to': instance.to,
      'total': instance.total,
    };

Link _$LinkFromJson(Map<String, dynamic> json) => Link(
      url: json['url'] as String?,
      label: json['label'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$LinkToJson(Link instance) => <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
