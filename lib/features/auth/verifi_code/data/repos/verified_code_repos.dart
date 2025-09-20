import 'package:thimar/core/networking/api_result.dart';
import 'package:thimar/features/auth/verifi_code/data/models/check_otp_response_model.dart';
import 'package:thimar/features/auth/verifi_code/data/models/resend_code_request_body.dart';
import 'package:thimar/features/auth/verifi_code/data/models/resend_code_response_model.dart';
import 'package:thimar/features/auth/verifi_code/data/models/verified_account_request_body.dart';
import 'package:thimar/features/auth/verifi_code/data/models/verified_account_response_model.dart';

import '../../../../../core/networking/api_error_handler.dart';
import '../data_sources/verified_code_remote_data_source.dart';
import '../models/check_otp_request_body.dart';

abstract class VerifiedCodeRepos {
  Future<ApiResult<CheckOtpResponseModel>> checkOtpCode(
    CheckOtpRequestBody checkOtpRequestBody,
  );

  Future<ApiResult<VerifiedAccountResponseModel>> verifiedAccount(
    VerifiedAccountRequestBody verifiedAccountRequestBody,
  );

  Future<ApiResult<ResendCodeResponseModel>> resendCode(
    ResendCodeRequestBody resendCodeRequestBody,
  );
}

class VerifiedCodeReposImpl implements VerifiedCodeRepos {
  final VerifiedCodeRemoteDataSource verifiedCodeRemoteDataSource;

  VerifiedCodeReposImpl({required this.verifiedCodeRemoteDataSource});

  @override
  Future<ApiResult<CheckOtpResponseModel>> checkOtpCode(
      CheckOtpRequestBody checkOtpRequestBody) async {
    try {
      final response =
          await verifiedCodeRemoteDataSource.checkOtpCode(checkOtpRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<VerifiedAccountResponseModel>> verifiedAccount(
      VerifiedAccountRequestBody verifiedAccountRequestBody) async {
    try {
      final response = await verifiedCodeRemoteDataSource
          .verifiedAccount(verifiedAccountRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<ResendCodeResponseModel>> resendCode(
      ResendCodeRequestBody resendCodeRequestBody) async {
    try {
      final response =
          await verifiedCodeRemoteDataSource.resendCode(resendCodeRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
