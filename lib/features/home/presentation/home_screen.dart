import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thimar/core/utils/spacing.dart';
import 'package:thimar/features/home/logic/category_cubit.dart';
import 'package:thimar/features/home/logic/home_cubit.dart';
import 'package:thimar/features/home/presentation/widgets/home_carousel_slider_widget.dart';
import 'package:thimar/features/home/presentation/widgets/home_categories_widget.dart';
import 'package:thimar/features/home/presentation/widgets/home_custom_header_widget.dart';
import 'package:thimar/features/home/presentation/widgets/home_custom_search_bar.dart';
import 'package:thimar/features/home/presentation/widgets/home_products_widget.dart';

import '../../../core/di/dependency_injection.dart';
import '../logic/slider_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final cubit = sl<HomeCubit>();
  final categoryCubit = sl<CategoryCubit>();
  final sliderCubit = sl<SliderCubit>();

  @override
  void initState() {
    super.initState();
    sliderCubit.fetchSliders();
    cubit.getHomeProducts();
    categoryCubit.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            verticalSpace(8),
            HomeCustomHeaderWidget(),
            HomeCustomSearchBar(),
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
}
