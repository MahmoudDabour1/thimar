import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/theming/app_colors.dart';
import 'package:thimar/core/theming/app_styles.dart';
import 'package:thimar/core/widgets/app_custom_app_bar.dart';
import 'package:thimar/features/orders/logic/orders_cubit.dart';
import 'package:thimar/features/orders/presentation/widgets/current_orders_tap.dart';
import 'package:thimar/features/orders/presentation/widgets/finish_orders_tap.dart';

import '../../../core/di/dependency_injection.dart';

//
// class OrdersScreen extends StatefulWidget {
//   const OrdersScreen({super.key});
//
//   @override
//   State<OrdersScreen> createState() => _OrdersScreenState();
// }
//
// class _OrdersScreenState extends State<OrdersScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final ordersCubit = sl<OrdersCubit>();
//     return Scaffold(
//       appBar: AppCustomAppBar(
//         appBarTitle: "طلباتي",
//         isHaveBackButton: false,
//       ),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
//         child: DefaultTabController(
//           length: 2,
//           child: Column(
//             children: [
//               Container(
//                 height: 55.h,
//                 padding: EdgeInsets.all(6.w),
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     color: AppColors.lighterGreenColor,
//                     width: 1.w,
//                   ),
//                   borderRadius: BorderRadius.circular(10.r),
//                 ),
//                 child: TabBar(
//                   controller: _tabController,
//                   tabs: [
//                     Tab(
//                       text: "الحالية",
//                     ),
//                     Tab(
//                       text: "المنتهية",
//                     ),
//                   ],
//                   labelColor: AppColors.whiteColor,
//                   unselectedLabelColor: AppColors.grayColor,
//                   automaticIndicatorColorAdjustment: true,
//                   indicatorWeight: 3.0,
//                   indicatorSize: TabBarIndicatorSize.tab,
//                   dividerColor: Colors.transparent,
//                   indicator: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10.r),
//                     color: AppColors.primaryColor,
//                   ),
//                   indicatorColor: AppColors.primaryColor,
//                   labelStyle: AppStyles.font16WhiteBold,
//                   unselectedLabelStyle: AppStyles.font20BlackMedium,
//                 ),
//               ),
//               Expanded(
//                 child: TabBarView(
//                   controller: _tabController,
//                   children: [
//                     BlocProvider.value(
//                       value: ordersCubit..getOrders(),
//                       child: CurrentOrdersTap(),
//                     ),
//                     BlocProvider.value(
//                       value: ordersCubit..getFinishOrders(),
//                       child: FinishOrdersTap(),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final ordersCubit = sl<OrdersCubit>();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    _tabController.addListener(() {
      if (_tabController.indexIsChanging) return; // skip in-progress animation

      if (_tabController.index == 0) {
        ordersCubit.getOrders();
      } else if (_tabController.index == 1) {
        ordersCubit.getFinishOrders();
      }
    });

    // fetch the first tab data initially
    ordersCubit.getOrders();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppCustomAppBar(
        appBarTitle: "طلباتي",
        isHaveBackButton: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          children: [
            Container(
              height: 55.h,
              padding: EdgeInsets.all(6.w),
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.lighterGreenColor,
                  width: 1.w,
                ),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: TabBar(
                controller: _tabController,
                tabs: const [
                  Tab(text: "الحالية"),
                  Tab(text: "المنتهية"),
                ],
                labelColor: AppColors.whiteColor,
                unselectedLabelColor: AppColors.grayColor,
                automaticIndicatorColorAdjustment: true,
                indicatorWeight: 3.0,
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: Colors.transparent,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.primaryColor,
                ),
                indicatorColor: AppColors.primaryColor,
                labelStyle: AppStyles.font16WhiteBold,
                unselectedLabelStyle: AppStyles.font20BlackMedium,
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  BlocProvider.value(
                    value: ordersCubit,
                    child: CurrentOrdersTap(),
                  ),
                  BlocProvider.value(
                    value: ordersCubit,
                    child: FinishOrdersTap(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
