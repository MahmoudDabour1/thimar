import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:thimar/features/notification/data/models/delete_notification_response_model.dart';
import 'package:thimar/features/notification/data/models/get_notification_response_model.dart';
import 'package:thimar/features/notification/data/models/show_notification_details_response_model.dart';

import '../../../../core/networking/api_constants.dart';

part 'notification_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class NotificationRemoteDataSource {
  factory NotificationRemoteDataSource(Dio dio, {String baseUrl}) =
      _NotificationRemoteDataSource;

  @GET(ApiConstants.getNotificationsEndPoint)
  Future<GetNotificationResponseModel> getNotifications();

  @POST(ApiConstants.clearAllNotificationsEndPoint)
  Future<void> clearAllNotification();

  @DELETE(ApiConstants.showAndDeleteNotificationsEndPoint)
  Future<DeleteNotificationResponseModel> deleteNotification({
    @Path() required int id,
  });

  @GET(ApiConstants.showAndDeleteNotificationsEndPoint)
  Future<ShowNotificationDetailsResponseModel> showNotification({
    @Path() required int id,
  });
}
