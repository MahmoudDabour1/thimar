import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_state.freezed.dart';

@freezed
class OrdersState<T> with _$OrdersState {
  const factory OrdersState.initial() = OrdersInitial;

  const factory OrdersState.getOrdersLoading() = GetOrdersLoading;

  const factory OrdersState.getOrdersSuccess(T data) = GetOrdersSuccess;

  const factory OrdersState.getOrdersFailure(String errorMessage) =
      GetOrdersFailure;

  const factory OrdersState.getFinishOrdersLoading() = GetFinishOrdersLoading;

  const factory OrdersState.getFinishOrdersSuccess(T data) =
      GetFinishOrdersSuccess;

  const factory OrdersState.getFinishOrdersFailure(String errorMessage) =
      GetFinishOrdersFailure;

  const factory OrdersState.ordersDetailsLoading() = OrdersDetailsLoading;

  const factory OrdersState.ordersDetailsSuccess(T data) = OrdersDetailsSuccess;

  const factory OrdersState.orderDetailsFailure(String errorMessage) =
      OrdersDetailsFailure;

  const factory OrdersState.cancelOrderLoading() = CancelOrderLoading;

  const factory OrdersState.cancelOrderSuccess(T data) = CancelOrderSuccess;

  const factory OrdersState.cancelOrderFailure(String errorMessage) =
      CancelOrderFailure;
}
