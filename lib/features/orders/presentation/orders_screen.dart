import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/theming/app_colors.dart';
import 'package:thimar/core/theming/app_styles.dart';
import 'package:thimar/core/widgets/app_custom_app_bar.dart';
import 'package:thimar/features/orders/presentation/widgets/current_orders_tap.dart';
import 'package:thimar/features/orders/presentation/widgets/finish_orders_tap.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppCustomAppBar(
        appBarTitle: "طلباتي",
        isHaveBackButton: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              Container(
                height: 55.h,
                padding: EdgeInsets.all(6.w),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.lighterGreenColor,
                    width: 1.w,
                  ),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: TabBar(
                  tabs: [
                    Tab(
                      text: "الحالية",
                    ),
                    Tab(
                      text: "المنتهية",
                    ),
                  ],
                  labelColor: AppColors.whiteColor,
                  unselectedLabelColor: AppColors.grayColor,
                  automaticIndicatorColorAdjustment: true,
                  indicatorWeight: 3.0,
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: AppColors.primaryColor,
                  ),
                  indicatorColor: AppColors.primaryColor,
                  labelStyle: AppStyles.font16WhiteBold,
                  unselectedLabelStyle: AppStyles.font20BlackMedium,
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    CurrentOrdersTap(),
                    FinishOrdersTap(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
