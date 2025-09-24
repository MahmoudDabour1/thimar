import 'package:bloc/bloc.dart';
import 'package:thimar/core/helpers/helper_methods.dart';
import 'package:thimar/features/cart/data/models/add_to_cart_request_body.dart';
import 'package:thimar/features/cart/data/repos/cart_repo.dart';

import 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  final CartRepo cartRepo;

  CartCubit(this.cartRepo) : super(CartState.initial());
  int cartCount = 0;

  Future<void> addToCart(int productId, int amount) async {
    emit(CartState.addToCartLoading());
    final response = await cartRepo.addToCart(
      AddToCartRequestBody(
        productId: productId,
        amount: amount,
      ),
    );
    response.when(
      success: (data) async {
        showToast(message: data.message.toString());
        emit(CartState.addToCartSuccess(data));
        await getCartData();
      },
      failure: (error) {
        emit(CartState.addToCartFailure(error.message.toString()));
      },
    );
  }

  Future<void> getCartData() async {
    emit(CartState.getCartLoading());
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
    emit(CartState.deleteCartLoading());
    final response = await cartRepo.deleteCartData(id);
    response.when(
      success: (data) async {
        showToast(message: data.message.toString());
        emit(CartState.deleteCartSuccess(data));
        await getCartData();
      },
      failure: (error) {
        emit(CartState.deleteCartFailure(error.message.toString()));
      },
    );
  }

  Future<void> updateCartData(int id, int amount) async {
    emit(CartState.updateCartLoading());
    final response = await cartRepo.updateCartData(id, amount);
    response.when(
      success: (data) async {
        showToast(message: data.message ?? "تم التعديل بنجاح");
        emit(CartState.updateCartSuccess(data));
        await getCartData();
      },
      failure: (error) {
        emit(CartState.updateCartFailure(error.message.toString()));
      },
    );
  }
}
