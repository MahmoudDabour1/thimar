import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState<T> with _$RegisterState<T> {
  const factory RegisterState.initial() = RegisterInitial;

  const factory RegisterState.loading() = RegisterLoading;

  const factory RegisterState.success(T response) = RegisterSuccess<T>;

  const factory RegisterState.error({required String error}) = RegisterError;
}
