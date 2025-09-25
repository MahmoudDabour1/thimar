import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/theming/app_assets.dart';
import 'package:thimar/core/theming/app_colors.dart';
import 'package:thimar/core/theming/app_styles.dart';
import 'package:thimar/core/utils/spacing.dart';
import 'package:thimar/core/widgets/app_custom_app_bar.dart';
import 'package:thimar/features/address/logic/address_cubit.dart';
import 'package:thimar/features/address/logic/address_state.dart';
import 'package:thimar/features/checkout/logic/checkout_cubit.dart';
import 'package:thimar/features/checkout/presentation/widgets/button_and_prices_widget.dart';
import 'package:thimar/features/checkout/presentation/widgets/name_and_phone_widget.dart';
import 'package:thimar/features/checkout/presentation/widgets/notes_container_widget.dart';
import 'package:thimar/features/checkout/presentation/widgets/time_and_date_widget.dart';

import '../../../core/di/dependency_injection.dart';
import '../../../core/widgets/app_custom_drop_down_menu.dart';
import '../../address/data/models/get_address_response_model.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  String? selectedPayment;
  final addressCubit = sl<AddressCubit>();
  final checkOutCubit = sl<CheckoutCubit>();

  @override
  void initState() {
    super.initState();
    addressCubit.getAddresses();
  }

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
                verticalSpace(8.h),
                BlocProvider.value(
                  value: addressCubit,
                  child: BlocBuilder<AddressCubit, AddressState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                          getAddressSuccess: (data) {
                            final List<Datum> addresses = data.data ?? [];

                            String? selectedAddressId = addresses.isNotEmpty
                                ? addresses.first.id.toString()
                                : null;

                            if (selectedAddressId != null) {
                              checkOutCubit.addressId = selectedAddressId;
                            }

                            return StatefulBuilder(
                              builder: (context, setState) {
                                return AppCustomDropDownButtonFormField(
                                  items: addresses
                                      .map(
                                        (address) => DropdownMenuItem<String>(
                                          value: address.id.toString(),
                                          child: Text(address.location ?? ""),
                                        ),
                                      )
                                      .toList(),
                                  value: selectedAddressId,
                                  fillColor: AppColors.whiteColor,
                                  isEnabled: true,
                                  labelText: "اختر العنوان",
                                  onChanged: (value) {
                                    setState(() {
                                      selectedAddressId = value;
                                    });
                                    checkOutCubit.addressId = value;
                                  },
                                );
                              },
                            );
                          },
                          orElse: () => SizedBox.shrink());
                    },
                  ),
                ),
                TimeAndDateWidget(
                  checkOutCubit: checkOutCubit,
                ),
                NotesContainerWidget(),
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
                BlocProvider.value(
                  value: checkOutCubit,
                  child: ButtonAndPricesWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
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
        checkOutCubit.setPaymentType(methodId);
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
