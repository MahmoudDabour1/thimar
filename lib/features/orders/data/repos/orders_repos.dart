import 'package:thimar/core/networking/api_error_handler.dart';
import 'package:thimar/core/networking/api_result.dart';
import 'package:thimar/features/orders/data/models/cancel_order_response_model.dart';
import 'package:thimar/features/orders/data/models/get_current_orders_response_model.dart';
import 'package:thimar/features/orders/data/models/get_finish_orders_response_model.dart';
import 'package:thimar/features/orders/data/models/order_details_response_model.dart';

import '../data_sources/orders_remote_data_source.dart';

abstract class OrdersRepos {
  Future<ApiResult<GetCurrentOrdersResponseModel>> getCurrentOrders();

  Future<ApiResult<GetFinishOrdersResponseModel>> getFinishOrders();

  Future<ApiResult<OrdersDetailsResponseModel>> getOrderDetails(int id);
  Future<ApiResult<CancelOrderResponseModel>> cancelOrder(int id);
}

class OrdersReposImpl implements OrdersRepos {
  late final OrdersRemoteDataSource remoteDataSource;

  OrdersReposImpl({required this.remoteDataSource});

  @override
  Future<ApiResult<GetCurrentOrdersResponseModel>> getCurrentOrders() async {
    try {
      final response = await remoteDataSource.getCurrentOrders();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }

  @override
  Future<ApiResult<GetFinishOrdersResponseModel>> getFinishOrders() async {
    try {
      final response = await remoteDataSource.getFinishOrders();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }

  @override
  Future<ApiResult<OrdersDetailsResponseModel>> getOrderDetails(int id) async {
    try {
      final response = await remoteDataSource.getOrderDetails(id: id);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }

  @override
  Future<ApiResult<CancelOrderResponseModel>> cancelOrder(int id)async{
    try {
      final response = await remoteDataSource.cancelOrder(id: id);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }
}
