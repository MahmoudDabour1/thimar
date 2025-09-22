import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/app_custom_button.dart';

class ButtonAndPricesWidget extends StatelessWidget {
  const ButtonAndPricesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(16),
        Text(
          "ملخص الطلب",
          style: AppStyles.font16GreenExtraBold,
        ),
        verticalSpace(10),
        Container(
          decoration: BoxDecoration(
            color: AppColors.lighterGreenColor,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Column(
            children: [
              AppCustomButton(
                textButton: "إنهاء الطلب",
                onPressed: () {},
              ),
              verticalSpace(12),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  children: [
                    Text(
                      "الخصم",
                      style: AppStyles.font16GreenMedium,
                    ),
                    const Spacer(),
                    Text(
                      "- 40 ر.س",
                      style: AppStyles.font16GreenMedium,
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  children: [
                    Text(
                      "المجموع",
                      style: AppStyles.font16GreenBold,
                    ),
                    const Spacer(),
                    Text(
                      "150 ر.س",
                      style: AppStyles.font16GreenBold,
                    ),
                  ],
                ),
              ),
              verticalSpace(16),
            ],
          ),
        ),
      ],
    );
  }
}
