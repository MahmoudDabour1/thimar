import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thimar/core/theming/app_styles.dart';
import 'package:thimar/core/utils/spacing.dart';
import 'package:thimar/core/widgets/app_custom_app_bar.dart';
import 'package:thimar/features/about_app/presentation/widgets/suggestions_and_complaints_widgets.dart';

import '../../../core/di/dependency_injection.dart';
import '../logic/about_app_cubit.dart';
import 'widgets/contact_location_widget.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = sl<AboutAppCubit>();
    return Scaffold(
      appBar: AppCustomAppBar(appBarTitle: "تواصل معنا"),
      body: SingleChildScrollView(
        child: BlocProvider.value(
          value: cubit..getContactData(),
          child: Column(
            children: [
              ContactLocationWidget(),
              verticalSpace(70),
              Text(
                "أو يمكنك إرسال رسالة ",
                style: AppStyles.font16GreenBold,
              ),
              SuggestionsAndComplaintsWidgets(),
              verticalSpace(32),
            ],
          ),
        ),
      ),
    );
  }
}
