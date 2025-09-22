import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_state.freezed.dart';

@freezed
class CategoryState<T> with _$CategoryState<T> {
  const factory CategoryState.initial() = CategoryInitial<T>;

  const factory CategoryState.getCategoriesLoading() = GetCategoriesLoading;

  const factory CategoryState.getCategoriesSuccess(
      T data) = GetCategoriesSuccess;

  const factory CategoryState.getCategoriesFailure(String errorMessage) =
  GetCategoriesFailure;

  const factory CategoryState.getCategoryProductsLoading() =
  GetCategoryProductLoading;

  const factory CategoryState.getCategoryProductsSuccess(T data) =
  GetCategoryProductSuccess;

  const factory CategoryState.getCategoryProductsFailure(String errorMessage) =
  GetCategoryProductFailure;
}