import 'package:flutter/material.dart';
import 'package:thimar/features/home/data/models/get_home_products_response_model.dart';

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
        return CategoryProductSingleItem(
          imageUrl: data.data?[index].mainImage ?? "",
          productName: data.data?[index].title ?? "",
          productUnit: "السعر / 1كجم",
          currentPrice: (data.data?[index].price ?? 0).toDouble(),
          oldPrice: (data.data?[index].priceBeforeDiscount ?? 0).toDouble(),
          discountPercentage: (data.data?[index].discount)! * 100 ?? 0,
          onAddPressed: () {},
          isHadAddToCartButton: true,
        );
      },
    );
  }
}
