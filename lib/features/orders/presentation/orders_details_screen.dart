import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/theming/app_colors.dart';
import 'package:thimar/core/widgets/app_custom_app_bar.dart';
import 'package:thimar/core/widgets/app_custom_button.dart';
import 'package:thimar/core/widgets/app_loading_indicator_widget.dart';
import 'package:thimar/features/orders/data/models/order_details_response_model.dart';
import 'package:thimar/features/orders/logic/orders_cubit.dart';
import 'package:thimar/features/orders/presentation/widgets/order_details_item.dart';

import '../../../core/helpers/helper_methods.dart';
import '../../../core/theming/app_styles.dart';
import '../logic/orders_state.dart';

class OrdersDetailsScreen extends StatefulWidget {
  final int orderId;
  final OrdersCubit ordersCubit;

  const OrdersDetailsScreen({
    super.key,
    required this.orderId,
    required this.ordersCubit,
  });

  @override
  State<OrdersDetailsScreen> createState() => _OrdersDetailsScreenState();
}

class _OrdersDetailsScreenState extends State<OrdersDetailsScreen> {
  @override
  void initState() {
    super.initState();
    widget.ordersCubit.orderDetails(widget.orderId);
  }

  String? state;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: widget.ordersCubit,
      child: Scaffold(
        appBar: AppCustomAppBar(appBarTitle: "تفاصيل الطلب"),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(16.r),
          child: BlocBuilder<OrdersCubit, OrdersState>(
            builder: (context, state) {
              final isLoading = state is OrdersDetailsLoading;
              return state.maybeWhen(
                ordersDetailsSuccess: (data) {
                  final status = data.data?.status ?? "";
                  if (status.toLowerCase() == "pending") {
                    return AppCustomButton(
                      isLoading: state is CancelOrderLoading,
                      textButton: "إلغاء الطلب",
                      onPressed: () {
                        appCustomDialog(
                            message: "هل أنت متأكد من إلغاء الطلب؟",
                            context: context,
                            onConfirmPress: () {
                              context.pop();
                              widget.ordersCubit
                                  .cancelOrder(data.data?.id ?? 0, context);
                            });
                      },
                      backgroundColor: AppColors.lightRedColor,
                      textColor: AppColors.redColor,
                    );
                  } else if (status.toLowerCase() == "finished") {
                    return AppCustomButton(
                      textButton: "إضافة تقييم",
                      onPressed: () {
                        // افتح صفحة التقييم
                        // context.pushNamed(Routes.addRate, arguments: data.data?.id);
                      },
                      backgroundColor: AppColors.primaryColor,
                      textColor: AppColors.whiteColor,
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                },
                orElse: () => const SizedBox.shrink(),
              );
            },
          ),
        ),
        body: SafeArea(
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
    );
  }

  Widget setupSuccess(OrdersDetailsResponseModel data) {
    state = data.data?.status;
    return SingleChildScrollView(child: OrderDetailsItem(data: data));
  }
}
