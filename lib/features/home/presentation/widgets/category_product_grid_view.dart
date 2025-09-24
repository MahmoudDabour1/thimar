import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/theming/app_styles.dart';
import 'package:thimar/features/home/data/models/get_category_products_response_model.dart';
import 'package:thimar/features/home/presentation/widgets/category_product_single_item.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/app_loading_indicator_widget.dart';
import '../../../cart/logic/cart_cubit.dart';
import '../../../cart/logic/cart_state.dart';
import '../../../cart/presentation/widgets/add_to_cart_bottom_sheet_widget.dart';

class CategoryProductGridView extends StatelessWidget {
  final GetCategoryProductsResponseModel data;

  const CategoryProductGridView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return data.data == null || data.data!.isEmpty
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
                  oldPrice:
                      (data.data?[index].priceBeforeDiscount ?? 0).toDouble(),
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
                                    price: (data.data?[index].price ?? 0)
                                        .toDouble(),
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
                                    price: (data.data?[index].price ?? 0)
                                        .toDouble(),
                                  );
                          },
                        );
                      },
                    );
                  },
                ),
              );
            },
          );
  }
}
