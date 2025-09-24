import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/networking/api_constants.dart';

part 'notification_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class NotificationRemoteDataSource {
  factory NotificationRemoteDataSource(Dio dio, {String baseUrl}) =
      _NotificationRemoteDataSource;

  @GET(ApiConstants.getNotificationsEndPoint)
  Future<void> getNotifications();

  @POST(ApiConstants.clearAllNotificationsEndPoint)
  Future<void> clearAllNotification();

  @DELETE(ApiConstants.showAndDeleteNotificationsEndPoint)
  Future<void> deleteNotification({
    @Path() required int id,
  });

  @GET(ApiConstants.showAndDeleteNotificationsEndPoint)
  Future<void> showNotification({
    @Path() required int id,
  });
}
