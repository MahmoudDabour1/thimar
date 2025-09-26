import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/features/checkout/logic/checkout_cubit.dart';

import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';

class PaymentMethodsWidget extends StatefulWidget {
  final CheckoutCubit checkOutCubit;
  const PaymentMethodsWidget({super.key, required this.checkOutCubit});

  @override
  State<PaymentMethodsWidget> createState() => _PaymentMethodsWidgetState();
}

class _PaymentMethodsWidgetState extends State<PaymentMethodsWidget> {
  String? selectedPayment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(16.h),
        Text(
          "اختر طريقة الدفع",
          style: AppStyles.font16GreenExtraBold,
        ),
        Row(
          children: [
            Expanded(
              child: buildPaymentMethod(
                iconPath: AppAssets.moneyIcon,
                title: "كاش",
              ),
            ),
            horizontalSpace(16),
            Expanded(
              child: buildPaymentMethod(
                iconPath: AppAssets.visaIcon,
                title: null,
              ),
            ),
            horizontalSpace(16),
            Expanded(
              child: buildPaymentMethod(
                iconPath: AppAssets.masterIcon,
                title: null,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildPaymentMethod({required String iconPath, String? title}) {
    final methodId = title ??
        (iconPath.contains("visa")
            ? "visa"
            : iconPath.contains("master")
                ? "master"
                : "cash");
    final isSelected = selectedPayment == methodId;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedPayment = methodId;
        });
        widget.checkOutCubit.setPaymentType(methodId);
      },
      child: Container(
        height: 50.h,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: isSelected
                ? AppColors.primaryColor
                : AppColors.textFormGrayColor,
            width: 2,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(iconPath,
                width: title == null ? 40.w : 20.w,
                height: title == null ? 40.h : 20.h),
            horizontalSpace(8),
            if (title != null) ...[
              horizontalSpace(8),
              Text(title, style: AppStyles.font16GreenBold),
            ],
          ],
        ),
      ),
    );
  }
}
