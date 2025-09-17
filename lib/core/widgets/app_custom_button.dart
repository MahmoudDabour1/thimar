import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';
import '../theming/app_styles.dart';

class AppCustomButton extends StatelessWidget {
  final String textButton;
  final double? btnWidth;
  final double? btnHeight;
  final VoidCallback onPressed;
  final bool isLoading;
  final double radius;
  final bool isBorder;
  final Color? backgroundColor;
  final Color? textColor;

  const AppCustomButton({
    super.key,
    required this.textButton,
    this.btnWidth,
    this.btnHeight,
    required this.onPressed,
    this.isLoading = false,
    this.radius = 8,
    this.isBorder = false,
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius.r),
        color: backgroundColor ?? AppColors.primaryColor,
      ),
      child: TextButton(
        style: ButtonStyle(
          fixedSize: WidgetStateProperty.all<Size>(
            Size(
              btnWidth ?? MediaQuery.sizeOf(context).width.w,
              btnHeight ?? 50.h,
            ),
          ),
        ),
        onPressed: onPressed,
        child: isLoading
            ? CircularProgressIndicator()
            : Text(
                textButton,
                style: AppStyles.font16GreenBold.copyWith(
                  color: textColor,
                ),
                textAlign: TextAlign.center,
              ),
      ),
    );
  }
}
