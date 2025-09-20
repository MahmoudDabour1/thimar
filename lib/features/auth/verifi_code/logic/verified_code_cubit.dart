import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/routing/routes.dart';
import 'package:thimar/features/auth/verifi_code/data/models/check_otp_request_body.dart';
import 'package:thimar/features/auth/verifi_code/data/models/resend_code_request_body.dart';
import 'package:thimar/features/auth/verifi_code/data/models/verified_account_request_body.dart';
import 'package:thimar/features/auth/verifi_code/data/repos/verified_code_repos.dart';
import 'package:thimar/features/auth/verifi_code/logic/verified_code_state.dart';

import '../../../../core/helpers/helper_methods.dart';

class VerifiedCodeCubit extends Cubit<VerifiedCodeState> {
  final VerifiedCodeRepos verifiedCodeRepos;

  VerifiedCodeCubit(this.verifiedCodeRepos)
      : super(VerifiedCodeState.initial());

  final codeController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future<void> checkCode(String? phone, BuildContext context) async {
    emit(VerifiedCodeState.loading());
    final response = await verifiedCodeRepos.checkOtpCode(
      CheckOtpRequestBody(
        phone: phone.toString(),
        code: codeController.text,
      ),
    );
    response.when(success: (data) {
      emit(VerifiedCodeState.success(data));
      showToast(message: data.message.toString());
      context.pushNamed(
        Routes.newPasswordScreen,
        arguments: {
          "phone": phone,
          "code": codeController.text,
        },
      );
    }, failure: (error) {
      showToast(message: error.message.toString());

      emit(VerifiedCodeState.error(error: error.message.toString()));
    });
  }

  Future<void> verifiedAccount(String? phone, BuildContext context) async {
    emit(VerifiedCodeState.loading());
    final response = await verifiedCodeRepos.verifiedAccount(
      VerifiedAccountRequestBody(
        phone: phone.toString(),
        code: codeController.text,
        deviceToken: "test",
        type: Platform.operatingSystem,
      ),
    );
    response.when(success: (data) {
      emit(VerifiedCodeState.success(data));
      showToast(message: "تم تفعيل الحساب بنجاح");
      context.pushNameAndRemoveUntil(
        Routes.loginScreen,
        predicate: (route) => false,
      );
    }, failure: (error) {
      showToast(message: error.message.toString());

      emit(VerifiedCodeState.error(error: error.message.toString()));
    });
  }

  Future<void> resendCode(String? phone) async {
    emit(VerifiedCodeState.resendCodeLoading());
    final response = await verifiedCodeRepos
        .resendCode(ResendCodeRequestBody(phone: phone.toString()));
    response.when(success: (data) {
      emit(VerifiedCodeState.resendCodeSuccess(data));
      showToast(message: data.message.toString());
    }, failure: (error) {
      emit(VerifiedCodeState.resendCodeError(error: error.message.toString()));
      showToast(message: error.message.toString());
    });
  }
}
