import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/routing/routes.dart';
import 'package:thimar/features/auth/verifi_code/data/models/check_otp_request_body.dart';
import 'package:thimar/features/auth/verifi_code/data/repos/verified_code_repos.dart';
import 'package:thimar/features/auth/verifi_code/logic/verified_code_state.dart';

import '../../../../core/helpers/helper_methods.dart';

class VerifiedCodeCubit extends Cubit<VerifiedCodeState> {
  final VerifiedCodeRepos verifiedCodeRepos;

  VerifiedCodeCubit(this.verifiedCodeRepos)
      : super(VerifiedCodeState.initial());

  final codeController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future<void> checkCode(
      String? phone, BuildContext context) async {
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
      context.pushNamed(Routes.newPasswordScreen);
    }, failure: (error) {
      showToast(message: error.message.toString());

      emit(VerifiedCodeState.error(error: error.message.toString()));
    });
  }
}
