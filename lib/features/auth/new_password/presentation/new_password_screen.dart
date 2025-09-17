import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/widgets/app_custom_button.dart';
import 'package:thimar/core/widgets/auth_header_widget.dart';

import '../../../../core/theming/app_assets.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../widgets/auth_text_and_button_row_widget.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

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
                subTitle: "أدخل كلمة المرور الجديدة",
              ),
              verticalSpace(16),
              AppTextFormField(
                hintText: "كلمة المرور",
                validator: (value) {},
                prefixIcon: Image.asset(
                  AppAssets.lockImage,
                  width: 22.w,
                  height: 22.h,
                ),
              ),
              verticalSpace(16),
              AppTextFormField(
                hintText: "كلمة المرور",
                validator: (value) {},
                prefixIcon: Image.asset(
                  AppAssets.lockImage,
                  width: 22.w,
                  height: 22.h,
                ),
              ),
              verticalSpace(30),
              AppCustomButton(
                  textButton: "تغيير كلمة المرور", onPressed: () {}),
              verticalSpace(45),
              AuthTextAndButtonRowWidget(
                buttonText: "تسجيل الدخول",
                text: "لديك حساب بالفعل ؟",
                onPressed: () {},
              ),
            ],
          ),
        ),
      )),
    );
  }
}
