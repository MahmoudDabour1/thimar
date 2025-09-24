import 'package:thimar/core/networking/api_error_handler.dart';
import 'package:thimar/core/networking/api_result.dart';
import 'package:thimar/features/favorite/data/models/add_to_favorite_response_model.dart';
import 'package:thimar/features/favorite/data/models/get_favorite_response_model.dart';
import 'package:thimar/features/favorite/data/models/remove_from_favorite_response_model.dart';

import '../data_sources/favorite_remote_data_source.dart';

abstract class FavoriteRepos {
  Future<ApiResult<GetFavoriteResponseModel>> getFavorite();

  Future<ApiResult<AddToFavoriteResponseModel>> addToFavorite(
      {required int id});

  Future<ApiResult<RemoveFromFavoriteResponseModel>> removeFromFavorite(
      {required int id});
}

class FavoriteReposImpl implements FavoriteRepos {
  final FavoriteRemoteDataSource remoteDataSource;

  FavoriteReposImpl({required this.remoteDataSource});

  @override
  Future<ApiResult<AddToFavoriteResponseModel>> addToFavorite(
      {required int id}) async {
    try {
      final response = await remoteDataSource.addToFavorite(id: id);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<RemoveFromFavoriteResponseModel>> removeFromFavorite(
      {required int id}) async {
    try {
      final response = await remoteDataSource.removeFromFavorite(id: id);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<GetFavoriteResponseModel>> getFavorite() async {
    try {
      final response = await remoteDataSource.getFavorite();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
