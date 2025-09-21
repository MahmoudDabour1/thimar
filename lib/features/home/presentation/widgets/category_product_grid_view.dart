import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/features/home/data/models/get_category_products_response_model.dart';
import 'package:thimar/features/home/presentation/widgets/category_product_single_item.dart';

import '../../../../core/routing/routes.dart';
import '../../../cart/logic/cart_cubit.dart';

class CategoryProductGridView extends StatelessWidget {
  final GetCategoryProductsResponseModel data;

  const CategoryProductGridView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.w,
        mainAxisSpacing: 16.h,
        childAspectRatio: 0.75,
      ),
      itemCount: data.data?.length ?? 0,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            context.pushNamed(
              Routes.productDetailsScreen,
              arguments: data.data?[index].id ?? 0,
            );
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
          ),
        );
      },
    );
  }
}
