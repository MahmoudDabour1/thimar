import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_state.freezed.dart';

@freezed
class CheckoutState<T> with _$CheckoutState<T> {
  const factory CheckoutState.initial() = _Initial;

  const factory CheckoutState.storeOrderLoading() = StoreOrderLoading;

  const factory CheckoutState.storeOrderSuccess(T data) = StoreOrderSuccess;

  const factory CheckoutState.storeOrderError(String message) = StoreOrderError;

  const factory CheckoutState.checkoutPaymentUpdated() = CheckoutPaymentUpdated;
}
