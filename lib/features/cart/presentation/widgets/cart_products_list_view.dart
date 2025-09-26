import 'package:animated_confirm_dialog/animated_confirm_dialog.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/routing/routes.dart';
import 'package:thimar/features/cart/data/models/get_cart_response_model.dart';
import 'package:thimar/features/cart/logic/cart_state.dart';
import 'package:thimar/features/favorite/logic/favorite_cubit.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/app_custom_quantity_widget.dart';
import '../../logic/cart_cubit.dart';

class CartProductsListView extends StatelessWidget {
  final GetCartResponseModel data;

  const CartProductsListView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: data.data?.length ?? 0,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            context.pushNamed(Routes.productDetailsScreen, arguments: {
              "productId": data.data?[index].id ?? 0,
              "favCubit": sl<FavoriteCubit>(),
            });
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColors.whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CachedNetworkImage(
                      imageUrl: data.data?[index].image ?? '',
                      width: 92.w,
                      height: 78.h,
                      fit: BoxFit.fill,
                      placeholder: (context, url) =>
                          const Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                  horizontalSpace(10),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.data?[index].title ?? '',
                          style: AppStyles.font16GreenBold,
                        ),
                        verticalSpace(4),
                        Text(
                          "${data.data?[index].price ?? 0} ر.س",
                          style: AppStyles.font14greenBold,
                        ),
                        verticalSpace(4),
                        AppCustomQuantityWidget(
                          quantity: data.data?[index].amount ?? 1,
                          onQuantityChanged: (newQuantity) {
                            context.read<CartCubit>().updateCartData(
                                data.data?[index].id ?? 0, newQuantity);
                          },
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  BlocBuilder<CartCubit, CartState>(
                    builder: (context, state) {
                      final isDeleting = state is DeleteCartLoading &&
                          state.productId == data.data?[index].id;

                      return IconButton(
                        onPressed: isDeleting
                            ? null
                            : () {
                                showCustomDialog(
                                  context: context,
                                  title: "تنبيه",
                                  message:
                                      "هل أنت متأكد من حذف هذا العنصر من السلة؟",
                                  cancelButtonText: "لا",
                                  confirmButtonText: "نعم",
                                  cancelButtonColor: Colors.red,
                                  cancelButtonTextColor: Colors.white,
                                  confirmButtonColor: Colors.green,
                                  confirmButtonTextColor: Colors.white,
                                  onCancel: () {
                                    Navigator.of(context).pop();
                                  },
                                  onConfirm: () {
                                    context.read<CartCubit>().deleteCartData(
                                        data.data?[index].id ?? 0);
                                    context.pop();
                                  },
                                  isFlip: true,
                                );
                              },
                        icon: isDeleting
                            ? SizedBox(
                                width: 24.w,
                                height: 24.w,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: AppColors.primaryColor,
                                ),
                              )
                            : Image.asset(
                                AppAssets.deleteIcon,
                                width: 35.w,
                                height: 35.h,
                                fit: BoxFit.fill,
                              ),
                      );
                    },
                  ),
                  horizontalSpace(16),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
