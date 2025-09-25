import 'package:bloc/bloc.dart';
import 'package:thimar/features/notification/data/repos/notification_repos.dart';

import 'notification_state.dart';

class NotificationCubit extends Cubit<NotificationState> {
  final NotificationRepos notificationRepos;

  NotificationCubit(this.notificationRepos)
      : super(NotificationState.initial());

  Future<void> getNotifications() async {
    emit(NotificationState.getNotificationsLoading());
    final response = await notificationRepos.getNotifications();
    response.when(
      success: (data) {
        emit(NotificationState.getNotificationsSuccess(data));
      },
      failure: (error) {
        emit(NotificationState.getNotificationsFailure(
            error.message.toString()));
      },
    );
  }

  Future<void> deleteNotification(int id) async {
    emit(NotificationState.deleteNotificationsLoading());
    final response = await notificationRepos.deleteNotifications(id: id);
    response.when(
      success: (data) {
        emit(NotificationState.deleteNotificationsSuccess(data));
      },
      failure: (error) {
        emit(NotificationState.deleteNotificationsFailure(
            error.message.toString()));
      },
    );
  }

  // Future<void> clearAllNotifications() async {
  //   emit(NotificationState.clearAllNotificationsLoading());
  //   final response = await notificationRepos.clearAllNotifications();
  //   response.when(
  //     success: (data) {
  //       emit(NotificationState.clearAllNotificationsSuccess(data));
  //     },
  //     failure: (error) {
  //       emit(NotificationState.clearAllNotificationsFailure(
  //           error.message.toString()));
  //     },
  //   );
  // }

  Future<void> showOneNotification(int id) async {
    emit(NotificationState.showOneNotificationsLoading());
    final response = await notificationRepos.showNotification(id: id);
    response.when(
      success: (data) {
        emit(NotificationState.showOneNotificationsSuccess(data));
      },
      failure: (error) {
        emit(NotificationState.showOneNotificationsFailure(
            error.message.toString()));
      },
    );
  }
}
