import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/theming/app_assets.dart';
import 'package:thimar/core/theming/app_colors.dart';
import 'package:thimar/core/theming/app_styles.dart';
import 'package:thimar/core/utils/spacing.dart';
import 'package:thimar/core/widgets/app_custom_app_bar.dart';
import 'package:thimar/features/checkout/presentation/widgets/button_and_prices_widget.dart';
import 'package:thimar/features/checkout/presentation/widgets/name_and_phone_widget.dart';
import 'package:thimar/features/checkout/presentation/widgets/notes_container_widget.dart';
import 'package:thimar/features/checkout/presentation/widgets/payment_method_container.dart';
import 'package:thimar/features/checkout/presentation/widgets/time_and_date_widget.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppCustomAppBar(
        appBarTitle: "إتمام الطلب",
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NameAndPhoneWidget(),
                Row(
                  children: [
                    Text(
                      "اختر عنوان التوصيل",
                      style: AppStyles.font16GreenExtraBold,
                    ),
                    const Spacer(),
                    Container(
                      width: 26.w,
                      height: 26.h,
                      decoration: BoxDecoration(
                        color: AppColors.lighterGreenColor,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Icon(
                        Icons.add,
                        color: AppColors.primaryColor,
                        size: 20.w,
                      ),
                    ),
                  ],
                ),
                TimeAndDateWidget(),
                NotesContainerWidget(),
                verticalSpace(16.h),
                Text(
                  "اختر طريقة الدفع",
                  style: AppStyles.font16GreenExtraBold,
                ),
                Row(
                  children: [
                    Expanded(
                      child: PaymentMethodContainer(
                          iconPath: AppAssets.moneyIcon, title: "كاش"),
                    ),
                    horizontalSpace(16),
                    Expanded(
                      child: PaymentMethodContainer(
                        iconPath: AppAssets.visaIcon,
                      ),
                    ),
                    horizontalSpace(16),
                    Expanded(
                      child: PaymentMethodContainer(
                        iconPath: AppAssets.masterIcon,
                      ),
                    ),
                  ],
                ),
                ButtonAndPricesWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget paymentContainer(
    final String iconPath,
    final String? title,
  ) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.textFormGrayColor),
      ),
      child: title != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Image.asset(
                    iconPath,
                    width: 17.w,
                    height: 17.h,
                    fit: BoxFit.contain,
                  ),
                ),
                horizontalSpace(8),
                Flexible(
                  child: Text(
                    title,
                    style: AppStyles.font16GreenBold,
                  ),
                ),
              ],
            )
          : Padding(
              padding: EdgeInsets.all(8.r),
              child: Image.asset(
                iconPath,
                width: title != null ? 30.w : 65.w,
                height: 20.h,
                fit: BoxFit.contain,
              ),
            ),
    );
  }
}
