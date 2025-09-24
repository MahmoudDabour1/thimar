import 'package:thimar/core/networking/api_error_handler.dart';
import 'package:thimar/core/networking/api_result.dart';
import 'package:thimar/features/search/data/models/search_response_model.dart';

import '../data_sources/search_remote_data_source.dart';

abstract class SearchRepo {
  Future<ApiResult<SearchResponseModel>> searchProducts({
    required String text,
    required String filter,
    required double minPrice,
    required double maxPrice,
  });

  Future<ApiResult<SearchResponseModel>> searchProductsByCategory({
    required String text,
    required String filter,
    required double minPrice,
    required double maxPrice,
    required int categoryId,
  });
}

class SearchRepoImpl extends SearchRepo {
  final SearchRemoteDataSource remoteDataSource;

  SearchRepoImpl(this.remoteDataSource);

  @override
  Future<ApiResult<SearchResponseModel>> searchProducts({
    required String text,
    required String filter,
    required double minPrice,
    required double maxPrice,
  }) async {
    try {
      final response = await remoteDataSource.searchProducts(
        text: text,
        filter: filter,
        minPrice: minPrice,
        maxPrice: maxPrice,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }

  @override
  Future<ApiResult<SearchResponseModel>> searchProductsByCategory({
    required String text,
    required String filter,
    required double minPrice,
    required double maxPrice,
    required int categoryId,
  }) async {
    try {
      final response = await remoteDataSource.searchProductsByCategory(
        categoryId: categoryId,
        text: text,
        filter: filter,
        minPrice: minPrice,
        maxPrice: maxPrice,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }
}
