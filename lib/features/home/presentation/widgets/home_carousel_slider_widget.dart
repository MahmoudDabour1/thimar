import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:thimar/core/theming/app_colors.dart';
import 'package:thimar/features/home/data/models/slider_response_model.dart';

import '../../logic/home_cubit.dart';
import '../../logic/home_state.dart';

class HomeCarouselSliderWidget extends StatefulWidget {
  const HomeCarouselSliderWidget({super.key});

  @override
  State<HomeCarouselSliderWidget> createState() =>
      _HomeCarouselSliderWidgetState();
}

class _HomeCarouselSliderWidgetState extends State<HomeCarouselSliderWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.maybeWhen(
          sliderLoading: () => setupLoading(),
          sliderSuccess: (data) => setupSuccess(data),
          orElse: () => const SizedBox(),
        );
      },
    );
  }

  Shimmer setupLoading() {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        width: double.infinity,
        height: 170.h,
        color: Colors.white,
      ),
    );
  }

  Widget setupSuccess(SliderResponseModel data) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 170.h,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            pauseAutoPlayOnTouch: true,
            viewportFraction: 1.0,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          items: List.generate(data.data?.length ?? 0, (index) {
            return CachedNetworkImage(
              imageUrl: data.data?[index].media ?? '',
              fit: BoxFit.cover,
              width: double.infinity,
              placeholder: (context, url) => setupLoading(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            );
          }),
        ),
        Positioned(
          bottom: 8.h,
          left: 0.w,
          right: 0.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              data.data?.length ?? 0,
              (index) => Container(
                height: 10.h,
                width: 10.w,
                margin: EdgeInsets.symmetric(horizontal: 3.w),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentIndex == index
                      ? AppColors.whiteColor
                      : AppColors.grayColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
