import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/theming/app_colors.dart';

import '../theming/app_assets.dart';
import 'app_text_form_field.dart';

class AppCustomSearchBar extends StatelessWidget {
  final String? hintText;
  final Function(String)? validator;
  final Widget? suffixIcon;
  final Color? fillColor;

  const AppCustomSearchBar({
    super.key,
    this.hintText,
    this.validator,
    this.suffixIcon,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: hintText ?? "ابحث عن ماتريد؟",
      validator: validator ?? (value) {},
      prefixIcon: Image.asset(
        AppAssets.searchIconSvg,
        width: 25.w,
        height: 25.h,
      ),
      suffixIcon: suffixIcon,
      fillColor: AppColors.fillGrayColor,
    );
  }
}
