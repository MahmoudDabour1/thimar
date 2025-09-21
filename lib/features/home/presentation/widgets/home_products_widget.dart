import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/theming/app_styles.dart';
import 'package:thimar/core/utils/spacing.dart';
import 'package:thimar/core/widgets/app_custom_button.dart';
import 'package:thimar/features/home/logic/home_cubit.dart';
import 'package:thimar/features/home/logic/home_state.dart';

import 'home_products_grid_view.dart';

class HomeProductsWidget extends StatelessWidget {
  const HomeProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "الأصناف",
          style: AppStyles.font16BlackExtraBold,
        ),
        verticalSpace(10),
        BlocBuilder<HomeCubit, HomeState>(
          buildWhen: (previous, current) =>
              previous != current &&
              (current is GetHomeProductLoading ||
                  current is GetHomeProductSuccess ||
                  current is GetHomeProductFailure),
          builder: (context, state) {
            return state.maybeWhen(
              getHomeProductsLoading: () => Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              getHomeProductsSuccess: (data) => HomeProductsGridView(
                data: data,
              ),
              getHomeProductsFailure: (error) => Center(
                child: Text(
                  error,
                  style: AppStyles.font16DarkGrayLight,
                ),
              ),
              orElse: () => SizedBox.shrink(),
            );
          },
        ),
      ],
    );
  }
}
