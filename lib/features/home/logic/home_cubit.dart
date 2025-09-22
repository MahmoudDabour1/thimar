import 'package:bloc/bloc.dart';
import 'package:thimar/features/home/data/repos/home_repos.dart';
import 'package:thimar/features/home/logic/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepos homeRepos;

  HomeCubit(this.homeRepos) : super(HomeState.initial());

  Future<void> getHomeProducts() async {
    emit(HomeState.getHomeProductsLoading());
    final response = await homeRepos.getHomeProducts();
    response.when(
      success: (data) {
        emit(HomeState.getHomeProductsSuccess(data));
      },
      failure: (error) {
        emit(HomeState.getHomeProductsFailure(error.message.toString()));
      },
    );
  }
}
