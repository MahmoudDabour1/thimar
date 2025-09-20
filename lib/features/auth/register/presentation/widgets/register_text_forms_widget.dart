import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/features/auth/register/presentation/logic/register_cubit.dart';

import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/utils/spacing.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../widgets/auth_phone_and_country_widget.dart';

class RegisterTextFormsWidget extends StatelessWidget {
  const RegisterTextFormsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();
    return Form(
      key: cubit.formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: "اسم المستخدم",
            controller: cubit.nameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "أدخل اسم مستخدم صحيح";
              }
              return null;
            },
            prefixIcon: Image.asset(
              AppAssets.personIcon,
              width: 22.w,
              height: 22.h,
            ),
          ),
          verticalSpace(16),
          AuthPhoneAndCountryWidget(
            phoneController: cubit.phoneController,
          ),
          verticalSpace(16),
          AppTextFormField(
            hintText: "المدينة",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "أدخل مدينة صحيحة";
              }
              return null;
            },
            prefixIcon: Image.asset(
              AppAssets.flagImage,
              width: 22.w,
              height: 22.h,
            ),
          ),
          verticalSpace(16),
          AppTextFormField(
            controller: cubit.passwordController,
            hintText: "كلمة المرور",
            validator: (value) {
              if (value == null || value.isEmpty) {
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
            controller: cubit.confirmPasswordController,
            hintText: "كلمة المرور",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "أدخل كلمة مرور صحيحة";
              }
              if (value != cubit.passwordController.text) {
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
