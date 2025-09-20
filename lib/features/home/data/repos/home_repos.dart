import 'package:thimar/core/networking/api_result.dart';
import 'package:thimar/features/home/data/models/categories_response_model.dart';
import 'package:thimar/features/home/data/models/get_category_products_response_model.dart';
import 'package:thimar/features/home/data/models/slider_response_model.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../data_sources/home_remote_data_source.dart';

abstract class HomeRepos {
  Future<ApiResult<SliderResponseModel>> getSliders();

  Future<ApiResult<CategoriesResponseModel>> getCategories();

  Future<ApiResult<GetCategoryProductsResponseModel>> getCategoryProduct(int id);
}

class HomeReposImpl implements HomeRepos {
  final HomeRemoteDataSource remoteDataSource;

  HomeReposImpl({
    required this.remoteDataSource,
  });

  @override
  Future<ApiResult<SliderResponseModel>> getSliders() async {
    try {
      final response = await remoteDataSource.getSliders();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<CategoriesResponseModel>> getCategories() async {
    try {
      final response = await remoteDataSource.getCategories();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<GetCategoryProductsResponseModel>>
      getCategoryProduct(int id) async {
    try {
      final response = await remoteDataSource.getCategoryProducts(id);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
