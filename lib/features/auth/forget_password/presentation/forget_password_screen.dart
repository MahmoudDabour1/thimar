import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/utils/spacing.dart';
import 'package:thimar/core/widgets/app_custom_button.dart';
import 'package:thimar/core/widgets/auth_header_widget.dart';
import 'package:thimar/features/auth/forget_password/logic/forget_password_cubit.dart';
import 'package:thimar/features/auth/widgets/auth_text_and_button_row_widget.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/routing/routes.dart';
import '../../widgets/auth_phone_and_country_widget.dart';
import '../logic/forget_password_state.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgetPasswordCubit(sl()),
      child: Builder(
        builder: (context) {
          final cubit = context.read<ForgetPasswordCubit>();
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    children: [
                      AuthHeaderWidget(
                        title: "نسيت كلمة المرور",
                        subTitle: "أدخل رقم الجوال المرتبط بحسابك",
                      ),
                      Form(
                          key: cubit.formKey,
                          child: AuthPhoneAndCountryWidget(
                            phoneController: cubit.phoneController,
                          )),
                      verticalSpace(24),
                      BlocBuilder<ForgetPasswordCubit, ForgetPasswordState>(
                        builder: (context, state) {
                          return AppCustomButton(
                            isLoading: state is ForgetPasswordLoading,
                            textButton: "تأكيد رقم الجوال",
                            onPressed: () {
                              if (cubit.formKey.currentState!.validate()) {
                                context
                                    .read<ForgetPasswordCubit>()
                                    .sendCode(context,null);
                              }
                            },
                          );
                        },
                      ),
                      verticalSpace(45),
                      AuthTextAndButtonRowWidget(
                        text: "لديك حساب بالفعل ؟",
                        buttonText: "تسجيل الدخول",
                        onPressed: () {
                          context.pushNamed(Routes.loginScreen);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
