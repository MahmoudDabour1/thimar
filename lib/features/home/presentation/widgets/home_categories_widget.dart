import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/routing/routes.dart';
import 'package:thimar/core/theming/app_colors.dart';
import 'package:thimar/features/home/data/models/categories_response_model.dart';
import 'package:thimar/features/home/logic/category_cubit.dart';
import 'package:thimar/features/home/logic/category_state.dart';
import 'package:thimar/features/home/logic/home_cubit.dart';

import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import '../../logic/home_state.dart';

class HomeCategoriesWidget extends StatelessWidget {
  HomeCategoriesWidget({super.key});

  final List<Color> fillColors = [
    AppColors.fillColorOne,
    AppColors.fillColorTwo,
    AppColors.fillColorThree,
    AppColors.fillColorFour,
    AppColors.fillColorFive,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          verticalSpace(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "الأقسام",
                style: AppStyles.font16BlackExtraBold,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "عرض الكل",
                  style: AppStyles.font16greenLight,
                ),
              ),
            ],
          ),
          verticalSpace(16),
          BlocBuilder<CategoryCubit, CategoryState>(
            buildWhen: (previous, current) =>
                previous != current &&
                (current is GetCategoriesLoading ||
                    current is GetCategoriesSuccess ||
                    current is GetCategoriesFailure),
            builder: (context, state) {
              return state.maybeWhen(
                getCategoriesLoading: () => Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primaryColor,
                  ),
                ),
                getCategoriesSuccess: (data) => setupSuccess(data),
                getCategoriesFailure: (error) => Center(
                  child: Text(
                    error,
                    style: AppStyles.font16DarkGrayLight,
                  ),
                ),
                orElse: () => SizedBox.shrink(),
              );
            },
          )
        ],
      ),
    );
  }

  Widget setupSuccess(CategoriesResponseModel data) {
    return SizedBox(
      height: 120.h,
      child: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 18.w),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: data.data?.length ?? 0,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: GestureDetector(
              onTap: () {
                context.pushNamed(Routes.categoryProductsScreen, arguments: {
                  'categoryId': data.data?[index].id ?? 0,
                  'categoryName': data.data?[index].name ?? '',
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 73.w,
                    height: 73.h,
                    decoration: BoxDecoration(
                      color: fillColors[index],
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: data.data?[index].media ?? '',
                      width: 38.w,
                      height: 38.h,
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                      fit: BoxFit.contain,
                      placeholder: (context, url) => Shimmer.fromColors(
                        baseColor: Colors.grey[300]!,
                        highlightColor: Colors.grey[100]!,
                        child: Container(
                          width: 38.w,
                          height: 38.h,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  verticalSpace(6),
                  Text(
                    data.data?[index].name ?? '',
                    style: AppStyles.font20BlackMedium,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
