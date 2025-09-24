import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/app_custom_button.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class AddCardButton extends StatefulWidget {
  final TextEditingController holderController;
  final TextEditingController numberController;
  final TextEditingController validController;
  final TextEditingController cvvController;
  final List<Map<String, String>> cards;
  final Function(Map<String, String>) onCardAdded;

  const AddCardButton({
    super.key,
    required this.holderController,
    required this.numberController,
    required this.validController,
    required this.cvvController,
    required this.cards,
    required this.onCardAdded,
  });

  @override
  State<AddCardButton> createState() => _AddCardButtonState();
}

class _AddCardButtonState extends State<AddCardButton> {
  void _addCard() {
    final newCard = {
      "holder": widget.holderController.text,
      "number": widget.numberController.text,
      "valid": widget.validController.text,
      "cvv": widget.cvvController.text,
      "background": AppAssets.blackCardImage,
      "type": AppAssets.visaIcon,
    };

    widget.onCardAdded(newCard);

    widget.holderController.clear();
    widget.numberController.clear();
    widget.validController.clear();
    widget.cvvController.clear();

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) => Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              left: 16.w,
              right: 16.w,
              top: 16.h,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "إضافة بطاقة",
                    style: AppStyles.font16GreenBold,
                  ),
                  verticalSpace(16),
                  AppTextFormField(
                    hintText: "اسم صاحب البطاقة",
                    controller: widget.holderController,
                    validator: (value) {},
                  ),
                  verticalSpace(8),
                  AppTextFormField(
                    hintText: "رقم البطاقة",
                    controller: widget.numberController,
                    validator: (value) {},
                  ),
                  verticalSpace(8),
                  Row(
                    children: [
                      Expanded(
                        child: AppTextFormField(
                          hintText: "تاريخ الإنتهاء (شهر / سنة)",
                          controller: widget.validController,
                          validator: (value) {},
                        ),
                      ),
                      horizontalSpace(8),
                      Expanded(
                        child: AppTextFormField(
                          hintText: "CVV",
                          controller: widget.cvvController,
                          validator: (value) {},
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(16),
                  AppCustomButton(
                    textButton: "إضافة بطاقة",
                    onPressed: _addCard,
                  ),
                  verticalSpace(16),
                ],
              ),
            ),
          ),
        );
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
              "إضافة بطاقة",
              style: AppStyles.font16GreenBold,
            ),
          ),
        ),
      ),
    );
  }
}
