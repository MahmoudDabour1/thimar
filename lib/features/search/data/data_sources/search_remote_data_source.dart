import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:thimar/features/search/data/models/search_response_model.dart';

import '../../../../core/networking/api_constants.dart';
part 'search_remote_data_source.g.dart';
@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class SearchRemoteDataSource {

  factory SearchRemoteDataSource(Dio dio, {String baseUrl}) = _SearchRemoteDataSource;

  @GET(ApiConstants.searchEndPoint)
  Future<SearchResponseModel> searchProducts({
    @Query("keyword") required String text,
    @Query("filter") required String filter,
    @Query("min_price") required double minPrice,
    @Query("max_price") required double maxPrice,
  });

  @GET(ApiConstants.searchByCategoryEndPoint)
  Future<SearchResponseModel> searchProductsByCategory({
    @Path("id") required int categoryId,
    @Query("keyword") required String text,
    @Query("filter") required String filter,
    @Query("min_price") required double minPrice,
    @Query("max_price") required double maxPrice,
  });
}