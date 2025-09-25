import 'package:thimar/core/networking/api_error_handler.dart';
import 'package:thimar/core/networking/api_result.dart';
import 'package:thimar/features/checkout/data/data_sources/checkout_remote_data_source.dart';
import 'package:thimar/features/checkout/data/models/store_order_request_body.dart';
import 'package:thimar/features/checkout/data/models/store_order_response_model.dart';

abstract class CheckoutRepo {
  Future<ApiResult<StoreOrderResponseModel>> storeOrder(
      StoreOrderRequestBody storeOrderRequestBody);
}

class CheckoutRepoImp implements CheckoutRepo {
  final CheckoutRemoteDataSource checkoutRemoteDataSource;

  CheckoutRepoImp({required this.checkoutRemoteDataSource});

  @override
  Future<ApiResult<StoreOrderResponseModel>> storeOrder(
      StoreOrderRequestBody storeOrderRequestBody) async {
    try {
      final response =
          await checkoutRemoteDataSource.storeOrder(storeOrderRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
