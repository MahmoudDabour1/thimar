import 'package:bloc/bloc.dart';
import 'package:thimar/features/home/data/repos/home_repos.dart';
import 'package:thimar/features/home/logic/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepos homeRepos;

  HomeCubit(this.homeRepos) : super(HomeState.initial());

  Future<void> fetchSliders() async {
    emit(HomeState.sliderLoading());
    final response = await homeRepos.getSliders();
    response.when(
      success: (data) {
        emit(HomeState.sliderSuccess(data));
      },
      failure: (error) {
        emit(HomeState.sliderFailure(error.message.toString()));
      },
    );
  }

  Future<void> getCategories() async {
    emit(HomeState.getCategoriesLoading());
    final response = await homeRepos.getCategories();
    response.when(
      success: (data) {
        emit(HomeState.getCategoriesSuccess(data));
      },
      failure: (error) {
        emit(HomeState.getCategoriesFailure(error.message.toString()));
      },
    );
  }

  Future<void> getCategoryProducts(int id) async {
    emit(HomeState.getCategoryProductsLoading());
    final response = await homeRepos.getCategoryProduct(id);
    response.when(
      success: (data) {
        emit(HomeState.getCategoryProductsSuccess(data));
      },
      failure: (error) {
        emit(HomeState.getCategoryProductsFailure(error.message.toString()));
      },
    );
  }
}
