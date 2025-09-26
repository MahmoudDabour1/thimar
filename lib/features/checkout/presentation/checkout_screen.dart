import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/routing/routes.dart';
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
import 'package:thimar/features/checkout/presentation/widgets/payment_methods_widget.dart';
import 'package:thimar/features/checkout/presentation/widgets/time_and_date_widget.dart';

import '../../../core/di/dependency_injection.dart';
import '../../../core/widgets/app_custom_drop_down_menu.dart';
import '../../address/data/models/get_address_response_model.dart';

class CheckoutScreen extends StatefulWidget {
  final double? discount;
  final double? totalPrice;

  const CheckoutScreen({super.key, this.discount, this.totalPrice});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
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
      bottomNavigationBar: BlocProvider.value(
        value: checkOutCubit,
        child: ButtonAndPricesWidget(
          discount: widget.discount,
          totalPrice: widget.totalPrice,
        ),
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
                    GestureDetector(
                      onTap: () {
                        context
                            .pushNamed(Routes.insertAddressScreen, arguments: {
                          "cubit": addressCubit,
                        });
                      },
                      child: Container(
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
                PaymentMethodsWidget(
                  checkOutCubit: checkOutCubit,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
