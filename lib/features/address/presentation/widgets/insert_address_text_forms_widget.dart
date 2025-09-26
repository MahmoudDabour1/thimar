import 'package:flutter/material.dart';
import 'package:thimar/features/address/data/models/insert_address_form_model.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class InsertAddressTextFormsWidget extends StatefulWidget {
  final InsertAddressFormModel model;
  final String selectedType;
  final ValueChanged<String> onTypeChanged;

  const InsertAddressTextFormsWidget({
    super.key,
    required this.model,
    required this.selectedType,
    required this.onTypeChanged,
  });

  @override
  State<InsertAddressTextFormsWidget> createState() =>
      _InsertAddressTextFormsWidgetState();
}

class _InsertAddressTextFormsWidgetState
    extends State<InsertAddressTextFormsWidget> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.model.cubit.formKey,
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
                        color: widget.selectedType == "home"
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                    selected: widget.selectedType == "home",
                    onSelected: (val) {
                      if (val) widget.onTypeChanged("home");
                    },
                    selectedColor: AppColors.primaryColor,
                  ),
                  horizontalSpace(10),
                  ChoiceChip(
                    label: Text(
                      "العمل",
                      style: AppStyles.font14WhiteBold.copyWith(
                        color: widget.selectedType == "work"
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                    selected: widget.selectedType == "work",
                    onSelected: (val) {
                      if (val) widget.onTypeChanged("work");
                    },
                    selectedColor: AppColors.primaryColor,
                  ),
                ],
              ),
              validator: (value) {}),
          verticalSpace(8),
          AppTextFormField(
              hintText: "أدخل رقم الجوال",
              keyboardType: TextInputType.phone,
              controller: widget.model.cubit.phoneController
                ..text = widget.model.isEdit
                    ? (widget.model.userSelectedPhone ?? '')
                    : widget.model.cubit.phoneController.text,
              validator: (value) {
                if (value.isEmpty) {
                  return 'الرجاء إدخال رقم الجوال';
                }
                return null;
              }),
          verticalSpace(8),
          AppTextFormField(
              controller: widget.model.cubit.descriptionController
                ..text = widget.model.isEdit
                    ? (widget.model.userSelectedDescription ?? '')
                    : widget.model.cubit.descriptionController.text,
              hintText: "الوصف",
              validator: (value) {
                if (value.isEmpty) {
                  return 'الرجاء إدخال وصف العنوان';
                }
                return null;
              }),
          verticalSpace(16),
        ],
      ),
    );
  }
}
