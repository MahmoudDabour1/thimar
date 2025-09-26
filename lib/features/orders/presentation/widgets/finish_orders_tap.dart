import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/features/orders/data/models/get_finish_orders_response_model.dart';
import 'package:thimar/features/orders/logic/orders_state.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/app_loading_indicator_widget.dart';
import '../../data/models/show_order_model.dart';
import '../../logic/orders_cubit.dart';
import 'order_state_single_item.dart';

class FinishOrdersTap extends StatefulWidget {
  final OrdersCubit orderCubit;

  const FinishOrdersTap({super.key, required this.orderCubit});

  @override
  State<FinishOrdersTap> createState() => _FinishOrdersTapState();
}

class _FinishOrdersTapState extends State<FinishOrdersTap> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24.h),
      child: BlocBuilder<OrdersCubit, OrdersState>(
        buildWhen: (previous, current) =>
            previous != current &&
            (current is GetFinishOrdersLoading ||
                current is GetFinishOrdersSuccess ||
                current is GetFinishOrdersFailure),
        builder: (context, state) {
          return state.maybeWhen(
            getFinishOrdersLoading: () => AppLoadingIndicatorWidget(),
            getFinishOrdersSuccess: (data) => setupSuccess(data),
            getFinishOrdersFailure: (error) => Center(
              child: Text(
                error,
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
            ),
            orElse: () => SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget setupSuccess(GetFinishOrdersResponseModel data) {
    return ListView.builder(
      itemCount: data.data?.length,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        final order = data.data![index];

        DateTime? orderDate = order.date != null
            ? DateTime.tryParse(order.date.toString())
            : null;

        String formattedDate = orderDate != null
            ? DateFormat("dd, MMMM, yyyy", "ar").format(orderDate)
            : "";
        return GestureDetector(
          onTap: () {
            context.pushNamed(Routes.ordersDetailsScreen, arguments: {
              "id": order.id ?? 0,
              "orderCubit": widget.orderCubit,
            }).then((_) {
              widget.orderCubit.updateOrders();
            });
          },
          child: OrderStateSingleItem(
            order: ShowOrderModel(
              orderDate: formattedDate,
              orderStatus: order.status ?? '',
              orderNumber: order.id.toString() ?? '',
              orderPrice: order.totalPrice != null
                  ? (order.totalPrice! as num).toDouble()
                  : 0.0,
              products: order.products ?? [],
              ordersCubit: widget.orderCubit,
            ),
          ),
        );
      },
    );
  }
}
