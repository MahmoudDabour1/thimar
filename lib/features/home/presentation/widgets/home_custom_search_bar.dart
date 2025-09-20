import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_assets.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class HomeCustomSearchBar extends StatelessWidget {
  const HomeCustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 22.h),
      child: AppTextFormField(
        hintText: "ابحث عن ماتريد؟",
        validator: (value) {},
        prefixIcon: Image.asset(
          AppAssets.searchIconSvg,
          width: 25.w,
          height: 25.h,
        ),
      ),
    );
  }
}
