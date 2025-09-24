import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/theming/app_colors.dart';
import 'package:thimar/core/theming/app_styles.dart';
import 'package:thimar/core/widgets/app_custom_app_bar.dart';
import 'package:thimar/features/favorite/data/models/get_favorite_response_model.dart';
import 'package:thimar/features/favorite/logic/favorite_cubit.dart';
import 'package:thimar/features/favorite/logic/favorite_state.dart';
import 'package:thimar/features/favorite/presentation/widgets/favorite_grid_view.dart';

import '../../../core/di/dependency_injection.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = sl<FavoriteCubit>();
    return Scaffold(
      appBar: AppCustomAppBar(appBarTitle: "المفضلة"),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: BlocProvider.value(
            value: cubit..getFavorite(),
            child: BlocBuilder<FavoriteCubit, FavoriteState>(
                builder: (context, state) {
              return state.maybeWhen(
                getFavoriteLoading: () => setupLoading(),
                getFavoriteSuccess: (data) => setupSuccess(data),
                getFavoriteFailure: (error) => setupError(error),
                orElse: () => const SizedBox(),
              );
            }),
          ),
        ),
      ),
    );
  }

  Center setupLoading() {
    return Center(
      child: CircularProgressIndicator(
        color: AppColors.primaryColor,
      ),
    );
  }

  Center setupError(String error) {
    return Center(
      child: Text(
        error,
        style: TextStyle(color: Colors.red),
      ),
    );
  }

  Widget setupSuccess(GetFavoriteResponseModel data) {
    return data.data == null
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "لا يوجد منتجات في المفضلة",
                  style: AppStyles.font16GreenBold,
                ),
              ),
            ],
          )
        : SingleChildScrollView(
            child: FavoriteGridView(
              data: data,
            ),
          );
  }
}
