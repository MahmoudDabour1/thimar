import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/helpers/helper_methods.dart';
import 'package:thimar/core/routing/routes.dart';
import 'package:thimar/features/auth/register/presentation/data/models/register_request_body.dart';
import 'package:thimar/features/auth/register/presentation/data/repos/register_repo.dart';
import 'package:thimar/features/auth/register/presentation/logic/register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo registerRepo;

  RegisterCubit(this.registerRepo) : super(RegisterState.initial());
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final nameController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future<void> register(BuildContext context) async {
    emit(RegisterState.loading());
    final response = await registerRepo.register(
      RegisterRequestBody(
        name: nameController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: confirmPasswordController.text,
      ),
    );
    response.when(success: (data) {
      emit(RegisterState.success(data));
      context.pushNamed(Routes.verifiedScreen, arguments: {
        "phone": phoneController.text,
        "isActiveAccount": true,
      });
      showToast(message: data.message.toString());
      phoneController.clear();
      passwordController.clear();
      confirmPasswordController.clear();
      nameController.clear();
    }, failure: (error) {
      showToast(message: error.message.toString(), isError: true);
      emit(RegisterState.error(error: error.message.toString()));
    });
  }
}
