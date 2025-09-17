import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/utils/spacing.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../widgets/auth_phone_and_country_widget.dart';

class RegisterTextFormsWidget extends StatelessWidget {
  const RegisterTextFormsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          hintText: "اسم المستخدم",
          validator: (value) {},
          prefixIcon: Image.asset(
            AppAssets.personIcon,
            width: 22.w,
            height: 22.h,
          ),
        ),
        verticalSpace(16),
        AuthPhoneAndCountryWidget(),
        verticalSpace(16),
        AppTextFormField(
          hintText: "المدينة",
          validator: (value) {},
          prefixIcon: Image.asset(
            AppAssets.flagImage,
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
      ],
    );
  }
}
