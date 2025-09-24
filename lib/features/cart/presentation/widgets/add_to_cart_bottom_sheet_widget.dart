import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/app_custom_button.dart';

class AddToCartBottomSheetWidget extends StatelessWidget {
  final String? title;
  final String? imageUrl;
  final double? price;

  const AddToCartBottomSheetWidget(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(8),
          Text(
            "تمت إضافة المنتج إلى السلة بنجاح",
            style: AppStyles.font16GreenBold,
          ),
          Divider(
            color: AppColors.lightGrayColor,
          ),
          Row(
            children: [
              Image.network(
                imageUrl ?? "",
                width: 80.w,
                height: 80.h,
                fit: BoxFit.cover,
              ),
              horizontalSpace(16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title ?? "",
                      style: AppStyles.font14greenBold,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    verticalSpace(8),
                    Row(
                      children: [
                        Text(
                          "${(price ?? 0).toDouble()} ر.س",
                          style: AppStyles.font14greenBold,
                        ),
                        horizontalSpace(8),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          verticalSpace(24),
          Row(
            children: [
              Expanded(
                child: AppCustomButton(
                  textButton: "التحويل إلى السلة",
                  onPressed: () {
                    Navigator.pop(context);
                    context.pushNamed(Routes.cartScreen);
                  },
                ),
              ),
              horizontalSpace(8),
              Expanded(
                child: AppCustomButton(
                  textButton: "تصفح العروض",
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  isBorder: true,
                ),
              ),
            ],
          ),
          verticalSpace(16),
        ],
      ),
    );
  }
}
