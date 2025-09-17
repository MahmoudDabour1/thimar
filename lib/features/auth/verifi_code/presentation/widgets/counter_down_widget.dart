import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/utils/spacing.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/widgets/app_custom_button.dart';

class CounterDownWidget extends StatefulWidget {
  const CounterDownWidget({super.key});

  @override
  State<CounterDownWidget> createState() => _CounterDownWidgetState();
}

class _CounterDownWidgetState extends State<CounterDownWidget> {
  final CountDownController _controller = CountDownController();

  final int _duration = 30;
  bool _isButtonEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
              return Function.apply(defaultFormatterFunction, [duration]);
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
      ],
    );
  }
}
