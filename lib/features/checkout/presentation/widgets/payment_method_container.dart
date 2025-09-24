import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';

class PaymentMethodContainer extends StatelessWidget {
  final String iconPath;
  final String? title;

  const PaymentMethodContainer({super.key, required this.iconPath, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.textFormGrayColor),
      ),
      child: title != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Image.asset(
                    iconPath,
                    width: 17.w,
                    height: 17.h,
                    fit: BoxFit.contain,
                  ),
                ),
                horizontalSpace(8),
                Flexible(
                  child: Text(
                    title ?? "",
                    style: AppStyles.font16GreenBold,
                  ),
                ),
              ],
            )
          : Padding(
              padding: EdgeInsets.all(8.r),
              child: Image.asset(
                iconPath,
                width: title != null ? 30.w : 65.w,
                height: 20.h,
                fit: BoxFit.contain,
              ),
            ),
    );
  }
}
