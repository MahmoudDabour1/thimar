import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState<T> with _$CartState {
  const factory CartState.initial() = CartInitial;

  const factory CartState.addToCartLoading() = AddToCartLoading;

  const factory CartState.addToCartSuccess(T data) = AddToCartSuccess;

  const factory CartState.addToCartFailure(String errorMessage) =
      AddToCartFailure;

  const factory CartState.getCartLoading() = GetCartLoading;

  const factory CartState.getCartSuccess(T data) = GetCartSuccess;

  const factory CartState.getCartFailure(String errorMessage) = GetCartFailure;

  const factory CartState.deleteCartLoading() = DeleteCartLoading;

  const factory CartState.deleteCartSuccess(T data) = DeleteCartSuccess;

  const factory CartState.deleteCartFailure(String errorMessage) =
      DeleteCartFailure;
}
