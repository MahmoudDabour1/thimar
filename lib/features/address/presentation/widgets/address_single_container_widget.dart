import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';

class AddressSingleContainerWidget extends StatelessWidget {
  final String type;
  final String address;
  final String description;
  final String phoneNumber;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const AddressSingleContainerWidget({
    super.key,
    required this.type,
    required this.address,
    required this.description,
    required this.phoneNumber,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: AppColors.primaryColor,
            width: 1.w,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    type,
                    style: AppStyles.font16GreenBold,
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: onDelete,
                    icon: Image.asset(
                      AppAssets.deleteIcon,
                      height: 30.h,
                      width: 30.w,
                      fit: BoxFit.contain,
                    ),
                  ),
                  horizontalSpace(4),
                  IconButton(
                    onPressed: onEdit,
                    icon: Image.asset(
                      AppAssets.editIconImage,
                      height: 30.h,
                      width: 30.w,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              Text(
                "العنوان: $address",
                style: AppStyles.font14greenBold,
              ),
              Text(
                "الوصف: $description",
                style: AppStyles.font15GrayRegular,
              ),
              Text(
                "رقم الجوال: $phoneNumber",
                style: AppStyles.font15GrayRegular,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
