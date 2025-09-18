import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/utils/spacing.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../widgets/auth_phone_and_country_widget.dart';
import '../../logic/login_cubit.dart';

class LoginTextFormsWidget extends StatelessWidget {
  const LoginTextFormsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();
    return Form(
      key: loginCubit.formKey,
      child: Column(
        children: [
          AuthPhoneAndCountryWidget(
            phoneController: loginCubit.phoneController,
          ),
          verticalSpace(16),
          AppTextFormField(
            hintText: "كلمة المرور",
            controller: loginCubit.passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'يرجى إدخال كلمة المرور';
              }
            },
            prefixIcon: Image.asset(
              AppAssets.lockImage,
              width: 22.w,
              height: 22.h,
            ),
          ),
          verticalSpace(10),
        ],
      ),
    );
  }
}
