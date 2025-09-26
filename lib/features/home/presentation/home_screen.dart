import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/routing/routes.dart';
import 'package:thimar/core/utils/spacing.dart';
import 'package:thimar/core/widgets/app_custom_search_bar.dart';
import 'package:thimar/features/address/logic/address_cubit.dart';
import 'package:thimar/features/home/logic/category_cubit.dart';
import 'package:thimar/features/home/logic/home_cubit.dart';
import 'package:thimar/features/home/presentation/widgets/home_carousel_slider_widget.dart';
import 'package:thimar/features/home/presentation/widgets/home_categories_widget.dart';
import 'package:thimar/features/home/presentation/widgets/home_custom_header_widget.dart';
import 'package:thimar/features/home/presentation/widgets/home_products_widget.dart';

import '../../../core/di/dependency_injection.dart';
import '../logic/slider_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin {
  final cubit = sl<HomeCubit>();
  final categoryCubit = sl<CategoryCubit>();
  final sliderCubit = sl<SliderCubit>();
  final addressCubit = sl<AddressCubit>();

  @override
  void initState() {
    super.initState();
    sliderCubit.fetchSliders();
    cubit.getHomeProducts();
    categoryCubit.getCategories();
    addressCubit.getAddresses();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            verticalSpace(16),
            BlocProvider.value(
              value: addressCubit,
              child: HomeCustomHeaderWidget(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 22.h),
              child: AppCustomSearchBar(
                readOnly: true,
                onTap: () {
                  context.pushNamed(Routes.searchScreen);
                },
              ),
            ),
            BlocProvider.value(
              value: sliderCubit,
              child: HomeCarouselSliderWidget(),
            ),
            BlocProvider.value(
              value: categoryCubit,
              child: HomeCategoriesWidget(),
            ),
            BlocProvider.value(
              value: cubit,
              child: HomeProductsWidget(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
