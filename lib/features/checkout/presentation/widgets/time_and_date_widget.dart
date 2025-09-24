import 'package:flutter/cupertino.dart';
import 'package:thimar/core/utils/spacing.dart';
import 'package:thimar/features/checkout/presentation/widgets/time_and_calender_custom_container.dart';

import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_styles.dart';

class TimeAndDateWidget extends StatelessWidget {
  const TimeAndDateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(32),
        Text(
          "تحديد وقت التوصيل",
          style: AppStyles.font16GreenExtraBold,
        ),
        verticalSpace(10),
        Row(
          children: [
            Flexible(
              child: TimeAndCalenderCustomContainer(
                title: "اختر اليوم والتاريخ",
                iconPath: AppAssets.calenderIcon,
                onTap: () {},
              ),
            ),
            horizontalSpace(16),
            Flexible(
              child: TimeAndCalenderCustomContainer(
                title: "اختر الوقت",
                iconPath: AppAssets.timeIcon,
                onTap: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}
