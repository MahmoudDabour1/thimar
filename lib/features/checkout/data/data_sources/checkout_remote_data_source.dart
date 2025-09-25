import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:thimar/features/checkout/data/models/store_order_response_model.dart';

import '../../../../core/networking/api_constants.dart';
import '../models/store_order_request_body.dart';

part 'checkout_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class CheckoutRemoteDataSource {
  factory CheckoutRemoteDataSource(Dio dio, {String baseUrl}) =
      _CheckoutRemoteDataSource;

  @POST(ApiConstants.storeOrderEndPoint)
  Future<StoreOrderResponseModel> storeOrder(
    @Body() StoreOrderRequestBody body,
  );
}
