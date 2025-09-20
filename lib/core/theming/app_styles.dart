import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';
import 'font_weight_helper.dart';

class AppStyles {
  static TextStyle font16GreenBold = TextStyle(
    fontSize: 16.sp,
    color: AppColors.primaryColor,
    fontWeight: FontWeightHelper.bold,
  );static TextStyle font16GreenMedium = TextStyle(
    fontSize: 16.sp,
    color: AppColors.primaryColor,
    fontWeight: FontWeightHelper.medium,
  );static TextStyle font16WhiteBold = TextStyle(
    fontSize: 16.sp,
    color: AppColors.whiteColor,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font16DarkGrayLight = TextStyle(
    fontSize: 16.sp,
    color: AppColors.darkGrayColor,
    fontWeight: FontWeightHelper.light,
  );  static TextStyle font16greenLight = TextStyle(
    fontSize: 16.sp,
    color: AppColors.primaryColor,
    fontWeight: FontWeightHelper.light,
  ); static TextStyle font15GrayRegular = TextStyle(
    fontSize: 15.sp,
    color: AppColors.textFormGrayColor,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font14greenBold = TextStyle(
    fontSize: 14.sp,
    color: AppColors.primaryColor,
    fontWeight: FontWeightHelper.bold,
  ); static TextStyle font14WhiteBold = TextStyle(
    fontSize: 14.sp,
    color: AppColors.whiteColor,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font16BlackExtraBold = TextStyle(
    fontSize: 16.sp,
    color: AppColors.blackColor,
    fontWeight: FontWeightHelper.extraBold,
  );
  static TextStyle font16BlackMedium = TextStyle(
    fontSize: 20.sp,
    color: AppColors.blackColor,
    fontWeight: FontWeightHelper.medium,
  );
}
