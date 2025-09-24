import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/features/product_details/data/models/get_product_details_response_model.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import 'details_name_and_prices_widget.dart';
import 'details_price_and_quantity_widget.dart';

class DetailsTextsWidget extends StatefulWidget {
  final GetProductDetailsResponseModel data;
  final int quantity;
  final ValueChanged<int> onQuantityChanged;

  const DetailsTextsWidget(
      {super.key,
      required this.data,
      required this.quantity,
      required this.onQuantityChanged});

  @override
  State<DetailsTextsWidget> createState() => _DetailsTextsWidgetState();
}

class _DetailsTextsWidgetState extends State<DetailsTextsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(18),
          DetailsNameAndPricesWidget(
            data: widget.data,
          ),
          verticalSpace(6),
          DetailsPriceAndQuantityWidget(
            data: widget.data,
            quantity: widget.quantity,
            onQuantityChanged: widget.onQuantityChanged,
          ),
          verticalSpace(18),
          Divider(
            color: AppColors.lightGrayColor,
          ),
          verticalSpace(10),
          Row(
            children: [
              Text(
                "كود المنتج",
                style: AppStyles.font22GreenBold,
              ),
              horizontalSpace(8),
              Text(
                (widget.data.data?.amount).toString(),
                style: AppStyles.font20DarkerGrayMedium,
              ),
            ],
          ),
          verticalSpace(10),
          Divider(
            color: AppColors.lightGrayColor,
          ),
          verticalSpace(18),
          Text(
            "تفاصيل المنتج",
            style: AppStyles.font22GreenBold,
          ),
          Text(
            widget.data.data?.description ?? "",
            style: AppStyles.font16DarkerGrayLight,
          ),
        ],
      ),
    );
  }
}
