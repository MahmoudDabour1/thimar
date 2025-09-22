import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class ChargeWalletCardData extends StatelessWidget {
  const ChargeWalletCardData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(20),
        AppTextFormField(
          hintText: "الاسم",
          fillColor: AppColors.lighterGreenColor,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'يرجى إدخال الاسم';
            }
            return null;
          },
        ),
        verticalSpace(16),
        AppTextFormField(
          fillColor: AppColors.lighterGreenColor,
          hintText: "رقم البطاقة الائتمانية",
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'يرجى إدخال رقم البطاقة الائتمانية';
            }
            return null;
          },
        ),
        verticalSpace(16),
        Row(
          children: [
            Expanded(
              child: AppTextFormField(
                fillColor: AppColors.lighterGreenColor,
                hintText: "تاريخ الانتهاء",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'يرجى إدخال تاريخ الانتهاء';
                  }
                  return null;
                },
              ),
            ),
            horizontalSpace(16),
            Expanded(
              child: AppTextFormField(
                fillColor: AppColors.lighterGreenColor,
                hintText: "الرقم المتسلسل",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'يرجى إدخال الرقم المتسلسل';
                  }
                  return null;
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
