import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/features/cart/logic/cart_cubit.dart';
import 'package:thimar/features/product_details/data/models/get_product_details_response_model.dart';

import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import '../../../cart/logic/cart_state.dart';

class DetailsBottomNavBar extends StatelessWidget {
  final GetProductDetailsResponseModel data;
  final int quantity;

  const DetailsBottomNavBar(
      {super.key, required this.data, required this.quantity});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            context.read<CartCubit>().addToCart(
                  data.data?.id ?? 0,
                  quantity,
                  context,
                );
            // showModalBottomSheet(
            //   context: context,
            //   builder: (_) {
            //     return AddToCartBottomSheetWidget(
            //       title: data.data?.title ?? "",
            //       imageUrl: data.data?.mainImage ?? "",
            //       price: (data.data?.price ?? 0)
            //           .toDouble(),
            //     );
            //     //   BlocBuilder<CartCubit, CartState>(
            //     //   builder: (context, state) {
            //     //     return AddToCartBottomSheetWidget(
            //     //             title: data.data?.title ?? "",
            //     //             imageUrl: data.data?.mainImage ?? "",
            //     //             price: (data.data?.price ?? 0).toDouble(),
            //     //           );
            //     //   },
            //     // );
            //   },
            // );
          },
          child: Container(
            height: 60.h,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
            ),
            child: state is AddToCartLoading == true
                ? Center(
                    child: CircularProgressIndicator(
                      color: AppColors.whiteColor,
                    ),
                  )
                : Row(
                    children: [
                      horizontalSpace(36),
                      Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: AppColors.mediumGreenColor,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Center(
                          child: Image.asset(
                            AppAssets.cartIcon,
                            width: 25.w,
                            height: 25.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      horizontalSpace(10),
                      Text(
                        "إضافة إلي السلة",
                        style: AppStyles.font16WhiteBold,
                      ),
                      Spacer(),
                      Text(
                        "${(data.data?.price ?? 0) * quantity} ر.س",
                        style: AppStyles.font16WhiteBold,
                      ),
                      horizontalSpace(16),
                    ],
                  ),
          ),
        );
      },
    );
  }
}
