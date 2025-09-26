import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:thimar/features/profile/data/models/get_profile_response_model.dart';
import 'package:thimar/features/profile/logic/profile_cubit.dart';

import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/theming/font_weight_helper.dart';
import '../../../../core/utils/spacing.dart';
import '../../logic/profile_state.dart';

class ProfileHeaderWidget extends StatefulWidget {
  const ProfileHeaderWidget({super.key});

  @override
  State<ProfileHeaderWidget> createState() => _ProfileHeaderWidgetState();
}

class _ProfileHeaderWidgetState extends State<ProfileHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppAssets.greenBackgroundImage,
          height: 217.h,
        ),
        BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            return state.maybeWhen(
              getProfileLoading: () => setupLoading(),

              //     Positioned(
              //   top: 0,
              //   left: 0,
              //   right: 0,
              //   bottom: 0,
              //   child: const Center(
              //     child: CircularProgressIndicator(
              //       color: AppColors.whiteColor,
              //     ),
              //   ),
              // ),
              getProfileSuccess: (data) => setupSuccess(data),
              getProfileFailure: (error) => Center(
                child: Text(
                  error,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              orElse: () => SizedBox.shrink(),
            );
          },
        )
      ],
    );
  }

  Widget setupSuccess(GetProfileResponseModel data) {
    return Column(
      children: [
        verticalSpace(44),
        Center(
          child: Text(
            "حسابي",
            style: AppStyles.font16WhiteBold,
          ),
        ),
        verticalSpace(16),
        ClipRRect(
          borderRadius: BorderRadius.circular(16.r),
          child: CachedNetworkImage(
            imageUrl: data.data?.image ?? "",
            height: 71.h,
            width: 76.w,
            fit: BoxFit.cover,
            placeholder: (context, url) => Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              child: Container(
                height: 71.h,
                width: 76.w,
                color: Colors.white,
              ),
            ),
            errorWidget: (context, url, error) => Container(
              height: 71.h,
              width: 76.w,
              color: Colors.grey.shade200,
              child: const Icon(Icons.error, color: Colors.red),
            ),
          ),
        ),
        verticalSpace(8),
        Text(
          data.data?.fullname ?? "",
          style: AppStyles.font14WhiteBold,
        ),
        verticalSpace(4),
        Text(
          data.data?.phone ?? "",
          style: AppStyles.font14WhiteBold.copyWith(
            fontWeight: FontWeightHelper.regular,
          ),
        ),
      ],
    );
  }

  Widget setupLoading() {
    return Column(
      children: [
        verticalSpace(44),
        Center(
          child: Container(
            height: 20.h,
            width: 60.w,
            color: Colors.white,
          ),
        ),
        verticalSpace(16),
        Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: Container(
            height: 71.h,
            width: 76.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.r),
            ),
          ),
        ),
        verticalSpace(8),
        Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: Container(
            height: 14.h,
            width: 100.w,
            color: Colors.white,
          ),
        ),
        verticalSpace(4),
        Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: Container(
            height: 14.h,
            width: 80.w,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
