import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class NotesContainerWidget extends StatelessWidget {
  const NotesContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(22),
        Text(
          "ملاحظات وتعليمات",
          style: AppStyles.font16GreenExtraBold,
        ),
        verticalSpace(10),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: AppColors.whiteColor,
            border: Border.all(color: AppColors.textFormGrayColor),
          ),
          child: AppTextFormField(
            hintText: "",
            validator: (value) {},
            maxLines: 5,
          ),
        ),
      ],
    );
  }
}
