import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:thimar/features/auth/login/data/models/logout_response_model.dart';

import '../../../../../../core/networking/api_constants.dart';
import '../models/login_request_body.dart';
import '../models/login_response_model.dart';

part 'login_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class LoginRemoteDataSource {
  factory LoginRemoteDataSource(Dio dio, {String baseUrl}) =
      _LoginRemoteDataSource;

  @POST(ApiConstants.loginEndPoint)
  Future<LoginResponseModel> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.logoutEndPoint)
  Future<LogoutResponseModel> logout();
}
