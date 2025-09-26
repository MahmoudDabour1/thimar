import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';

import '../../../../../core/helpers/helper_methods.dart';
import '../../../../../core/helpers/shared_pref_helper.dart';
import '../../../../../core/helpers/shared_pref_keys.dart';
import '../../../../../core/networking/dio_factory.dart';
import '../../../../core/routing/routes.dart';
import '../data/models/login_request_body.dart';
import '../data/repos/login_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;

  LoginCubit(this.loginRepo) : super(LoginState.initial());
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future<void> login(BuildContext context) async {
    emit(LoginState.loading());
    final response = await loginRepo.login(
      LoginRequestBody(
          phone: phoneController.text,
          password: passwordController.text,
          deviceToken: "test",
          type: Platform.operatingSystem,
          userType: "client"),
    );
    response.when(success: (data) async {
      emit(LoginState.success(data));
      await saveUserToken(data.data?.token ?? "");
      phoneController.clear();
      passwordController.clear();

      context.pushNameAndRemoveUntil(
        Routes.bottomNavBarLayout,
        predicate: (route) => false,
      );
      showToast(message: "تم تسجيل الدخول بنجاح");
    }, failure: (error) {
      emit(LoginState.error(error: error.message.toString()));
      showToast(message: error.message.toString(), isError: true);
    });
  }

  Future<void> logout(BuildContext context) async {
    emit(LoginState.logoutLoading());
    final response = await loginRepo.logout();
    response.when(success: (data) async {
      emit(
        LoginState.logoutSuccess(data),
      );
      await SharedPrefHelper.clearAllSecuredData();
      context.pushNameAndRemoveUntil(
        Routes.loginScreen,
        predicate: (Route<dynamic> route) => false,
      );
      showToast(message: "تم تسجيل الخروج بنجاح");
    }, failure: (error) {
      emit(
        LoginState.logoutError(
          error: error.message.toString(),
        ),
      );
      showToast(message: error.message.toString(), isError: true);
    });
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
