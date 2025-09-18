import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/routing/routes.dart';
import 'package:thimar/features/auth/login/presentation/logic/login_cubit.dart';

import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/utils/spacing.dart';
import '../../../../../core/widgets/app_custom_button.dart';
import '../logic/login_state.dart';

class LoginButtonsWidget extends StatelessWidget {
  const LoginButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: TextButton(
            onPressed: () {
              context.pushNamed(Routes.forgetPasswordScreen);
            },
            child: Text(
              "نسيت كلمة المرور؟",
              style: AppStyles.font16DarkGrayLight,
            ),
          ),
        ),
        verticalSpace(30),
        BlocBuilder<LoginCubit, LoginState>(
          builder: (context, state) {
            return AppCustomButton(
              isLoading: state is LoginLoading,
              onPressed: () {
                if (context
                    .read<LoginCubit>()
                    .formKey
                    .currentState!
                    .validate()) {
                  context.read<LoginCubit>().login();
                }
              },
              textButton: "تسجيل الدخول",
            );
          },
        ),
      ],
    );
  }
}
