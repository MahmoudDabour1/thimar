import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/features/product_details/data/models/get_product_rates_response_model.dart';

import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';

class ProductRatesNameAndStarsWidget extends StatelessWidget {
  final GetProductRatesResponseModel data;
  final int index;

  const ProductRatesNameAndStarsWidget({
    super.key,
    required this.data,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          data.data?[index].clientName ?? "Client",
          style: AppStyles.font16BlackBold,
        ),
        horizontalSpace(8),
        Row(
          children: List.generate(
            5,
            (starIndex) {
              return Icon(
                Icons.star,
                color: starIndex < (data.data?[index].value ?? 0)
                    ? Colors.amber
                    : Colors.grey,
                size: 16.sp,
              );
            },
          ),
        ),
      ],
    );
  }
}
