import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';

import '../theming/app_colors.dart';

class AppCustomBackButton extends StatelessWidget {
  const AppCustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pop();
      },
      child: Container(
        height: 32.h,
        width: 32.w,
        decoration: BoxDecoration(
          color: AppColors.lighterGreenColor,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Center(
          child: Icon(
            Icons.arrow_back_ios,
            color: AppColors.primaryColor,
            size: 20.r,
          ),
        ),
      ),
    );
  }
}
