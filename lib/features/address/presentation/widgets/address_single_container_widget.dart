import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/widgets/app_loading_indicator_widget.dart';
import 'package:thimar/features/address/data/models/address_single_item_model.dart';
import 'package:thimar/features/address/logic/address_cubit.dart';
import 'package:thimar/features/address/logic/address_state.dart';

import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';

class AddressSingleContainerWidget extends StatefulWidget {
  final AddressSingleItemModel addressModel;

  const AddressSingleContainerWidget({
    super.key,
    required this.addressModel,
  });

  @override
  State<AddressSingleContainerWidget> createState() =>
      _AddressSingleContainerWidgetState();
}

class _AddressSingleContainerWidgetState
    extends State<AddressSingleContainerWidget> {
  @override
  Widget build(BuildContext context) {
    final model = widget.addressModel;

    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: AppColors.primaryColor,
            width: 1.w,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    model.type,
                    style: AppStyles.font16GreenBold,
                  ),
                  Spacer(),
                  BlocBuilder<AddressCubit, AddressState>(
                    builder: (context, state) {
                      return state is DeleteAddressLoading &&
                              state.id == model.id
                          ? AppLoadingIndicatorWidget(
                              size: 25.h,
                            )
                          : IconButton(
                              onPressed: model.onDelete,
                              icon: Image.asset(
                                AppAssets.deleteIcon,
                                height: 30.h,
                                width: 30.w,
                                fit: BoxFit.contain,
                              ),
                            );
                    },
                  ),
                  horizontalSpace(4),
                  IconButton(
                    onPressed: model.onEdit,
                    icon: Image.asset(
                      AppAssets.editIconImage,
                      height: 30.h,
                      width: 30.w,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              Text(
                "العنوان: ${model.address}",
                style: AppStyles.font14greenBold,
              ),
              Text(
                "الوصف: ${model.description}",
                style: AppStyles.font15GrayRegular,
              ),
              Text(
                "رقم الجوال: ${model.phoneNumber}",
                style: AppStyles.font15GrayRegular,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
