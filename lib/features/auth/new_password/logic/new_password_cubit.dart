import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/features/auth/new_password/data/models/new_password_request_body.dart';
import 'package:thimar/features/auth/new_password/data/repos/new_password_repo.dart';

import '../../../../core/helpers/helper_methods.dart';
import '../../../../core/routing/routes.dart';
import 'new_password_state.dart';

class NewPasswordCubit extends Cubit<NewPasswordState> {
  final NewPasswordRepo newPasswordRepo;

  NewPasswordCubit(this.newPasswordRepo) : super(NewPasswordState.initial());

  final formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();

  get context => null;

  Future<void> newPassword(String phone, String code,BuildContext context) async {
    emit(NewPasswordState.loading());
    final response = await newPasswordRepo.newPassword(
      NewPasswordRequestBody(
        phone: phone,
        code: code,
        password: passwordController.text,
      ),
    );
    response.when(success: (data) {
      emit(NewPasswordState.success(data));
      passwordController.clear();
      context.pushNamed(Routes.loginScreen);
      showToast(message: data.message.toString());
    }, failure: (error) {
      emit(NewPasswordState.error(error: error.message.toString()));
    });
  }
}
