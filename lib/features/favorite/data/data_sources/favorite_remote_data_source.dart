import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:thimar/features/favorite/data/models/add_to_favorite_response_model.dart';
import 'package:thimar/features/favorite/data/models/get_favorite_response_model.dart';
import 'package:thimar/features/favorite/data/models/remove_from_favorite_response_model.dart';

import '../../../../core/networking/api_constants.dart';

part 'favorite_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class FavoriteRemoteDataSource {
  factory FavoriteRemoteDataSource(Dio dio, {String baseUrl}) =
      _FavoriteRemoteDataSource;

  @GET(ApiConstants.getFavoriteEndPoint)
  Future<GetFavoriteResponseModel> getFavorite();

  @POST(ApiConstants.addToFavoriteEndPoint)
  Future<AddToFavoriteResponseModel> addToFavorite({
    @Path() required int id,
  });

  @POST(ApiConstants.removeFromFavoriteEndPoint)
  Future<RemoveFromFavoriteResponseModel> removeFromFavorite({
    @Path() required int id,
  });
}
