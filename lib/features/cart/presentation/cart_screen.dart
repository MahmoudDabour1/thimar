import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thimar/core/theming/app_colors.dart';
import 'package:thimar/core/theming/app_styles.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            BlocBuilder<CartCubit, CartState>(
              buildWhen: (previous, current) =>
                  previous != current &&
                  (current is GetCartLoading ||
                      current is GetCartSuccess ||
                      current is GetCartFailure),
              builder: (context, state) {
                return state.maybeWhen(
                    getCartLoading: () => Center(
                          child: CircularProgressIndicator(
                            color: AppColors.primaryColor,
                          ),
                        ),
                    getCartSuccess: (data) {
                      cartData = data;
                      return setupSuccess(data);
                    },
                    getCartFailure: (error) => Center(
                          child: Text(
                            error,
                            style: AppStyles.font16BlackBold,
                          ),
                        ),
                    orElse: () => SizedBox.shrink());
              },
            ),
            CartPricesAndButtonWidget(
              discount: cartData?.totalDiscount != null
                  ? (cartData!.totalDiscount! as num).toDouble()
                  : 0.0,
              totalPrice: cartData?.totalPriceBeforeDiscount != null
                  ? (cartData!.totalPriceBeforeDiscount! as num).toDouble()
                  : 0.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget setupSuccess(GetCartResponseModel data) {
    return CartProductsListView(
      data: data,
    );
  }
}
