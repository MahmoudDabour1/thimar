import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:thimar/features/auth/login/presentation/data/models/login_response_model.dart';

import '../../../../../../core/networking/api_constants.dart';
import '../models/login_request_body.dart';

part 'login_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class LoginRemoteDataSource {
  factory LoginRemoteDataSource(Dio dio, {String baseUrl}) =
      _LoginRemoteDataSource;

  @POST(ApiConstants.loginEndPoint)
  Future<LoginResponseModel> login(
    @Body() LoginRequestBody loginRequestBody,
  );
}
