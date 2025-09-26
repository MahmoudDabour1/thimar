import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/theming/app_colors.dart';
import 'package:thimar/core/theming/app_styles.dart';
import 'package:thimar/core/widgets/app_custom_app_bar.dart';
import 'package:thimar/features/favorite/data/models/get_favorite_response_model.dart';
import 'package:thimar/features/favorite/logic/favorite_cubit.dart';
import 'package:thimar/features/favorite/logic/favorite_state.dart';
import 'package:thimar/features/favorite/presentation/widgets/favorite_grid_view.dart';

import '../../../core/di/dependency_injection.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  final favCubit = sl<FavoriteCubit>();

  @override
  void initState() {
    super.initState();
    favCubit.getFavorite();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppCustomAppBar(
        appBarTitle: "المفضلة",
        isHaveBackButton: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: BlocProvider.value(
            value: favCubit,
            child: BlocBuilder<FavoriteCubit, FavoriteState>(
                buildWhen: (previous, current) =>
                    previous != current &&
                    (current is GetFavoriteLoading ||
                        current is GetFavoriteSuccess ||
                        current is GetFavoriteFailure),
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
    return data.data.isNullOrEmpty()
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
              cubit: favCubit,
            ),
          );
  }
}
