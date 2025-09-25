import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import 'finish_order_button.dart';

class ButtonAndPricesWidget extends StatefulWidget {
  final double? discount;
  final double? totalPrice;
  const ButtonAndPricesWidget({super.key, this.discount, this.totalPrice});

  @override
  State<ButtonAndPricesWidget> createState() => _ButtonAndPricesWidgetState();
}

class _ButtonAndPricesWidgetState extends State<ButtonAndPricesWidget> {
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
              FinishOrderButton(),
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
                      widget.discount != null
                          ? "${widget.discount} ر.س"
                          : "0 ر.س",
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
                      widget.totalPrice != null
                          ? "${widget.totalPrice} ر.س"
                          : "0 ر.س",
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
