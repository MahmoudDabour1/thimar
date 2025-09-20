import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/widgets/app_custom_search_bar.dart';
import 'package:thimar/features/home/logic/home_cubit.dart';
import 'package:thimar/features/home/presentation/widgets/category_product_bloc_builder.dart';
import 'package:thimar/features/home/presentation/widgets/category_product_grid_view.dart';

import '../../../core/di/dependency_injection.dart';
import '../../../core/widgets/app_custom_app_bar.dart';

class CategoryProductsScreen extends StatelessWidget {
  final int categoryId;
  final String categoryName;

  const CategoryProductsScreen(
      {super.key, required this.categoryId, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(sl())..getCategoryProducts(categoryId),
      child: Scaffold(
        appBar: AppCustomAppBar(
          appBarTitle: categoryName,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: AppCustomSearchBar(),
                ),
                CategoryProductBlocBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
