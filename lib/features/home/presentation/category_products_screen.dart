import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/widgets/app_custom_search_bar.dart';
import 'package:thimar/core/widgets/app_loading_indicator_widget.dart';
import 'package:thimar/features/home/logic/category_cubit.dart';
import 'package:thimar/features/home/presentation/widgets/category_product_bloc_builder.dart';
import 'package:thimar/features/search/logic/search_cubit.dart';

import '../../../core/di/dependency_injection.dart';
import '../../../core/widgets/app_custom_app_bar.dart';
import '../../search/logic/search_state.dart';
import '../../search/presentation/widgets/search_product_grid_view.dart';

class CategoryProductsScreen extends StatefulWidget {
  final int categoryId;
  final String categoryName;

  const CategoryProductsScreen(
      {super.key, required this.categoryId, required this.categoryName});

  @override
  State<CategoryProductsScreen> createState() => _CategoryProductsScreenState();
}

class _CategoryProductsScreenState extends State<CategoryProductsScreen> {
  final categoryCubit = sl<CategoryCubit>();

  final cubit = sl<SearchCubit>();

  Timer? _debounce;

  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();

    _debounce = Timer(const Duration(milliseconds: 500), () {
      if (query.isNotEmpty) {
        cubit.searchProductsByCategory(
          widget.categoryId,
        );
      }
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
            value: categoryCubit..getCategoryProducts(widget.categoryId)),
        BlocProvider.value(value: cubit),
      ],
      child: Scaffold(
        appBar: AppCustomAppBar(
          appBarTitle: widget.categoryName,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.h),
                    child: AppCustomSearchBar(
                      controller: cubit.searchController,
                      onChanged: _onSearchChanged,
                    ),
                  ),
                  BlocBuilder<SearchCubit, SearchState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        searchLoading: () => AppLoadingIndicatorWidget(),
                        searchSuccess: (data) {
                          // if (data.isEmpty) {
                          //   return const Center(
                          //     child: Text("لا يوجد نتائج للبحث"),
                          //   );
                          // }
                          return SearchProductGridView(data: data);
                        },
                        searchFailure: (error) => Center(
                          child:
                              Text(error, style: TextStyle(color: Colors.red)),
                        ),
                        orElse: () => CategoryProductBlocBuilder(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
