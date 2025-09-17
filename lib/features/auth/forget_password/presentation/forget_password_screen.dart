import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/utils/spacing.dart';
import 'package:thimar/core/widgets/app_custom_button.dart';
import 'package:thimar/core/widgets/auth_header_widget.dart';
import 'package:thimar/features/auth/widgets/auth_text_and_button_row_widget.dart';

import '../../widgets/auth_phone_and_country_widget.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                AuthPhoneAndCountryWidget(),
                verticalSpace(24),
                AppCustomButton(
                  textButton: "تأكيد رقم الجوال",
                  onPressed: () {},
                ),
                verticalSpace(45),
                AuthTextAndButtonRowWidget(
                  text: "لديك حساب بالفعل ؟",
                  buttonText: "تسجيل الدخول",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
