import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/widgets/app_custom_app_bar.dart';
import 'package:thimar/features/about_app/data/models/policy_response_model.dart';

import '../../../core/di/dependency_injection.dart';
import '../../../core/widgets/app_loading_indicator_widget.dart';
import '../logic/about_app_cubit.dart';
import '../logic/about_app_state.dart';

class PolicyScreen extends StatelessWidget {
  const PolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = sl<AboutAppCubit>();
    return BlocProvider.value(
      value: cubit..getPolicy(),
      child: Scaffold(
        appBar: AppCustomAppBar(appBarTitle: "سياسة الخصوصية"),
        body: BlocBuilder<AboutAppCubit, AboutAppState>(
          builder: (context, state) {
            return state.maybeWhen(
                policyLoading: () => AppLoadingIndicatorWidget(),
                policySuccess: (data) => setupSuccess(data),
                policyFailure: (error) => Center(
                      child: Text(
                        error,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                orElse: () => SizedBox.shrink());
          },
        ),
      ),
    );
  }

  Widget setupSuccess(PolicyResponseModel data) {
    return Padding(
      padding: EdgeInsets.all(16.0.w),
      child: SingleChildScrollView(
        child: Html(
          data: data.data?.policy ?? "",
        ),
      ),
    );
  }
}
