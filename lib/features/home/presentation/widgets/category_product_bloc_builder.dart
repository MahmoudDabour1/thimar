import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thimar/core/theming/app_colors.dart';
import 'package:thimar/features/home/logic/home_cubit.dart';
import 'package:thimar/features/home/logic/home_state.dart';

import 'category_product_grid_view.dart';

class CategoryProductBlocBuilder extends StatelessWidget {
  const CategoryProductBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      return state.maybeWhen(
        getCategoryProductsLoading: () =>  Center(
          child: CircularProgressIndicator(
            color: AppColors.primaryColor,
          ),
        ),
        getCategoryProductsSuccess: (data) => CategoryProductGridView(
          data: data,
        ),
        getCategoryProductsFailure: (error) => Center(
          child: Text(
            error,
            style: TextStyle(
              color: Colors.red,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        orElse: () => const SizedBox(),
      );
    });
  }
}
