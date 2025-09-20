import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:thimar/features/home/data/models/categories_response_model.dart';
import 'package:thimar/features/home/data/models/slider_response_model.dart';

import '../../../../core/networking/api_constants.dart';

part 'home_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeRemoteDataSource {
  factory HomeRemoteDataSource(Dio dio, {String baseUrl}) =
      _HomeRemoteDataSource;

  @GET(ApiConstants.sliderEndPoint)
  Future<SliderResponseModel> getSliders();

  @GET(ApiConstants.categoriesEndPoint)
  Future<CategoriesResponseModel> getCategories();
}
