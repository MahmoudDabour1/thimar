// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckoutState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() storeOrderLoading,
    required TResult Function(T data) storeOrderSuccess,
    required TResult Function(String message) storeOrderError,
    required TResult Function() checkoutPaymentUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? storeOrderLoading,
    TResult? Function(T data)? storeOrderSuccess,
    TResult? Function(String message)? storeOrderError,
    TResult? Function()? checkoutPaymentUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? storeOrderLoading,
    TResult Function(T data)? storeOrderSuccess,
    TResult Function(String message)? storeOrderError,
    TResult Function()? checkoutPaymentUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(StoreOrderLoading<T> value) storeOrderLoading,
    required TResult Function(StoreOrderSuccess<T> value) storeOrderSuccess,
    required TResult Function(StoreOrderError<T> value) storeOrderError,
    required TResult Function(CheckoutPaymentUpdated<T> value)
        checkoutPaymentUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(StoreOrderLoading<T> value)? storeOrderLoading,
    TResult? Function(StoreOrderSuccess<T> value)? storeOrderSuccess,
    TResult? Function(StoreOrderError<T> value)? storeOrderError,
    TResult? Function(CheckoutPaymentUpdated<T> value)? checkoutPaymentUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(StoreOrderLoading<T> value)? storeOrderLoading,
    TResult Function(StoreOrderSuccess<T> value)? storeOrderSuccess,
    TResult Function(StoreOrderError<T> value)? storeOrderError,
    TResult Function(CheckoutPaymentUpdated<T> value)? checkoutPaymentUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutStateCopyWith<T, $Res> {
  factory $CheckoutStateCopyWith(
          CheckoutState<T> value, $Res Function(CheckoutState<T>) then) =
      _$CheckoutStateCopyWithImpl<T, $Res, CheckoutState<T>>;
}

/// @nodoc
class _$CheckoutStateCopyWithImpl<T, $Res, $Val extends CheckoutState<T>>
    implements $CheckoutStateCopyWith<T, $Res> {
  _$CheckoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$CheckoutStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CheckoutState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() storeOrderLoading,
    required TResult Function(T data) storeOrderSuccess,
    required TResult Function(String message) storeOrderError,
    required TResult Function() checkoutPaymentUpdated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? storeOrderLoading,
    TResult? Function(T data)? storeOrderSuccess,
    TResult? Function(String message)? storeOrderError,
    TResult? Function()? checkoutPaymentUpdated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? storeOrderLoading,
    TResult Function(T data)? storeOrderSuccess,
    TResult Function(String message)? storeOrderError,
    TResult Function()? checkoutPaymentUpdated,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(StoreOrderLoading<T> value) storeOrderLoading,
    required TResult Function(StoreOrderSuccess<T> value) storeOrderSuccess,
    required TResult Function(StoreOrderError<T> value) storeOrderError,
    required TResult Function(CheckoutPaymentUpdated<T> value)
        checkoutPaymentUpdated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(StoreOrderLoading<T> value)? storeOrderLoading,
    TResult? Function(StoreOrderSuccess<T> value)? storeOrderSuccess,
    TResult? Function(StoreOrderError<T> value)? storeOrderError,
    TResult? Function(CheckoutPaymentUpdated<T> value)? checkoutPaymentUpdated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(StoreOrderLoading<T> value)? storeOrderLoading,
    TResult Function(StoreOrderSuccess<T> value)? storeOrderSuccess,
    TResult Function(StoreOrderError<T> value)? storeOrderError,
    TResult Function(CheckoutPaymentUpdated<T> value)? checkoutPaymentUpdated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements CheckoutState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$StoreOrderLoadingImplCopyWith<T, $Res> {
  factory _$$StoreOrderLoadingImplCopyWith(_$StoreOrderLoadingImpl<T> value,
          $Res Function(_$StoreOrderLoadingImpl<T>) then) =
      __$$StoreOrderLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$StoreOrderLoadingImplCopyWithImpl<T, $Res>
    extends _$CheckoutStateCopyWithImpl<T, $Res, _$StoreOrderLoadingImpl<T>>
    implements _$$StoreOrderLoadingImplCopyWith<T, $Res> {
  __$$StoreOrderLoadingImplCopyWithImpl(_$StoreOrderLoadingImpl<T> _value,
      $Res Function(_$StoreOrderLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StoreOrderLoadingImpl<T> implements StoreOrderLoading<T> {
  const _$StoreOrderLoadingImpl();

  @override
  String toString() {
    return 'CheckoutState<$T>.storeOrderLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreOrderLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() storeOrderLoading,
    required TResult Function(T data) storeOrderSuccess,
    required TResult Function(String message) storeOrderError,
    required TResult Function() checkoutPaymentUpdated,
  }) {
    return storeOrderLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? storeOrderLoading,
    TResult? Function(T data)? storeOrderSuccess,
    TResult? Function(String message)? storeOrderError,
    TResult? Function()? checkoutPaymentUpdated,
  }) {
    return storeOrderLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? storeOrderLoading,
    TResult Function(T data)? storeOrderSuccess,
    TResult Function(String message)? storeOrderError,
    TResult Function()? checkoutPaymentUpdated,
    required TResult orElse(),
  }) {
    if (storeOrderLoading != null) {
      return storeOrderLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(StoreOrderLoading<T> value) storeOrderLoading,
    required TResult Function(StoreOrderSuccess<T> value) storeOrderSuccess,
    required TResult Function(StoreOrderError<T> value) storeOrderError,
    required TResult Function(CheckoutPaymentUpdated<T> value)
        checkoutPaymentUpdated,
  }) {
    return storeOrderLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(StoreOrderLoading<T> value)? storeOrderLoading,
    TResult? Function(StoreOrderSuccess<T> value)? storeOrderSuccess,
    TResult? Function(StoreOrderError<T> value)? storeOrderError,
    TResult? Function(CheckoutPaymentUpdated<T> value)? checkoutPaymentUpdated,
  }) {
    return storeOrderLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(StoreOrderLoading<T> value)? storeOrderLoading,
    TResult Function(StoreOrderSuccess<T> value)? storeOrderSuccess,
    TResult Function(StoreOrderError<T> value)? storeOrderError,
    TResult Function(CheckoutPaymentUpdated<T> value)? checkoutPaymentUpdated,
    required TResult orElse(),
  }) {
    if (storeOrderLoading != null) {
      return storeOrderLoading(this);
    }
    return orElse();
  }
}

abstract class StoreOrderLoading<T> implements CheckoutState<T> {
  const factory StoreOrderLoading() = _$StoreOrderLoadingImpl<T>;
}

/// @nodoc
abstract class _$$StoreOrderSuccessImplCopyWith<T, $Res> {
  factory _$$StoreOrderSuccessImplCopyWith(_$StoreOrderSuccessImpl<T> value,
          $Res Function(_$StoreOrderSuccessImpl<T>) then) =
      __$$StoreOrderSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$StoreOrderSuccessImplCopyWithImpl<T, $Res>
    extends _$CheckoutStateCopyWithImpl<T, $Res, _$StoreOrderSuccessImpl<T>>
    implements _$$StoreOrderSuccessImplCopyWith<T, $Res> {
  __$$StoreOrderSuccessImplCopyWithImpl(_$StoreOrderSuccessImpl<T> _value,
      $Res Function(_$StoreOrderSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$StoreOrderSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$StoreOrderSuccessImpl<T> implements StoreOrderSuccess<T> {
  const _$StoreOrderSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'CheckoutState<$T>.storeOrderSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreOrderSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreOrderSuccessImplCopyWith<T, _$StoreOrderSuccessImpl<T>>
      get copyWith =>
          __$$StoreOrderSuccessImplCopyWithImpl<T, _$StoreOrderSuccessImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() storeOrderLoading,
    required TResult Function(T data) storeOrderSuccess,
    required TResult Function(String message) storeOrderError,
    required TResult Function() checkoutPaymentUpdated,
  }) {
    return storeOrderSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? storeOrderLoading,
    TResult? Function(T data)? storeOrderSuccess,
    TResult? Function(String message)? storeOrderError,
    TResult? Function()? checkoutPaymentUpdated,
  }) {
    return storeOrderSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? storeOrderLoading,
    TResult Function(T data)? storeOrderSuccess,
    TResult Function(String message)? storeOrderError,
    TResult Function()? checkoutPaymentUpdated,
    required TResult orElse(),
  }) {
    if (storeOrderSuccess != null) {
      return storeOrderSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(StoreOrderLoading<T> value) storeOrderLoading,
    required TResult Function(StoreOrderSuccess<T> value) storeOrderSuccess,
    required TResult Function(StoreOrderError<T> value) storeOrderError,
    required TResult Function(CheckoutPaymentUpdated<T> value)
        checkoutPaymentUpdated,
  }) {
    return storeOrderSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(StoreOrderLoading<T> value)? storeOrderLoading,
    TResult? Function(StoreOrderSuccess<T> value)? storeOrderSuccess,
    TResult? Function(StoreOrderError<T> value)? storeOrderError,
    TResult? Function(CheckoutPaymentUpdated<T> value)? checkoutPaymentUpdated,
  }) {
    return storeOrderSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(StoreOrderLoading<T> value)? storeOrderLoading,
    TResult Function(StoreOrderSuccess<T> value)? storeOrderSuccess,
    TResult Function(StoreOrderError<T> value)? storeOrderError,
    TResult Function(CheckoutPaymentUpdated<T> value)? checkoutPaymentUpdated,
    required TResult orElse(),
  }) {
    if (storeOrderSuccess != null) {
      return storeOrderSuccess(this);
    }
    return orElse();
  }
}

abstract class StoreOrderSuccess<T> implements CheckoutState<T> {
  const factory StoreOrderSuccess(final T data) = _$StoreOrderSuccessImpl<T>;

  T get data;

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreOrderSuccessImplCopyWith<T, _$StoreOrderSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StoreOrderErrorImplCopyWith<T, $Res> {
  factory _$$StoreOrderErrorImplCopyWith(_$StoreOrderErrorImpl<T> value,
          $Res Function(_$StoreOrderErrorImpl<T>) then) =
      __$$StoreOrderErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$StoreOrderErrorImplCopyWithImpl<T, $Res>
    extends _$CheckoutStateCopyWithImpl<T, $Res, _$StoreOrderErrorImpl<T>>
    implements _$$StoreOrderErrorImplCopyWith<T, $Res> {
  __$$StoreOrderErrorImplCopyWithImpl(_$StoreOrderErrorImpl<T> _value,
      $Res Function(_$StoreOrderErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$StoreOrderErrorImpl<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StoreOrderErrorImpl<T> implements StoreOrderError<T> {
  const _$StoreOrderErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CheckoutState<$T>.storeOrderError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreOrderErrorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreOrderErrorImplCopyWith<T, _$StoreOrderErrorImpl<T>> get copyWith =>
      __$$StoreOrderErrorImplCopyWithImpl<T, _$StoreOrderErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() storeOrderLoading,
    required TResult Function(T data) storeOrderSuccess,
    required TResult Function(String message) storeOrderError,
    required TResult Function() checkoutPaymentUpdated,
  }) {
    return storeOrderError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? storeOrderLoading,
    TResult? Function(T data)? storeOrderSuccess,
    TResult? Function(String message)? storeOrderError,
    TResult? Function()? checkoutPaymentUpdated,
  }) {
    return storeOrderError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? storeOrderLoading,
    TResult Function(T data)? storeOrderSuccess,
    TResult Function(String message)? storeOrderError,
    TResult Function()? checkoutPaymentUpdated,
    required TResult orElse(),
  }) {
    if (storeOrderError != null) {
      return storeOrderError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(StoreOrderLoading<T> value) storeOrderLoading,
    required TResult Function(StoreOrderSuccess<T> value) storeOrderSuccess,
    required TResult Function(StoreOrderError<T> value) storeOrderError,
    required TResult Function(CheckoutPaymentUpdated<T> value)
        checkoutPaymentUpdated,
  }) {
    return storeOrderError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(StoreOrderLoading<T> value)? storeOrderLoading,
    TResult? Function(StoreOrderSuccess<T> value)? storeOrderSuccess,
    TResult? Function(StoreOrderError<T> value)? storeOrderError,
    TResult? Function(CheckoutPaymentUpdated<T> value)? checkoutPaymentUpdated,
  }) {
    return storeOrderError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(StoreOrderLoading<T> value)? storeOrderLoading,
    TResult Function(StoreOrderSuccess<T> value)? storeOrderSuccess,
    TResult Function(StoreOrderError<T> value)? storeOrderError,
    TResult Function(CheckoutPaymentUpdated<T> value)? checkoutPaymentUpdated,
    required TResult orElse(),
  }) {
    if (storeOrderError != null) {
      return storeOrderError(this);
    }
    return orElse();
  }
}

abstract class StoreOrderError<T> implements CheckoutState<T> {
  const factory StoreOrderError(final String message) =
      _$StoreOrderErrorImpl<T>;

  String get message;

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreOrderErrorImplCopyWith<T, _$StoreOrderErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckoutPaymentUpdatedImplCopyWith<T, $Res> {
  factory _$$CheckoutPaymentUpdatedImplCopyWith(
          _$CheckoutPaymentUpdatedImpl<T> value,
          $Res Function(_$CheckoutPaymentUpdatedImpl<T>) then) =
      __$$CheckoutPaymentUpdatedImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$CheckoutPaymentUpdatedImplCopyWithImpl<T, $Res>
    extends _$CheckoutStateCopyWithImpl<T, $Res,
        _$CheckoutPaymentUpdatedImpl<T>>
    implements _$$CheckoutPaymentUpdatedImplCopyWith<T, $Res> {
  __$$CheckoutPaymentUpdatedImplCopyWithImpl(
      _$CheckoutPaymentUpdatedImpl<T> _value,
      $Res Function(_$CheckoutPaymentUpdatedImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckoutPaymentUpdatedImpl<T> implements CheckoutPaymentUpdated<T> {
  const _$CheckoutPaymentUpdatedImpl();

  @override
  String toString() {
    return 'CheckoutState<$T>.checkoutPaymentUpdated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutPaymentUpdatedImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() storeOrderLoading,
    required TResult Function(T data) storeOrderSuccess,
    required TResult Function(String message) storeOrderError,
    required TResult Function() checkoutPaymentUpdated,
  }) {
    return checkoutPaymentUpdated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? storeOrderLoading,
    TResult? Function(T data)? storeOrderSuccess,
    TResult? Function(String message)? storeOrderError,
    TResult? Function()? checkoutPaymentUpdated,
  }) {
    return checkoutPaymentUpdated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? storeOrderLoading,
    TResult Function(T data)? storeOrderSuccess,
    TResult Function(String message)? storeOrderError,
    TResult Function()? checkoutPaymentUpdated,
    required TResult orElse(),
  }) {
    if (checkoutPaymentUpdated != null) {
      return checkoutPaymentUpdated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(StoreOrderLoading<T> value) storeOrderLoading,
    required TResult Function(StoreOrderSuccess<T> value) storeOrderSuccess,
    required TResult Function(StoreOrderError<T> value) storeOrderError,
    required TResult Function(CheckoutPaymentUpdated<T> value)
        checkoutPaymentUpdated,
  }) {
    return checkoutPaymentUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(StoreOrderLoading<T> value)? storeOrderLoading,
    TResult? Function(StoreOrderSuccess<T> value)? storeOrderSuccess,
    TResult? Function(StoreOrderError<T> value)? storeOrderError,
    TResult? Function(CheckoutPaymentUpdated<T> value)? checkoutPaymentUpdated,
  }) {
    return checkoutPaymentUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(StoreOrderLoading<T> value)? storeOrderLoading,
    TResult Function(StoreOrderSuccess<T> value)? storeOrderSuccess,
    TResult Function(StoreOrderError<T> value)? storeOrderError,
    TResult Function(CheckoutPaymentUpdated<T> value)? checkoutPaymentUpdated,
    required TResult orElse(),
  }) {
    if (checkoutPaymentUpdated != null) {
      return checkoutPaymentUpdated(this);
    }
    return orElse();
  }
}

abstract class CheckoutPaymentUpdated<T> implements CheckoutState<T> {
  const factory CheckoutPaymentUpdated() = _$CheckoutPaymentUpdatedImpl<T>;
}
