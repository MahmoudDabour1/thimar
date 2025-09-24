import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/routing/routes.dart';
import 'package:thimar/core/widgets/app_loading_indicator_widget.dart';
import 'package:thimar/features/home/data/models/get_home_products_response_model.dart';

import '../../../cart/logic/cart_cubit.dart';
import '../../../cart/logic/cart_state.dart';
import '../../../cart/presentation/widgets/add_to_cart_bottom_sheet_widget.dart';
import 'category_product_single_item.dart';

class HomeProductsGridView extends StatelessWidget {
  final GetHomeProductsResponseModel data;

  const HomeProductsGridView({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.67,
      ),
      itemCount: data.data?.length ?? 0,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            context.pushNamed(Routes.productDetailsScreen,
                arguments: data.data?[index].id ?? 0);
          },
          child: CategoryProductSingleItem(
            imageUrl: data.data?[index].mainImage ?? "",
            productName: data.data?[index].title ?? "",
            productUnit: "السعر / 1كجم",
            currentPrice: (data.data?[index].price ?? 0).toDouble(),
            oldPrice: (data.data?[index].priceBeforeDiscount ?? 0).toDouble(),
            discountPercentage: (data.data?[index].discount)! * 100 ?? 0,
            onAddPressed: () {
              context.read<CartCubit>().addToCart(
                    data.data?[index].id ?? 0,
                    1,
                  );
              showModalBottomSheet(
                context: context,
                builder: (_) {
                  return BlocBuilder<CartCubit, CartState>(
                    builder: (context, state) {
                      return state is AddToCartLoading
                          ? AppLoadingIndicatorWidget()
                          : AddToCartBottomSheetWidget(
                              title: data.data?[index].title ?? "",
                              imageUrl: data.data?[index].mainImage ?? "",
                              price: (data.data?[index].price ?? 0).toDouble(),
                            );
                    },
                  );
                },
              );
            },
            onAddToCartPressed: () {
              context.read<CartCubit>().addToCart(
                    data.data?[index].id ?? 0,
                    1,
                  );

              showModalBottomSheet(
                context: context,
                builder: (_) {
                  return BlocBuilder<CartCubit, CartState>(
                    builder: (context, state) {
                      return state is AddToCartLoading
                          ? AppLoadingIndicatorWidget()
                          : AddToCartBottomSheetWidget(
                              title: data.data?[index].title ?? "",
                              imageUrl: data.data?[index].mainImage ?? "",
                              price: (data.data?[index].price ?? 0).toDouble(),
                            );
                    },
                  );
                },
              );
            },
            isHadAddToCartButton: true,
          ),
        );
      },
    );
  }
}
