import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/features/search/logic/search_cubit.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';

class ArrangeFilterSection extends StatefulWidget {
  const ArrangeFilterSection({super.key});

  @override
  State<ArrangeFilterSection> createState() => _ArrangeFilterSectionState();
}

class _ArrangeFilterSectionState extends State<ArrangeFilterSection> {
  String sortFilter = "asc";
  final cubit = sl<SearchCubit>();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "الترتيب",
          style: AppStyles.font16BlackBold,
        ),
        RadioListTile<String>(
          title: Text(
            "من السعر الأقل للأعلي",
            style: AppStyles.font16GreenBold,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          activeColor: AppColors.primaryColor,
          fillColor: WidgetStateProperty.all(AppColors.primaryColor),
          value: "asc",
          groupValue: sortFilter,
          onChanged: (value) {
            setState(() {
              sortFilter = value!;
            });
            cubit.filter = value!;
          },
        ),
        RadioListTile<String>(
          title: Text(
            "من السعر الأعلى للأقل",
            style: AppStyles.font16GreenBold,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          activeColor: AppColors.primaryColor,
          fillColor: WidgetStateProperty.all(AppColors.primaryColor),
          value: "desc",
          groupValue: sortFilter,
          onChanged: (value) {
            setState(() {
              sortFilter = value!;
            });
            cubit.filter = value!;
          },
        ),
        verticalSpace(20),
      ],
    );
  }
}
