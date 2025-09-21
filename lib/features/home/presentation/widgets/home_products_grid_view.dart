import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/routing/routes.dart';
import 'package:thimar/core/theming/app_colors.dart';
import 'package:thimar/features/home/data/models/get_home_products_response_model.dart';

import '../../../cart/logic/cart_cubit.dart';
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
        childAspectRatio: 0.75,
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
            },
            onAddToCartPressed: () {
              context.read<CartCubit>().addToCart(
                data.data?[index].id ?? 0,
                1,
              );
            },
            isHadAddToCartButton: true,
          ),
        );
      },
    );
  }
}
