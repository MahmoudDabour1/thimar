import 'package:thimar/core/networking/api_error_handler.dart';
import 'package:thimar/core/networking/api_result.dart';
import 'package:thimar/features/cart/data/data_sources/cart_remote_data_source.dart';
import 'package:thimar/features/cart/data/models/add_to_cart_request_body.dart';
import 'package:thimar/features/cart/data/models/add_to_cart_response_model.dart';
import 'package:thimar/features/cart/data/models/delete_cart_response_model.dart';
import 'package:thimar/features/cart/data/models/get_cart_response_model.dart';

import '../models/update_cart_response_model.dart';

abstract class CartRepo {
  Future<ApiResult<AddToCartResponseModel>> addToCart(
      AddToCartRequestBody requestBody);

  Future<ApiResult<GetCartResponseModel>> getCartData();

  Future<ApiResult<DeleteCartResponseModel>> deleteCartData(int id);

  Future<ApiResult<UpdateCartResponseModel>> updateCartData(int id, int amount);
}

class CartRepoImpl implements CartRepo {
  final CartRemoteDataSource remoteDataSource;

  CartRepoImpl({
    required this.remoteDataSource,
  });

  @override
  Future<ApiResult<AddToCartResponseModel>> addToCart(
      AddToCartRequestBody requestBody) async {
    try {
      final response = await remoteDataSource.addToCart(requestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<GetCartResponseModel>> getCartData() async {
    try {
      final response = await remoteDataSource.getCartData();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<DeleteCartResponseModel>> deleteCartData(int id) async {
    try {
      final response = await remoteDataSource.deleteCartData(id);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<UpdateCartResponseModel>> updateCartData(
      int id, int amount) async {
    try {
      final response = await remoteDataSource.updateCartData(id, amount);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
