import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState {
  const factory HomeState.initial() = HomeInitial;

  const factory HomeState.sliderLoading() = SliderLoading;

  const factory HomeState.sliderSuccess(T data) = SliderSuccess;

  const factory HomeState.sliderFailure(String errorMessage) = SliderFailure;

  const factory HomeState.getCategoriesLoading() = GetCategoriesLoading;

  const factory HomeState.getCategoriesSuccess(T data) = GetCategoriesSuccess;

  const factory HomeState.getCategoriesFailure(String errorMessage) =
      GetCategoriesFailure;

  const factory HomeState.getCategoryProductsLoading() =
      GetCategoryProductLoading;

  const factory HomeState.getCategoryProductsSuccess(T data) =
      GetCategoryProductSuccess;

  const factory HomeState.getCategoryProductsFailure(String errorMessage) =
      GetCategoryProductFailure;

  const factory HomeState.getHomeProductsLoading() =
      GetHomeProductLoading;

  const factory HomeState.getHomeProductsSuccess(T data) =
      GetHomeProductSuccess;

  const factory HomeState.getHomeProductsFailure(String errorMessage) =
      GetHomeProductFailure;
}
