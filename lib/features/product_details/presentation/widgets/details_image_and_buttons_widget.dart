import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/widgets/app_loading_indicator_widget.dart';
import 'package:thimar/features/favorite/logic/favorite_cubit.dart';
import 'package:thimar/features/favorite/logic/favorite_state.dart';
import 'package:thimar/features/product_details/data/models/get_product_details_response_model.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/widgets/app_custom_back_button.dart';

class DetailsImageAndButtonsWidget extends StatelessWidget {
  final GetProductDetailsResponseModel data;
  final FavoriteCubit favoriteCubit;

  const DetailsImageAndButtonsWidget(
      {super.key, required this.data, required this.favoriteCubit});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.r),
            bottomRight: Radius.circular(40.r),
          ),
          child: CachedNetworkImage(
              imageUrl: data.data?.mainImage ?? "",
              height: 322.h,
              width: double.infinity,
              fit: BoxFit.cover,
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => const Icon(Icons.error)),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: Row(
            children: [
              AppCustomBackButton(),
              Spacer(),
              BlocProvider.value(
                value: favoriteCubit,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  style: IconButton.styleFrom(
                    backgroundColor: AppColors.lighterGreenColor,
                    minimumSize: Size(40.w, 40.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  onPressed: () {
                    data.data?.isFavorite == true
                        ? favoriteCubit.removeFromFavorite(
                            data.data?.id ?? 0, context)
                        : favoriteCubit.addToFavorite(
                            data.data?.id ?? 0, context);
                  },
                  icon: BlocBuilder<FavoriteCubit, FavoriteState>(
                    builder: (context, state) {
                      return Center(
                        child: state is AddToFavoriteLoading ||
                                state is RemoveFromFavoriteLoading
                            ? AppLoadingIndicatorWidget(
                                size: 30.r,
                              )
                            : Icon(
                                data.data?.isFavorite == true
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: AppColors.primaryColor,
                                size: 30.r,
                              ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
