import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/theming/app_assets.dart';
import 'package:thimar/core/utils/spacing.dart';
import 'package:thimar/core/widgets/app_custom_app_bar.dart';
import 'package:thimar/features/about_app/data/models/about_app_response_model.dart';
import 'package:thimar/features/about_app/logic/about_app_cubit.dart';

import '../../../core/di/dependency_injection.dart';
import '../../../core/theming/app_colors.dart';
import 'package:flutter_html/flutter_html.dart';

import '../logic/about_app_state.dart';

class AboutAppScreen extends StatelessWidget {
  const AboutAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = sl<AboutAppCubit>();

    return BlocProvider.value(
      value: cubit..getAboutApp(),
      child: Scaffold(
        appBar: AppCustomAppBar(appBarTitle: "عن التطبيق"),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                verticalSpace(30),
                Center(
                  child: Image.asset(
                    AppAssets.thimarIcon,
                    height: 160.h,
                    width: 160.w,
                  ),
                ),
                verticalSpace(16),
                BlocBuilder<AboutAppCubit, AboutAppState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                        aboutAppLoading: () => Center(
                              child: CircularProgressIndicator(
                                color: AppColors.primaryColor,
                              ),
                            ),
                        aboutAppSuccess: (data) => setupSuccess(data),
                        orElse: () => SizedBox.shrink());
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget setupSuccess(AboutAppResponseModel data) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Html(
        data: data.data?.about ?? "",
        style: {
          "p.fancy": Style(
            textAlign: TextAlign.center,
            // padding: const EdgeInsets.all(16),
            backgroundColor: Colors.grey,
            margin: Margins(left: Margin(50, Unit.px), right: Margin.auto()),
            width: Width(300, Unit.px),
            fontWeight: FontWeight.bold,
          ),
        },
      ),
    );
  }
}
