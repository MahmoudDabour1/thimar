import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/helpers/helper_methods.dart';
import 'package:thimar/features/auth/forget_password/data/models/forget_password_request_body.dart';
import 'package:thimar/features/auth/forget_password/data/repos/forget_password_repo.dart';

import '../../../../core/routing/routes.dart';
import 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  final ForgetPasswordRepo forgetPasswordRepo;

  ForgetPasswordCubit(this.forgetPasswordRepo)
      : super(ForgetPasswordState.initial());

  final formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();

  void sendCode(BuildContext context,String? phone) async {
    emit(ForgetPasswordState.loading());
    final response = await forgetPasswordRepo.forgetPassword(
      ForgetPasswordRequestBody(
        phone:phone?? phoneController.text,
      ),
    );
    response.when(success: (data) {
      emit(ForgetPasswordState.success(data));
      context.pushNamed(Routes.verifiedScreen, arguments: phoneController.text);
      showToast(message: data.message.toString());
    }, failure: (error) {
      showToast(message: error.message.toString());
      emit(ForgetPasswordState.error(error: error.message.toString()));
    });
  }
}
