import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:thimar/features/cart/data/models/add_to_cart_response_model.dart';
import 'package:thimar/features/cart/data/models/delete_cart_response_model.dart';
import 'package:thimar/features/cart/data/models/get_cart_response_model.dart';

import '../../../../core/networking/api_constants.dart';
import '../models/add_to_cart_request_body.dart';

part 'cart_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class CartRemoteDataSource {
  factory CartRemoteDataSource(Dio dio, {String baseUrl}) =
      _CartRemoteDataSource;

  @POST(ApiConstants.addRoCartEndPoint)
  Future<AddToCartResponseModel> addToCart(
    @Body() AddToCartRequestBody addToCartRequestBody,
  );

  @GET(ApiConstants.addRoCartEndPoint)
  Future<GetCartResponseModel> getCartData();

  @DELETE(ApiConstants.deleteCartEndPoint)
  Future<DeleteCartResponseModel> deleteCartData(
    @Path("id") int id,
  );
}
