import 'package:thimar/features/auth/login/presentation/data/models/login_response_model.dart';

import '../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../../core/routing/router_observer.dart';
import '../data_source/login_remote_data_source.dart';
import '../models/login_request_body.dart';

abstract class LoginRepo {
  Future<ApiResult<LoginResponseModel>> login(
      LoginRequestBody loginRequestBody);
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
      logger.e("Login error: ${error.toString()}");
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
