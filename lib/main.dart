import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/theming/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: MaterialApp(
          locale: const Locale("ar"),
          supportedLocales: const [
            Locale("ar"),
            Locale("en"),
          ],
          title: 'Flutter Demo',
          theme: appTheme,
          initialRoute: Routes.homeScreen,
          onGenerateRoute: AppRouter().generateRoute,
        ),
      ),
    );
  }
}