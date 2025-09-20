// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sliderLoading,
    required TResult Function(T data) sliderSuccess,
    required TResult Function(String errorMessage) sliderFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sliderLoading,
    TResult? Function(T data)? sliderSuccess,
    TResult? Function(String errorMessage)? sliderFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sliderLoading,
    TResult Function(T data)? sliderSuccess,
    TResult Function(String errorMessage)? sliderFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial<T> value) initial,
    required TResult Function(SliderLoading<T> value) sliderLoading,
    required TResult Function(SliderSuccess<T> value) sliderSuccess,
    required TResult Function(SliderFailure<T> value) sliderFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitial<T> value)? initial,
    TResult? Function(SliderLoading<T> value)? sliderLoading,
    TResult? Function(SliderSuccess<T> value)? sliderSuccess,
    TResult? Function(SliderFailure<T> value)? sliderFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial<T> value)? initial,
    TResult Function(SliderLoading<T> value)? sliderLoading,
    TResult Function(SliderSuccess<T> value)? sliderSuccess,
    TResult Function(SliderFailure<T> value)? sliderFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<T, $Res> {
  factory $HomeStateCopyWith(
          HomeState<T> value, $Res Function(HomeState<T>) then) =
      _$HomeStateCopyWithImpl<T, $Res, HomeState<T>>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<T, $Res, $Val extends HomeState<T>>
    implements $HomeStateCopyWith<T, $Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HomeInitialImplCopyWith<T, $Res> {
  factory _$$HomeInitialImplCopyWith(_$HomeInitialImpl<T> value,
          $Res Function(_$HomeInitialImpl<T>) then) =
      __$$HomeInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$HomeInitialImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$HomeInitialImpl<T>>
    implements _$$HomeInitialImplCopyWith<T, $Res> {
  __$$HomeInitialImplCopyWithImpl(
      _$HomeInitialImpl<T> _value, $Res Function(_$HomeInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeInitialImpl<T> implements HomeInitial<T> {
  const _$HomeInitialImpl();

  @override
  String toString() {
    return 'HomeState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sliderLoading,
    required TResult Function(T data) sliderSuccess,
    required TResult Function(String errorMessage) sliderFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sliderLoading,
    TResult? Function(T data)? sliderSuccess,
    TResult? Function(String errorMessage)? sliderFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sliderLoading,
    TResult Function(T data)? sliderSuccess,
    TResult Function(String errorMessage)? sliderFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial<T> value) initial,
    required TResult Function(SliderLoading<T> value) sliderLoading,
    required TResult Function(SliderSuccess<T> value) sliderSuccess,
    required TResult Function(SliderFailure<T> value) sliderFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitial<T> value)? initial,
    TResult? Function(SliderLoading<T> value)? sliderLoading,
    TResult? Function(SliderSuccess<T> value)? sliderSuccess,
    TResult? Function(SliderFailure<T> value)? sliderFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial<T> value)? initial,
    TResult Function(SliderLoading<T> value)? sliderLoading,
    TResult Function(SliderSuccess<T> value)? sliderSuccess,
    TResult Function(SliderFailure<T> value)? sliderFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HomeInitial<T> implements HomeState<T> {
  const factory HomeInitial() = _$HomeInitialImpl<T>;
}

/// @nodoc
abstract class _$$SliderLoadingImplCopyWith<T, $Res> {
  factory _$$SliderLoadingImplCopyWith(_$SliderLoadingImpl<T> value,
          $Res Function(_$SliderLoadingImpl<T>) then) =
      __$$SliderLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SliderLoadingImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$SliderLoadingImpl<T>>
    implements _$$SliderLoadingImplCopyWith<T, $Res> {
  __$$SliderLoadingImplCopyWithImpl(_$SliderLoadingImpl<T> _value,
      $Res Function(_$SliderLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SliderLoadingImpl<T> implements SliderLoading<T> {
  const _$SliderLoadingImpl();

  @override
  String toString() {
    return 'HomeState<$T>.sliderLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SliderLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sliderLoading,
    required TResult Function(T data) sliderSuccess,
    required TResult Function(String errorMessage) sliderFailure,
  }) {
    return sliderLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sliderLoading,
    TResult? Function(T data)? sliderSuccess,
    TResult? Function(String errorMessage)? sliderFailure,
  }) {
    return sliderLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sliderLoading,
    TResult Function(T data)? sliderSuccess,
    TResult Function(String errorMessage)? sliderFailure,
    required TResult orElse(),
  }) {
    if (sliderLoading != null) {
      return sliderLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial<T> value) initial,
    required TResult Function(SliderLoading<T> value) sliderLoading,
    required TResult Function(SliderSuccess<T> value) sliderSuccess,
    required TResult Function(SliderFailure<T> value) sliderFailure,
  }) {
    return sliderLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitial<T> value)? initial,
    TResult? Function(SliderLoading<T> value)? sliderLoading,
    TResult? Function(SliderSuccess<T> value)? sliderSuccess,
    TResult? Function(SliderFailure<T> value)? sliderFailure,
  }) {
    return sliderLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial<T> value)? initial,
    TResult Function(SliderLoading<T> value)? sliderLoading,
    TResult Function(SliderSuccess<T> value)? sliderSuccess,
    TResult Function(SliderFailure<T> value)? sliderFailure,
    required TResult orElse(),
  }) {
    if (sliderLoading != null) {
      return sliderLoading(this);
    }
    return orElse();
  }
}

abstract class SliderLoading<T> implements HomeState<T> {
  const factory SliderLoading() = _$SliderLoadingImpl<T>;
}

/// @nodoc
abstract class _$$SliderSuccessImplCopyWith<T, $Res> {
  factory _$$SliderSuccessImplCopyWith(_$SliderSuccessImpl<T> value,
          $Res Function(_$SliderSuccessImpl<T>) then) =
      __$$SliderSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SliderSuccessImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$SliderSuccessImpl<T>>
    implements _$$SliderSuccessImplCopyWith<T, $Res> {
  __$$SliderSuccessImplCopyWithImpl(_$SliderSuccessImpl<T> _value,
      $Res Function(_$SliderSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SliderSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SliderSuccessImpl<T> implements SliderSuccess<T> {
  const _$SliderSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'HomeState<$T>.sliderSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SliderSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SliderSuccessImplCopyWith<T, _$SliderSuccessImpl<T>> get copyWith =>
      __$$SliderSuccessImplCopyWithImpl<T, _$SliderSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sliderLoading,
    required TResult Function(T data) sliderSuccess,
    required TResult Function(String errorMessage) sliderFailure,
  }) {
    return sliderSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sliderLoading,
    TResult? Function(T data)? sliderSuccess,
    TResult? Function(String errorMessage)? sliderFailure,
  }) {
    return sliderSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sliderLoading,
    TResult Function(T data)? sliderSuccess,
    TResult Function(String errorMessage)? sliderFailure,
    required TResult orElse(),
  }) {
    if (sliderSuccess != null) {
      return sliderSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial<T> value) initial,
    required TResult Function(SliderLoading<T> value) sliderLoading,
    required TResult Function(SliderSuccess<T> value) sliderSuccess,
    required TResult Function(SliderFailure<T> value) sliderFailure,
  }) {
    return sliderSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitial<T> value)? initial,
    TResult? Function(SliderLoading<T> value)? sliderLoading,
    TResult? Function(SliderSuccess<T> value)? sliderSuccess,
    TResult? Function(SliderFailure<T> value)? sliderFailure,
  }) {
    return sliderSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial<T> value)? initial,
    TResult Function(SliderLoading<T> value)? sliderLoading,
    TResult Function(SliderSuccess<T> value)? sliderSuccess,
    TResult Function(SliderFailure<T> value)? sliderFailure,
    required TResult orElse(),
  }) {
    if (sliderSuccess != null) {
      return sliderSuccess(this);
    }
    return orElse();
  }
}

abstract class SliderSuccess<T> implements HomeState<T> {
  const factory SliderSuccess(final T data) = _$SliderSuccessImpl<T>;

  T get data;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SliderSuccessImplCopyWith<T, _$SliderSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SliderFailureImplCopyWith<T, $Res> {
  factory _$$SliderFailureImplCopyWith(_$SliderFailureImpl<T> value,
          $Res Function(_$SliderFailureImpl<T>) then) =
      __$$SliderFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$SliderFailureImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$SliderFailureImpl<T>>
    implements _$$SliderFailureImplCopyWith<T, $Res> {
  __$$SliderFailureImplCopyWithImpl(_$SliderFailureImpl<T> _value,
      $Res Function(_$SliderFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$SliderFailureImpl<T>(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SliderFailureImpl<T> implements SliderFailure<T> {
  const _$SliderFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'HomeState<$T>.sliderFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SliderFailureImpl<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SliderFailureImplCopyWith<T, _$SliderFailureImpl<T>> get copyWith =>
      __$$SliderFailureImplCopyWithImpl<T, _$SliderFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sliderLoading,
    required TResult Function(T data) sliderSuccess,
    required TResult Function(String errorMessage) sliderFailure,
  }) {
    return sliderFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sliderLoading,
    TResult? Function(T data)? sliderSuccess,
    TResult? Function(String errorMessage)? sliderFailure,
  }) {
    return sliderFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sliderLoading,
    TResult Function(T data)? sliderSuccess,
    TResult Function(String errorMessage)? sliderFailure,
    required TResult orElse(),
  }) {
    if (sliderFailure != null) {
      return sliderFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial<T> value) initial,
    required TResult Function(SliderLoading<T> value) sliderLoading,
    required TResult Function(SliderSuccess<T> value) sliderSuccess,
    required TResult Function(SliderFailure<T> value) sliderFailure,
  }) {
    return sliderFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitial<T> value)? initial,
    TResult? Function(SliderLoading<T> value)? sliderLoading,
    TResult? Function(SliderSuccess<T> value)? sliderSuccess,
    TResult? Function(SliderFailure<T> value)? sliderFailure,
  }) {
    return sliderFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial<T> value)? initial,
    TResult Function(SliderLoading<T> value)? sliderLoading,
    TResult Function(SliderSuccess<T> value)? sliderSuccess,
    TResult Function(SliderFailure<T> value)? sliderFailure,
    required TResult orElse(),
  }) {
    if (sliderFailure != null) {
      return sliderFailure(this);
    }
    return orElse();
  }
}

abstract class SliderFailure<T> implements HomeState<T> {
  const factory SliderFailure(final String errorMessage) =
      _$SliderFailureImpl<T>;

  String get errorMessage;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SliderFailureImplCopyWith<T, _$SliderFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
