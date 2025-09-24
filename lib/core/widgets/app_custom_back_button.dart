import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';

import '../theming/app_colors.dart';

class AppCustomBackButton extends StatelessWidget {
  const AppCustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: ButtonStyle(
        backgroundColor:
            WidgetStateProperty.all(AppColors.lighterGreenColor),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
      ),
      onPressed: () {
        context.pop();
      },
      icon: Center(
        child: Icon(
          Icons.arrow_back_ios,
          color: AppColors.primaryColor,
          weight: 500,
          size: 20.r,
        ),
      ),
    );
  }
}
