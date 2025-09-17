import 'package:flutter/material.dart';
import 'package:thimar/core/routing/routes.dart';
import 'package:thimar/features/splash/presentation/splash_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => SplashScreen(),
        );
    }
    return null;
  }
}
