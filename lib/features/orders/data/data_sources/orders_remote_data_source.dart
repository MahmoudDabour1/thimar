import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:thimar/features/orders/data/models/cancel_order_response_model.dart';
import 'package:thimar/features/orders/data/models/get_current_orders_response_model.dart';
import 'package:thimar/features/orders/data/models/get_finish_orders_response_model.dart';
import 'package:thimar/features/orders/data/models/order_details_response_model.dart';

import '../../../../core/networking/api_constants.dart';

part 'orders_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class OrdersRemoteDataSource {
  factory OrdersRemoteDataSource(Dio dio, {String baseUrl}) =
      _OrdersRemoteDataSource;

  @GET(ApiConstants.getCurrentOrderEndPoint)
  Future<GetCurrentOrdersResponseModel> getCurrentOrders();

  @GET(ApiConstants.getFinishOrderEndPoint)
  Future<GetFinishOrdersResponseModel> getFinishOrders();

  @GET(ApiConstants.orderDetailsEndPoint)
  Future<OrdersDetailsResponseModel> getOrderDetails({
    @Path() required int id,
  });

  @POST(ApiConstants.cancelOrderEndPoint)
  Future<CancelOrderResponseModel> cancelOrder({
    @Path() required int id,
  });
}
