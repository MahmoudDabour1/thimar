import 'package:thimar/features/walltet/data/models/charge_wallet_response_model.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../data_sources/wallet_remote_data_source.dart';
import '../models/charge_wallet_request_body.dart';
import '../models/get_wallet_response_model.dart';

abstract class WalletRepo {
  Future<ApiResult<GetWalletResponseModel>> getWalletData();

  Future<ApiResult<ChargeWalletResponseModel>> chargeWallet(
      ChargeWalletRequestBody chargeWalletRequestBody);
}

class WalletRepoImpl implements WalletRepo {
  final WalletRemoteDataSource walletRemoteDataSource;

  WalletRepoImpl({required this.walletRemoteDataSource});

  @override
  Future<ApiResult<GetWalletResponseModel>> getWalletData() async {
    try {
      final response = await walletRemoteDataSource.getWalletData();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<ChargeWalletResponseModel>> chargeWallet(
      ChargeWalletRequestBody chargeWalletRequestBody) async {
    try {
      final response =
          await walletRemoteDataSource.chargeWallet(chargeWalletRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
