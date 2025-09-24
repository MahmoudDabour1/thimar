import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState<T> with _$SearchState<T> {
  const factory SearchState.initial() = SearchInitial<T>;

  const factory SearchState.searchLoading() = SearchLoading<T>;

  const factory SearchState.searchSuccess(T data) = SearchSuccess<T>;

  const factory SearchState.searchFailure(String error) = SearchFailure<T>;

  const factory SearchState.changeFilter() = ChangeFilter<T>;
}
