import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/features/favorite/data/models/get_favorite_response_model.dart';
import 'package:thimar/features/favorite/logic/favorite_cubit.dart';

import '../../../../core/routing/routes.dart';
import '../../../cart/logic/cart_cubit.dart';
import '../../../home/presentation/widgets/category_product_single_item.dart';

class FavoriteGridView extends StatefulWidget {
  final GetFavoriteResponseModel data;
  final FavoriteCubit cubit;

  const FavoriteGridView({
    super.key,
    required this.data,
    required this.cubit,
  });

  @override
  State<FavoriteGridView> createState() => _FavoriteGridViewState();
}

class _FavoriteGridViewState extends State<FavoriteGridView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: widget.cubit,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.w,
          mainAxisSpacing: 16.h,
          childAspectRatio: 0.75,
        ),
        itemCount: widget.data.data?.length ?? 0,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              context.pushNamed(Routes.productDetailsScreen, arguments: {
                "productId": widget.data.data?[index].id ?? 0,
                "favCubit": widget.cubit,
              }).then((_) {
                widget.cubit.updateFavorite();
              });
            },
            child: CategoryProductSingleItem(
              productId: widget.data.data?[index].id ?? 0,
              imageUrl: widget.data.data?[index].mainImage ?? "",
              productName: widget.data.data?[index].title ?? "",
              productUnit: "السعر / 1كجم",
              currentPrice: (widget.data.data?[index].price ?? 0).toDouble(),
              oldPrice: (widget.data.data?[index].priceBeforeDiscount ?? 0)
                  .toDouble(),
              discountPercentage:
                  (widget.data.data?[index].discount)! * 100 ?? 0,
              onAddPressed: () {
                context.read<CartCubit>().addToCart(
                      widget.data.data?[index].id ?? 0,
                      1,
                      context,
                    );
              },
            ),
          );
        },
      ),
    );
  }
}
