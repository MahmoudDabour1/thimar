import 'package:json_annotation/json_annotation.dart';

part 'get_notification_response_model.g.dart';

@JsonSerializable()
class GetNotificationResponseModel {
  @JsonKey(name: "data")
  final Data? data;
  @JsonKey(name: "links")
  final Links? links;
  @JsonKey(name: "meta")
  final Meta? meta;
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "message")
  final String? message;

  GetNotificationResponseModel({
    this.data,
    this.links,
    this.meta,
    this.status,
    this.message,
  });

  factory GetNotificationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetNotificationResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetNotificationResponseModelToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "unreadnotifications_count")
  final int? unreadnotificationsCount;
  @JsonKey(name: "notifications")
  final List<Notification>? notifications;

  Data({
    this.unreadnotificationsCount,
    this.notifications,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Notification {
  @JsonKey(name: "id")
  final String? id;
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "body")
  final String? body;
  @JsonKey(name: "notify_type")
  final String? notifyType;
  @JsonKey(name: "order")
  final Order? order;
  @JsonKey(name: "offer")
  final dynamic offer;
  @JsonKey(name: "chat")
  final dynamic chat;
  @JsonKey(name: "created_at")
  final String? createdAt;
  @JsonKey(name: "read_at")
  final dynamic readAt;
  @JsonKey(name: "image")
  final String? image;

  Notification({
    this.id,
    this.title,
    this.body,
    this.notifyType,
    this.order,
    this.offer,
    this.chat,
    this.createdAt,
    this.readAt,
    this.image,
  });

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationToJson(this);
}

@JsonSerializable()
class Order {
  @JsonKey(name: "order_id")
  final int? orderId;
  @JsonKey(name: "client_id")
  final int? clientId;
  @JsonKey(name: "driver_id")
  final int? driverId;
  @JsonKey(name: "order_type")
  final dynamic orderType;
  @JsonKey(name: "order_status")
  final String? orderStatus;

  Order({
    this.orderId,
    this.clientId,
    this.driverId,
    this.orderType,
    this.orderStatus,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);
}

@JsonSerializable()
class Links {
  @JsonKey(name: "first")
  final String? first;
  @JsonKey(name: "last")
  final String? last;
  @JsonKey(name: "prev")
  final dynamic prev;
  @JsonKey(name: "next")
  final dynamic next;

  Links({
    this.first,
    this.last,
    this.prev,
    this.next,
  });

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  Map<String, dynamic> toJson() => _$LinksToJson(this);
}

@JsonSerializable()
class Meta {
  @JsonKey(name: "current_page")
  final int? currentPage;
  @JsonKey(name: "from")
  final int? from;
  @JsonKey(name: "last_page")
  final int? lastPage;
  @JsonKey(name: "links")
  final List<Link>? links;
  @JsonKey(name: "path")
  final String? path;
  @JsonKey(name: "per_page")
  final int? perPage;
  @JsonKey(name: "to")
  final int? to;
  @JsonKey(name: "total")
  final int? total;

  Meta({
    this.currentPage,
    this.from,
    this.lastPage,
    this.links,
    this.path,
    this.perPage,
    this.to,
    this.total,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}

@JsonSerializable()
class Link {
  @JsonKey(name: "url")
  final String? url;
  @JsonKey(name: "label")
  final String? label;
  @JsonKey(name: "active")
  final bool? active;

  Link({
    this.url,
    this.label,
    this.active,
  });

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);

  Map<String, dynamic> toJson() => _$LinkToJson(this);
}
