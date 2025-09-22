import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:thimar/features/walltet/data/models/charge_wallet_response_model.dart';

import '../../../../core/networking/api_constants.dart';
import '../models/charge_wallet_request_body.dart';
import '../models/get_wallet_response_model.dart';

part 'wallet_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class WalletRemoteDataSource {
  factory WalletRemoteDataSource(Dio dio, {String baseUrl}) =
      _WalletRemoteDataSource;

  @GET(ApiConstants.getWalletEndPoint)
  Future<GetWalletResponseModel> getWalletData();

  @POST(ApiConstants.chargeWalletEndPoint)
  Future<ChargeWalletResponseModel> chargeWallet(
    @Body() ChargeWalletRequestBody chargeWalletRequestBody,
  );
}
