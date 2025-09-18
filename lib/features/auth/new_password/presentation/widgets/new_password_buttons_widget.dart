import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/features/auth/new_password/logic/new_password_cubit.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/utils/spacing.dart';
import '../../../../../core/widgets/app_custom_button.dart';
import '../../../widgets/auth_text_and_button_row_widget.dart';
import '../../logic/new_password_state.dart';

class NewPasswordButtonsWidget extends StatelessWidget {
  final String phone;
  final String code;

  const NewPasswordButtonsWidget(
      {super.key, required this.phone, required this.code});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<NewPasswordCubit, NewPasswordState>(
          builder: (context, state) {
            return AppCustomButton(
              isLoading: state is NewPasswordLoading,
              textButton: "تغيير كلمة المرور",
              onPressed: () {
                if (context
                    .read<NewPasswordCubit>()
                    .formKey
                    .currentState!
                    .validate()) {
                  context.read<NewPasswordCubit>().newPassword(
                        phone,
                        code,
                        context,
                      );
                }
              },
            );
          },
        ),
        verticalSpace(45),
        AuthTextAndButtonRowWidget(
          buttonText: "تسجيل الدخول",
          text: "لديك حساب بالفعل ؟",
          onPressed: () {
            context.pushNamed(Routes.loginScreen);
          },
        ),
      ],
    );
  }
}
