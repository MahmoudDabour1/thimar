import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/widgets/app_custom_app_bar.dart';
import 'package:thimar/core/widgets/app_loading_indicator_widget.dart';
import 'package:thimar/features/orders/data/models/order_details_response_model.dart';
import 'package:thimar/features/orders/logic/orders_cubit.dart';
import 'package:thimar/features/orders/presentation/widgets/order_details_item.dart';

import '../../../core/di/dependency_injection.dart';
import '../../../core/theming/app_styles.dart';
import '../logic/orders_state.dart';

class OrdersDetailsScreen extends StatefulWidget {
  final int orderId;

  const OrdersDetailsScreen({super.key, required this.orderId});

  @override
  State<OrdersDetailsScreen> createState() => _OrdersDetailsScreenState();
}

class _OrdersDetailsScreenState extends State<OrdersDetailsScreen> {
  final cubit = sl<OrdersCubit>();

  @override
  void initState() {
    super.initState();
    cubit.orderDetails(widget.orderId);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cubit,
      child: Scaffold(
        appBar: AppCustomAppBar(appBarTitle: "تفاصيل الطلب"),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: BlocBuilder<OrdersCubit, OrdersState>(
                buildWhen: (previous, current) =>
                    previous != current &&
                    (current is OrdersDetailsLoading ||
                        current is OrdersDetailsSuccess ||
                        current is OrdersDetailsFailure),
                builder: (context, state) {
                  return state.maybeWhen(
                      ordersDetailsLoading: () => AppLoadingIndicatorWidget(),
                      ordersDetailsSuccess: (data) => setupSuccess(data),
                      orderDetailsFailure: (error) => Center(
                            child: Text(
                              error,
                              style: AppStyles.font16BlackBold,
                            ),
                          ),
                      orElse: () => SizedBox.shrink());
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget setupSuccess(OrdersDetailsResponseModel data) {
    return OrderDetailsItem(data: data);
  }
}
