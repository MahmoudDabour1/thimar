import 'package:flutter/material.dart';
import 'package:thimar/core/routing/routes.dart';
import 'package:thimar/features/about_app/presentation/about_app_screen.dart';
import 'package:thimar/features/auth/login/presentation/login_screen.dart';
import 'package:thimar/features/cart/presentation/cart_screen.dart';
import 'package:thimar/features/layout/presentation/bottom_nav_bar_layout.dart';
import 'package:thimar/features/product_details/presentation/product_details_screen.dart';
import 'package:thimar/features/splash/presentation/splash_screen.dart';

import '../../features/about_app/presentation/fqs_screen.dart';
import '../../features/about_app/presentation/policy_screen.dart';
import '../../features/about_app/presentation/suggestions_and_complaints_screen.dart';
import '../../features/about_app/presentation/terms_screen.dart';
import '../../features/auth/forget_password/presentation/forget_password_screen.dart';
import '../../features/auth/new_password/presentation/new_password_screen.dart';
import '../../features/auth/register/presentation/register_screen.dart';
import '../../features/auth/verifi_code/presentation/verified_screen.dart';
import '../../features/checkout/presentation/checkout_screen.dart';
import '../../features/home/presentation/category_products_screen.dart';
import '../../features/profile/presentation/profile_data_screen.dart';
import '../../features/walltet/presentation/all_transaction_history_screen.dart';
import '../../features/walltet/presentation/charge_wallet_screen.dart';
import '../../features/walltet/presentation/wallet_screen.dart';

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
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => RegisterScreen(),
        );
      case Routes.forgetPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => ForgetPasswordScreen(),
        );
      case Routes.verifiedScreen:
        final args = settings.arguments as Map<String, dynamic>;
        final phone = args["phone"] as String? ?? "";
        final isActiveAccount = args["isActiveAccount"] as bool? ?? false;
        return MaterialPageRoute(
          builder: (_) => VerifiedScreen(
            phone: phone,
            isActiveAccount: isActiveAccount,
          ),
        );
      case Routes.newPasswordScreen:
        final args = settings.arguments as Map<String, String?>;
        final phone = args["phone"] ?? "";
        final code = args["code"] ?? "";
        return MaterialPageRoute(
          builder: (_) => NewPasswordScreen(
            phone: phone,
            code: code,
          ),
        );

      case Routes.bottomNavBarLayout:
        return MaterialPageRoute(
          builder: (_) => BottomNavBarLayout(),
        );
      case Routes.categoryProductsScreen:
        final args = settings.arguments as Map<String, dynamic>?;
        final categoryId = args?["categoryId"] as int? ?? 0;
        final categoryName = args?["categoryName"] as String? ?? "";

        return MaterialPageRoute(
          builder: (_) => CategoryProductsScreen(
            categoryId: categoryId,
            categoryName: categoryName,
          ),
        );
      case Routes.productDetailsScreen:
        final productId = settings.arguments as int? ?? 0;
        return MaterialPageRoute(
          builder: (_) => ProductDetailsScreen(
            productId: productId,
          ),
        );
      case Routes.cartScreen:
        return MaterialPageRoute(
          builder: (_) => CartScreen(),
        );
      case Routes.checkoutScreen:
        return MaterialPageRoute(
          builder: (_) => CheckoutScreen(),
        );
      case Routes.profileDataScreen:
        return MaterialPageRoute(
          builder: (_) => ProfileDataScreen(),
        );
      case Routes.aboutAppScreen:
        return MaterialPageRoute(
          builder: (_) => AboutAppScreen(),
        );
      case Routes.termsScreen:
        return MaterialPageRoute(
          builder: (_) => TermsScreen(),
        );
      case Routes.walletScreen:
        return MaterialPageRoute(
          builder: (_) => WalletScreen(),
        );
      case Routes.chargeWalletScreen:
        return MaterialPageRoute(
          builder: (_) => ChargeWalletScreen(),
        );
      case Routes.allTransactionHistoryScreen:
        return MaterialPageRoute(
          builder: (_) => AllTransactionHistoryScreen(),
        );
      case Routes.fqsScreen:
        return MaterialPageRoute(
          builder: (_) => FqsScreen(),
        );
      case Routes.policyScreen:
        return MaterialPageRoute(
          builder: (_) => PolicyScreen(),
        );
      case Routes.suggestionsAndComplaintsScreen:
        return MaterialPageRoute(
          builder: (_) => SuggestionsAndComplaintsScreen(),
        );
    }
    return null;
  }
}
