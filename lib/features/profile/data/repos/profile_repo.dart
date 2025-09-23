import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:thimar/core/networking/api_error_handler.dart';
import 'package:thimar/core/networking/api_result.dart';
import 'package:thimar/features/profile/data/data_sources/profile_remote_data_source.dart';
import 'package:thimar/features/profile/data/models/update_profile_data_response_model.dart';

import '../models/get_profile_response_model.dart';
import '../models/update_profile_data_request_model.dart';

abstract class ProfileRepo {
  Future<ApiResult<GetProfileResponseModel>> getProfileData();

  Future<ApiResult<UpdateProfileDataResponseModel>> updateProfileData(
      UpdateProfileDataRequestModel request);
}

class ProfileRepoImpl implements ProfileRepo {
  final ProfileRemoteDataSource profileRemoteDataSource;

  ProfileRepoImpl({required this.profileRemoteDataSource});

  @override
  Future<ApiResult<GetProfileResponseModel>> getProfileData() async {
    try {
      final response = await profileRemoteDataSource.getProfile();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<UpdateProfileDataResponseModel>> updateProfileData(
      UpdateProfileDataRequestModel request) async {
    try {
      final formData = FormData.fromMap({
        "fullname": request.fullName,
        "phone": request.phone,
        if (request.cityId != null) "city_id": request.cityId,
        if (request.image != null)
          "image": await MultipartFile.fromFile(
            request.image!.path,
            filename: request.image!.path.split('/').last,
            contentType: MediaType('image', 'jpeg'),
          )
        else if (request.oldImage != null)
          "image": request.oldImage,
        if (request.password != null) "password": request.password,
        if (request.passwordConfirmation != null)
          "password_confirmation": request.passwordConfirmation,
      });
      final response =
          await profileRemoteDataSource.updateProfileData(formData);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
