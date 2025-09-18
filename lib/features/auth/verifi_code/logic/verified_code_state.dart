import 'package:freezed_annotation/freezed_annotation.dart';

part 'verified_code_state.freezed.dart';

@freezed
class VerifiedCodeState<T> with _$VerifiedCodeState<T> {
  const factory VerifiedCodeState.initial() = VerifiedCodeInitial;

  const factory VerifiedCodeState.loading() = VerifiedCodeLoading;

  const factory VerifiedCodeState.success(T response) = VerifiedCodeSuccess<T>;

  const factory VerifiedCodeState.error({required String error}) =
      VerifiedCodeError;
}
