import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState {
  const factory HomeState.initial() = HomeInitial;

  const factory HomeState.getHomeProductsLoading() = GetHomeProductLoading;

  const factory HomeState.getHomeProductsSuccess(T data) =
      GetHomeProductSuccess;

  const factory HomeState.getHomeProductsFailure(String errorMessage) =
      GetHomeProductFailure;
}
