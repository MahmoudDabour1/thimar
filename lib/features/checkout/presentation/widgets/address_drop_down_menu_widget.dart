import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/app_custom_drop_down_menu.dart';
import '../../../address/logic/address_cubit.dart';
import '../../../address/logic/address_state.dart';
import '../../logic/checkout_cubit.dart';

class AddressDropDownMenuWidget extends StatefulWidget {
  final AddressCubit addressCubit;
  final CheckoutCubit checkoutCubit;

  const AddressDropDownMenuWidget(
      {super.key, required this.addressCubit, required this.checkoutCubit});

  @override
  State<AddressDropDownMenuWidget> createState() =>
      _AddressDropDownMenuWidgetState();
}

class _AddressDropDownMenuWidgetState extends State<AddressDropDownMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          value: widget.addressCubit,
          child: BlocBuilder<AddressCubit, AddressState>(
            builder: (context, state) {
              return state.maybeWhen(
                  getAddressSuccess: (data) {
                    final List<String> addressList = (data.data ?? [])
                        .map((e) => e.location?.toString() ?? '')
                        .where((address) => address.isNotEmpty)
                        .toSet()
                        .toList();

                    String? selectedAddress =
                        addressList.isNotEmpty ? addressList.first : null;
                    return StatefulBuilder(
                      builder: (context, setState) {
                        return AppCustomDropDownButtonFormField(
                          items: addressList
                              .map((address) => DropdownMenuItem<String>(
                                    value: address,
                                    child: Text(address),
                                  ))
                              .toList(),
                          value: selectedAddress,
                          fillColor: AppColors.whiteColor,
                          isEnabled: true,
                          labelText: "اختر العنوان",
                          onChanged: (value) {
                            setState(() {
                              selectedAddress = value;
                            });
                          },
                        );
                      },
                    );
                  },
                  orElse: () => SizedBox.shrink());
            },
          ),
        ),
      ],
    );
  }
}
