import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/features/auth/new_password/logic/new_password_cubit.dart';

import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/utils/spacing.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class NewPasswordTextFormsWidget extends StatelessWidget {
  const NewPasswordTextFormsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<NewPasswordCubit>().formKey,
      child: Column(
        children: [
          verticalSpace(16),
          AppTextFormField(
            controller: context.read<NewPasswordCubit>().passwordController,
            hintText: "كلمة المرور",
            validator: (value) {
              if (value.isEmpty) {
                return "أدخل كلمة مرور صحيحة";
              }
              if (value.length < 6) {
                return "كلمة المرور يجب أن تكون 6 أحرف على الأقل";
              }
              return null;
            },
            prefixIcon: Image.asset(
              AppAssets.lockImage,
              width: 22.w,
              height: 22.h,
            ),
          ),
          verticalSpace(16),
          AppTextFormField(
            hintText: "كلمة المرور",
            validator: (value) {
              if (value.isEmpty) {
                return "أدخل كلمة مرور صحيحة";
              }
              if (value !=
                  context.read<NewPasswordCubit>().passwordController.text) {
                return "كلمة المرور غير متطابقة";
              }
              return null;
            },
            prefixIcon: Image.asset(
              AppAssets.lockImage,
              width: 22.w,
              height: 22.h,
            ),
          ),
          verticalSpace(30),
        ],
      ),
    );
  }
}
