import 'package:flutter/cupertino.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/utils/spacing.dart';
import '../../../../../core/widgets/app_custom_button.dart';
import '../../../widgets/auth_text_and_button_row_widget.dart';

class RegisterButtonsWidget extends StatelessWidget {
  const RegisterButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppCustomButton(
          onPressed: () {
            context.pushNamed(Routes.forgetPasswordScreen);
          },
          textButton: "تسجيل",
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
