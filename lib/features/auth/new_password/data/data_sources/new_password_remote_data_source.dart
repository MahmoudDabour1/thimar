import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:thimar/features/auth/new_password/data/models/new_password_request_body.dart';
import 'package:thimar/features/auth/new_password/data/models/new_password_response_model.dart';

import '../../../../../core/networking/api_constants.dart';

part 'new_password_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class NewPasswordRemoteDataSource {
  factory NewPasswordRemoteDataSource(Dio dio, {String baseUrl}) =
      _NewPasswordRemoteDataSource;
  @POST(ApiConstants.newPasswordPoint)
  Future<NewPasswordResponseModel> newPassword(
    @Body() NewPasswordRequestBody newPasswordRequestBody,
  );
}
