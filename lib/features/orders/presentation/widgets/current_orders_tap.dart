import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/routing/routes.dart';
import 'package:thimar/core/widgets/app_loading_indicator_widget.dart';
import 'package:thimar/features/orders/data/models/get_current_orders_response_model.dart';
import 'package:thimar/features/orders/logic/orders_cubit.dart';
import 'package:thimar/features/orders/logic/orders_state.dart';

import 'order_state_single_item.dart';

class CurrentOrdersTap extends StatelessWidget {
  const CurrentOrdersTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24.h),
      child: BlocBuilder<OrdersCubit, OrdersState>(
        buildWhen: (previous, current) =>
            previous != current &&
            (current is GetOrdersLoading ||
                current is GetOrdersSuccess ||
                current is GetOrdersFailure),
        builder: (context, state) {
          return state.maybeWhen(
            getOrdersLoading: () => AppLoadingIndicatorWidget(),
            getOrdersSuccess: (data) => setupSuccess(data),
            getOrdersFailure: (error) => Center(
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

  Widget setupSuccess(GetCurrentOrdersResponseModel data) {
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
              context.pushNamed(
                Routes.ordersDetailsScreen,
                arguments: order.id,
              );
            },
            child: OrderStateSingleItem(
              orderDate: formattedDate,
              orderStatus: order.status ?? '',
              orderNumber: order.id.toString() ?? '',
              orderPrice: order.totalPrice != null
                  ? (order.totalPrice! as num).toDouble()
                  : 0.0,
              orderImage: order.products?.isNotEmpty == true
                  ? (order.products![0].url)
                  : null,
            ),
          );
        });
  }
}
