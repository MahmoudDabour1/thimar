import 'package:bloc/bloc.dart';
import 'package:thimar/features/orders/data/repos/orders_repos.dart';
import 'package:thimar/features/orders/logic/orders_state.dart';

class OrdersCubit extends Cubit<OrdersState> {
  final OrdersRepos ordersRepos;

  OrdersCubit(this.ordersRepos) : super(OrdersState.initial());

  Future<void> getOrders() async {
    emit(OrdersState.getOrdersLoading());
    final result = await ordersRepos.getCurrentOrders();
    result.when(
      success: (data) => emit(OrdersState.getOrdersSuccess(data)),
      failure: (error) => emit(
        OrdersState.getOrdersFailure(
          error.message.toString(),
        ),
      ),
    );
  }

  Future<void> getFinishOrders() async {
    emit(OrdersState.getFinishOrdersLoading());
    final result = await ordersRepos.getFinishOrders();
    result.when(
      success: (data) => emit(OrdersState.getFinishOrdersSuccess(data)),
      failure: (error) => emit(
        OrdersState.getFinishOrdersFailure(
          error.message.toString(),
        ),
      ),
    );
  }

  Future<void> orderDetails(int orderId) async {
    emit(OrdersState.ordersDetailsLoading());
    final result = await ordersRepos.getOrderDetails(orderId);
    result.when(
      success: (data) => emit(OrdersState.ordersDetailsSuccess(data)),
      failure: (error) => emit(
        OrdersState.orderDetailsFailure(
          error.message.toString(),
        ),
      ),
    );
  }

  Future<void> cancelOrder(int orderId) async {
    emit(OrdersState.cancelOrderLoading());
    final result = await ordersRepos.cancelOrder(orderId);
    result.when(
      success: (data) => emit(OrdersState.cancelOrderSuccess(data)),
      failure: (error) => emit(
        OrdersState.cancelOrderFailure(
          error.message.toString(),
        ),
      ),
    );
  }
}
