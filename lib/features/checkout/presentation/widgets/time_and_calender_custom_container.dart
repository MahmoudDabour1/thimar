import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';

class TimeAndCalenderCustomContainer extends StatelessWidget {
  final String title;
  final String iconPath;
  final VoidCallback onTap;

  const TimeAndCalenderCustomContainer({
    super.key,
    required this.title,
    required this.iconPath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: AppColors.whiteColor,
          border: Border.all(color: AppColors.textFormGrayColor),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  title,
                  style: AppStyles.font16GreenMedium,
                ),
              ),
              horizontalSpace(8),
              Image.asset(
                iconPath,
                width: 17.w,
                height: 17.h,
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
