import 'package:bloc/bloc.dart';
import 'package:thimar/features/home/data/repos/home_repos.dart';
import 'package:thimar/features/home/logic/category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final HomeRepos homeRepos;

  CategoryCubit(this.homeRepos) : super(CategoryState.initial());

  Future<void> getCategories() async {
    emit(CategoryState.getCategoriesLoading());
    final response = await homeRepos.getCategories();
    response.when(
      success: (data) {
        emit(CategoryState.getCategoriesSuccess(data));
      },
      failure: (error) {
        emit(CategoryState.getCategoriesFailure(error.message.toString()));
      },
    );
  }

  Future<void> getCategoryProducts(int id) async {
    emit(CategoryState.getCategoryProductsLoading());
    final response = await homeRepos.getCategoryProduct(id);
    response.when(
      success: (data) {
        emit(CategoryState.getCategoryProductsSuccess(data));
      },
      failure: (error) {
        emit(
            CategoryState.getCategoryProductsFailure(error.message.toString()));
      },
    );
  }
}
