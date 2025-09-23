import 'package:thimar/features/about_app/data/data_sources/about_app_remote_data_source.dart';
import 'package:thimar/features/about_app/data/models/get_contact_response_model.dart';
import 'package:thimar/features/about_app/data/models/suggestions_and_complaints_response_model.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../models/about_app_response_model.dart';
import '../models/faqs_response_model.dart';
import '../models/policy_response_model.dart';
import '../models/suggestions_and_complaints_request_body.dart';
import '../models/terms_response_model.dart';

abstract class AboutAppRepos {
  Future<ApiResult<AboutAppResponseModel>> getAboutApp();

  Future<ApiResult<TermsResponseModel>> getTerms();

  Future<ApiResult<FaqsResponseModel>> getFaqs();

  Future<ApiResult<PolicyResponseModel>> getPolicy();

  Future<ApiResult<SuggestionsAndComplaintsResponseModel>>
      sendSuggestionsAndComplaints(
          SuggestionsAndComplaintsRequestBody
              suggestionsAndComplaintsRequestBody);

  Future<ApiResult<GetContactResponseModel>> getContactData();
}

class AboutAppReposImpl implements AboutAppRepos {
  final AboutAppRemoteDataSource aboutAppRemoteDataSource;

  AboutAppReposImpl({required this.aboutAppRemoteDataSource});

  @override
  Future<ApiResult<AboutAppResponseModel>> getAboutApp() async {
    try {
      final response = await aboutAppRemoteDataSource.getAboutApp();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<TermsResponseModel>> getTerms() async {
    try {
      final response = await aboutAppRemoteDataSource.getTerms();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<FaqsResponseModel>> getFaqs() async {
    try {
      final response = await aboutAppRemoteDataSource.getFeqs();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<PolicyResponseModel>> getPolicy() async {
    try {
      final response = await aboutAppRemoteDataSource.getPolicy();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<SuggestionsAndComplaintsResponseModel>>
      sendSuggestionsAndComplaints(
          SuggestionsAndComplaintsRequestBody
              suggestionsAndComplaintsRequestBody) async {
    try {
      final response = await aboutAppRemoteDataSource
          .sendSuggestionsAndComplaints(suggestionsAndComplaintsRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<GetContactResponseModel>> getContactData() async {
    try {
      final response = await aboutAppRemoteDataSource.getContactData();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
