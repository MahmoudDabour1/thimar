import 'package:thimar/features/auth/login/data/models/logout_response_model.dart';

import '../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../core/networking/api_result.dart';
import '../data_source/login_remote_data_source.dart';
import '../models/login_request_body.dart';
import '../models/login_response_model.dart';

abstract class LoginRepo {
  Future<ApiResult<LoginResponseModel>> login(
      LoginRequestBody loginRequestBody);

  Future<ApiResult<LogoutResponseModel>> logout();
}

class LoginRepoImpl implements LoginRepo {
  final LoginRemoteDataSource loginRemoteDataSource;

  LoginRepoImpl({required this.loginRemoteDataSource});

  @override
  Future<ApiResult<LoginResponseModel>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await loginRemoteDataSource.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<LogoutResponseModel>> logout() async {
    try {
      final response = await loginRemoteDataSource.logout();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
