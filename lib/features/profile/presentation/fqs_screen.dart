import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/theming/app_assets.dart';
import 'package:thimar/core/theming/app_colors.dart';
import 'package:thimar/core/theming/app_styles.dart';
import 'package:thimar/core/widgets/app_custom_app_bar.dart';
import 'package:thimar/features/profile/data/models/faqs_response_model.dart';
import 'package:thimar/features/profile/logic/profile_cubit.dart';
import 'package:thimar/features/profile/logic/profile_state.dart';

import '../../../core/di/dependency_injection.dart';

class FqsScreen extends StatelessWidget {
  const FqsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = sl<ProfileCubit>();
    return BlocProvider.value(
      value: cubit..getFaqs(),
      child: Scaffold(
          appBar: AppCustomAppBar(appBarTitle: "أسئلة متكررة"),
          body: BlocBuilder<ProfileCubit, ProfileState>(
              builder: (context, state) {
            return state.maybeWhen(
              faqsLoading: () => Center(
                child: CircularProgressIndicator(
                  color: AppColors.primaryColor,
                ),
              ),
              faqsSuccess: (data) => setupSuccess(data),
              faqsFailure: (error) => Center(
                child: Text(
                  error,
                  style: TextStyle(color: Colors.red),
                ),
              ),
              orElse: () => SizedBox.shrink(),
            );
          })),
    );
  }

  Widget setupSuccess(FaqsResponseModel data) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: data.data?.length,
        itemBuilder: (context, index) {
          final faq = data.data?[index];
          return Padding(
            padding: EdgeInsets.only(bottom: 8.h),
            child: ExpansionTile(
              title: Text(
                faq?.question ?? "",
                style: AppStyles.font16GreenBold,
              ),
              trailing: Image.asset(
                AppAssets.containerArrowDownImage,
                width: 25.w,
                height: 25.h,
              ),
              backgroundColor: AppColors.whiteColor,
              collapsedShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
                side: BorderSide(
                  color: AppColors.lightGrayColor,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
                side: BorderSide(
                  color: AppColors.lightGrayColor,
                ),
              ),
              tilePadding:
                  EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    faq?.answer ?? "",
                    style: AppStyles.font16DarkerGrayLight,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
