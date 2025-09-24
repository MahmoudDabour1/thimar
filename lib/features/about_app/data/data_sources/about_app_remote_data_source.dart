import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:thimar/features/about_app/data/models/get_contact_response_model.dart';
import 'package:thimar/features/about_app/data/models/suggestions_and_complaints_response_model.dart';

import '../../../../core/networking/api_constants.dart';
import '../models/about_app_response_model.dart';
import '../models/faqs_response_model.dart';
import '../models/policy_response_model.dart';
import '../models/suggestions_and_complaints_request_body.dart';
import '../models/terms_response_model.dart';

part 'about_app_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class AboutAppRemoteDataSource {
  factory AboutAppRemoteDataSource(Dio dio, {String baseUrl}) =
      _AboutAppRemoteDataSource;

  @GET(ApiConstants.aboutAppEndPoint)
  Future<AboutAppResponseModel> getAboutApp();

  @GET(ApiConstants.termsEndPoint)
  Future<TermsResponseModel> getTerms();

  @GET(ApiConstants.faqsEndPoint)
  Future<FaqsResponseModel> getFeqs();

  @GET(ApiConstants.policyEndPoint)
  Future<PolicyResponseModel> getPolicy();

  @POST(ApiConstants.suggestionsAndComplaintsEndPoint)
  Future<SuggestionsAndComplaintsResponseModel> sendSuggestionsAndComplaints(
      @Body()
      SuggestionsAndComplaintsRequestBody suggestionsAndComplaintsRequestBody);

  @GET(ApiConstants.getContactEndPoint)
  Future<GetContactResponseModel> getContactData();
}
