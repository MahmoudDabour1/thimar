import 'package:flutter/material.dart';
import 'package:thimar/core/routing/routes.dart';
import 'package:thimar/features/auth/login/presentation/login_screen.dart';
import 'package:thimar/features/splash/presentation/splash_screen.dart';

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
        );
    }
    return null;
  }
}
