import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/utils/spacing.dart';
import 'package:thimar/core/widgets/app_custom_button.dart';
import 'package:thimar/core/widgets/auth_header_widget.dart';
import 'package:thimar/features/auth/forget_password/logic/forget_password_cubit.dart';
import 'package:thimar/features/auth/verifi_code/logic/verified_code_cubit.dart';
import 'package:thimar/features/auth/verifi_code/logic/verified_code_state.dart';
import 'package:thimar/features/auth/verifi_code/presentation/widgets/counter_down_and_send_button_widget.dart';
import 'package:thimar/features/auth/verifi_code/presentation/widgets/otp_fields_widget.dart';
import 'package:thimar/features/auth/widgets/auth_text_and_button_row_widget.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/auth_background_custom_image.dart';

class VerifiedScreen extends StatefulWidget {
  final String phone;
  final bool isActiveAccount;

  const VerifiedScreen(
      {super.key, required this.phone, required this.isActiveAccount});

  @override
  State<VerifiedScreen> createState() => _VerifiedScreenState();
}

class _VerifiedScreenState extends State<VerifiedScreen> {
  final CountDownController _controller = CountDownController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerifiedCodeCubit(sl()),
      child: Scaffold(
        body: AuthBackgroundCustomImage(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  children: [
                    AuthHeaderWidget(
                      title: widget.isActiveAccount
                          ? "تفعيل الحساب"
                          : "نسيت كلمة المرور",
                      subTitle:
                          "أدخل الكود المكون من 4 أرقام المرسل علي رقم الجوال",
                      isHasButton: true,
                      phoneNumber: widget.phone,
                      onPressed: () {
                        context.pushNamed(
                          widget.isActiveAccount
                              ? Routes.registerScreen
                              : Routes.forgetPasswordScreen,
                        );
                      },
                    ),
                    OtpFieldsWidget(
                      phone: widget.phone,
                      isActiveAccount: widget.isActiveAccount,
                    ),
                    verticalSpace(28),
                    BlocBuilder<VerifiedCodeCubit, VerifiedCodeState>(
                      builder: (context, state) {
                        final cubit = context.read<VerifiedCodeCubit>();
                        return AppCustomButton(
                          isLoading: state is VerifiedCodeLoading,
                          textButton: "تأكيد الكود",
                          onPressed: () {
                            widget.isActiveAccount
                                ? cubit.verifiedAccount(widget.phone, context)
                                : cubit.checkCode(widget.phone, context);
                          },
                        );
                      },
                    ),
                    BlocProvider(
                      create: (context) => ForgetPasswordCubit(sl()),
                      child: Builder(
                        builder: (context) => CounterDownAndSendButtonWidget(
                          controller: _controller,
                          forgetPasswordCubit:
                              context.read<ForgetPasswordCubit>(),
                          phone: widget.phone,
                        ),
                      ),
                    ),
                    AuthTextAndButtonRowWidget(
                      text: "لديك حساب بالفعل ؟",
                      buttonText: "تسجيل الدخول",
                      onPressed: () {
                        context.pushNamed(Routes.loginScreen);
                      },
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
