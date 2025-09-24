import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';
import '../theming/app_styles.dart';
import 'app_custom_back_button.dart';

class AppCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String appBarTitle;
  final bool? isHaveBackButton;

  const AppCustomAppBar({
    super.key,
    required this.appBarTitle,
    this.isHaveBackButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: kToolbarHeight + 10.w,
      automaticallyImplyLeading: false,
      leading: isHaveBackButton == true
          ? SizedBox(
              width: kToolbarHeight,
              height: kToolbarHeight + 8,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
                child: AppCustomBackButton(),
              ))
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
