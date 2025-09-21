import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thimar/features/product_details/data/models/get_product_details_response_model.dart';
import 'package:thimar/features/product_details/logic/product_details_cubit.dart';
import 'package:thimar/features/product_details/presentation/widgets/details_bottom_nav_bar.dart';
import 'package:thimar/features/product_details/presentation/widgets/details_image_and_buttons_widget.dart';
import 'package:thimar/features/product_details/presentation/widgets/details_texts_widget.dart';

import '../../../core/di/dependency_injection.dart';
import '../logic/product_details_state.dart';

class ProductDetailsScreen extends StatefulWidget {
  final int productId;

  const ProductDetailsScreen({super.key, required this.productId});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProductDetailsCubit(sl())..productDetails(widget.productId),
      child: Scaffold(
        bottomNavigationBar:
            BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
          builder: (context, state) {
            return state.maybeWhen(
              productDetailsSuccess: (data) => DetailsBottomNavBar(
                data: data,
                quantity: quantity,
              ),
              orElse: () => SizedBox.shrink(),
            );
          },
        ),
        body: SafeArea(
          child: BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
            buildWhen: (previous, current) =>
                previous != current &&
                (current is ProductDetailsLoading ||
                    current is ProductDetailsSuccess ||
                    current is ProductDetailsFailure),
            builder: (context, state) {
              return state.maybeWhen(
                productDetailsLoading: () => setupLoading(context),
                productDetailsSuccess: (data) => setupSuccess(data, quantity),
                productDetailsFailure: (error) => setupError(error),
                orElse: () => SizedBox.shrink(),
              );
            },
          ),
        ),
      ),
    );
  }

  Center setupLoading(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: Theme.of(context).primaryColor,
      ),
    );
  }

  Center setupError(String error) {
    return Center(
      child: Text(
        error,
        style: TextStyle(
          color: Colors.red,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Widget setupSuccess(GetProductDetailsResponseModel data, int quantity) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailsImageAndButtonsWidget(
            data: data,
          ),
          DetailsTextsWidget(
            data: data,
            quantity: quantity,
            onQuantityChanged: (newQuantity) {
              setState(() {
                this.quantity = newQuantity;
              });
            },
          ),
        ],
      ),
    );
  }
}
