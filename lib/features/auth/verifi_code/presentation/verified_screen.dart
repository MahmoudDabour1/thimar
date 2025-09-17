import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/theming/app_styles.dart';
import 'package:thimar/core/utils/spacing.dart';
import 'package:thimar/core/widgets/app_custom_button.dart';
import 'package:thimar/core/widgets/auth_header_widget.dart';
import 'package:thimar/features/auth/verifi_code/presentation/widgets/otp_fields_widget.dart';
import 'package:thimar/features/auth/widgets/auth_text_and_button_row_widget.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_colors.dart';

class VerifiedScreen extends StatefulWidget {
  const VerifiedScreen({super.key});

  @override
  State<VerifiedScreen> createState() => _VerifiedScreenState();
}

class _VerifiedScreenState extends State<VerifiedScreen> {
  final CountDownController _controller = CountDownController();

  final int _duration = 30;
  bool _isButtonEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                AuthHeaderWidget(
                  title: "نسيت كلمة المرور",
                  subTitle:
                      "أدخل الكود المكون من 4 أرقام المرسل علي رقم الجوال",
                  isHasButton: true,
                  phoneNumber: "+9660548745",
                ),
                OtpFieldsWidget(),
                verticalSpace(28),
                AppCustomButton(
                  textButton: "تأكيد الكود",
                  onPressed: () {
                    context.pushNamed(Routes.newPasswordScreen);
                  },
                ),
                verticalSpace(28),
                Text(
                  "لم تستلم الكود ؟\nيمكنك إعادة إرسال الكود بعد",
                  style: AppStyles.font16DarkGrayLight,
                  textAlign: TextAlign.center,
                ),
                verticalSpace(20),
                CircularCountDownTimer(
                  width: 66.w,
                  height: 66.h,
                  duration: _duration,
                  initialDuration: 22,
                  isReverse: true,
                  textFormat: CountdownTextFormat.MM_SS,
                  strokeWidth: 3.w,
                  // controller: _controller,
                  ringColor: AppColors.primaryColor,
                  fillColor: AppColors.lightGrayColor,
                  strokeCap: StrokeCap.round,
                  textStyle: AppStyles.font16DarkGrayLight,
                  textAlign: TextAlign.center,
                  isTimerTextShown: true,
                  autoStart: true,
                  onStart: () {
                    debugPrint('Countdown Started');
                    setState(() {
                      _isButtonEnabled = false;
                    });
                  },
                  onComplete: () {
                    debugPrint('Countdown Ended');
                    setState(() {
                      _isButtonEnabled = true;
                    });
                  },
                  onChange: (String timeStamp) {
                    debugPrint('Countdown Changed $timeStamp');
                  },
                  timeFormatterFunction: (defaultFormatterFunction, duration) {
                    if (duration.inSeconds == 0) {
                      return "00:00";
                    } else {
                      return Function.apply(
                          defaultFormatterFunction, [duration]);
                    }
                  },
                ),
                verticalSpace(20),
                AppCustomButton(
                  textButton: "إعادة الإرسال",
                  onPressed: _isButtonEnabled
                      ? () {
                          _controller.restart(duration: _duration);
                          setState(() {
                            _isButtonEnabled = false;
                          });
                        }
                      : null,
                  isBorder: true,
                  btnWidth: 133.w,
                  btnHeight: 47.h,
                  radius: 16.r,
                  textColor: AppColors.primaryColor,
                ),
                verticalSpace(45),
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
    );
  }
}
