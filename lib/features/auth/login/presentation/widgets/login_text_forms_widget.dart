import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/utils/spacing.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../widgets/auth_phone_and_country_widget.dart';

class LoginTextFormsWidget extends StatelessWidget {
  const LoginTextFormsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AuthPhoneAndCountryWidget(),
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
        verticalSpace(10),
      ],
    );
  }


}
