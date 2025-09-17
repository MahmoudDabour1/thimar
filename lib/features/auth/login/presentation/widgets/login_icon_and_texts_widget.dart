import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/utils/spacing.dart';

class LoginIconAndTextsWidget extends StatelessWidget {
  const LoginIconAndTextsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(20),
        Center(
          child: Image.asset(
            AppAssets.thimarIcon,
            width: 150.w,
            height: 150.h,
          ),
        ),
        Text(
          "مرحبا بك مرة أخرى",
          style: AppStyles.font16GreenBold,
        ),
        verticalSpace(8),
        Text(
          "يمكنك تسجيل الدخول الأن",
          style: AppStyles.font16DarkGrayLight,
        ),
        verticalSpace(26),
      ],
    );
  }
}
