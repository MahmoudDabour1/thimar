import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details_state.freezed.dart';

@freezed
class ProductDetailsState<T> with _$ProductDetailsState {
  const factory ProductDetailsState.initial() = ProductDetailsInitial;

  const factory ProductDetailsState.productDetailsLoading() =
      ProductDetailsLoading;

  const factory ProductDetailsState.productDetailsSuccess(T data) =
      ProductDetailsSuccess;

  const factory ProductDetailsState.productDetailsFailure(String errorMessage) =
      ProductDetailsFailure;
}
