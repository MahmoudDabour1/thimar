import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/helpers/helper_methods.dart';
import 'package:thimar/core/utils/spacing.dart';
import 'package:thimar/features/checkout/data/models/store_order_request_body.dart';
import 'package:thimar/features/checkout/data/repos/checkout_repo.dart';
import 'package:thimar/features/checkout/logic/checkout_state.dart';

import '../../../core/routing/routes.dart';
import '../../../core/theming/app_assets.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_styles.dart';
import '../../../core/widgets/app_custom_button.dart';

class CheckoutCubit extends Cubit<CheckoutState> {
  final CheckoutRepo checkoutRepo;

  CheckoutCubit(this.checkoutRepo) : super(CheckoutState.initial());
  String? addressId;
  String? date;
  String? time;
  String? payType;

  void setPaymentType(String type) {
    payType = type;
    emit(CheckoutState.checkoutPaymentUpdated());
  }

  Future<void> storeOrder(BuildContext context) async {
    emit(CheckoutState.storeOrderLoading());
    final response = await checkoutRepo.storeOrder(
      StoreOrderRequestBody(
        addressId: addressId,
        date: date,
        time: time,
        payType: payType ?? "cash",
      ),
    );
    response.when(success: (data) {
      emit(CheckoutState.storeOrderSuccess(data));
      showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
        ),
        builder: (
          context,
        ) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              verticalSpace(16),
              Image.asset(
                AppAssets.thanksImage,
                width: 250.w,
                height: 250.h,
                fit: BoxFit.contain,
              ),
              Text(
                "شكرا لك لقد تم تنفيذ طلبك بنجاح",
                style: AppStyles.font16GreenBold,
              ),
              Text(
                "يمكنك متابعة حالة الطلب او الرجوع للرئسيية",
                style: AppStyles.font16GreenMedium
                    .copyWith(color: AppColors.darkerGrayColor),
              ),
              verticalSpace(16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  children: [
                    Expanded(
                      child: AppCustomButton(
                        textButton: "طلباتي",
                        onPressed: () {
                          context.pushNamed(
                            Routes.bottomNavBarLayout,
                            arguments: 1,
                          );
                        },
                      ),
                    ),
                    horizontalSpace(8),
                    Expanded(
                        child: AppCustomButton(
                      textButton: "الرئيسية",
                      onPressed: () {
                        context.pushNamed(
                          Routes.bottomNavBarLayout,
                        );
                      },
                      isBorder: true,
                    )),
                  ],
                ),
              ),
              verticalSpace(16)
            ],
          );
        },
      );
      showToast(message: data.message.toString());
    }, failure: (error) {
      showToast(message: error.message.toString());
      emit(CheckoutState.storeOrderError(error.message.toString()));
    });
  }
}
