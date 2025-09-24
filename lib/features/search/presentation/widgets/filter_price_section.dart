import 'package:flutter/material.dart';
import 'package:thimar/features/search/presentation/widgets/price_filter_range_widget.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import '../../logic/search_cubit.dart';

class FilterPriceSection extends StatefulWidget {
  const FilterPriceSection({super.key});

  @override
  State<FilterPriceSection> createState() => _FilterPriceSectionState();
}

class _FilterPriceSectionState extends State<FilterPriceSection> {
  final cubit = sl<SearchCubit>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(color: AppColors.lighterGreenColor),
        Text(
          "السعر",
          style: AppStyles.font16BlackBold,
        ),
        PriceFilterRangeWidget(
          minPrice: cubit.minPrice ?? 0,
          maxPrice: cubit.maxPrice ?? 5000,
          onChanged: (values) {
            setState(() {
              cubit.minPrice = values.start;
              cubit.maxPrice = values.end;
            });
          },
        ),
        verticalSpace(8),
        Divider(color: AppColors.lighterGreenColor),
      ],
    );
  }
}
