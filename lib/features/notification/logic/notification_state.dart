import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_state.freezed.dart';

@freezed
class NotificationState<T> with _$NotificationState<T> {
  const factory NotificationState.initial() = NotificationInitial;

  const factory NotificationState.getNotificationsLoading() =
      GetNotificationLoading;

  const factory NotificationState.getNotificationsSuccess(T data) =
      GetNotificationSuccess<T>;

  const factory NotificationState.getNotificationsFailure(String errorMessage) =
      GetNotificationFailure;

  const factory NotificationState.deleteNotificationsLoading() =
      DeleteNotificationLoading;

  const factory NotificationState.deleteNotificationsSuccess(T data) =
      DeleteNotificationSuccess<T>;

  const factory NotificationState.deleteNotificationsFailure(
      String errorMessage) = DeleteNotificationFailure;

  const factory NotificationState.showOneNotificationsLoading() =
      ShowOneNotificationLoading;

  const factory NotificationState.showOneNotificationsSuccess(T data) =
      ShowOneNotificationSuccess<T>;

  const factory NotificationState.showOneNotificationsFailure(
      String errorMessage) = ShowOneNotificationFailure;

  const factory NotificationState.clearAllNotificationsLoading() =
      ClearAllNotificationLoading;

  const factory NotificationState.clearAllNotificationsSuccess(T data) =
      ClearAllNotificationSuccess<T>;

  const factory NotificationState.clearAllNotificationsFailure(
      String errorMessage) = ClearAllNotificationFailure;
}
