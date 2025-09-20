import 'package:thimar/core/networking/api_error_handler.dart';
import 'package:thimar/core/networking/api_result.dart';
import 'package:thimar/features/auth/register/presentation/data/data_sources/register_remote_data_source.dart';
import 'package:thimar/features/auth/register/presentation/data/models/register_request_body.dart';
import 'package:thimar/features/auth/register/presentation/data/models/register_response_model.dart';

abstract class RegisterRepo {
  Future<ApiResult<RegisterResponseModel>> register(
      RegisterRequestBody registerRequestBody);
}

class RegisterRepoImpl implements RegisterRepo {
  final RegisterRemoteDataSource registerRemoteDataSource;

  RegisterRepoImpl({required this.registerRemoteDataSource});

  @override
  Future<ApiResult<RegisterResponseModel>> register(
      RegisterRequestBody registerRequestBody) async {
    try {
      final response =
          await registerRemoteDataSource.register(registerRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
