import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/theming/app_assets.dart';
import 'package:thimar/core/theming/app_colors.dart';
import 'package:thimar/core/theming/app_styles.dart';
import 'package:thimar/core/utils/spacing.dart';
import 'package:thimar/features/cart/presentation/widgets/cart_prices_and_button_widget.dart';

import '../../../core/widgets/app_custom_app_bar.dart';
import '../../../core/widgets/app_custom_quantity_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppCustomAppBar(
        appBarTitle: "السلة",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
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
                            imageUrl:
                                'https://thimar.amr.aait-d.com/public/storage/images/product/UoNQ9GerpKSiWqaexOe5IpMwoCjSuT7NKJVEcjI0.jpg',
                            width: 92.w,
                            height: 78.h,
                            fit: BoxFit.fill,
                            placeholder: (context, url) => const Center(
                                child: CircularProgressIndicator()),
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
                                "طماطم",
                                style: AppStyles.font16GreenBold,
                              ),
                              verticalSpace(4),
                              Text(
                                " ر.س45 ",
                                style: AppStyles.font14greenBold,
                              ),
                              verticalSpace(4),
                              AppCustomQuantityWidget(
                                quantity: 1,
                                onQuantityChanged: (newQuantity) {
                                  // Handle quantity change
                                },
                                width: 50.w,
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            AppAssets.deleteIcon,
                            width: 35.w,
                            height: 35.h,
                            fit: BoxFit.fill,
                          ),
                        ),
                        horizontalSpace(16),
                      ],
                    ),
                  ),
                );
              },
            ),
            CartPricesAndButtonWidget(),
          ],
        ),
      ),
    );
  }
}
