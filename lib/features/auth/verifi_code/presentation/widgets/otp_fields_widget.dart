import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpFieldsWidget extends StatelessWidget {
  const OtpFieldsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      validator: (value) {
        if (value == null) {
          return "Can't do this";
        }
      },
      appContext: (context),
      length: 4,
      animationType: AnimationType.slide,
      keyboardType: TextInputType.number,
      cursorColor: Theme.of(context).primaryColor,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        fieldHeight: 60.h,
        fieldWidth: 60.h,
        borderRadius: BorderRadius.circular(15.r),
        selectedColor: const Color(0xffF3F3F3),
        activeFillColor: Colors.white,
        inactiveColor: const Color(0xffF3F3F3),
        activeColor: const Color(0xffF3F3F3),
        borderWidth: 1,
      ),
    );
  }
}
