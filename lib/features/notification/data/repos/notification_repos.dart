import 'package:thimar/core/networking/api_error_handler.dart';
import 'package:thimar/features/notification/data/data_sources/notification_remote_data_source.dart';
import 'package:thimar/features/notification/data/models/delete_notification_response_model.dart';
import 'package:thimar/features/notification/data/models/get_notification_response_model.dart';
import 'package:thimar/features/notification/data/models/show_notification_details_response_model.dart';

import '../../../../core/networking/api_result.dart';

abstract class NotificationRepos {
  Future<ApiResult<GetNotificationResponseModel>> getNotifications();

  Future<ApiResult<DeleteNotificationResponseModel>> deleteNotifications(
      {required int id});

  Future<ApiResult<ShowNotificationDetailsResponseModel>> showNotification(
      {required int id});

  Future<ApiResult<void>> clearAllNotifications();
}

class NotificationReposImpl implements NotificationRepos {
  final NotificationRemoteDataSource remoteDataSource;

  NotificationReposImpl({required this.remoteDataSource});

  @override
  Future<ApiResult<void>> clearAllNotifications() async {
    try {
      final response = await remoteDataSource.clearAllNotification();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<DeleteNotificationResponseModel>> deleteNotifications(
      {required int id}) async {
    try {
      final response = await remoteDataSource.deleteNotification(id: id);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<GetNotificationResponseModel>> getNotifications() async {
    try {
      final response = await remoteDataSource.getNotifications();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<ShowNotificationDetailsResponseModel>> showNotification(
      {required int id}) async {
    try {
      final response = await remoteDataSource.showNotification(id: id);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
