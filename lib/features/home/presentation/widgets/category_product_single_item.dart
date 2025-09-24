import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:thimar/core/theming/app_colors.dart';
import 'package:thimar/core/utils/spacing.dart';
import 'package:thimar/features/cart/logic/cart_cubit.dart';

import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_custom_button.dart';
import '../../../cart/logic/cart_state.dart';

class CategoryProductSingleItem extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final String productUnit;
  final double currentPrice;
  final double oldPrice;
  final double discountPercentage;
  final VoidCallback onAddPressed;
  final bool? isHadAddToCartButton;
  final VoidCallback? onAddToCartPressed;

  const CategoryProductSingleItem({
    super.key,
    required this.imageUrl,
    required this.productName,
    required this.productUnit,
    required this.currentPrice,
    required this.oldPrice,
    required this.discountPercentage,
    required this.onAddPressed,
    this.isHadAddToCartButton = false,
    this.onAddToCartPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(
              16.r,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10.r),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.r),
                        child: CachedNetworkImage(
                          imageUrl: imageUrl,
                          height: 110.h,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          //shimmer
                          placeholder: (context, url) => Shimmer.fromColors(
                            baseColor: Colors.grey[300]!,
                            highlightColor: Colors.grey[100]!,
                            child: Container(
                              height: 110.h,
                              width: double.infinity,
                              color: Colors.white,
                            ),
                          ),

                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 20.h,
                          width: 55.w,
                          decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16.r),
                                bottomRight: Radius.circular(16.r),
                              )),
                          child: Center(
                            child: Text(
                              "-${discountPercentage.toInt()}%",
                              style: AppStyles.font14WhiteBold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  productName,
                  style: AppStyles.font16GreenBold,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  productUnit,
                  style: AppStyles.font16DarkGrayLight.copyWith(
                    fontSize: 12.sp,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Text(
                        "${currentPrice.toStringAsFixed(0)}ر.س",
                        style: AppStyles.font16GreenBold,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    horizontalSpace(2),
                    Flexible(
                      flex: 1,
                      child: Text(
                        "${oldPrice.toStringAsFixed(0)}ر.س",
                        style: AppStyles.font16GreenMedium.copyWith(
                          decoration: TextDecoration.lineThrough,
                          decorationStyle: TextDecorationStyle.solid,
                          decorationColor: AppColors.blackColor,
                          decorationThickness: 30.w,
                          fontSize: 12.sp,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    // horizontalSpace(8),
                    Spacer(),
                    Row(
                      children: [
                        BlocBuilder<CartCubit, CartState>(
                          builder: (context, state) {
                            return GestureDetector(
                              onTap: onAddPressed,
                              child: Container(
                                width: 28.w,
                                height: 28.h,
                                decoration: BoxDecoration(
                                  color: AppColors.mediumGreenColor,
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: AppColors.whiteColor,
                                  size: 23.r,
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    )
                  ],
                ),
                verticalSpace(isHadAddToCartButton == true ? 4 : 8),
                isHadAddToCartButton == true
                    ? Center(
                        child: AppCustomButton(
                          textButton: "أضف للسلة",
                          onPressed: onAddToCartPressed,
                          btnHeight: 30.h,
                          btnWidth: 110.w,
                        ),
                      )
                    : SizedBox.shrink(),
                verticalSpace(isHadAddToCartButton == true ? 4 : 0),
              ],
            ),
          ),
        )
      ],
    );
  }
}
