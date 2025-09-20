import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:thimar/core/networking/api_constants.dart';
import 'package:thimar/features/auth/register/presentation/data/models/register_request_body.dart';
import 'package:thimar/features/auth/register/presentation/data/models/register_response_model.dart';

part 'register_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class RegisterRemoteDataSource {
  factory RegisterRemoteDataSource(Dio dio, {String baseUrl}) =
      _RegisterRemoteDataSource;

  @POST(ApiConstants.clientRegisterEndPoint)
  Future<RegisterResponseModel> register(
    @Body() RegisterRequestBody registerRequestBody,
  );
}
