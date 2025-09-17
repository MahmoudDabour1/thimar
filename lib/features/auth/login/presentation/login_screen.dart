import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/features/auth/login/presentation/widgets/login_buttons_widget.dart';
import 'package:thimar/features/auth/login/presentation/widgets/login_text_forms_widget.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/auth_header_widget.dart';
import '../../widgets/auth_text_and_button_row_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              AuthHeaderWidget(),
              LoginTextFormsWidget(),
              LoginButtonsWidget(),
              Spacer(),
              AuthTextAndButtonRowWidget(
                text: "ليس لديك حساب ؟",
                buttonText: "تسجيل الأن",
                onPressed: () {
                  context.pushNamed(Routes.registerScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
