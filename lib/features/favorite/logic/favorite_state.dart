import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_state.freezed.dart';

@freezed
class FavoriteState<T> with _$FavoriteState<T> {
  const factory FavoriteState.initial() = FavoriteInitial;

  const factory FavoriteState.getFavoriteLoading() = GetFavoriteLoading;

  const factory FavoriteState.getFavoriteSuccess(T data) =
      GetFavoriteSuccess<T>;

  const factory FavoriteState.getFavoriteFailure(String errorMessage) =
      GetFavoriteFailure;

  const factory FavoriteState.addToFavoriteLoading() = AddToFavoriteLoading;

  const factory FavoriteState.addToFavoriteSuccess(T data) =
      AddToFavoriteSuccess<T>;

  const factory FavoriteState.addToFavoriteFailure(String errorMessage) =
      AddToFavoriteFailure;

  const factory FavoriteState.removeFromFavoriteLoading() =
      RemoveFromFavoriteLoading;

  const factory FavoriteState.removeFromFavoriteSuccess(T data) =
      RemoveFromFavoriteSuccess<T>;

  const factory FavoriteState.removeFromFavoriteFailure(String errorMessage) =
      RemoveFromFavoriteFailure;
}
