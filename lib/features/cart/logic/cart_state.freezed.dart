// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addToCartLoading,
    required TResult Function(T data) addToCartSuccess,
    required TResult Function(String errorMessage) addToCartFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addToCartLoading,
    TResult? Function(T data)? addToCartSuccess,
    TResult? Function(String errorMessage)? addToCartFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addToCartLoading,
    TResult Function(T data)? addToCartSuccess,
    TResult Function(String errorMessage)? addToCartFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartInitial<T> value) initial,
    required TResult Function(AddToCartLoading<T> value) addToCartLoading,
    required TResult Function(AddToCartSuccess<T> value) addToCartSuccess,
    required TResult Function(AddToCartFailure<T> value) addToCartFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartInitial<T> value)? initial,
    TResult? Function(AddToCartLoading<T> value)? addToCartLoading,
    TResult? Function(AddToCartSuccess<T> value)? addToCartSuccess,
    TResult? Function(AddToCartFailure<T> value)? addToCartFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitial<T> value)? initial,
    TResult Function(AddToCartLoading<T> value)? addToCartLoading,
    TResult Function(AddToCartSuccess<T> value)? addToCartSuccess,
    TResult Function(AddToCartFailure<T> value)? addToCartFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<T, $Res> {
  factory $CartStateCopyWith(
          CartState<T> value, $Res Function(CartState<T>) then) =
      _$CartStateCopyWithImpl<T, $Res, CartState<T>>;
}

/// @nodoc
class _$CartStateCopyWithImpl<T, $Res, $Val extends CartState<T>>
    implements $CartStateCopyWith<T, $Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CartInitialImplCopyWith<T, $Res> {
  factory _$$CartInitialImplCopyWith(_$CartInitialImpl<T> value,
          $Res Function(_$CartInitialImpl<T>) then) =
      __$$CartInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$CartInitialImplCopyWithImpl<T, $Res>
    extends _$CartStateCopyWithImpl<T, $Res, _$CartInitialImpl<T>>
    implements _$$CartInitialImplCopyWith<T, $Res> {
  __$$CartInitialImplCopyWithImpl(
      _$CartInitialImpl<T> _value, $Res Function(_$CartInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CartInitialImpl<T> implements CartInitial<T> {
  const _$CartInitialImpl();

  @override
  String toString() {
    return 'CartState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addToCartLoading,
    required TResult Function(T data) addToCartSuccess,
    required TResult Function(String errorMessage) addToCartFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addToCartLoading,
    TResult? Function(T data)? addToCartSuccess,
    TResult? Function(String errorMessage)? addToCartFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addToCartLoading,
    TResult Function(T data)? addToCartSuccess,
    TResult Function(String errorMessage)? addToCartFailure,
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
    required TResult Function(CartInitial<T> value) initial,
    required TResult Function(AddToCartLoading<T> value) addToCartLoading,
    required TResult Function(AddToCartSuccess<T> value) addToCartSuccess,
    required TResult Function(AddToCartFailure<T> value) addToCartFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartInitial<T> value)? initial,
    TResult? Function(AddToCartLoading<T> value)? addToCartLoading,
    TResult? Function(AddToCartSuccess<T> value)? addToCartSuccess,
    TResult? Function(AddToCartFailure<T> value)? addToCartFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitial<T> value)? initial,
    TResult Function(AddToCartLoading<T> value)? addToCartLoading,
    TResult Function(AddToCartSuccess<T> value)? addToCartSuccess,
    TResult Function(AddToCartFailure<T> value)? addToCartFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CartInitial<T> implements CartState<T> {
  const factory CartInitial() = _$CartInitialImpl<T>;
}

/// @nodoc
abstract class _$$AddToCartLoadingImplCopyWith<T, $Res> {
  factory _$$AddToCartLoadingImplCopyWith(_$AddToCartLoadingImpl<T> value,
          $Res Function(_$AddToCartLoadingImpl<T>) then) =
      __$$AddToCartLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AddToCartLoadingImplCopyWithImpl<T, $Res>
    extends _$CartStateCopyWithImpl<T, $Res, _$AddToCartLoadingImpl<T>>
    implements _$$AddToCartLoadingImplCopyWith<T, $Res> {
  __$$AddToCartLoadingImplCopyWithImpl(_$AddToCartLoadingImpl<T> _value,
      $Res Function(_$AddToCartLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddToCartLoadingImpl<T> implements AddToCartLoading<T> {
  const _$AddToCartLoadingImpl();

  @override
  String toString() {
    return 'CartState<$T>.addToCartLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addToCartLoading,
    required TResult Function(T data) addToCartSuccess,
    required TResult Function(String errorMessage) addToCartFailure,
  }) {
    return addToCartLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addToCartLoading,
    TResult? Function(T data)? addToCartSuccess,
    TResult? Function(String errorMessage)? addToCartFailure,
  }) {
    return addToCartLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addToCartLoading,
    TResult Function(T data)? addToCartSuccess,
    TResult Function(String errorMessage)? addToCartFailure,
    required TResult orElse(),
  }) {
    if (addToCartLoading != null) {
      return addToCartLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartInitial<T> value) initial,
    required TResult Function(AddToCartLoading<T> value) addToCartLoading,
    required TResult Function(AddToCartSuccess<T> value) addToCartSuccess,
    required TResult Function(AddToCartFailure<T> value) addToCartFailure,
  }) {
    return addToCartLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartInitial<T> value)? initial,
    TResult? Function(AddToCartLoading<T> value)? addToCartLoading,
    TResult? Function(AddToCartSuccess<T> value)? addToCartSuccess,
    TResult? Function(AddToCartFailure<T> value)? addToCartFailure,
  }) {
    return addToCartLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitial<T> value)? initial,
    TResult Function(AddToCartLoading<T> value)? addToCartLoading,
    TResult Function(AddToCartSuccess<T> value)? addToCartSuccess,
    TResult Function(AddToCartFailure<T> value)? addToCartFailure,
    required TResult orElse(),
  }) {
    if (addToCartLoading != null) {
      return addToCartLoading(this);
    }
    return orElse();
  }
}

abstract class AddToCartLoading<T> implements CartState<T> {
  const factory AddToCartLoading() = _$AddToCartLoadingImpl<T>;
}

/// @nodoc
abstract class _$$AddToCartSuccessImplCopyWith<T, $Res> {
  factory _$$AddToCartSuccessImplCopyWith(_$AddToCartSuccessImpl<T> value,
          $Res Function(_$AddToCartSuccessImpl<T>) then) =
      __$$AddToCartSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$AddToCartSuccessImplCopyWithImpl<T, $Res>
    extends _$CartStateCopyWithImpl<T, $Res, _$AddToCartSuccessImpl<T>>
    implements _$$AddToCartSuccessImplCopyWith<T, $Res> {
  __$$AddToCartSuccessImplCopyWithImpl(_$AddToCartSuccessImpl<T> _value,
      $Res Function(_$AddToCartSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$AddToCartSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$AddToCartSuccessImpl<T> implements AddToCartSuccess<T> {
  const _$AddToCartSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'CartState<$T>.addToCartSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartSuccessImplCopyWith<T, _$AddToCartSuccessImpl<T>> get copyWith =>
      __$$AddToCartSuccessImplCopyWithImpl<T, _$AddToCartSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addToCartLoading,
    required TResult Function(T data) addToCartSuccess,
    required TResult Function(String errorMessage) addToCartFailure,
  }) {
    return addToCartSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addToCartLoading,
    TResult? Function(T data)? addToCartSuccess,
    TResult? Function(String errorMessage)? addToCartFailure,
  }) {
    return addToCartSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addToCartLoading,
    TResult Function(T data)? addToCartSuccess,
    TResult Function(String errorMessage)? addToCartFailure,
    required TResult orElse(),
  }) {
    if (addToCartSuccess != null) {
      return addToCartSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartInitial<T> value) initial,
    required TResult Function(AddToCartLoading<T> value) addToCartLoading,
    required TResult Function(AddToCartSuccess<T> value) addToCartSuccess,
    required TResult Function(AddToCartFailure<T> value) addToCartFailure,
  }) {
    return addToCartSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartInitial<T> value)? initial,
    TResult? Function(AddToCartLoading<T> value)? addToCartLoading,
    TResult? Function(AddToCartSuccess<T> value)? addToCartSuccess,
    TResult? Function(AddToCartFailure<T> value)? addToCartFailure,
  }) {
    return addToCartSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitial<T> value)? initial,
    TResult Function(AddToCartLoading<T> value)? addToCartLoading,
    TResult Function(AddToCartSuccess<T> value)? addToCartSuccess,
    TResult Function(AddToCartFailure<T> value)? addToCartFailure,
    required TResult orElse(),
  }) {
    if (addToCartSuccess != null) {
      return addToCartSuccess(this);
    }
    return orElse();
  }
}

abstract class AddToCartSuccess<T> implements CartState<T> {
  const factory AddToCartSuccess(final T data) = _$AddToCartSuccessImpl<T>;

  T get data;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddToCartSuccessImplCopyWith<T, _$AddToCartSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToCartFailureImplCopyWith<T, $Res> {
  factory _$$AddToCartFailureImplCopyWith(_$AddToCartFailureImpl<T> value,
          $Res Function(_$AddToCartFailureImpl<T>) then) =
      __$$AddToCartFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$AddToCartFailureImplCopyWithImpl<T, $Res>
    extends _$CartStateCopyWithImpl<T, $Res, _$AddToCartFailureImpl<T>>
    implements _$$AddToCartFailureImplCopyWith<T, $Res> {
  __$$AddToCartFailureImplCopyWithImpl(_$AddToCartFailureImpl<T> _value,
      $Res Function(_$AddToCartFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$AddToCartFailureImpl<T>(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddToCartFailureImpl<T> implements AddToCartFailure<T> {
  const _$AddToCartFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CartState<$T>.addToCartFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartFailureImpl<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartFailureImplCopyWith<T, _$AddToCartFailureImpl<T>> get copyWith =>
      __$$AddToCartFailureImplCopyWithImpl<T, _$AddToCartFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addToCartLoading,
    required TResult Function(T data) addToCartSuccess,
    required TResult Function(String errorMessage) addToCartFailure,
  }) {
    return addToCartFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addToCartLoading,
    TResult? Function(T data)? addToCartSuccess,
    TResult? Function(String errorMessage)? addToCartFailure,
  }) {
    return addToCartFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addToCartLoading,
    TResult Function(T data)? addToCartSuccess,
    TResult Function(String errorMessage)? addToCartFailure,
    required TResult orElse(),
  }) {
    if (addToCartFailure != null) {
      return addToCartFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartInitial<T> value) initial,
    required TResult Function(AddToCartLoading<T> value) addToCartLoading,
    required TResult Function(AddToCartSuccess<T> value) addToCartSuccess,
    required TResult Function(AddToCartFailure<T> value) addToCartFailure,
  }) {
    return addToCartFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartInitial<T> value)? initial,
    TResult? Function(AddToCartLoading<T> value)? addToCartLoading,
    TResult? Function(AddToCartSuccess<T> value)? addToCartSuccess,
    TResult? Function(AddToCartFailure<T> value)? addToCartFailure,
  }) {
    return addToCartFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitial<T> value)? initial,
    TResult Function(AddToCartLoading<T> value)? addToCartLoading,
    TResult Function(AddToCartSuccess<T> value)? addToCartSuccess,
    TResult Function(AddToCartFailure<T> value)? addToCartFailure,
    required TResult orElse(),
  }) {
    if (addToCartFailure != null) {
      return addToCartFailure(this);
    }
    return orElse();
  }
}

abstract class AddToCartFailure<T> implements CartState<T> {
  const factory AddToCartFailure(final String errorMessage) =
      _$AddToCartFailureImpl<T>;

  String get errorMessage;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddToCartFailureImplCopyWith<T, _$AddToCartFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
