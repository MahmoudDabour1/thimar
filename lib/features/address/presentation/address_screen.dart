import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/helpers/helper_methods.dart';
import 'package:thimar/core/theming/app_colors.dart';
import 'package:thimar/core/utils/spacing.dart';
import 'package:thimar/core/widgets/app_custom_app_bar.dart';
import 'package:thimar/features/address/data/models/get_address_response_model.dart';
import 'package:thimar/features/address/logic/address_cubit.dart';
import 'package:thimar/features/address/logic/address_state.dart';
import 'package:thimar/features/address/presentation/widgets/address_single_container_widget.dart';

import '../../../core/di/dependency_injection.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theming/app_styles.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = sl<AddressCubit>();
    return Scaffold(
      appBar: AppCustomAppBar(appBarTitle: "العناوين"),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: BlocProvider.value(
            value: cubit..getAddresses(),
            child: BlocBuilder<AddressCubit, AddressState>(
                buildWhen: (previous, current) =>
                    previous != current &&
                    (current is GetAddressLoading ||
                        current is GetAddressSuccess ||
                        current is GetAddressFailure),
                builder: (context, state) {
                  return state.maybeWhen(
                    getAddressLoading: () => Center(
                      child: CircularProgressIndicator(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    getAddressSuccess: (data) =>
                        setupSuccess(data, context, cubit),
                    getAddressFailure: (error) => Center(
                      child: Text(
                        error,
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    orElse: () => SizedBox.shrink(),
                  );
                }),
          ),
        ),
      ),
    );
  }

  Widget setupSuccess(
      GetAddressResponseModel data, BuildContext context, AddressCubit cubit) {
    return SingleChildScrollView(
      child: Column(
        children: [
          verticalSpace(16),
          data.data == null
              ? Text(
                  "لا يوجد عناوين مضافة",
                  style: AppStyles.font20GreenBold,
                )
              : ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: data.data?.length ?? 0,
                  itemBuilder: (context, index) {
                    final address = data.data?[index];
                    return AddressSingleContainerWidget(
                      type: address?.type ?? '',
                      address: address?.location ?? '',
                      description: address?.location ?? '',
                      phoneNumber: address?.phone ?? '',
                      onEdit: () {
                        context.pushNamed(
                          Routes.insertAddressScreen,
                          arguments: {
                            "type": address?.type??"",
                            "address": address?.location ?? "",
                            "description": address?.location ?? "",
                            "phoneNumber": address?.phone ?? "",
                            "isEdit": true,
                            "addressId" : address?.id ?? 0,
                          },
                        );
                      },
                      onDelete: () {
                        appCustomDialog(
                            context: context,
                            onConfirmPress: () {
                              cubit.deleteAddress(address?.id ?? 0);
                              context.pop();
                            });
                      },
                    );
                  },
                ),
          verticalSpace(16.h),
          GestureDetector(
            onTap: () {
              context.pushNamed(Routes.insertAddressScreen);
            },
            child: DottedBorder(
              color: Colors.grey,
              strokeWidth: 1.w,
              borderType: BorderType.RRect,
              radius: Radius.circular(16.r),
              dashPattern: [6, 4],
              child: Container(
                height: 60.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: AppColors.lighterGreenColor,
                ),
                child: Center(
                  child: Text(
                    "إضافة عنوان",
                    style: AppStyles.font16GreenBold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
