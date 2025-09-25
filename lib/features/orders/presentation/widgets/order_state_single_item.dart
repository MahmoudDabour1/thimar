import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/utils/spacing.dart';

import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class OrderStateSingleItem extends StatelessWidget {
  final String? orderNumber;
  final String? orderDate;
  final String? orderStatus;
  final double? orderPrice;
  final String? orderImage;

  OrderStateSingleItem({
    super.key,
    this.orderNumber,
    this.orderDate,
    this.orderStatus,
    this.orderPrice,
    this.orderImage,
  });

  final List<String> images = [
    AppAssets.thimarIcon,
    AppAssets.thimarIcon,
    AppAssets.thimarIcon,
    AppAssets.thimarIcon,
    AppAssets.thimarIcon,
    AppAssets.thimarIcon,
    AppAssets.thimarIcon,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "طلب #${orderNumber ?? ""}",
                    style: AppStyles.font16GreenBold,
                  ),
                  Spacer(),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                    decoration: BoxDecoration(
                      color: AppColors.lighterGreenColor,
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: Text(
                      orderStatus ?? "مكتمل",
                      style: AppStyles.font12GreenBold,
                    ),
                  ),
                ],
              ),
              Text(
                orderDate ?? "",
                style: AppStyles.font16DarkerGrayLight,
              ),
              verticalSpace(16),
              Row(
                children: [
                 Padding(
                    padding: EdgeInsets.only(right: 4.w),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.r),
                      child: Image.network(
                        orderImage??"",
                        width: 25.w,
                        height: 25.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // ...List.generate(
                  //   (images.length > 3 ? 3 : images.length),
                  //   (index) => Padding(
                  //     padding: EdgeInsets.only(right: 4.w),
                  //     child: ClipRRect(
                  //       borderRadius: BorderRadius.circular(8.r),
                  //       child: Image.asset(
                  //         images[index],
                  //         width: 25.w,
                  //         height: 25.h,
                  //         fit: BoxFit.cover,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // if (images.length > 3)
                  //   Padding(
                  //     padding: EdgeInsets.only(right: 4.w),
                  //     child: Container(
                  //       width: 25.w,
                  //       height: 25.h,
                  //       decoration: BoxDecoration(
                  //         color: AppColors.lighterGreenColor,
                  //         shape: BoxShape.circle,
                  //       ),
                  //       child: Center(
                  //         child: Text(
                  //           "+${images.length - 3}",
                  //           style: AppStyles.font14WhiteBold.copyWith(
                  //             color: AppColors.primaryColor,
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  Spacer(),
                  Text(
                    orderPrice != null ? "${orderPrice} ر.س" : "0 ر.س",
                    style: AppStyles.font16GreenBold,
                  ),
                ],
              ),
              verticalSpace(12),
            ],
          ),
        ),
      ),
    );
  }
}
