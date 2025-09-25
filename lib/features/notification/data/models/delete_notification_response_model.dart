import 'package:json_annotation/json_annotation.dart';

part 'delete_notification_response_model.g.dart';

@JsonSerializable()
class DeleteNotificationResponseModel {
  @JsonKey(name: "data")
  final Data? data;
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "message")
  final String? message;

  DeleteNotificationResponseModel({
    this.data,
    this.status,
    this.message,
  });

  factory DeleteNotificationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteNotificationResponseModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeleteNotificationResponseModelToJson(this);
}

@JsonSerializable()
class Data {
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
  final String? readAt;
  @JsonKey(name: "image")
  final String? image;

  Data({
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

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
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
