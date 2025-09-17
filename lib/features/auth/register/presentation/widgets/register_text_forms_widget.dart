import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/utils/spacing.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class RegisterTextFormsWidget extends StatelessWidget {
  const RegisterTextFormsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          hintText: "اسم المستخدم",
          validator: (value) {},
          prefixIcon: Image.asset(
            AppAssets.personIcon,
            width: 22.w,
            height: 22.h,
          ),
        ),
        verticalSpace(16),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                height: 50.h,
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.lightGrayColor,
                    width: 1.w,
                  ),
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Center(
                  child: CountryCodePicker(
                    onChanged: _onCountryChange,
                    initialSelection: 'SA',
                    favorite: ['+966', 'SA'],
                    showCountryOnly: false,
                    showOnlyCountryWhenClosed: false,
                    alignLeft: false,
                    builder: (countryCode) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            countryCode!.flagUri!,
                            package: 'country_code_picker',
                            width: 24.w,
                            height: 18.h,
                          ),
                          horizontalSpace(6),
                          Text(
                            countryCode.dialCode ?? "",
                            style: AppStyles.font16MediumBold,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
            horizontalSpace(8),
            Flexible(
              flex: 4,
              child: AppTextFormField(
                hintText: "رقم الجوال",
                validator: (value) {},
                prefixIcon: Image.asset(
                  AppAssets.phoneImage,
                  width: 22.w,
                  height: 22.h,
                ),
              ),
            ),
          ],
        ),
        verticalSpace(16),
        AppTextFormField(
          hintText: "كلمة المرور",
          validator: (value) {},
          prefixIcon: Image.asset(
            AppAssets.lockImage,
            width: 22.w,
            height: 22.h,
          ),
        ),
        verticalSpace(16),
        AppTextFormField(
          hintText: "كلمة المرور",
          validator: (value) {},
          prefixIcon: Image.asset(
            AppAssets.lockImage,
            width: 22.w,
            height: 22.h,
          ),
        ),
        verticalSpace(30),
      ],
    );
  }
  void _onCountryChange(CountryCode countryCode) {
    print("New Country selected: " + countryCode.toString());
  }
}
