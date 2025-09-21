import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';

import '../theming/app_colors.dart';
import '../theming/app_styles.dart';
import 'app_custom_back_button.dart';

class AppCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String appBarTitle;
  final bool? isHaveBackButton;

  const AppCustomAppBar(
      {super.key, required this.appBarTitle, this.isHaveBackButton = true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: isHaveBackButton == true
          ? Padding(
              padding: EdgeInsets.only(right: 8.w, bottom: 6.h),
              child: AppCustomBackButton(),
            )
          : null,
      backgroundColor: AppColors.whiteColor,
      elevation: 0,
      centerTitle: true,
      title: Text(
        appBarTitle,
        style: AppStyles.font20GreenBold,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
