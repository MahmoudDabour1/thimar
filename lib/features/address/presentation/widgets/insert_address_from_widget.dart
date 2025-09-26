import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/app_custom_button.dart';
import '../../data/models/insert_address_form_model.dart';
import '../../logic/address_cubit.dart';
import '../../logic/address_state.dart';
import 'insert_address_text_forms_widget.dart';

class InsertAddressFromWidget extends StatefulWidget {
  final InsertAddressFormModel insertAddressFormModel;

  const InsertAddressFromWidget({
    super.key,
    required this.insertAddressFormModel,
  });

  @override
  State<InsertAddressFromWidget> createState() =>
      _InsertAddressFromWidgetState();
}

class _InsertAddressFromWidgetState extends State<InsertAddressFromWidget> {
  late String selectedType;

  @override
  void initState() {
    super.initState();
    selectedType = widget.insertAddressFormModel.isEdit
        ? (widget.insertAddressFormModel.userSelectedType ?? "home")
        : "home";
  }

  @override
  Widget build(BuildContext context) {
    final model = widget.insertAddressFormModel;
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.9),
              blurRadius: 12,
              spreadRadius: 15,
              offset: const Offset(0, -10),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              InsertAddressTextFormsWidget(
                model: model,
                selectedType: selectedType,
                onTypeChanged: (val) {
                  setState(() {
                    selectedType = val;
                  });
                },
              ),
              BlocBuilder<AddressCubit, AddressState>(
                builder: (context, state) {
                  return AppCustomButton(
                    isLoading: state is InsertAddressLoading ||
                        state is UpdateAddressLoading,
                    textButton:
                        model.isEdit ? "تعديل العنوان" : "إضافة العنوان",
                    onPressed: () {
                      if (model.cubit.formKey.currentState!.validate()) {
                        if (model.isEdit) {
                          model.cubit.updateAddress(
                            addressId: model.addressId ?? 0,
                            lat: model.currentLatLng!.latitude.toString(),
                            lng: model.currentLatLng!.longitude.toString(),
                            type: selectedType,
                            isDefault: true,
                            context: context,
                          );
                        } else {
                          model.cubit.insertAddress(
                            lat: model.currentLatLng!.latitude.toString(),
                            lng: model.currentLatLng!.longitude.toString(),
                            isDefault: true,
                            type: selectedType,
                            context: context,
                          );
                        }
                      }
                    },
                  );
                },
              ),
              verticalSpace(32),
            ],
          ),
        ),
      ),
    );
  }
}
