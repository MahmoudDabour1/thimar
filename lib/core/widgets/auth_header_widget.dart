import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_assets.dart';
import '../theming/app_styles.dart';
import '../utils/spacing.dart';

class AuthHeaderWidget extends StatelessWidget {
  final String? title;
  final String? subTitle;
  const AuthHeaderWidget({super.key, this.title, this.subTitle});

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
          title??"مرحبا بك مرة أخرى",
          style: AppStyles.font16GreenBold,
        ),
        verticalSpace(8),
        Text(
          subTitle??"يمكنك تسجيل الدخول الأن",
          style: AppStyles.font16DarkGrayLight,
        ),
        verticalSpace(26),
      ],
    );
  }
}
