import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';

final ThemeData appTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.whiteColor,
  brightness: Brightness.light,
  primaryColor: AppColors.primaryColor,
  fontFamily: "Tajawal",
  appBarTheme: AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.black,
      systemNavigationBarDividerColor: Colors.black,
    ),
  ),
);
