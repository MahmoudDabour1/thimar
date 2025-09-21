import 'package:bloc/bloc.dart';
import 'package:thimar/core/helpers/helper_methods.dart';
import 'package:thimar/features/cart/data/models/add_to_cart_request_body.dart';
import 'package:thimar/features/cart/data/repos/cart_repo.dart';

import 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  final CartRepo cartRepo;

  CartCubit(this.cartRepo) : super(CartState.initial());

  Future<void> addToCart(int productId, int amount) async {
    emit(CartState.addToCartLoading());
    final response = await cartRepo.addToCart(
      AddToCartRequestBody(
        productId: productId,
        amount: amount,
      ),
    );
    response.when(
      success: (data) {
        showToast(message: data.message.toString());
        emit(CartState.addToCartSuccess(data));
      },
      failure: (error) {
        emit(CartState.addToCartFailure(error.message.toString()));
      },
    );
  }
}
