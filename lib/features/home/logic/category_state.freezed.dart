// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getCategoriesLoading,
    required TResult Function(T data) getCategoriesSuccess,
    required TResult Function(String errorMessage) getCategoriesFailure,
    required TResult Function() getCategoryProductsLoading,
    required TResult Function(T data) getCategoryProductsSuccess,
    required TResult Function(String errorMessage) getCategoryProductsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCategoriesLoading,
    TResult? Function(T data)? getCategoriesSuccess,
    TResult? Function(String errorMessage)? getCategoriesFailure,
    TResult? Function()? getCategoryProductsLoading,
    TResult? Function(T data)? getCategoryProductsSuccess,
    TResult? Function(String errorMessage)? getCategoryProductsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCategoriesLoading,
    TResult Function(T data)? getCategoriesSuccess,
    TResult Function(String errorMessage)? getCategoriesFailure,
    TResult Function()? getCategoryProductsLoading,
    TResult Function(T data)? getCategoryProductsSuccess,
    TResult Function(String errorMessage)? getCategoryProductsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryInitial<T> value) initial,
    required TResult Function(GetCategoriesLoading<T> value)
        getCategoriesLoading,
    required TResult Function(GetCategoriesSuccess<T> value)
        getCategoriesSuccess,
    required TResult Function(GetCategoriesFailure<T> value)
        getCategoriesFailure,
    required TResult Function(GetCategoryProductLoading<T> value)
        getCategoryProductsLoading,
    required TResult Function(GetCategoryProductSuccess<T> value)
        getCategoryProductsSuccess,
    required TResult Function(GetCategoryProductFailure<T> value)
        getCategoryProductsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryInitial<T> value)? initial,
    TResult? Function(GetCategoriesLoading<T> value)? getCategoriesLoading,
    TResult? Function(GetCategoriesSuccess<T> value)? getCategoriesSuccess,
    TResult? Function(GetCategoriesFailure<T> value)? getCategoriesFailure,
    TResult? Function(GetCategoryProductLoading<T> value)?
        getCategoryProductsLoading,
    TResult? Function(GetCategoryProductSuccess<T> value)?
        getCategoryProductsSuccess,
    TResult? Function(GetCategoryProductFailure<T> value)?
        getCategoryProductsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitial<T> value)? initial,
    TResult Function(GetCategoriesLoading<T> value)? getCategoriesLoading,
    TResult Function(GetCategoriesSuccess<T> value)? getCategoriesSuccess,
    TResult Function(GetCategoriesFailure<T> value)? getCategoriesFailure,
    TResult Function(GetCategoryProductLoading<T> value)?
        getCategoryProductsLoading,
    TResult Function(GetCategoryProductSuccess<T> value)?
        getCategoryProductsSuccess,
    TResult Function(GetCategoryProductFailure<T> value)?
        getCategoryProductsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<T, $Res> {
  factory $CategoryStateCopyWith(
          CategoryState<T> value, $Res Function(CategoryState<T>) then) =
      _$CategoryStateCopyWithImpl<T, $Res, CategoryState<T>>;
}

/// @nodoc
class _$CategoryStateCopyWithImpl<T, $Res, $Val extends CategoryState<T>>
    implements $CategoryStateCopyWith<T, $Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CategoryInitialImplCopyWith<T, $Res> {
  factory _$$CategoryInitialImplCopyWith(_$CategoryInitialImpl<T> value,
          $Res Function(_$CategoryInitialImpl<T>) then) =
      __$$CategoryInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$CategoryInitialImplCopyWithImpl<T, $Res>
    extends _$CategoryStateCopyWithImpl<T, $Res, _$CategoryInitialImpl<T>>
    implements _$$CategoryInitialImplCopyWith<T, $Res> {
  __$$CategoryInitialImplCopyWithImpl(_$CategoryInitialImpl<T> _value,
      $Res Function(_$CategoryInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CategoryInitialImpl<T> implements CategoryInitial<T> {
  const _$CategoryInitialImpl();

  @override
  String toString() {
    return 'CategoryState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CategoryInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getCategoriesLoading,
    required TResult Function(T data) getCategoriesSuccess,
    required TResult Function(String errorMessage) getCategoriesFailure,
    required TResult Function() getCategoryProductsLoading,
    required TResult Function(T data) getCategoryProductsSuccess,
    required TResult Function(String errorMessage) getCategoryProductsFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCategoriesLoading,
    TResult? Function(T data)? getCategoriesSuccess,
    TResult? Function(String errorMessage)? getCategoriesFailure,
    TResult? Function()? getCategoryProductsLoading,
    TResult? Function(T data)? getCategoryProductsSuccess,
    TResult? Function(String errorMessage)? getCategoryProductsFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCategoriesLoading,
    TResult Function(T data)? getCategoriesSuccess,
    TResult Function(String errorMessage)? getCategoriesFailure,
    TResult Function()? getCategoryProductsLoading,
    TResult Function(T data)? getCategoryProductsSuccess,
    TResult Function(String errorMessage)? getCategoryProductsFailure,
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
    required TResult Function(CategoryInitial<T> value) initial,
    required TResult Function(GetCategoriesLoading<T> value)
        getCategoriesLoading,
    required TResult Function(GetCategoriesSuccess<T> value)
        getCategoriesSuccess,
    required TResult Function(GetCategoriesFailure<T> value)
        getCategoriesFailure,
    required TResult Function(GetCategoryProductLoading<T> value)
        getCategoryProductsLoading,
    required TResult Function(GetCategoryProductSuccess<T> value)
        getCategoryProductsSuccess,
    required TResult Function(GetCategoryProductFailure<T> value)
        getCategoryProductsFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryInitial<T> value)? initial,
    TResult? Function(GetCategoriesLoading<T> value)? getCategoriesLoading,
    TResult? Function(GetCategoriesSuccess<T> value)? getCategoriesSuccess,
    TResult? Function(GetCategoriesFailure<T> value)? getCategoriesFailure,
    TResult? Function(GetCategoryProductLoading<T> value)?
        getCategoryProductsLoading,
    TResult? Function(GetCategoryProductSuccess<T> value)?
        getCategoryProductsSuccess,
    TResult? Function(GetCategoryProductFailure<T> value)?
        getCategoryProductsFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitial<T> value)? initial,
    TResult Function(GetCategoriesLoading<T> value)? getCategoriesLoading,
    TResult Function(GetCategoriesSuccess<T> value)? getCategoriesSuccess,
    TResult Function(GetCategoriesFailure<T> value)? getCategoriesFailure,
    TResult Function(GetCategoryProductLoading<T> value)?
        getCategoryProductsLoading,
    TResult Function(GetCategoryProductSuccess<T> value)?
        getCategoryProductsSuccess,
    TResult Function(GetCategoryProductFailure<T> value)?
        getCategoryProductsFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CategoryInitial<T> implements CategoryState<T> {
  const factory CategoryInitial() = _$CategoryInitialImpl<T>;
}

/// @nodoc
abstract class _$$GetCategoriesLoadingImplCopyWith<T, $Res> {
  factory _$$GetCategoriesLoadingImplCopyWith(
          _$GetCategoriesLoadingImpl<T> value,
          $Res Function(_$GetCategoriesLoadingImpl<T>) then) =
      __$$GetCategoriesLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$GetCategoriesLoadingImplCopyWithImpl<T, $Res>
    extends _$CategoryStateCopyWithImpl<T, $Res, _$GetCategoriesLoadingImpl<T>>
    implements _$$GetCategoriesLoadingImplCopyWith<T, $Res> {
  __$$GetCategoriesLoadingImplCopyWithImpl(_$GetCategoriesLoadingImpl<T> _value,
      $Res Function(_$GetCategoriesLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCategoriesLoadingImpl<T> implements GetCategoriesLoading<T> {
  const _$GetCategoriesLoadingImpl();

  @override
  String toString() {
    return 'CategoryState<$T>.getCategoriesLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCategoriesLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getCategoriesLoading,
    required TResult Function(T data) getCategoriesSuccess,
    required TResult Function(String errorMessage) getCategoriesFailure,
    required TResult Function() getCategoryProductsLoading,
    required TResult Function(T data) getCategoryProductsSuccess,
    required TResult Function(String errorMessage) getCategoryProductsFailure,
  }) {
    return getCategoriesLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCategoriesLoading,
    TResult? Function(T data)? getCategoriesSuccess,
    TResult? Function(String errorMessage)? getCategoriesFailure,
    TResult? Function()? getCategoryProductsLoading,
    TResult? Function(T data)? getCategoryProductsSuccess,
    TResult? Function(String errorMessage)? getCategoryProductsFailure,
  }) {
    return getCategoriesLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCategoriesLoading,
    TResult Function(T data)? getCategoriesSuccess,
    TResult Function(String errorMessage)? getCategoriesFailure,
    TResult Function()? getCategoryProductsLoading,
    TResult Function(T data)? getCategoryProductsSuccess,
    TResult Function(String errorMessage)? getCategoryProductsFailure,
    required TResult orElse(),
  }) {
    if (getCategoriesLoading != null) {
      return getCategoriesLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryInitial<T> value) initial,
    required TResult Function(GetCategoriesLoading<T> value)
        getCategoriesLoading,
    required TResult Function(GetCategoriesSuccess<T> value)
        getCategoriesSuccess,
    required TResult Function(GetCategoriesFailure<T> value)
        getCategoriesFailure,
    required TResult Function(GetCategoryProductLoading<T> value)
        getCategoryProductsLoading,
    required TResult Function(GetCategoryProductSuccess<T> value)
        getCategoryProductsSuccess,
    required TResult Function(GetCategoryProductFailure<T> value)
        getCategoryProductsFailure,
  }) {
    return getCategoriesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryInitial<T> value)? initial,
    TResult? Function(GetCategoriesLoading<T> value)? getCategoriesLoading,
    TResult? Function(GetCategoriesSuccess<T> value)? getCategoriesSuccess,
    TResult? Function(GetCategoriesFailure<T> value)? getCategoriesFailure,
    TResult? Function(GetCategoryProductLoading<T> value)?
        getCategoryProductsLoading,
    TResult? Function(GetCategoryProductSuccess<T> value)?
        getCategoryProductsSuccess,
    TResult? Function(GetCategoryProductFailure<T> value)?
        getCategoryProductsFailure,
  }) {
    return getCategoriesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitial<T> value)? initial,
    TResult Function(GetCategoriesLoading<T> value)? getCategoriesLoading,
    TResult Function(GetCategoriesSuccess<T> value)? getCategoriesSuccess,
    TResult Function(GetCategoriesFailure<T> value)? getCategoriesFailure,
    TResult Function(GetCategoryProductLoading<T> value)?
        getCategoryProductsLoading,
    TResult Function(GetCategoryProductSuccess<T> value)?
        getCategoryProductsSuccess,
    TResult Function(GetCategoryProductFailure<T> value)?
        getCategoryProductsFailure,
    required TResult orElse(),
  }) {
    if (getCategoriesLoading != null) {
      return getCategoriesLoading(this);
    }
    return orElse();
  }
}

abstract class GetCategoriesLoading<T> implements CategoryState<T> {
  const factory GetCategoriesLoading() = _$GetCategoriesLoadingImpl<T>;
}

/// @nodoc
abstract class _$$GetCategoriesSuccessImplCopyWith<T, $Res> {
  factory _$$GetCategoriesSuccessImplCopyWith(
          _$GetCategoriesSuccessImpl<T> value,
          $Res Function(_$GetCategoriesSuccessImpl<T>) then) =
      __$$GetCategoriesSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$GetCategoriesSuccessImplCopyWithImpl<T, $Res>
    extends _$CategoryStateCopyWithImpl<T, $Res, _$GetCategoriesSuccessImpl<T>>
    implements _$$GetCategoriesSuccessImplCopyWith<T, $Res> {
  __$$GetCategoriesSuccessImplCopyWithImpl(_$GetCategoriesSuccessImpl<T> _value,
      $Res Function(_$GetCategoriesSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetCategoriesSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$GetCategoriesSuccessImpl<T> implements GetCategoriesSuccess<T> {
  const _$GetCategoriesSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'CategoryState<$T>.getCategoriesSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCategoriesSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCategoriesSuccessImplCopyWith<T, _$GetCategoriesSuccessImpl<T>>
      get copyWith => __$$GetCategoriesSuccessImplCopyWithImpl<T,
          _$GetCategoriesSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getCategoriesLoading,
    required TResult Function(T data) getCategoriesSuccess,
    required TResult Function(String errorMessage) getCategoriesFailure,
    required TResult Function() getCategoryProductsLoading,
    required TResult Function(T data) getCategoryProductsSuccess,
    required TResult Function(String errorMessage) getCategoryProductsFailure,
  }) {
    return getCategoriesSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCategoriesLoading,
    TResult? Function(T data)? getCategoriesSuccess,
    TResult? Function(String errorMessage)? getCategoriesFailure,
    TResult? Function()? getCategoryProductsLoading,
    TResult? Function(T data)? getCategoryProductsSuccess,
    TResult? Function(String errorMessage)? getCategoryProductsFailure,
  }) {
    return getCategoriesSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCategoriesLoading,
    TResult Function(T data)? getCategoriesSuccess,
    TResult Function(String errorMessage)? getCategoriesFailure,
    TResult Function()? getCategoryProductsLoading,
    TResult Function(T data)? getCategoryProductsSuccess,
    TResult Function(String errorMessage)? getCategoryProductsFailure,
    required TResult orElse(),
  }) {
    if (getCategoriesSuccess != null) {
      return getCategoriesSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryInitial<T> value) initial,
    required TResult Function(GetCategoriesLoading<T> value)
        getCategoriesLoading,
    required TResult Function(GetCategoriesSuccess<T> value)
        getCategoriesSuccess,
    required TResult Function(GetCategoriesFailure<T> value)
        getCategoriesFailure,
    required TResult Function(GetCategoryProductLoading<T> value)
        getCategoryProductsLoading,
    required TResult Function(GetCategoryProductSuccess<T> value)
        getCategoryProductsSuccess,
    required TResult Function(GetCategoryProductFailure<T> value)
        getCategoryProductsFailure,
  }) {
    return getCategoriesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryInitial<T> value)? initial,
    TResult? Function(GetCategoriesLoading<T> value)? getCategoriesLoading,
    TResult? Function(GetCategoriesSuccess<T> value)? getCategoriesSuccess,
    TResult? Function(GetCategoriesFailure<T> value)? getCategoriesFailure,
    TResult? Function(GetCategoryProductLoading<T> value)?
        getCategoryProductsLoading,
    TResult? Function(GetCategoryProductSuccess<T> value)?
        getCategoryProductsSuccess,
    TResult? Function(GetCategoryProductFailure<T> value)?
        getCategoryProductsFailure,
  }) {
    return getCategoriesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitial<T> value)? initial,
    TResult Function(GetCategoriesLoading<T> value)? getCategoriesLoading,
    TResult Function(GetCategoriesSuccess<T> value)? getCategoriesSuccess,
    TResult Function(GetCategoriesFailure<T> value)? getCategoriesFailure,
    TResult Function(GetCategoryProductLoading<T> value)?
        getCategoryProductsLoading,
    TResult Function(GetCategoryProductSuccess<T> value)?
        getCategoryProductsSuccess,
    TResult Function(GetCategoryProductFailure<T> value)?
        getCategoryProductsFailure,
    required TResult orElse(),
  }) {
    if (getCategoriesSuccess != null) {
      return getCategoriesSuccess(this);
    }
    return orElse();
  }
}

abstract class GetCategoriesSuccess<T> implements CategoryState<T> {
  const factory GetCategoriesSuccess(final T data) =
      _$GetCategoriesSuccessImpl<T>;

  T get data;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCategoriesSuccessImplCopyWith<T, _$GetCategoriesSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCategoriesFailureImplCopyWith<T, $Res> {
  factory _$$GetCategoriesFailureImplCopyWith(
          _$GetCategoriesFailureImpl<T> value,
          $Res Function(_$GetCategoriesFailureImpl<T>) then) =
      __$$GetCategoriesFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$GetCategoriesFailureImplCopyWithImpl<T, $Res>
    extends _$CategoryStateCopyWithImpl<T, $Res, _$GetCategoriesFailureImpl<T>>
    implements _$$GetCategoriesFailureImplCopyWith<T, $Res> {
  __$$GetCategoriesFailureImplCopyWithImpl(_$GetCategoriesFailureImpl<T> _value,
      $Res Function(_$GetCategoriesFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$GetCategoriesFailureImpl<T>(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCategoriesFailureImpl<T> implements GetCategoriesFailure<T> {
  const _$GetCategoriesFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CategoryState<$T>.getCategoriesFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCategoriesFailureImpl<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCategoriesFailureImplCopyWith<T, _$GetCategoriesFailureImpl<T>>
      get copyWith => __$$GetCategoriesFailureImplCopyWithImpl<T,
          _$GetCategoriesFailureImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getCategoriesLoading,
    required TResult Function(T data) getCategoriesSuccess,
    required TResult Function(String errorMessage) getCategoriesFailure,
    required TResult Function() getCategoryProductsLoading,
    required TResult Function(T data) getCategoryProductsSuccess,
    required TResult Function(String errorMessage) getCategoryProductsFailure,
  }) {
    return getCategoriesFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCategoriesLoading,
    TResult? Function(T data)? getCategoriesSuccess,
    TResult? Function(String errorMessage)? getCategoriesFailure,
    TResult? Function()? getCategoryProductsLoading,
    TResult? Function(T data)? getCategoryProductsSuccess,
    TResult? Function(String errorMessage)? getCategoryProductsFailure,
  }) {
    return getCategoriesFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCategoriesLoading,
    TResult Function(T data)? getCategoriesSuccess,
    TResult Function(String errorMessage)? getCategoriesFailure,
    TResult Function()? getCategoryProductsLoading,
    TResult Function(T data)? getCategoryProductsSuccess,
    TResult Function(String errorMessage)? getCategoryProductsFailure,
    required TResult orElse(),
  }) {
    if (getCategoriesFailure != null) {
      return getCategoriesFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryInitial<T> value) initial,
    required TResult Function(GetCategoriesLoading<T> value)
        getCategoriesLoading,
    required TResult Function(GetCategoriesSuccess<T> value)
        getCategoriesSuccess,
    required TResult Function(GetCategoriesFailure<T> value)
        getCategoriesFailure,
    required TResult Function(GetCategoryProductLoading<T> value)
        getCategoryProductsLoading,
    required TResult Function(GetCategoryProductSuccess<T> value)
        getCategoryProductsSuccess,
    required TResult Function(GetCategoryProductFailure<T> value)
        getCategoryProductsFailure,
  }) {
    return getCategoriesFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryInitial<T> value)? initial,
    TResult? Function(GetCategoriesLoading<T> value)? getCategoriesLoading,
    TResult? Function(GetCategoriesSuccess<T> value)? getCategoriesSuccess,
    TResult? Function(GetCategoriesFailure<T> value)? getCategoriesFailure,
    TResult? Function(GetCategoryProductLoading<T> value)?
        getCategoryProductsLoading,
    TResult? Function(GetCategoryProductSuccess<T> value)?
        getCategoryProductsSuccess,
    TResult? Function(GetCategoryProductFailure<T> value)?
        getCategoryProductsFailure,
  }) {
    return getCategoriesFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitial<T> value)? initial,
    TResult Function(GetCategoriesLoading<T> value)? getCategoriesLoading,
    TResult Function(GetCategoriesSuccess<T> value)? getCategoriesSuccess,
    TResult Function(GetCategoriesFailure<T> value)? getCategoriesFailure,
    TResult Function(GetCategoryProductLoading<T> value)?
        getCategoryProductsLoading,
    TResult Function(GetCategoryProductSuccess<T> value)?
        getCategoryProductsSuccess,
    TResult Function(GetCategoryProductFailure<T> value)?
        getCategoryProductsFailure,
    required TResult orElse(),
  }) {
    if (getCategoriesFailure != null) {
      return getCategoriesFailure(this);
    }
    return orElse();
  }
}

abstract class GetCategoriesFailure<T> implements CategoryState<T> {
  const factory GetCategoriesFailure(final String errorMessage) =
      _$GetCategoriesFailureImpl<T>;

  String get errorMessage;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCategoriesFailureImplCopyWith<T, _$GetCategoriesFailureImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCategoryProductLoadingImplCopyWith<T, $Res> {
  factory _$$GetCategoryProductLoadingImplCopyWith(
          _$GetCategoryProductLoadingImpl<T> value,
          $Res Function(_$GetCategoryProductLoadingImpl<T>) then) =
      __$$GetCategoryProductLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$GetCategoryProductLoadingImplCopyWithImpl<T, $Res>
    extends _$CategoryStateCopyWithImpl<T, $Res,
        _$GetCategoryProductLoadingImpl<T>>
    implements _$$GetCategoryProductLoadingImplCopyWith<T, $Res> {
  __$$GetCategoryProductLoadingImplCopyWithImpl(
      _$GetCategoryProductLoadingImpl<T> _value,
      $Res Function(_$GetCategoryProductLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCategoryProductLoadingImpl<T>
    implements GetCategoryProductLoading<T> {
  const _$GetCategoryProductLoadingImpl();

  @override
  String toString() {
    return 'CategoryState<$T>.getCategoryProductsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCategoryProductLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getCategoriesLoading,
    required TResult Function(T data) getCategoriesSuccess,
    required TResult Function(String errorMessage) getCategoriesFailure,
    required TResult Function() getCategoryProductsLoading,
    required TResult Function(T data) getCategoryProductsSuccess,
    required TResult Function(String errorMessage) getCategoryProductsFailure,
  }) {
    return getCategoryProductsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCategoriesLoading,
    TResult? Function(T data)? getCategoriesSuccess,
    TResult? Function(String errorMessage)? getCategoriesFailure,
    TResult? Function()? getCategoryProductsLoading,
    TResult? Function(T data)? getCategoryProductsSuccess,
    TResult? Function(String errorMessage)? getCategoryProductsFailure,
  }) {
    return getCategoryProductsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCategoriesLoading,
    TResult Function(T data)? getCategoriesSuccess,
    TResult Function(String errorMessage)? getCategoriesFailure,
    TResult Function()? getCategoryProductsLoading,
    TResult Function(T data)? getCategoryProductsSuccess,
    TResult Function(String errorMessage)? getCategoryProductsFailure,
    required TResult orElse(),
  }) {
    if (getCategoryProductsLoading != null) {
      return getCategoryProductsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryInitial<T> value) initial,
    required TResult Function(GetCategoriesLoading<T> value)
        getCategoriesLoading,
    required TResult Function(GetCategoriesSuccess<T> value)
        getCategoriesSuccess,
    required TResult Function(GetCategoriesFailure<T> value)
        getCategoriesFailure,
    required TResult Function(GetCategoryProductLoading<T> value)
        getCategoryProductsLoading,
    required TResult Function(GetCategoryProductSuccess<T> value)
        getCategoryProductsSuccess,
    required TResult Function(GetCategoryProductFailure<T> value)
        getCategoryProductsFailure,
  }) {
    return getCategoryProductsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryInitial<T> value)? initial,
    TResult? Function(GetCategoriesLoading<T> value)? getCategoriesLoading,
    TResult? Function(GetCategoriesSuccess<T> value)? getCategoriesSuccess,
    TResult? Function(GetCategoriesFailure<T> value)? getCategoriesFailure,
    TResult? Function(GetCategoryProductLoading<T> value)?
        getCategoryProductsLoading,
    TResult? Function(GetCategoryProductSuccess<T> value)?
        getCategoryProductsSuccess,
    TResult? Function(GetCategoryProductFailure<T> value)?
        getCategoryProductsFailure,
  }) {
    return getCategoryProductsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitial<T> value)? initial,
    TResult Function(GetCategoriesLoading<T> value)? getCategoriesLoading,
    TResult Function(GetCategoriesSuccess<T> value)? getCategoriesSuccess,
    TResult Function(GetCategoriesFailure<T> value)? getCategoriesFailure,
    TResult Function(GetCategoryProductLoading<T> value)?
        getCategoryProductsLoading,
    TResult Function(GetCategoryProductSuccess<T> value)?
        getCategoryProductsSuccess,
    TResult Function(GetCategoryProductFailure<T> value)?
        getCategoryProductsFailure,
    required TResult orElse(),
  }) {
    if (getCategoryProductsLoading != null) {
      return getCategoryProductsLoading(this);
    }
    return orElse();
  }
}

abstract class GetCategoryProductLoading<T> implements CategoryState<T> {
  const factory GetCategoryProductLoading() =
      _$GetCategoryProductLoadingImpl<T>;
}

/// @nodoc
abstract class _$$GetCategoryProductSuccessImplCopyWith<T, $Res> {
  factory _$$GetCategoryProductSuccessImplCopyWith(
          _$GetCategoryProductSuccessImpl<T> value,
          $Res Function(_$GetCategoryProductSuccessImpl<T>) then) =
      __$$GetCategoryProductSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$GetCategoryProductSuccessImplCopyWithImpl<T, $Res>
    extends _$CategoryStateCopyWithImpl<T, $Res,
        _$GetCategoryProductSuccessImpl<T>>
    implements _$$GetCategoryProductSuccessImplCopyWith<T, $Res> {
  __$$GetCategoryProductSuccessImplCopyWithImpl(
      _$GetCategoryProductSuccessImpl<T> _value,
      $Res Function(_$GetCategoryProductSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetCategoryProductSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$GetCategoryProductSuccessImpl<T>
    implements GetCategoryProductSuccess<T> {
  const _$GetCategoryProductSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'CategoryState<$T>.getCategoryProductsSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCategoryProductSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCategoryProductSuccessImplCopyWith<T,
          _$GetCategoryProductSuccessImpl<T>>
      get copyWith => __$$GetCategoryProductSuccessImplCopyWithImpl<T,
          _$GetCategoryProductSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getCategoriesLoading,
    required TResult Function(T data) getCategoriesSuccess,
    required TResult Function(String errorMessage) getCategoriesFailure,
    required TResult Function() getCategoryProductsLoading,
    required TResult Function(T data) getCategoryProductsSuccess,
    required TResult Function(String errorMessage) getCategoryProductsFailure,
  }) {
    return getCategoryProductsSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCategoriesLoading,
    TResult? Function(T data)? getCategoriesSuccess,
    TResult? Function(String errorMessage)? getCategoriesFailure,
    TResult? Function()? getCategoryProductsLoading,
    TResult? Function(T data)? getCategoryProductsSuccess,
    TResult? Function(String errorMessage)? getCategoryProductsFailure,
  }) {
    return getCategoryProductsSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCategoriesLoading,
    TResult Function(T data)? getCategoriesSuccess,
    TResult Function(String errorMessage)? getCategoriesFailure,
    TResult Function()? getCategoryProductsLoading,
    TResult Function(T data)? getCategoryProductsSuccess,
    TResult Function(String errorMessage)? getCategoryProductsFailure,
    required TResult orElse(),
  }) {
    if (getCategoryProductsSuccess != null) {
      return getCategoryProductsSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryInitial<T> value) initial,
    required TResult Function(GetCategoriesLoading<T> value)
        getCategoriesLoading,
    required TResult Function(GetCategoriesSuccess<T> value)
        getCategoriesSuccess,
    required TResult Function(GetCategoriesFailure<T> value)
        getCategoriesFailure,
    required TResult Function(GetCategoryProductLoading<T> value)
        getCategoryProductsLoading,
    required TResult Function(GetCategoryProductSuccess<T> value)
        getCategoryProductsSuccess,
    required TResult Function(GetCategoryProductFailure<T> value)
        getCategoryProductsFailure,
  }) {
    return getCategoryProductsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryInitial<T> value)? initial,
    TResult? Function(GetCategoriesLoading<T> value)? getCategoriesLoading,
    TResult? Function(GetCategoriesSuccess<T> value)? getCategoriesSuccess,
    TResult? Function(GetCategoriesFailure<T> value)? getCategoriesFailure,
    TResult? Function(GetCategoryProductLoading<T> value)?
        getCategoryProductsLoading,
    TResult? Function(GetCategoryProductSuccess<T> value)?
        getCategoryProductsSuccess,
    TResult? Function(GetCategoryProductFailure<T> value)?
        getCategoryProductsFailure,
  }) {
    return getCategoryProductsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitial<T> value)? initial,
    TResult Function(GetCategoriesLoading<T> value)? getCategoriesLoading,
    TResult Function(GetCategoriesSuccess<T> value)? getCategoriesSuccess,
    TResult Function(GetCategoriesFailure<T> value)? getCategoriesFailure,
    TResult Function(GetCategoryProductLoading<T> value)?
        getCategoryProductsLoading,
    TResult Function(GetCategoryProductSuccess<T> value)?
        getCategoryProductsSuccess,
    TResult Function(GetCategoryProductFailure<T> value)?
        getCategoryProductsFailure,
    required TResult orElse(),
  }) {
    if (getCategoryProductsSuccess != null) {
      return getCategoryProductsSuccess(this);
    }
    return orElse();
  }
}

abstract class GetCategoryProductSuccess<T> implements CategoryState<T> {
  const factory GetCategoryProductSuccess(final T data) =
      _$GetCategoryProductSuccessImpl<T>;

  T get data;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCategoryProductSuccessImplCopyWith<T,
          _$GetCategoryProductSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCategoryProductFailureImplCopyWith<T, $Res> {
  factory _$$GetCategoryProductFailureImplCopyWith(
          _$GetCategoryProductFailureImpl<T> value,
          $Res Function(_$GetCategoryProductFailureImpl<T>) then) =
      __$$GetCategoryProductFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$GetCategoryProductFailureImplCopyWithImpl<T, $Res>
    extends _$CategoryStateCopyWithImpl<T, $Res,
        _$GetCategoryProductFailureImpl<T>>
    implements _$$GetCategoryProductFailureImplCopyWith<T, $Res> {
  __$$GetCategoryProductFailureImplCopyWithImpl(
      _$GetCategoryProductFailureImpl<T> _value,
      $Res Function(_$GetCategoryProductFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$GetCategoryProductFailureImpl<T>(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCategoryProductFailureImpl<T>
    implements GetCategoryProductFailure<T> {
  const _$GetCategoryProductFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CategoryState<$T>.getCategoryProductsFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCategoryProductFailureImpl<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCategoryProductFailureImplCopyWith<T,
          _$GetCategoryProductFailureImpl<T>>
      get copyWith => __$$GetCategoryProductFailureImplCopyWithImpl<T,
          _$GetCategoryProductFailureImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getCategoriesLoading,
    required TResult Function(T data) getCategoriesSuccess,
    required TResult Function(String errorMessage) getCategoriesFailure,
    required TResult Function() getCategoryProductsLoading,
    required TResult Function(T data) getCategoryProductsSuccess,
    required TResult Function(String errorMessage) getCategoryProductsFailure,
  }) {
    return getCategoryProductsFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCategoriesLoading,
    TResult? Function(T data)? getCategoriesSuccess,
    TResult? Function(String errorMessage)? getCategoriesFailure,
    TResult? Function()? getCategoryProductsLoading,
    TResult? Function(T data)? getCategoryProductsSuccess,
    TResult? Function(String errorMessage)? getCategoryProductsFailure,
  }) {
    return getCategoryProductsFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCategoriesLoading,
    TResult Function(T data)? getCategoriesSuccess,
    TResult Function(String errorMessage)? getCategoriesFailure,
    TResult Function()? getCategoryProductsLoading,
    TResult Function(T data)? getCategoryProductsSuccess,
    TResult Function(String errorMessage)? getCategoryProductsFailure,
    required TResult orElse(),
  }) {
    if (getCategoryProductsFailure != null) {
      return getCategoryProductsFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryInitial<T> value) initial,
    required TResult Function(GetCategoriesLoading<T> value)
        getCategoriesLoading,
    required TResult Function(GetCategoriesSuccess<T> value)
        getCategoriesSuccess,
    required TResult Function(GetCategoriesFailure<T> value)
        getCategoriesFailure,
    required TResult Function(GetCategoryProductLoading<T> value)
        getCategoryProductsLoading,
    required TResult Function(GetCategoryProductSuccess<T> value)
        getCategoryProductsSuccess,
    required TResult Function(GetCategoryProductFailure<T> value)
        getCategoryProductsFailure,
  }) {
    return getCategoryProductsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryInitial<T> value)? initial,
    TResult? Function(GetCategoriesLoading<T> value)? getCategoriesLoading,
    TResult? Function(GetCategoriesSuccess<T> value)? getCategoriesSuccess,
    TResult? Function(GetCategoriesFailure<T> value)? getCategoriesFailure,
    TResult? Function(GetCategoryProductLoading<T> value)?
        getCategoryProductsLoading,
    TResult? Function(GetCategoryProductSuccess<T> value)?
        getCategoryProductsSuccess,
    TResult? Function(GetCategoryProductFailure<T> value)?
        getCategoryProductsFailure,
  }) {
    return getCategoryProductsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitial<T> value)? initial,
    TResult Function(GetCategoriesLoading<T> value)? getCategoriesLoading,
    TResult Function(GetCategoriesSuccess<T> value)? getCategoriesSuccess,
    TResult Function(GetCategoriesFailure<T> value)? getCategoriesFailure,
    TResult Function(GetCategoryProductLoading<T> value)?
        getCategoryProductsLoading,
    TResult Function(GetCategoryProductSuccess<T> value)?
        getCategoryProductsSuccess,
    TResult Function(GetCategoryProductFailure<T> value)?
        getCategoryProductsFailure,
    required TResult orElse(),
  }) {
    if (getCategoryProductsFailure != null) {
      return getCategoryProductsFailure(this);
    }
    return orElse();
  }
}

abstract class GetCategoryProductFailure<T> implements CategoryState<T> {
  const factory GetCategoryProductFailure(final String errorMessage) =
      _$GetCategoryProductFailureImpl<T>;

  String get errorMessage;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCategoryProductFailureImplCopyWith<T,
          _$GetCategoryProductFailureImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
