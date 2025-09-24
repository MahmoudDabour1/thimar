import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:thimar/features/search/data/repos/search_repo.dart';
import 'package:thimar/features/search/logic/search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchRepo searchRepo;

  SearchCubit(this.searchRepo) : super(SearchState.initial());
  final searchController = TextEditingController();
  late String filter = "asc";
  double? minPrice;
  double? maxPrice;
  RangeValues currentRangeValues = const RangeValues(0, 10000);

  Future<void> searchProducts() async {
    emit(SearchState.searchLoading());
    final response = await searchRepo.searchProducts(
      text: searchController.text,
      filter: filter,
      minPrice: minPrice ?? 0,
      maxPrice: maxPrice ?? 5000,
    );
    response.when(
      success: (data) => emit(
        SearchState.searchSuccess(data),
      ),
      failure: (error) => emit(
        SearchState.searchFailure(
          error.message.toString(),
        ),
      ),
    );
  }

  Future<void> searchProductsByCategory(int categoryId) async {
    emit(SearchState.searchLoading());
    final response = await searchRepo.searchProductsByCategory(
      text: searchController.text,
      filter: filter,
      minPrice: minPrice ?? 0,
      maxPrice: maxPrice ?? 0,
      categoryId: categoryId,
    );
    response.when(
      success: (data) => emit(
        SearchState.searchSuccess(data),
      ),
      failure: (error) => emit(
        SearchState.searchFailure(
          error.message.toString(),
        ),
      ),
    );
  }
}
