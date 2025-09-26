import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/app_custom_button.dart';

OrderStoreSuccessBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
    ),
    builder: (
      context,
    ) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          verticalSpace(16),
          Image.asset(
            AppAssets.thanksImage,
            width: 250.w,
            height: 250.h,
            fit: BoxFit.contain,
          ),
          Text(
            "شكرا لك لقد تم تنفيذ طلبك بنجاح",
            style: AppStyles.font16GreenBold,
          ),
          Text(
            "يمكنك متابعة حالة الطلب او الرجوع للرئسيية",
            style: AppStyles.font16GreenMedium
                .copyWith(color: AppColors.darkerGrayColor),
          ),
          verticalSpace(16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                Expanded(
                  child: AppCustomButton(
                    textButton: "طلباتي",
                    onPressed: () {
                      context.pushReplacement(
                        Routes.bottomNavBarLayout,
                        arguments: 1,
                      );
                    },
                  ),
                ),
                horizontalSpace(8),
                Expanded(
                    child: AppCustomButton(
                  textButton: "الرئيسية",
                  onPressed: () {
                    context.pushNameAndRemoveUntil(
                      Routes.bottomNavBarLayout,
                      predicate: (route) => false,
                    );
                  },
                  isBorder: true,
                )),
              ],
            ),
          ),
          verticalSpace(16)
        ],
      );
    },
  );
}
