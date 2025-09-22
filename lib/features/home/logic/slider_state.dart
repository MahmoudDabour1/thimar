import 'package:freezed_annotation/freezed_annotation.dart';

part 'slider_state.freezed.dart';

@freezed
class SliderState<T> with _$SliderState {
  const factory SliderState.initial() = SliderInitial;

  const factory SliderState.sliderLoading() = SliderLoading;

  const factory SliderState.sliderSuccess(T data) = SliderSuccess;

  const factory SliderState.sliderFailure(String errorMessage) = SliderFailure;
}
