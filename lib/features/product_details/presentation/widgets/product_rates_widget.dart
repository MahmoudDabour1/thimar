import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/utils/spacing.dart';
import 'package:thimar/features/product_details/data/models/get_product_rates_response_model.dart';
import 'package:thimar/features/product_details/presentation/widgets/product_rates_list_view.dart';

import '../../../../core/theming/app_styles.dart';
import '../../logic/product_details_cubit.dart';
import '../../logic/product_details_state.dart';

class ProductRatesWidget extends StatelessWidget {
  const ProductRatesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(16),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            children: [
              Text(
                "التقييمات",
                style: AppStyles.font22GreenBold,
              ),
              Spacer(),
              Text(
                "عرض الكل",
                style: AppStyles.font15GrayRegular,
              ),
            ],
          ),
        ),
        verticalSpace(10),
        BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
          builder: (context, state) {
            return state.maybeWhen(
                productRatesLoading: () => setupLoading(context),
                productRatesSuccess: (data) => setupSuccess(data),
                productRatesFailure: (error) => setupError(error),
                orElse: () => SizedBox.shrink());
          },
        )
      ],
    );
  }

  Widget setupSuccess(GetProductRatesResponseModel data) {
    return data.data == [] || data.data == null || data.data!.isEmpty
        ? Column(
            children: [
              Text(
                "لا توجد تقييمات بعد",
                style: AppStyles.font16GreenMedium,
              ),
              verticalSpace(16),
            ],
          )
        : SizedBox(
            height: 80.h,
            child: ProductRatesListView(
              data: data,
            ),
          );
  }

  Center setupError(String error) {
    return Center(
      child: Text(
        error,
        style: AppStyles.font16DarkGrayLight,
      ),
    );
  }

  Center setupLoading(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
