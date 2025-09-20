import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class HomeCustomHeaderWidget extends StatelessWidget {
  const HomeCustomHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                AppAssets.thimarIcon,
                width: 25.w,
                height: 25.h,
              ),
              Text(
                "سلة ثمار",
                style: AppStyles.font14greenBold,
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "التوصيل إلى",
                style: AppStyles.font16GreenBold,
              ),
              Text(
                "شارع الملك فهد - جدة",
                style: AppStyles.font16greenLight,
              ),
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: Badge(
              label: Text('3', style: AppStyles.font14WhiteBold),
              backgroundColor: AppColors.primaryColor,
              isLabelVisible: true,
              alignment: Alignment.topRight,
              child: Container(
                height: 40.h,
                width: 40.w,
                decoration: BoxDecoration(
                  color: AppColors.lighterGreenColor,
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.w),
                  child: Image.asset(
                    AppAssets.bagIconSvg,
                    width: 8.w,
                    height: 8.h,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
