import 'package:flutter/material.dart';
import 'package:thimar/core/routing/routes.dart';
import 'package:thimar/features/auth/login/presentation/login_screen.dart';
import 'package:thimar/features/splash/presentation/splash_screen.dart';

import '../../features/auth/forget_password/presentation/forget_password_screen.dart';
import '../../features/auth/register/presentation/register_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => SplashScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => RegisterScreen(),
        );case Routes.forgetPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => ForgetPasswordScreen(),
        );
    }
    return null;
  }
}
