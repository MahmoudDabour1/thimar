import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thimar/features/search/presentation/widgets/search_product_grid_view.dart';

import '../../../../core/widgets/app_loading_indicator_widget.dart';
import '../../logic/search_cubit.dart';
import '../../logic/search_state.dart';

class SearchResponseBlocBuilder extends StatelessWidget {
  const SearchResponseBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(builder: (context, state) {
      return state.maybeWhen(
          searchLoading: () => AppLoadingIndicatorWidget(),
          searchSuccess: (data) => SearchProductGridView(
                data: data,
              ),
          searchFailure: (error) => Center(
                child: Text(
                  error,
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
          orElse: () => SizedBox.shrink());
    });
  }
}
