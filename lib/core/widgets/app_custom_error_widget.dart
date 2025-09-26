import 'package:flutter/material.dart';
import 'package:thimar/core/theming/app_styles.dart';

class AppCustomErrorWidget extends StatelessWidget {
  final String error;

  const AppCustomErrorWidget({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        error,
        style: AppStyles.font16GreenBold.copyWith(
          color: Colors.red,
        ),
      ),
    );
  }
}
