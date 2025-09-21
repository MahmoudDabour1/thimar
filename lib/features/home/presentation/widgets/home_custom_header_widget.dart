import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/routing/routes.dart';
import 'package:thimar/features/cart/data/models/get_cart_response_model.dart';
import 'package:thimar/features/cart/logic/cart_cubit.dart';

import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../cart/logic/cart_state.dart';

class HomeCustomHeaderWidget extends StatelessWidget {
  const HomeCustomHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                AppAssets.thimarIcon,
                width: 25.w,
                height: 25.h,
              ),
              Text(
                "سلة ثمار",
                style: AppStyles.font14greenBold,
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "التوصيل إلى",
                style: AppStyles.font16GreenBold,
              ),
              Text(
                "شارع الملك فهد - جدة",
                style: AppStyles.font16greenLight,
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              context.pushNamed(Routes.cartScreen);
            },
            child: BlocBuilder<CartCubit, CartState>(
              builder: (context, state) {
                final cartCubit = context.read<CartCubit>();
                final count = cartCubit.cartCount;
                return Badge(
                  label: Text(count.toString() ?? '0',
                      // context
                      // .read<CartCubit>()
                      // .cartCount
                      // .toString(),
                      style: AppStyles.font14WhiteBold),
                  backgroundColor: AppColors.primaryColor,
                  isLabelVisible: count>0,
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      color: AppColors.lighterGreenColor,
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.w),
                      child: Image.asset(
                        AppAssets.bagIconSvg,
                        width: 8.w,
                        height: 8.h,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
