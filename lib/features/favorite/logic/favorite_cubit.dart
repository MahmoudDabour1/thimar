import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thimar/core/helpers/helper_methods.dart';
import 'package:thimar/features/favorite/data/repos/favorite_repos.dart';

import '../../product_details/logic/product_details_cubit.dart';
import 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  final FavoriteRepos favoriteRepos;

  FavoriteCubit(this.favoriteRepos) : super(FavoriteState.initial());

  Future<void> getFavorite() async {
    emit(FavoriteState.getFavoriteLoading());
    final response = await favoriteRepos.getFavorite();
    response.when(
      success: (data) {
        emit(FavoriteState.getFavoriteSuccess(data));
      },
      failure: (error) {
        emit(FavoriteState.getFavoriteFailure(error.message.toString()));
      },
    );
  }

  Future<void> addToFavorite(int id, BuildContext context) async {
    emit(FavoriteState.addToFavoriteLoading());
    final response = await favoriteRepos.addToFavorite(id: id);
    response.when(
      success: (data) {
        emit(FavoriteState.addToFavoriteSuccess(data));
        context.read<ProductDetailsCubit>().isUpdate = true;
        getFavorite();
        context.read<ProductDetailsCubit>().productDetails(id);
        showToast(message: data.message ?? "Added to favorites successfully");
      },
      failure: (error) {
        emit(FavoriteState.addToFavoriteFailure(error.message.toString()));
      },
    );
  }

  Future<void> removeFromFavorite(int id, BuildContext context) async {
    emit(FavoriteState.removeFromFavoriteLoading());
    final response = await favoriteRepos.removeFromFavorite(id: id);
    response.when(
      success: (data) {
        context.read<ProductDetailsCubit>().isUpdate = true;
        emit(FavoriteState.removeFromFavoriteSuccess(data));
        getFavorite();
        context.read<ProductDetailsCubit>().productDetails(id);

        showToast(
            message: data.message ?? "Removed from favorites successfully");
      },
      failure: (error) {
        emit(FavoriteState.removeFromFavoriteFailure(error.message.toString()));
      },
    );
  }
}
