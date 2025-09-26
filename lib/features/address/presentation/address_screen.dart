import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/helpers/helper_methods.dart';
import 'package:thimar/core/utils/spacing.dart';
import 'package:thimar/core/widgets/app_custom_app_bar.dart';
import 'package:thimar/core/widgets/app_loading_indicator_widget.dart';
import 'package:thimar/features/address/data/models/address_single_item_model.dart';
import 'package:thimar/features/address/data/models/get_address_response_model.dart';
import 'package:thimar/features/address/data/models/insert_address_form_model.dart';
import 'package:thimar/features/address/logic/address_cubit.dart';
import 'package:thimar/features/address/logic/address_state.dart';
import 'package:thimar/features/address/presentation/widgets/address_single_container_widget.dart';

import '../../../core/di/dependency_injection.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theming/app_styles.dart';
import '../../../core/widgets/app_custom_dotted_border.dart';
import '../../../core/widgets/app_custom_error_widget.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  final cubit = sl<AddressCubit>();

  @override
  void initState() {
    super.initState();
    cubit.getAddresses();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppCustomAppBar(appBarTitle: "العناوين"),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.h),
        child: GestureDetector(
          onTap: () {
            context
                .pushNamed(
              Routes.insertAddressScreen,
              arguments: InsertAddressFormModel(
                isEdit: false,
                cubit: cubit,
              ),
            )
                .then((_) {
              cubit.updateAddresses();
            });
          },
          child: AppCustomDottedBorder(title: "اضافة عنوان"),
        ),
      ),
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
                    getAddressLoading: () => AppLoadingIndicatorWidget(),
                    getAddressSuccess: (data) => data.data == null
                        ? Center(
                            child: Text(
                              "لا يوجد عناوين مضافة",
                              style: AppStyles.font20GreenBold,
                            ),
                          )
                        : setupSuccess(data, context, cubit),
                    getAddressFailure: (error) =>
                        AppCustomErrorWidget(error: error),
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
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: data.data?.length ?? 0,
            itemBuilder: (context, index) {
              final address = data.data?[index];
              return AddressSingleContainerWidget(
                addressModel: AddressSingleItemModel(
                  id: address?.id ?? 0,
                  type: address?.type ?? '',
                  address: address?.location ?? '',
                  description: address?.location ?? '',
                  phoneNumber: address?.phone ?? '',
                  onEdit: () {
                    context.pushNamed(
                      Routes.insertAddressScreen,
                      arguments: InsertAddressFormModel(
                        addressId: address?.id ?? 0,
                        userSelectedPhone: address?.phone ?? '',
                        userSelectedDescription: address?.location ?? '',
                        userSelectedType: address?.type ?? '',
                        isEdit: true,
                        cubit: cubit,
                      ),
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
                ),
              );
            },
          ),
          verticalSpace(16.h),
        ],
      ),
    );
  }
}
