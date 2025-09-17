import 'package:flutter/material.dart';

import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/utils/spacing.dart';
import '../../../../../core/widgets/app_custom_button.dart';

class LoginButtonsWidget extends StatelessWidget {
  const LoginButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "نسيت كلمة المرور؟",
              style: AppStyles.font16DarkGrayLight,
            ),
          ),
        ),
        verticalSpace(30),
        AppCustomButton(
          onPressed: () {},
          textButton: "تسجيل الدخول",
        ),
      ],
    );
  }
}
