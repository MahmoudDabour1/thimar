import 'package:thimar/core/networking/api_result.dart';
import 'package:thimar/features/auth/new_password/data/models/new_password_response_model.dart';

import '../../../../../core/networking/api_error_handler.dart';
import '../data_sources/new_password_remote_data_source.dart';
import '../models/new_password_request_body.dart';

abstract class NewPasswordRepo {
  Future<ApiResult<NewPasswordResponseModel>> newPassword(
      NewPasswordRequestBody newPasswordRequestBody);
}

class NewPasswordRepoImpl implements NewPasswordRepo {
  final NewPasswordRemoteDataSource newPasswordRemoteDataSource;

  NewPasswordRepoImpl({required this.newPasswordRemoteDataSource});

  @override
  Future<ApiResult<NewPasswordResponseModel>> newPassword(
      NewPasswordRequestBody newPasswordRequestBody) async {
    try {
      final response =
          await newPasswordRemoteDataSource.newPassword(newPasswordRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
