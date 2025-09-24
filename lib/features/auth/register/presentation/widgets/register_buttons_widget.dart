import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/features/auth/register/presentation/logic/register_cubit.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/utils/spacing.dart';
import '../../../../../core/widgets/app_custom_button.dart';
import '../../../widgets/auth_text_and_button_row_widget.dart';
import '../logic/register_state.dart';

class RegisterButtonsWidget extends StatelessWidget {
  const RegisterButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<RegisterCubit, RegisterState>(
          builder: (context, state) {
            final cubit = context.read<RegisterCubit>();
            return AppCustomButton(
              isLoading: state is RegisterLoading,
              onPressed: () {
                if (cubit.formKey.currentState!.validate()) {
                  cubit.register(context);
                }
              },
              textButton: "تسجيل",
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
