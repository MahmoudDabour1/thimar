// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(T data) searchSuccess,
    required TResult Function(String error) searchFailure,
    required TResult Function() changeFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(T data)? searchSuccess,
    TResult? Function(String error)? searchFailure,
    TResult? Function()? changeFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(T data)? searchSuccess,
    TResult Function(String error)? searchFailure,
    TResult Function()? changeFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial<T> value) initial,
    required TResult Function(SearchLoading<T> value) searchLoading,
    required TResult Function(SearchSuccess<T> value) searchSuccess,
    required TResult Function(SearchFailure<T> value) searchFailure,
    required TResult Function(ChangeFilter<T> value) changeFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial<T> value)? initial,
    TResult? Function(SearchLoading<T> value)? searchLoading,
    TResult? Function(SearchSuccess<T> value)? searchSuccess,
    TResult? Function(SearchFailure<T> value)? searchFailure,
    TResult? Function(ChangeFilter<T> value)? changeFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial<T> value)? initial,
    TResult Function(SearchLoading<T> value)? searchLoading,
    TResult Function(SearchSuccess<T> value)? searchSuccess,
    TResult Function(SearchFailure<T> value)? searchFailure,
    TResult Function(ChangeFilter<T> value)? changeFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<T, $Res> {
  factory $SearchStateCopyWith(
          SearchState<T> value, $Res Function(SearchState<T>) then) =
      _$SearchStateCopyWithImpl<T, $Res, SearchState<T>>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<T, $Res, $Val extends SearchState<T>>
    implements $SearchStateCopyWith<T, $Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SearchInitialImplCopyWith<T, $Res> {
  factory _$$SearchInitialImplCopyWith(_$SearchInitialImpl<T> value,
          $Res Function(_$SearchInitialImpl<T>) then) =
      __$$SearchInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SearchInitialImplCopyWithImpl<T, $Res>
    extends _$SearchStateCopyWithImpl<T, $Res, _$SearchInitialImpl<T>>
    implements _$$SearchInitialImplCopyWith<T, $Res> {
  __$$SearchInitialImplCopyWithImpl(_$SearchInitialImpl<T> _value,
      $Res Function(_$SearchInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchInitialImpl<T> implements SearchInitial<T> {
  const _$SearchInitialImpl();

  @override
  String toString() {
    return 'SearchState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(T data) searchSuccess,
    required TResult Function(String error) searchFailure,
    required TResult Function() changeFilter,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(T data)? searchSuccess,
    TResult? Function(String error)? searchFailure,
    TResult? Function()? changeFilter,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(T data)? searchSuccess,
    TResult Function(String error)? searchFailure,
    TResult Function()? changeFilter,
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
    required TResult Function(SearchInitial<T> value) initial,
    required TResult Function(SearchLoading<T> value) searchLoading,
    required TResult Function(SearchSuccess<T> value) searchSuccess,
    required TResult Function(SearchFailure<T> value) searchFailure,
    required TResult Function(ChangeFilter<T> value) changeFilter,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial<T> value)? initial,
    TResult? Function(SearchLoading<T> value)? searchLoading,
    TResult? Function(SearchSuccess<T> value)? searchSuccess,
    TResult? Function(SearchFailure<T> value)? searchFailure,
    TResult? Function(ChangeFilter<T> value)? changeFilter,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial<T> value)? initial,
    TResult Function(SearchLoading<T> value)? searchLoading,
    TResult Function(SearchSuccess<T> value)? searchSuccess,
    TResult Function(SearchFailure<T> value)? searchFailure,
    TResult Function(ChangeFilter<T> value)? changeFilter,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SearchInitial<T> implements SearchState<T> {
  const factory SearchInitial() = _$SearchInitialImpl<T>;
}

/// @nodoc
abstract class _$$SearchLoadingImplCopyWith<T, $Res> {
  factory _$$SearchLoadingImplCopyWith(_$SearchLoadingImpl<T> value,
          $Res Function(_$SearchLoadingImpl<T>) then) =
      __$$SearchLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SearchLoadingImplCopyWithImpl<T, $Res>
    extends _$SearchStateCopyWithImpl<T, $Res, _$SearchLoadingImpl<T>>
    implements _$$SearchLoadingImplCopyWith<T, $Res> {
  __$$SearchLoadingImplCopyWithImpl(_$SearchLoadingImpl<T> _value,
      $Res Function(_$SearchLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchLoadingImpl<T> implements SearchLoading<T> {
  const _$SearchLoadingImpl();

  @override
  String toString() {
    return 'SearchState<$T>.searchLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(T data) searchSuccess,
    required TResult Function(String error) searchFailure,
    required TResult Function() changeFilter,
  }) {
    return searchLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(T data)? searchSuccess,
    TResult? Function(String error)? searchFailure,
    TResult? Function()? changeFilter,
  }) {
    return searchLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(T data)? searchSuccess,
    TResult Function(String error)? searchFailure,
    TResult Function()? changeFilter,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial<T> value) initial,
    required TResult Function(SearchLoading<T> value) searchLoading,
    required TResult Function(SearchSuccess<T> value) searchSuccess,
    required TResult Function(SearchFailure<T> value) searchFailure,
    required TResult Function(ChangeFilter<T> value) changeFilter,
  }) {
    return searchLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial<T> value)? initial,
    TResult? Function(SearchLoading<T> value)? searchLoading,
    TResult? Function(SearchSuccess<T> value)? searchSuccess,
    TResult? Function(SearchFailure<T> value)? searchFailure,
    TResult? Function(ChangeFilter<T> value)? changeFilter,
  }) {
    return searchLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial<T> value)? initial,
    TResult Function(SearchLoading<T> value)? searchLoading,
    TResult Function(SearchSuccess<T> value)? searchSuccess,
    TResult Function(SearchFailure<T> value)? searchFailure,
    TResult Function(ChangeFilter<T> value)? changeFilter,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading(this);
    }
    return orElse();
  }
}

abstract class SearchLoading<T> implements SearchState<T> {
  const factory SearchLoading() = _$SearchLoadingImpl<T>;
}

/// @nodoc
abstract class _$$SearchSuccessImplCopyWith<T, $Res> {
  factory _$$SearchSuccessImplCopyWith(_$SearchSuccessImpl<T> value,
          $Res Function(_$SearchSuccessImpl<T>) then) =
      __$$SearchSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SearchSuccessImplCopyWithImpl<T, $Res>
    extends _$SearchStateCopyWithImpl<T, $Res, _$SearchSuccessImpl<T>>
    implements _$$SearchSuccessImplCopyWith<T, $Res> {
  __$$SearchSuccessImplCopyWithImpl(_$SearchSuccessImpl<T> _value,
      $Res Function(_$SearchSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SearchSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SearchSuccessImpl<T> implements SearchSuccess<T> {
  const _$SearchSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'SearchState<$T>.searchSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSuccessImplCopyWith<T, _$SearchSuccessImpl<T>> get copyWith =>
      __$$SearchSuccessImplCopyWithImpl<T, _$SearchSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(T data) searchSuccess,
    required TResult Function(String error) searchFailure,
    required TResult Function() changeFilter,
  }) {
    return searchSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(T data)? searchSuccess,
    TResult? Function(String error)? searchFailure,
    TResult? Function()? changeFilter,
  }) {
    return searchSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(T data)? searchSuccess,
    TResult Function(String error)? searchFailure,
    TResult Function()? changeFilter,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial<T> value) initial,
    required TResult Function(SearchLoading<T> value) searchLoading,
    required TResult Function(SearchSuccess<T> value) searchSuccess,
    required TResult Function(SearchFailure<T> value) searchFailure,
    required TResult Function(ChangeFilter<T> value) changeFilter,
  }) {
    return searchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial<T> value)? initial,
    TResult? Function(SearchLoading<T> value)? searchLoading,
    TResult? Function(SearchSuccess<T> value)? searchSuccess,
    TResult? Function(SearchFailure<T> value)? searchFailure,
    TResult? Function(ChangeFilter<T> value)? changeFilter,
  }) {
    return searchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial<T> value)? initial,
    TResult Function(SearchLoading<T> value)? searchLoading,
    TResult Function(SearchSuccess<T> value)? searchSuccess,
    TResult Function(SearchFailure<T> value)? searchFailure,
    TResult Function(ChangeFilter<T> value)? changeFilter,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(this);
    }
    return orElse();
  }
}

abstract class SearchSuccess<T> implements SearchState<T> {
  const factory SearchSuccess(final T data) = _$SearchSuccessImpl<T>;

  T get data;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchSuccessImplCopyWith<T, _$SearchSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchFailureImplCopyWith<T, $Res> {
  factory _$$SearchFailureImplCopyWith(_$SearchFailureImpl<T> value,
          $Res Function(_$SearchFailureImpl<T>) then) =
      __$$SearchFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SearchFailureImplCopyWithImpl<T, $Res>
    extends _$SearchStateCopyWithImpl<T, $Res, _$SearchFailureImpl<T>>
    implements _$$SearchFailureImplCopyWith<T, $Res> {
  __$$SearchFailureImplCopyWithImpl(_$SearchFailureImpl<T> _value,
      $Res Function(_$SearchFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SearchFailureImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchFailureImpl<T> implements SearchFailure<T> {
  const _$SearchFailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'SearchState<$T>.searchFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchFailureImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchFailureImplCopyWith<T, _$SearchFailureImpl<T>> get copyWith =>
      __$$SearchFailureImplCopyWithImpl<T, _$SearchFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(T data) searchSuccess,
    required TResult Function(String error) searchFailure,
    required TResult Function() changeFilter,
  }) {
    return searchFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(T data)? searchSuccess,
    TResult? Function(String error)? searchFailure,
    TResult? Function()? changeFilter,
  }) {
    return searchFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(T data)? searchSuccess,
    TResult Function(String error)? searchFailure,
    TResult Function()? changeFilter,
    required TResult orElse(),
  }) {
    if (searchFailure != null) {
      return searchFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial<T> value) initial,
    required TResult Function(SearchLoading<T> value) searchLoading,
    required TResult Function(SearchSuccess<T> value) searchSuccess,
    required TResult Function(SearchFailure<T> value) searchFailure,
    required TResult Function(ChangeFilter<T> value) changeFilter,
  }) {
    return searchFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial<T> value)? initial,
    TResult? Function(SearchLoading<T> value)? searchLoading,
    TResult? Function(SearchSuccess<T> value)? searchSuccess,
    TResult? Function(SearchFailure<T> value)? searchFailure,
    TResult? Function(ChangeFilter<T> value)? changeFilter,
  }) {
    return searchFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial<T> value)? initial,
    TResult Function(SearchLoading<T> value)? searchLoading,
    TResult Function(SearchSuccess<T> value)? searchSuccess,
    TResult Function(SearchFailure<T> value)? searchFailure,
    TResult Function(ChangeFilter<T> value)? changeFilter,
    required TResult orElse(),
  }) {
    if (searchFailure != null) {
      return searchFailure(this);
    }
    return orElse();
  }
}

abstract class SearchFailure<T> implements SearchState<T> {
  const factory SearchFailure(final String error) = _$SearchFailureImpl<T>;

  String get error;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchFailureImplCopyWith<T, _$SearchFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeFilterImplCopyWith<T, $Res> {
  factory _$$ChangeFilterImplCopyWith(_$ChangeFilterImpl<T> value,
          $Res Function(_$ChangeFilterImpl<T>) then) =
      __$$ChangeFilterImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ChangeFilterImplCopyWithImpl<T, $Res>
    extends _$SearchStateCopyWithImpl<T, $Res, _$ChangeFilterImpl<T>>
    implements _$$ChangeFilterImplCopyWith<T, $Res> {
  __$$ChangeFilterImplCopyWithImpl(
      _$ChangeFilterImpl<T> _value, $Res Function(_$ChangeFilterImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChangeFilterImpl<T> implements ChangeFilter<T> {
  const _$ChangeFilterImpl();

  @override
  String toString() {
    return 'SearchState<$T>.changeFilter()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChangeFilterImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(T data) searchSuccess,
    required TResult Function(String error) searchFailure,
    required TResult Function() changeFilter,
  }) {
    return changeFilter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(T data)? searchSuccess,
    TResult? Function(String error)? searchFailure,
    TResult? Function()? changeFilter,
  }) {
    return changeFilter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(T data)? searchSuccess,
    TResult Function(String error)? searchFailure,
    TResult Function()? changeFilter,
    required TResult orElse(),
  }) {
    if (changeFilter != null) {
      return changeFilter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial<T> value) initial,
    required TResult Function(SearchLoading<T> value) searchLoading,
    required TResult Function(SearchSuccess<T> value) searchSuccess,
    required TResult Function(SearchFailure<T> value) searchFailure,
    required TResult Function(ChangeFilter<T> value) changeFilter,
  }) {
    return changeFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial<T> value)? initial,
    TResult? Function(SearchLoading<T> value)? searchLoading,
    TResult? Function(SearchSuccess<T> value)? searchSuccess,
    TResult? Function(SearchFailure<T> value)? searchFailure,
    TResult? Function(ChangeFilter<T> value)? changeFilter,
  }) {
    return changeFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial<T> value)? initial,
    TResult Function(SearchLoading<T> value)? searchLoading,
    TResult Function(SearchSuccess<T> value)? searchSuccess,
    TResult Function(SearchFailure<T> value)? searchFailure,
    TResult Function(ChangeFilter<T> value)? changeFilter,
    required TResult orElse(),
  }) {
    if (changeFilter != null) {
      return changeFilter(this);
    }
    return orElse();
  }
}

abstract class ChangeFilter<T> implements SearchState<T> {
  const factory ChangeFilter() = _$ChangeFilterImpl<T>;
}
