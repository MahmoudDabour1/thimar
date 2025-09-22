import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:thimar/core/widgets/app_custom_app_bar.dart';
import 'package:thimar/features/profile/data/models/terms_response_model.dart';
import 'package:thimar/features/profile/logic/profile_cubit.dart';

import '../../../core/di/dependency_injection.dart';
import '../logic/profile_state.dart';

class TermsScreen extends StatefulWidget {
  const TermsScreen({super.key});

  @override
  State<TermsScreen> createState() => _TermsScreenState();
}

class _TermsScreenState extends State<TermsScreen> {
  final cubit = sl<ProfileCubit>();
  @override
  void initState() {
    super.initState();
    cubit.getTerms();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cubit,
      child: Scaffold(
        appBar: AppCustomAppBar(
          appBarTitle: "سياسة الخصوصية",
        ),
        body: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            return state.maybeWhen(
                termsLoading: () => const Center(
                      child: CircularProgressIndicator(),
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
