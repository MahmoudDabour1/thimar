import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/theming/app_styles.dart';
import 'package:thimar/features/auth/login/presentation/widgets/login_buttons_widget.dart';
import 'package:thimar/features/auth/login/presentation/widgets/login_icon_and_texts_widget.dart';
import 'package:thimar/features/auth/login/presentation/widgets/login_text_forms_widget.dart';

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
              LoginIconAndTextsWidget(),
              LoginTextFormsWidget(),
              LoginButtonsWidget(),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("ليس لديك حساب ؟", style: AppStyles.font16greenLight),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "تسجيل الأن",
                      style: AppStyles.font16GreenBold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
