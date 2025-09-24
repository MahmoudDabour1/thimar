import 'package:thimar/core/networking/api_result.dart';
import 'package:thimar/features/auth/forget_password/data/data_sources/forget_password_remote_data_source.dart';
import 'package:thimar/features/auth/forget_password/data/models/forget_password_request_body.dart';
import 'package:thimar/features/auth/forget_password/data/models/forget_password_response_model.dart';

import '../../../../../core/networking/api_error_handler.dart';

abstract class ForgetPasswordRepo {
  Future<ApiResult<ForgetPasswordResponseModel>> forgetPassword(
      ForgetPasswordRequestBody forgetPasswordRequestBody);
}

class ForgetPasswordRepoImpl implements ForgetPasswordRepo {
  final ForgetPasswordRemoteDataSource forgetPasswordRemoteDataSource;

  ForgetPasswordRepoImpl({required this.forgetPasswordRemoteDataSource});

  @override
  Future<ApiResult<ForgetPasswordResponseModel>> forgetPassword(
      ForgetPasswordRequestBody forgetPasswordRequestBody) async {
    try {
      final response = await forgetPasswordRemoteDataSource
          .forgetPassword(forgetPasswordRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
