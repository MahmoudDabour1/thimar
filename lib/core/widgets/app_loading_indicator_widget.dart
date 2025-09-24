import 'package:flutter/material.dart';

import '../theming/app_colors.dart';

class AppLoadingIndicatorWidget extends StatelessWidget {
  const AppLoadingIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: AppColors.primaryColor,
      ),
    );
  }
}
