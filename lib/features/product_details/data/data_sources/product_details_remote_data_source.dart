import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:thimar/features/product_details/data/models/get_product_details_response_model.dart';

import '../../../../core/networking/api_constants.dart';

part 'product_details_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ProductDetailsRemoteDataSource {
  factory ProductDetailsRemoteDataSource(Dio dio, {String baseUrl}) =
      _ProductDetailsRemoteDataSource;

  @GET(ApiConstants.productDetailsEndPoint)
  Future<GetProductDetailsResponseModel> getProductDetails(
    @Path("id") int productId,
  );
}
