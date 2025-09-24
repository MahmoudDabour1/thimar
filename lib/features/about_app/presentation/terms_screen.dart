import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:thimar/core/widgets/app_custom_app_bar.dart';
import 'package:thimar/features/about_app/data/models/terms_response_model.dart';
import 'package:thimar/features/about_app/logic/about_app_state.dart';

import '../../../core/di/dependency_injection.dart';
import '../../../core/theming/app_colors.dart';
import '../logic/about_app_cubit.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = sl<AboutAppCubit>();

    return BlocProvider.value(
      value: cubit..getTerms(),
      child: Scaffold(
        appBar: AppCustomAppBar(
          appBarTitle: "سياسة الخصوصية",
        ),
        body: BlocBuilder<AboutAppCubit, AboutAppState>(
          builder: (context, state) {
            return state.maybeWhen(
                termsLoading: () => const Center(
                      child: CircularProgressIndicator(
                        color: AppColors.primaryColor,
                      ),
                    ),
                termsSuccess: (data) => setupSuccess(data),
                termsFailure: (error) => Center(
                      child: Text(
                        error,
                        style: const TextStyle(
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

  Column setupSuccess(TermsResponseModel data) {
    return Column(
      children: [
        Html(
          data: data.data?.terms ?? "",
        ),
      ],
    );
  }
}
