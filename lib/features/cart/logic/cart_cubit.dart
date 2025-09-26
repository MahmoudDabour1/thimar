import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:thimar/core/helpers/helper_methods.dart';
import 'package:thimar/core/theming/app_colors.dart';
import 'package:thimar/features/cart/data/models/add_to_cart_request_body.dart';
import 'package:thimar/features/cart/data/repos/cart_repo.dart';

import '../presentation/widgets/add_to_cart_bottom_sheet_widget.dart';
import 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  final CartRepo cartRepo;

  CartCubit(this.cartRepo) : super(CartState.initial());
  int cartCount = 0;
  bool isUpdateOrDelete = false;

  Future<void> addToCart(
      int productId, int amount, BuildContext context) async {
    emit(CartState.addToCartLoading(productId));
    final response = await cartRepo.addToCart(
      AddToCartRequestBody(
        productId: productId,
        amount: amount,
      ),
    );
    response.when(
      success: (data) async {
        emit(CartState.addToCartSuccess(productId, data));
        showModalBottomSheet(
          context: context,
          backgroundColor: AppColors.whiteColor,
          builder: (_) {
            return AddToCartBottomSheetWidget(
              title: data.data?.title ?? "",
              imageUrl: data.data?.image ?? "",
              price: (data.data?.price ?? 0).toDouble(),
            );
          },
        );
        await getCartData();
      },
      failure: (error) {
        emit(CartState.addToCartFailure(productId, error.message.toString()));
      },
    );
  }

  Future<void> getCartData() async {
    isUpdateOrDelete ? null : emit(CartState.getCartLoading());
    final response = await cartRepo.getCartData();
    response.when(
      success: (data) {
        cartCount = data.data?.length ?? 0;
        emit(CartState.getCartSuccess(data));
      },
      failure: (error) {
        emit(CartState.getCartFailure(error.message.toString()));
      },
    );
  }

  Future<void> deleteCartData(int id) async {
    emit(CartState.deleteCartLoading(id));
    final response = await cartRepo.deleteCartData(id);
    response.when(
      success: (data) async {
        isUpdateOrDelete = true;
        showToast(message: data.message.toString());
        emit(CartState.deleteCartSuccess(id, data));
        await getCartData();
      },
      failure: (error) {
        emit(CartState.deleteCartFailure(id, error.message.toString()));
      },
    );
  }

  Future<void> updateCartData(int id, int amount) async {
    emit(CartState.updateCartLoading(id));
    final response = await cartRepo.updateCartData(id, amount);
    response.when(
      success: (data) async {
        isUpdateOrDelete = true;
        showToast(message: data.message ?? "تم التعديل بنجاح");
        emit(CartState.updateCartSuccess(id, data));
        await getCartData();
      },
      failure: (error) {
        emit(CartState.updateCartFailure(id, error.message.toString()));
      },
    );
  }
}
