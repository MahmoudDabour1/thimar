import 'package:thimar/features/address/data/models/delete_address_response_model.dart';
import 'package:thimar/features/address/data/models/get_address_response_model.dart';
import 'package:thimar/features/address/data/models/insert_address_response_model.dart';
import 'package:thimar/features/address/data/models/insert_address_request_body.dart';
import 'package:thimar/features/address/data/models/update_address_response_model.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../data_source/address_remote_data_source.dart';

abstract class AddressRepo {
  Future<ApiResult<GetAddressResponseModel>> getAddresses();

  Future<ApiResult<InsertAddressResponseModel>> insertAddresses(
      InsertAddressRequestBody insertAddressRequestBody);

  Future<ApiResult<UpdateAddressResponseModel>> updateAddresses(
      {required InsertAddressRequestBody insertAddressRequestBody,
      required int id});

  Future<ApiResult<DeleteAddressResponseModel>> deleteAddresses(int id);
}

class AddressRepoImpl implements AddressRepo {
  final AddressRemoteDataSource addressRemoteDataSource;

  AddressRepoImpl({required this.addressRemoteDataSource});

  @override
  Future<ApiResult<GetAddressResponseModel>> getAddresses() async {
    try {
      final response = await addressRemoteDataSource.getAddresses();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<InsertAddressResponseModel>> insertAddresses(
      InsertAddressRequestBody insertAddressRequestBody) async {
    try {
      final response = await addressRemoteDataSource
          .insertAddresses(insertAddressRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<UpdateAddressResponseModel>> updateAddresses(
      {required InsertAddressRequestBody insertAddressRequestBody,
      required int id}) async {
    try {
      final response = await addressRemoteDataSource.updateAddresses(
          insertAddressRequestBody: insertAddressRequestBody, addressId: id);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<DeleteAddressResponseModel>> deleteAddresses(int id) async {
    try {
      final response = await addressRemoteDataSource.deleteAddresses(id);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
