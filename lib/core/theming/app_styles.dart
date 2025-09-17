import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';
import 'font_weight_helper.dart';

class AppStyles {
  static TextStyle font16GreenBold = TextStyle(
    fontSize: 16.sp,
    color: AppColors.primaryColor,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font16DarkGrayLight = TextStyle(
    fontSize: 16.sp,
    color: AppColors.darkGrayColor,
    fontWeight: FontWeightHelper.light,
  ); static TextStyle font15GrayRegular = TextStyle(
    fontSize: 15.sp,
    color: AppColors.grayColor,
    fontWeight: FontWeightHelper.regular,
  );
}
