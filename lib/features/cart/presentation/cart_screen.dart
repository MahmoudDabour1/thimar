import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thimar/core/theming/app_styles.dart';
import 'package:thimar/core/widgets/app_custom_error_widget.dart';
import 'package:thimar/core/widgets/app_loading_indicator_widget.dart';
import 'package:thimar/features/cart/data/models/get_cart_response_model.dart';
import 'package:thimar/features/cart/logic/cart_cubit.dart';
import 'package:thimar/features/cart/presentation/widgets/cart_prices_and_button_widget.dart';
import 'package:thimar/features/cart/presentation/widgets/cart_products_list_view.dart';

import '../../../core/widgets/app_custom_app_bar.dart';
import '../logic/cart_state.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  GetCartResponseModel? cartData = GetCartResponseModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppCustomAppBar(
        appBarTitle: "السلة",
      ),
      body: BlocBuilder<CartCubit, CartState>(
        buildWhen: (previous, current) =>
            previous != current &&
            (current is GetCartLoading ||
                current is GetCartSuccess ||
                current is GetCartFailure),
        builder: (context, state) {
          return state.maybeWhen(
              getCartLoading: () => AppLoadingIndicatorWidget(),
              getCartSuccess: (data) {
                cartData = data;
                return (cartData?.data?.isEmpty ?? true)
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              "السلة فارغة",
                              style: AppStyles.font16GreenExtraBold,
                            ),
                          ),
                        ],
                      )
                    : setupSuccess(data);
              },
              getCartFailure: (error) => AppCustomErrorWidget(error: error),
              orElse: () => SizedBox.shrink());
        },
      ),
      bottomNavigationBar: BlocBuilder<CartCubit, CartState>(
        buildWhen: (previous, current) =>
            previous != current &&
            (current is GetCartSuccess || current is GetCartFailure),
        builder: (context, state) {
          return state.maybeWhen(
            getCartSuccess: (data) {
              if (data.data?.isEmpty ?? true) return const SizedBox.shrink();
              return CartPricesAndButtonWidget(
                discount: (data.totalDiscount ?? 0).toDouble(),
                totalPrice: (data.totalPriceBeforeDiscount ?? 0).toDouble(),
              );
            },
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget setupSuccess(GetCartResponseModel data) {
    return SingleChildScrollView(
      child: CartProductsListView(
        data: data,
      ),
    );
  }
}
