import 'package:thimar/core/networking/api_error_handler.dart';
import 'package:thimar/features/product_details/data/data_sources/product_details_remote_data_source.dart';
import 'package:thimar/features/product_details/data/models/get_product_details_response_model.dart';

import '../../../../core/networking/api_result.dart';

abstract class ProductDetailsRepos {
  Future<ApiResult<GetProductDetailsResponseModel>> productDetails(
      int productId);
}

class ProductDetailsReposImpl implements ProductDetailsRepos {
  final ProductDetailsRemoteDataSource remoteDataSource;

  ProductDetailsReposImpl({
    required this.remoteDataSource,
  });

  @override
  Future<ApiResult<GetProductDetailsResponseModel>> productDetails(
      int productId) async {
    try {
      final response = await remoteDataSource.getProductDetails(productId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
