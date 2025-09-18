import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/widgets/auth_header_widget.dart';
import 'package:thimar/features/auth/register/presentation/widgets/register_buttons_widget.dart';
import 'package:thimar/features/auth/register/presentation/widgets/register_text_forms_widget.dart';

import '../../../../core/widgets/auth_background_custom_image.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackgroundCustomImage(
        child: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                AuthHeaderWidget(),
                RegisterTextFormsWidget(),
                RegisterButtonsWidget(),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
