import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/helpers/helper_methods.dart';
import 'package:thimar/features/checkout/logic/checkout_cubit.dart';
import 'package:thimar/features/checkout/logic/checkout_state.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/app_custom_button.dart';
import 'card_list_view.dart';

class FinishOrderButton extends StatefulWidget {
  const FinishOrderButton({super.key});

  @override
  State<FinishOrderButton> createState() => _FinishOrderButtonState();
}

class _FinishOrderButtonState extends State<FinishOrderButton> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckoutCubit, CheckoutState>(
      builder: (context, state) {
        final cubit = context.read<CheckoutCubit>();
        return AppCustomButton(
          isLoading: state is StoreOrderLoading,
          textButton: "إنهاء الطلب",
          onPressed: () {
            if (cubit.addressId == null) {
              showToast(message: "يرجى اختيار عنوان التوصيل");
              return;
            }

            if (cubit.time == null || cubit.date == null) {
              showToast(message: "يرجى اختيار وقت التوصيل");
              return;
            }

            if (cubit.payType == "visa" || cubit.payType == "master") {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(16.r)),
                ),
                builder: (context) {
                  return StatefulBuilder(
                    builder: (context, setSheetState) {
                      return Padding(
                        padding: EdgeInsets.all(16.w),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                "البطاقات المحفوظة",
                                style: AppStyles.font16GreenBold,
                              ),
                            ),
                            verticalSpace(16),
                            CardListView(),
                            TextButton.icon(
                              onPressed: () {},
                              label: Text(
                                "إضافة بطاقة دفع",
                                style: AppStyles.font14greenBold,
                              ),
                              icon: Image.asset(
                                AppAssets.addIconImage,
                                width: 26.w,
                                height: 26.h,
                              ),
                            ),
                            verticalSpace(16),
                            BlocProvider.value(
                              value: sl<CheckoutCubit>(),
                              child: BlocBuilder<CheckoutCubit, CheckoutState>(
                                builder: (context, state) {
                                  return AppCustomButton(
                                    isLoading: state is StoreOrderLoading,
                                    textButton: "تأكيد الأختيار",
                                    onPressed: () {
                                      cubit.storeOrder(context);
                                    },
                                  );
                                },
                              ),
                            ),
                            verticalSpace(32),
                          ],
                        ),
                      );
                    },
                  );
                },
              );
            } else {
              cubit.storeOrder(context);
            }
          },
        );
      },
    );
  }
}
