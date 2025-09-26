import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_state.freezed.dart';

@freezed
class WalletState<T> with _$WalletState {
  const factory WalletState.initial() = WalletInitial;

  const factory WalletState.getWalletLoading() = GetWalletLoading;

  const factory WalletState.getWalletSuccess(T data) = GetWalletsSuccess;

  const factory WalletState.getWalletFailure(String errorMessage) =
      GetWalletFailure;

  const factory WalletState.chargeWalletLoading() = ChargeWalletLoading;

  const factory WalletState.chargeWalletSuccess(T data) = ChargeWalletsSuccess;

  const factory WalletState.chargeWalletFailure(String errorMessage) =
      ChargeWalletFailure;

  const factory WalletState.updateWallet() = updateWallet;
}
