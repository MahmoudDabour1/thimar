import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/app_custom_button.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../logic/address_cubit.dart';
import '../../logic/address_state.dart';

class InsertAddressFromWidget extends StatefulWidget {
  final LatLng? currentLatLng;
  final bool isEdit;
  final String? userSelectedType;
  final String? userSelectedPhone;
  final String? userSelectedDescription;
  final int? addressId;

  const InsertAddressFromWidget({
    super.key,
    this.currentLatLng,
    required this.isEdit,
    this.userSelectedType,
    this.userSelectedPhone,
    this.userSelectedDescription,
    this.addressId,
  });

  @override
  State<InsertAddressFromWidget> createState() =>
      _InsertAddressFromWidgetState();
}

class _InsertAddressFromWidgetState extends State<InsertAddressFromWidget> {
  final cubit = sl<AddressCubit>();
  late String selectedType;

  @override
  void initState() {
    selectedType = widget.isEdit ? (widget.userSelectedType ?? "home") : "home";
  }

  @override
  Widget build(BuildContext context) {
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
              verticalSpace(16),
              AppTextFormField(
                  hintText: "نوع العنوان",
                  suffixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ChoiceChip(
                        label: Text(
                          "المنزل",
                          style: AppStyles.font14WhiteBold.copyWith(
                            color: selectedType == "home"
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                        selected: selectedType == "home",
                        onSelected: (val) {
                          setState(() {
                            selectedType = "home";
                          });
                        },
                        selectedColor: AppColors.primaryColor,
                      ),
                      horizontalSpace(10),
                      ChoiceChip(
                        label: Text(
                          "العمل",
                          style: AppStyles.font14WhiteBold.copyWith(
                            color: selectedType == "work"
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                        selected: selectedType == "work",
                        onSelected: (val) {
                          setState(() {
                            selectedType = "work";
                          });
                        },
                        selectedColor: AppColors.primaryColor,
                      ),
                    ],
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'الرجاء إدخال نوع العنوان';
                    }
                    return null;
                  }),
              verticalSpace(8),
              AppTextFormField(
                  hintText: "أدخل رقم الجوال",
                  controller: cubit.phoneController
                    ..text = widget.isEdit
                        ? (widget.userSelectedPhone ?? '')
                        : cubit.phoneController.text,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'الرجاء إدخال رقم الجوال';
                    }
                    return null;
                  }),
              verticalSpace(8),
              AppTextFormField(
                  controller: cubit.descriptionController
                    ..text = widget.isEdit
                        ? (widget.userSelectedDescription ?? '')
                        : cubit.descriptionController.text,
                  hintText: "الوصف",
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'الرجاء إدخال وصف العنوان';
                    }
                    return null;
                  }),
              verticalSpace(16),
              BlocBuilder<AddressCubit, AddressState>(
                builder: (context, state) {
                  return AppCustomButton(
                      isLoading: state is UpdateAddressLoading ||
                          state is InsertAddressLoading,
                      textButton:
                          widget.isEdit ? "تعديل العنوان" : "إضافة العنوان",
                      onPressed: () {
                        if (widget.isEdit) {
                          cubit.updateAddress(
                            addressId: widget.addressId ?? 0,
                            lat: widget.currentLatLng!.latitude.toString(),
                            lng: widget.currentLatLng!.longitude.toString(),
                            type: selectedType,
                            isDefault: true,
                            context: context,
                          );
                        } else {
                          cubit.insertAddress(
                            lat: widget.currentLatLng!.latitude.toString(),
                            lng: widget.currentLatLng!.longitude.toString(),
                            isDefault: true,
                            type: selectedType,
                            context: context,
                          );
                        }
                      });
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
