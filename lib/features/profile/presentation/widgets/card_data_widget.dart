import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class CardDataWidget extends StatelessWidget {
  final String backgroundImage;
  final String cardHolderName;
  final String validDate;
  final String cardNumber;
  final bool isSelected;
  final VoidCallback? onDelete;
  final String? cardTypeImage;
  final double? width;
  final double? height;

  const CardDataWidget(
      {super.key,
      required this.backgroundImage,
      required this.cardHolderName,
      required this.validDate,
      required this.cardNumber,
      required this.isSelected,
      this.onDelete,
      this.cardTypeImage,
      this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? 160.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            backgroundImage,
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Checkbox.adaptive(
                  value: isSelected,
                  onChanged: (value) {},
                  checkColor: AppColors.primaryColor,
                  activeColor: AppColors.whiteColor,
                ),
                IconButton(
                  onPressed: onDelete,
                  icon: Image.asset(
                    AppAssets.deleteCardImage,
                    width: 20.w,
                    height: 20.h,
                    fit: BoxFit.contain,
                  ),
                ),
                Spacer(),
                Image.asset(
                  cardTypeImage ?? AppAssets.visaIcon,
                  width: 50.w,
                  height: 16.h,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            Spacer(),
            Text(
              cardHolderName,
              style: AppStyles.font16WhiteBold,
            ),
            Spacer(),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "VALID DATE",
                      style: AppStyles.font16greenLight.copyWith(
                        color: AppColors.whiteColor,
                        fontSize: 12.sp,
                      ),
                    ),
                    Text(
                      validDate,
                      style: AppStyles.font16WhiteBold,
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  cardNumber,
                  style: AppStyles.font16WhiteBold,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
