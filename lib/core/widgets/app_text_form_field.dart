import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_styles.dart';
import 'get_common_input_decoration.dart';

class AppTextFormField extends StatelessWidget {
  final String labelText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? isObscureText;
  final TextEditingController? controller;
  final Function(String) validator;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final InputDecoration? decoration;
  final int? maxLines;
  final bool? enabled;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final void Function()? onTap;
  final bool? readOnly;

  const AppTextFormField({
    super.key,
    required this.labelText,
    this.suffixIcon,
    this.isObscureText,
    this.controller,
    required this.validator,
    this.prefixIcon,
    this.keyboardType,
    this.focusNode,
    this.textInputAction = TextInputAction.next,
    this.decoration,
    this.maxLines = 1,
    this.enabled = true,
    this.onChanged,
    this.onTap,
    this.readOnly = false, this.onFieldSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      controller: controller,
      enabled: enabled,
      keyboardType: keyboardType,
      focusNode: focusNode,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      textInputAction: TextInputAction.next,
      decoration: decoration ??
          getCommonInputDecoration(
            labelText: labelText,
            suffixIcon: Padding(
              padding: EdgeInsetsDirectional.only(end: 12.w),
              child: suffixIcon,
            ),
          ),
      obscureText: isObscureText ?? false,
      onFieldSubmitted: onFieldSubmitted,
      readOnly: readOnly??false,
      style: AppStyles.font16GreenBold,
      validator: (value) {
        return validator(value!);
      },
      maxLines: maxLines,
      minLines: maxLines,
      onChanged: onChanged,
    );
  }
}
