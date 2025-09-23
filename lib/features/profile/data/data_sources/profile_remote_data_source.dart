import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:thimar/features/profile/data/models/about_app_response_model.dart';
import 'package:thimar/features/profile/data/models/faqs_response_model.dart';
import 'package:thimar/features/profile/data/models/policy_response_model.dart';
import 'package:thimar/features/profile/data/models/terms_response_model.dart';
import 'package:thimar/features/profile/data/models/update_profile_data_response_model.dart';

import '../../../../core/networking/api_constants.dart';
import '../models/get_profile_response_model.dart';

part 'profile_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ProfileRemoteDataSource {
  factory ProfileRemoteDataSource(Dio dio, {String baseUrl}) =
      _ProfileRemoteDataSource;

  @GET(ApiConstants.getProfileEndPoint)
  Future<GetProfileResponseModel> getProfile();

  @POST(ApiConstants.updateProfileDataEndPoint)
  @MultiPart()
  Future<UpdateProfileDataResponseModel> updateProfileData(
    @Body() FormData body,
  );

  @GET(ApiConstants.aboutAppEndPoint)
  Future<AboutAppResponseModel> getAboutApp();

  @GET(ApiConstants.termsEndPoint)
  Future<TermsResponseModel> getTerms();

  @GET(ApiConstants.faqsEndPoint)
  Future<FaqsResponseModel> getFeqs();

  @GET(ApiConstants.policyEndPoint)
  Future<PolicyResponseModel> getPolicy();
}
