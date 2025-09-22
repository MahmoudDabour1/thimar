import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';

class WalletHistorySingleItem extends StatelessWidget {
  final String title;
  final String amount;
  final String date;

  const WalletHistorySingleItem({
    super.key,
    required this.title,
    required this.amount,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.w),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: AppColors.whiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                AppAssets.arrowDownImage,
                width: 20.w,
                height: 20.h,
              ),
              horizontalSpace(10),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: AppStyles.font16GreenBold,
                  ),
                  Text(
                    amount,
                    style: AppStyles.font22GreenBold,
                  ),
                ],
              ),
              Spacer(),
              Text(
                date,
                style: AppStyles.font15GrayRegular,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
