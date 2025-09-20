import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/app_custom_search_bar.dart';

class HomeCustomSearchBar extends StatelessWidget {
  const HomeCustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 22.h),
      child: AppCustomSearchBar(
        hintText: "ابحث عن ماتريد؟",
        validator: (value) {},
      ),
    );
  }
}
