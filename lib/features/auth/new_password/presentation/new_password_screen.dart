import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/widgets/auth_background_custom_image.dart';
import 'package:thimar/core/widgets/auth_header_widget.dart';
import 'package:thimar/features/auth/new_password/logic/new_password_cubit.dart';
import 'package:thimar/features/auth/new_password/presentation/widgets/new_password_buttons_widget.dart';
import 'package:thimar/features/auth/new_password/presentation/widgets/new_password_text_forms_widget.dart';

import '../../../../core/di/dependency_injection.dart';

class NewPasswordScreen extends StatelessWidget {
  final String phone;
  final String code;

  const NewPasswordScreen({
    super.key,
    required this.phone,
    required this.code,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewPasswordCubit(sl()),
      child: Scaffold(
        body: AuthBackgroundCustomImage(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  children: [
                    AuthHeaderWidget(
                      title: "نسيت كلمة المرور",
                      subTitle: "أدخل كلمة المرور الجديدة",
                    ),
                    NewPasswordTextFormsWidget(),
                    NewPasswordButtonsWidget(
                      phone: phone,
                      code: code,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
