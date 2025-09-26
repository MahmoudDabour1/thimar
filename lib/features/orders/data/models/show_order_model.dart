import 'package:thimar/features/orders/logic/orders_cubit.dart';

class ShowOrderModel {
  final String? orderNumber;
  final String? orderDate;
  final String? orderStatus;
  final double? orderPrice;
  final List<dynamic>? products;
  final OrdersCubit? ordersCubit;

  ShowOrderModel({
    this.orderNumber,
    this.orderDate,
    this.orderStatus,
    this.orderPrice,
    this.products,
    this.ordersCubit,
  });
}
