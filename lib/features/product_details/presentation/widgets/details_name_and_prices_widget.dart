import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/features/product_details/data/models/get_product_details_response_model.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';

class DetailsNameAndPricesWidget extends StatelessWidget {
  final GetProductDetailsResponseModel data;
  const DetailsNameAndPricesWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          data.data?.title ?? "",
          style: AppStyles.font22GreenBold,
        ),
        Spacer(),
        Text(
          "${((data.data?.discount ?? 0) * 100).toInt()}%",
          style: AppStyles.font16greenLight.copyWith(
            color: Colors.red,
          ),
        ),
        horizontalSpace(10),
        Text(
          "${data.data?.price}ر.س",
          style: AppStyles.font16GreenBold,
        ),
        horizontalSpace(4),
        Text(
          "${data.data?.priceBeforeDiscount}ر.س",
          style: AppStyles.font16GreenMedium.copyWith(
            decoration: TextDecoration.lineThrough,
            decorationStyle: TextDecorationStyle.solid,
            decorationColor: AppColors.blackColor,
            decorationThickness: 30.w,
            fontSize: 14.sp,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
