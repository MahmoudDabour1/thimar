import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/features/product_details/data/models/get_product_details_response_model.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/widgets/app_custom_back_button.dart';

class DetailsImageAndButtonsWidget extends StatelessWidget {
  final GetProductDetailsResponseModel data;
  const DetailsImageAndButtonsWidget({super.key, required this.data});

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
              errorWidget: (context, url, error) =>
              const Icon(Icons.error)),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 8.h),
          child: Row(
            children: [
              AppCustomBackButton(),
              Spacer(),
              Container(
                height: 32.h,
                width: 32.w,
                decoration: BoxDecoration(
                  color: AppColors.lighterGreenColor,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Center(
                  child: Icon(
                    Icons.favorite_border,
                    color: AppColors.primaryColor,
                    size: 20.r,
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
