import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thimar/features/home/logic/home_cubit.dart';
import 'package:thimar/features/home/presentation/widgets/home_carousel_slider_widget.dart';
import 'package:thimar/features/home/presentation/widgets/home_categories_widget.dart';
import 'package:thimar/features/home/presentation/widgets/home_custom_header_widget.dart';
import 'package:thimar/features/home/presentation/widgets/home_custom_search_bar.dart';

import '../../../core/di/dependency_injection.dart';
import '../../../core/widgets/app_custom_search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => HomeCubit(sl())
            ..fetchSliders()
            ..getCategories(),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              HomeCustomHeaderWidget(),
              HomeCustomSearchBar(),
              HomeCarouselSliderWidget(),
              HomeCategoriesWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
