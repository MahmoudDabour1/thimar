import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../cart/logic/cart_cubit.dart';
import '../../../home/presentation/widgets/category_product_single_item.dart';
import '../../data/models/search_response_model.dart';

class SearchProductGridView extends StatelessWidget {
  final SearchResponseModel data;

  const SearchProductGridView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return data.data?.searchResult == null || data.data!.searchResult!.isEmpty
        ? Center(
            child: Text(
              "لا يوجد منتجات",
              style: AppStyles.font20GreenBold,
            ),
          )
        : GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.w,
              mainAxisSpacing: 16.h,
              childAspectRatio: 0.75,
            ),
            itemCount: data.data?.searchResult?.length ?? 0,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  context.pushNamed(
                    Routes.productDetailsScreen,
                    arguments: data.data?.searchResult?[index].id ?? 0,
                  );
                },
                child: CategoryProductSingleItem(
                  imageUrl: data.data?.searchResult?[index].mainImage ?? "",
                  productName: data.data?.searchResult?[index].title ?? "",
                  productUnit: "السعر / 1كجم",
                  currentPrice:
                      (data.data?.searchResult?[index].price ?? 0).toDouble(),
                  oldPrice:
                      (data.data?.searchResult?[index].priceBeforeDiscount ?? 0)
                          .toDouble(),
                  discountPercentage:
                      (data.data?.searchResult?[index].discount)! * 100 ?? 0,
                  onAddPressed: () {
                    context.read<CartCubit>().addToCart(
                          data.data?.searchResult?[index].id ?? 0,
                          1,
                        );
                  },
                  onAddToCartPressed: () {
                    context.read<CartCubit>().addToCart(
                          data.data?.searchResult?[index].id ?? 0,
                          1,
                        );
                  },
                ),
              );
            },
          );
  }
}
