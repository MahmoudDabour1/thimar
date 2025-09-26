import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/features/orders/data/models/get_current_orders_response_model.dart';
import 'package:thimar/features/orders/data/models/get_finish_orders_response_model.dart';
import 'package:thimar/features/orders/data/repos/orders_repos.dart';
import 'package:thimar/features/orders/logic/orders_state.dart';

class OrdersCubit extends Cubit<OrdersState> {
  final OrdersRepos ordersRepos;

  OrdersCubit(this.ordersRepos) : super(OrdersState.initial());
  bool isUpdate = false;

  GetCurrentOrdersResponseModel? currentOrdersResponseModel;
  GetFinishOrdersResponseModel? finishedOrdersResponseModel;

  Future<void> getOrders() async {
    if (currentOrdersResponseModel != null &&
        currentOrdersResponseModel!.data!.isNotEmpty &&
        !isUpdate) {
      emit(OrdersState.getOrdersSuccess(currentOrdersResponseModel!));
      return;
    }

    emit(OrdersState.getOrdersLoading());
    final result = await ordersRepos.getCurrentOrders();
    result.when(
      success: (data) {
        currentOrdersResponseModel = data;
        isUpdate = false;
        emit(OrdersState.getOrdersSuccess(data));
      },
      failure: (error) => emit(
        OrdersState.getOrdersFailure(
          error.message.toString(),
        ),
      ),
    );
  }

  Future<void> getFinishOrders() async {
    if (finishedOrdersResponseModel != null &&
        finishedOrdersResponseModel!.data!.isNotEmpty) {
      emit(OrdersState.getFinishOrdersSuccess(finishedOrdersResponseModel!));
      return;
    }
    emit(OrdersState.getFinishOrdersLoading());
    final result = await ordersRepos.getFinishOrders();
    result.when(
      success: (data) {
        finishedOrdersResponseModel = data;
        emit(OrdersState.getFinishOrdersSuccess(data));
      },
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

  Future<void> cancelOrder(int orderId, BuildContext context) async {
    emit(OrdersState.cancelOrderLoading());
    final result = await ordersRepos.cancelOrder(orderId);
    result.when(
      success: (data) {
        isUpdate = true;
        emit(OrdersState.cancelOrderSuccess(data));
        getOrders();
        context.pop();
      },
      failure: (error) => emit(
        OrdersState.cancelOrderFailure(
          error.message.toString(),
        ),
      ),
    );
  }

  void updateOrders() {
    emit(OrdersState.updateOrders());
  }
}
