import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:thimar/features/auth/verifi_code/data/models/check_otp_request_body.dart';
import 'package:thimar/features/auth/verifi_code/data/models/check_otp_response_model.dart';
import 'package:thimar/features/auth/verifi_code/data/models/resend_code_request_body.dart';
import 'package:thimar/features/auth/verifi_code/data/models/resend_code_response_model.dart';
import 'package:thimar/features/auth/verifi_code/data/models/verified_account_request_body.dart';
import 'package:thimar/features/auth/verifi_code/data/models/verified_account_response_model.dart';

import '../../../../../core/networking/api_constants.dart';

part 'verified_code_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class VerifiedCodeRemoteDataSource {
  factory VerifiedCodeRemoteDataSource(Dio dio, {String baseUrl}) =
      _VerifiedCodeRemoteDataSource;

  @POST(ApiConstants.checkCodeEndPoint)
  Future<CheckOtpResponseModel> checkOtpCode(
    @Body() CheckOtpRequestBody checkOtpRequestBody,
  );

  @POST(ApiConstants.verifiedAccountEndPoint)
  Future<VerifiedAccountResponseModel> verifiedAccount(
    @Body() VerifiedAccountRequestBody verifiedAccountRequestBody,
  );

  @POST(ApiConstants.resendCodeEndPoint)
  Future<ResendCodeResponseModel> resendCode(
    @Body() ResendCodeRequestBody resendCodeRequestBody,
  );
}
