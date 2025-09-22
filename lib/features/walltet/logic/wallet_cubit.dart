import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/features/walltet/data/models/charge_wallet_request_body.dart';
import 'package:thimar/features/walltet/data/repos/wallet_repo.dart';
import 'package:thimar/features/walltet/logic/wallet_state.dart';

import '../../../core/helpers/helper_methods.dart';

class WalletCubit extends Cubit<WalletState> {
  final WalletRepo walletRepo;

  WalletCubit(this.walletRepo) : super(WalletState.initial());
  final formKey = GlobalKey<FormState>();
  final amountController = TextEditingController();

  Future<void> getWalletData() async {
    emit(WalletState.getWalletLoading());
    final response = await walletRepo.getWalletData();
    response.when(success: (data) {
      emit(WalletState.getWalletSuccess(data));
    }, failure: (error) {
      emit(WalletState.getWalletFailure(error.message.toString()));
    });
  }

  Future<void> chargeWallet(BuildContext context) async {
    if (!formKey.currentState!.validate()) return;
    emit(WalletState.chargeWalletLoading());
    final response = await walletRepo.chargeWallet(ChargeWalletRequestBody(
        amount: amountController.text, transactionId: "1111"));
    response.when(success: (data) {
      emit(WalletState.chargeWalletSuccess(data));
      showToast(message: data.message.toString());

      // context.pop();
      // getWalletData();
    }, failure: (error) {
      emit(
        WalletState.chargeWalletFailure(
          error.message.toString(),
        ),
      );
    });
  }
}
