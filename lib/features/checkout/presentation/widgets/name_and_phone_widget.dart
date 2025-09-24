import 'package:flutter/material.dart';

import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';

class NameAndPhoneWidget extends StatelessWidget {
  const NameAndPhoneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(20),
        Row(
          children: [
            Text(
              "الإسم: ",
              style: AppStyles.font16GreenExtraBold,
            ),
            Text(
              "محمد",
              style: AppStyles.font16GreenExtraBold,
            ),
          ],
        ),
        verticalSpace(8),
        Row(
          children: [
            Text(
              "الجوال: ",
              style: AppStyles.font16GreenExtraBold,
            ),
            Text(
              "05068285914",
              style: AppStyles.font16GreenExtraBold,
            ),
          ],
        ),
        verticalSpace(36),
      ],
    );
  }
}
