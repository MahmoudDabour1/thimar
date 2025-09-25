import 'package:bloc/bloc.dart';
import 'package:thimar/features/product_details/data/repos/product_details_repos.dart';
import 'package:thimar/features/product_details/logic/product_details_state.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  final ProductDetailsRepos productDetailsRepos;

  ProductDetailsCubit(this.productDetailsRepos)
      : super(ProductDetailsState.initial());

  bool isUpdate = false;

  Future<void> productDetails(int productId) async {
    isUpdate ? null : emit(ProductDetailsState.productDetailsLoading());
    final response = await productDetailsRepos.productDetails(productId);
    response.when(
      success: (data) {
        emit(ProductDetailsState.productDetailsSuccess(data));
        productRates(data.data?.id ?? 0);
      },
      failure: (error) {
        emit(ProductDetailsState.productDetailsFailure(
            error.message.toString()));
      },
    );
  }

  Future<void> productRates(int productId) async {
    emit(ProductDetailsState.productRatesLoading());
    final response = await productDetailsRepos.productRates(productId);
    response.when(
      success: (data) {
        emit(ProductDetailsState.productRatesSuccess(data));
      },
      failure: (error) {
        emit(ProductDetailsState.productRatesFailure(error.message.toString()));
      },
    );
  }
}
