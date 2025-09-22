import 'package:bloc/bloc.dart';
import 'package:thimar/features/home/logic/slider_state.dart';

import '../data/repos/home_repos.dart';

class SliderCubit extends Cubit<SliderState> {
  final HomeRepos homeRepos;

  SliderCubit(this.homeRepos) : super(SliderState.initial());

  Future<void> fetchSliders() async {
    emit(SliderState.sliderLoading());
    final response = await homeRepos.getSliders();
    response.when(
      success: (data) {
        emit(SliderState.sliderSuccess(data));
      },
      failure: (error) {
        emit(SliderState.sliderFailure(error.message.toString()));
      },
    );
  }
}
