import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/widgets/app_text_form_field.dart';
import 'package:thimar/features/cart/logic/cart_cubit.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/app_custom_button.dart';
import '../../logic/cart_state.dart';

class CartPricesAndButtonWidget extends StatelessWidget {
  final double? discount;
  final double? totalPrice;

  const CartPricesAndButtonWidget({super.key, this.discount, this.totalPrice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          AppTextFormField(
            hintText: "عندك كوبون ؟ ادخل رقم الكوبون",
            validator: (value) {
              if (value.isEmpty) {
                return 'الرجاء إدخال رقم الكوبون';
              }
            },
            suffixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppCustomButton(
                onPressed: () {},
                textButton: "تطبيق",
                btnWidth: 80.w,
                btnHeight: 50.h,
              ),
            ),
          ),
          verticalSpace(12),
          Text(
            "جميع الأسعار تشمل قيمة الضريبة المضافة 15%",
            style: AppStyles.font16GreenBold,
          ),
          verticalSpace(12),
          Container(
            decoration: BoxDecoration(
              color: AppColors.lighterGreenColor,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("إجمالي المنتجات",
                          style: AppStyles.font16GreenMedium),
                      Spacer(),
                      BlocBuilder<CartCubit, CartState>(
                        buildWhen: (prev, curr) => curr is GetCartSuccess,
                        builder: (context, state) {
                          return state.maybeWhen(
                            getCartSuccess: (data) => Text(
                              "${data.totalPriceBeforeDiscount} ر.س",
                              style: AppStyles.font16GreenMedium,
                            ),
                            orElse: () => SizedBox.shrink(),
                          );
                        },
                      ),
                    ],
                  ),
                  verticalSpace(10),
                  Row(
                    children: [
                      Text("الخصم", style: AppStyles.font16GreenMedium),
                      Spacer(),
                      BlocBuilder<CartCubit, CartState>(
                        buildWhen: (prev, curr) => curr is GetCartSuccess,
                        builder: (context, state) {
                          return state.maybeWhen(
                            getCartSuccess: (data) => Text(
                              "${data.totalDiscount} ر.س",
                              style: AppStyles.font16GreenMedium,
                            ),
                            orElse: () => SizedBox.shrink(),
                          );
                        },
                      ),
                    ],
                  ),
                  verticalSpace(10),
                  Divider(),
                  verticalSpace(10),
                  Row(
                    children: [
                      Text(
                        "المجموع",
                        style: AppStyles.font16BlackExtraBold.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                      Spacer(),
                      BlocBuilder<CartCubit, CartState>(
                        buildWhen: (prev, curr) => curr is GetCartSuccess,
                        builder: (context, state) {
                          return state.maybeWhen(
                            getCartSuccess: (data) => Text(
                              "${data.totalPriceWithVat} ر.س",
                              style: AppStyles.font16BlackExtraBold.copyWith(
                                color: AppColors.primaryColor,
                              ),
                            ),
                            orElse: () => SizedBox.shrink(),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          verticalSpace(10),
          AppCustomButton(
            textButton: "الانتقال لإتمام الطلب",
            onPressed: () {
              context.pushNamed(Routes.checkoutScreen, arguments: {
                'discount': discount,
                'totalPrice': totalPrice,
              });
            },
          ),
          verticalSpace(16),
        ],
      ),
    );
  }
}
