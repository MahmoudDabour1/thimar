import 'package:flutter/material.dart';
import 'package:thimar/core/widgets/app_custom_app_bar.dart';
import 'package:thimar/features/about_app/presentation/widgets/suggestions_and_complaints_widgets.dart';

class SuggestionsAndComplaintsScreen extends StatelessWidget {
  const SuggestionsAndComplaintsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppCustomAppBar(appBarTitle: "الأقتراحات والشكاوي"),
      body: SuggestionsAndComplaintsWidgets(),
    );
  }
}
