import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/utils/spacing.dart';

import '../../../../core/helpers/helper_methods.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../data/models/show_order_model.dart';

class OrderStateSingleItem extends StatelessWidget {
  final ShowOrderModel? order;

  const OrderStateSingleItem({
    super.key,
    this.order,
  });

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
                    "طلب #${order?.orderNumber ?? ""}",
                    style: AppStyles.font16GreenBold,
                  ),
                  Spacer(),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                    decoration: BoxDecoration(
                      color: getStatusContainerColor(order?.orderStatus),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: Text(
                      getStatusText(order?.orderStatus) ?? "مكتمل",
                      style: AppStyles.font12GreenBold.copyWith(
                          color: getStatusTextColor(order?.orderStatus)),
                    ),
                  ),
                ],
              ),
              Text(
                order?.orderDate ?? "",
                style: AppStyles.font16DarkerGrayLight,
              ),
              verticalSpace(16),
              Row(
                children: [
                  ...List.generate(
                    (order!.products!.length > 3 ? 3 : order!.products!.length),
                    (index) => Padding(
                      padding: EdgeInsets.only(right: 4.w),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.r),
                        child: Image.network(
                          order?.products?[index].url ?? "",
                          width: 25.w,
                          height: 25.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  if (order!.products!.length > 3)
                    Padding(
                      padding: EdgeInsets.only(right: 4.w),
                      child: Container(
                        width: 25.w,
                        height: 25.h,
                        decoration: BoxDecoration(
                          color: AppColors.lighterGreenColor,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            "+${order!.products!.length - 3}",
                            style: AppStyles.font14WhiteBold.copyWith(
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  Spacer(),
                  Text(
                    order?.orderPrice != null
                        ? "${order?.orderPrice} ر.س"
                        : "0 ر.س",
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

  // Color getStatusColor(String? status) {
  //   switch (status?.toLowerCase()) {
  //     case 'accepted':
  //       return AppColors.yellowGreenColor;
  //     case 'in_way':
  //       return AppColors.lightBlueGreenColor;
  //     case 'delivered':
  //       return AppColors.lightGrayColor;
  //     case 'pending':
  //       return AppColors.lighterGreenColor;
  //     case 'canceled':
  //       return AppColors.lightRedColor;
  //     default:
  //       return AppColors.lighterGreenColor;
  //   }
  // }
  //
  // String getStatusText(String? status) {
  //   switch (status?.toLowerCase()) {
  //     case 'accepted':
  //       return "جاري التحضير";
  //     case 'in_way':
  //       return "في الطريق";
  //     case 'delivered':
  //       return "منتهي";
  //     case 'canceled':
  //       return "ملغي";
  //     case 'pending':
  //       return "بإنتظار الموافقة";
  //     default:
  //       return "بإنتظار الموافقة";
  //   }
  // }
  //
  // Color getStatusTextColor(String? status) {
  //   switch (status?.toLowerCase()) {
  //     case 'accepted':
  //       return AppColors.primaryColor;
  //     case 'in_way':
  //       return AppColors.blueGreenColor;
  //     case 'delivered':
  //       return AppColors.darkerGrayColor;
  //     case 'pending':
  //       return AppColors.primaryColor;
  //     case 'canceled':
  //       return AppColors.redColor;
  //     default:
  //       return AppColors.blackColor;
  //   }
  // }
}
