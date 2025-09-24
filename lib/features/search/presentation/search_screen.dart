import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/theming/app_assets.dart';
import 'package:thimar/core/theming/app_styles.dart';
import 'package:thimar/core/utils/spacing.dart';
import 'package:thimar/core/widgets/app_custom_app_bar.dart';
import 'package:thimar/core/widgets/app_custom_button.dart';
import 'package:thimar/core/widgets/app_custom_search_bar.dart';
import 'package:thimar/features/search/logic/search_cubit.dart';
import 'package:thimar/features/search/presentation/widgets/arrange_filter_section.dart';
import 'package:thimar/features/search/presentation/widgets/filter_price_section.dart';
import 'package:thimar/features/search/presentation/widgets/search_response_bloc_builder.dart';

import '../../../core/di/dependency_injection.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final cubit = sl<SearchCubit>();

  Timer? _debounce;

  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();

    _debounce = Timer(const Duration(milliseconds: 500), () {
      if (query.isNotEmpty) {
        cubit.searchProducts();
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
    return Scaffold(
      appBar: AppCustomAppBar(appBarTitle: "بحث"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: BlocProvider.value(
            value: cubit,
            child: Column(
              children: [
                verticalSpace(16),
                AppCustomSearchBar(
                  controller: cubit.searchController,
                  onChanged: _onSearchChanged,
                  suffixIcon: IconButton(
                    icon: Image.asset(
                      AppAssets.filterImage,
                      height: 50.h,
                      width: 50.w,
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (_) {
                          return StatefulBuilder(
                            builder: (context, setState) => Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Center(
                                    child: Text(
                                      "تصفية",
                                      style: AppStyles.font20GreenBold,
                                    ),
                                  ),
                                  FilterPriceSection(),
                                  ArrangeFilterSection(),
                                  AppCustomButton(
                                      textButton: "تطبيق",
                                      onPressed: () {
                                        cubit.searchProducts();
                                        Navigator.pop(context);
                                      }),
                                  verticalSpace(20),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                verticalSpace(16),
                SearchResponseBlocBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
