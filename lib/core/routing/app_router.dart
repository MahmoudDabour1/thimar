import 'package:flutter/material.dart';
import 'package:thimar/core/routing/routes.dart';
import 'package:thimar/features/about_app/presentation/about_app_screen.dart';
import 'package:thimar/features/address/data/models/insert_address_form_model.dart';
import 'package:thimar/features/auth/login/presentation/login_screen.dart';
import 'package:thimar/features/cart/presentation/cart_screen.dart';
import 'package:thimar/features/favorite/logic/favorite_cubit.dart';
import 'package:thimar/features/layout/presentation/bottom_nav_bar_layout.dart';
import 'package:thimar/features/orders/logic/orders_cubit.dart';
import 'package:thimar/features/product_details/presentation/product_details_screen.dart';
import 'package:thimar/features/profile/logic/profile_cubit.dart';
import 'package:thimar/features/profile/presentation/payment_screen.dart';
import 'package:thimar/features/splash/presentation/splash_screen.dart';

import '../../features/about_app/presentation/contact_screen.dart';
import '../../features/about_app/presentation/fqs_screen.dart';
import '../../features/about_app/presentation/policy_screen.dart';
import '../../features/about_app/presentation/suggestions_and_complaints_screen.dart';
import '../../features/about_app/presentation/terms_screen.dart';
import '../../features/address/presentation/address_screen.dart';
import '../../features/address/presentation/insert_address_screen.dart';
import '../../features/auth/forget_password/presentation/forget_password_screen.dart';
import '../../features/auth/new_password/presentation/new_password_screen.dart';
import '../../features/auth/register/presentation/register_screen.dart';
import '../../features/auth/verifi_code/presentation/verified_screen.dart';
import '../../features/checkout/presentation/checkout_screen.dart';
import '../../features/home/presentation/category_products_screen.dart';
import '../../features/orders/presentation/orders_details_screen.dart';
import '../../features/profile/presentation/profile_data_screen.dart';
import '../../features/search/presentation/search_screen.dart';
import '../../features/walltet/logic/wallet_cubit.dart';
import '../../features/walltet/presentation/all_transaction_history_screen.dart';
import '../../features/walltet/presentation/charge_wallet_screen.dart';
import '../../features/walltet/presentation/wallet_screen.dart';
import '../di/dependency_injection.dart';

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
        final int initialIndex = settings.arguments as int? ?? 0;
        return MaterialPageRoute(
          builder: (_) => BottomNavBarLayout(
            initialIndex: initialIndex,
          ),
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
        final args = settings.arguments as Map<String, dynamic>?;
        final productId = args?["productId"] as int? ?? 0;
        final favCubit = args?["favCubit"] as FavoriteCubit?;

        return MaterialPageRoute(
          builder: (_) => ProductDetailsScreen(
            productId: productId,
            favoriteCubit: favCubit ?? sl<FavoriteCubit>(),
          ),
        );
      case Routes.cartScreen:
        return MaterialPageRoute(
          builder: (_) => CartScreen(),
        );
      case Routes.checkoutScreen:
        final args = settings.arguments as Map<String, dynamic>?;
        final totalPrice = args?["totalPrice"] as double? ?? 0.0;
        final discount = args?["discount"] as double? ?? 0.0;

        return MaterialPageRoute(
          builder: (_) => CheckoutScreen(
            discount: discount,
            totalPrice: totalPrice,
          ),
        );
      case Routes.profileDataScreen:
        final cubit = settings.arguments as ProfileCubit;
        return MaterialPageRoute(
          builder: (_) => ProfileDataScreen(
            profileCubit: cubit,
          ),
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
        final cubit = settings.arguments as WalletCubit;
        return MaterialPageRoute(
          builder: (_) => ChargeWalletScreen(cubit: cubit),
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
      case Routes.contactScreen:
        return MaterialPageRoute(
          builder: (_) => ContactScreen(),
        );
      case Routes.addressScreen:
        return MaterialPageRoute(
          builder: (_) => AddressScreen(),
        );
      case Routes.insertAddressScreen:
        final model = settings.arguments as InsertAddressFormModel?;
        if (model!.isEdit == true) {
          model.cubit.phoneController.text = model.userSelectedPhone ?? "";
          model.cubit.descriptionController.text =
              model.userSelectedDescription ?? "";
        }
        return MaterialPageRoute(
          builder: (_) => InsertAddressScreen(
            insertAddressFormModel: model,
          ),
        );
      case Routes.paymentScreen:
        return MaterialPageRoute(
          builder: (_) => PaymentScreen(),
        );
      case Routes.searchScreen:
        return MaterialPageRoute(
          builder: (_) => SearchScreen(),
        );
      case Routes.ordersDetailsScreen:
        final args = settings.arguments as Map<String, dynamic>?;
        final orderId = args?["id"] as int? ?? 0;
        final orderCubit = args?["orderCubit"] as OrdersCubit;
        return MaterialPageRoute(
          builder: (_) => OrdersDetailsScreen(
            orderId: orderId,
            ordersCubit: orderCubit,
          ),
        );
    }
    return null;
  }
}
