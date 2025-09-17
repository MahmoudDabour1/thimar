import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';

import '../theming/app_colors.dart';
import '../theming/app_styles.dart';

class AppCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String appBatTitle;
  final bool? isHaveBackButton;

  const AppCustomAppBar(
      {super.key, required this.appBatTitle, this.isHaveBackButton = true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: isHaveBackButton == true
          ? GestureDetector(
              onTap: () {
                context.pop();
              },
              child: Icon(
                Icons.arrow_back,
                size: 35.r,
              ),
            )
          : null,
      backgroundColor: AppColors.whiteColor,
      elevation: 0,
      centerTitle: true,
      title: Text(
        appBatTitle,
        style: AppStyles.font16GreenBold,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
