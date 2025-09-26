import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/routing/routes.dart';
import 'package:thimar/features/home/data/models/get_home_products_response_model.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../cart/logic/cart_cubit.dart';
import '../../../favorite/logic/favorite_cubit.dart';
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
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.h,
        mainAxisSpacing: 16.w,
        childAspectRatio: 0.65,
      ),
      itemCount: data.data?.length ?? 0,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            context.pushNamed(Routes.productDetailsScreen, arguments: {
              "productId": data.data?[index].id ?? 0,
              "favCubit": sl<FavoriteCubit>(),
            });
          },
          child: CategoryProductSingleItem(
            productId: data.data?[index].id ?? 0,
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
                    context,
                  );
              // showModalBottomSheet(
              //   context: context,
              //   builder: (_) {
              //     return AddToCartBottomSheetWidget(
              //       title: data.data?[index].title ?? "",
              //       imageUrl: data.data?[index].mainImage ?? "",
              //       price: (data.data?[index].price ?? 0)
              //           .toDouble(),
              //     );
              //
              //     //   BlocBuilder<CartCubit, CartState>(
              //     //   builder: (context, state) {
              //     //     return AddToCartBottomSheetWidget(
              //     //       title: data.data?[index].title ?? "",
              //     //       imageUrl: data.data?[index].mainImage ?? "",
              //     //       price: (data.data?[index].price ?? 0).toDouble(),
              //     //     );
              //     //   },
              //     // );
              //   },
              // );
            },
            onAddToCartPressed: () {
              context.read<CartCubit>().addToCart(
                    data.data?[index].id ?? 0,
                    1,
                    context,
                  );

              // showModalBottomSheet(
              //   context: context,
              //   builder: (_) {
              //     return AddToCartBottomSheetWidget(
              //       title: data.data?[index].title ?? "",
              //       imageUrl: data.data?[index].mainImage ?? "",
              //       price: (data.data?[index].price ?? 0)
              //           .toDouble(),
              //     );
              //
              //     //   BlocBuilder<CartCubit, CartState>(
              //     //   builder: (context, state) {
              //     //     return AddToCartBottomSheetWidget(
              //     //       title: data.data?[index].title ?? "",
              //     //       imageUrl: data.data?[index].mainImage ?? "",
              //     //       price: (data.data?[index].price ?? 0).toDouble(),
              //     //     );
              //     //   },
              //     // );
              //   },
              // );
            },
            isHadAddToCartButton: true,
          ),
        );
      },
    );
  }
}
