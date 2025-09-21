import 'package:bloc/bloc.dart';
import 'package:thimar/features/product_details/data/repos/product_details_repos.dart';
import 'package:thimar/features/product_details/logic/product_details_state.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  final ProductDetailsRepos productDetailsRepos;

  ProductDetailsCubit(this.productDetailsRepos)
      : super(ProductDetailsState.initial());

  Future<void> productDetails(int productId) async {
    emit(ProductDetailsState.productDetailsLoading());
    final response = await productDetailsRepos.productDetails(productId);
    response.when(
      success: (data) {
        emit(ProductDetailsState.productDetailsSuccess(data));
      },
      failure: (error) {
        emit(ProductDetailsState.productDetailsFailure(
            error.message.toString()));
      },
    );
  }
}
