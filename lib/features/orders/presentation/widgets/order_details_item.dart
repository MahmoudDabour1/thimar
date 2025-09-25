import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:thimar/features/orders/data/models/order_details_response_model.dart';

import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import 'order_details_address_widget.dart';
import 'order_details_prices.dart';

class OrderDetailsItem extends StatelessWidget {
  final OrdersDetailsResponseModel data;

  const OrderDetailsItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final order = data.data;

    DateTime? orderDate =
        order?.date != null ? DateTime.tryParse(order!.date.toString()) : null;

    String formattedDate = orderDate != null
        ? DateFormat("dd, MMMM, yyyy", "ar").format(orderDate)
        : "";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(32),
        Row(
          children: [
            Text(
              "طلب #${order?.id ?? ""}",
              style: AppStyles.font16GreenBold,
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
              decoration: BoxDecoration(
                color: AppColors.lighterGreenColor,
                borderRadius: BorderRadius.circular(6.r),
              ),
              child: Text(
                order?.status ?? "",
                style: AppStyles.font12GreenBold,
              ),
            ),
          ],
        ),
        verticalSpace(8),
        Row(
          children: [
            Text(
              formattedDate ?? "",
              style: AppStyles.font16DarkerGrayLight,
            ),
            Spacer(),
            Text(
              "${order?.totalPrice} ر.س",
              style: AppStyles.font16GreenBold,
            ),
          ],
        ),
        verticalSpace(16),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 4.w),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: Image.network(
                  order?.products?[0].url ?? "",
                  width: 25.w,
                  height: 25.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                AppAssets.arrowLeftContainerImage,
                width: 24.w,
                height: 24.h,
              ),
            ),
          ],
        ),
        OrderDetailsAddressWidget(
          data: data,
        ),
        OrderDetailsPrices(
          data: data,
        ),
      ],
    );
  }
}
