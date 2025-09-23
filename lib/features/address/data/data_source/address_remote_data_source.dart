import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:thimar/features/address/data/models/delete_address_response_model.dart';
import 'package:thimar/features/address/data/models/get_address_response_model.dart';
import 'package:thimar/features/address/data/models/insert_address_response_model.dart';
import 'package:thimar/features/address/data/models/update_address_response_model.dart';

import '../../../../core/networking/api_constants.dart';
import '../models/insert_address_request_body.dart';

part 'address_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class AddressRemoteDataSource {
  factory AddressRemoteDataSource(Dio dio, {String baseUrl}) =
      _AddressRemoteDataSource;

  @GET(ApiConstants.getAddressEndPoint)
  Future<GetAddressResponseModel> getAddresses();

  @POST(ApiConstants.getAddressEndPoint)
  Future<InsertAddressResponseModel> insertAddresses(
    @Body() InsertAddressRequestBody insertAddressRequestBody,
  );

  @DELETE(ApiConstants.deleteAndUpdateAddressEndPoint)
  Future<DeleteAddressResponseModel> deleteAddresses(
    @Path("id")  int addressId,
  );

  @PUT(ApiConstants.deleteAndUpdateAddressEndPoint)
  Future<UpdateAddressResponseModel> updateAddresses({
    @Body() required InsertAddressRequestBody insertAddressRequestBody,
    @Path("id") required int addressId,
  });
}
