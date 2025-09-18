import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:thimar/features/auth/forget_password/data/models/forget_password_response_model.dart';

import '../../../../../core/networking/api_constants.dart';
import '../models/forget_password_request_body.dart';

part 'forget_password_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ForgetPasswordRemoteDataSource {
  factory ForgetPasswordRemoteDataSource(Dio dio, {String baseUrl}) =
      _ForgetPasswordRemoteDataSource;

  @POST(ApiConstants.forgetPasswordEndPoint)
  Future<ForgetPasswordResponseModel> forgetPassword(
    @Body() ForgetPasswordRequestBody forgetPasswordRequestBody,
  );
}
