import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'order_state_single_item.dart';

class CurrentOrdersTap extends StatelessWidget {
  const CurrentOrdersTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24.h),
      child: ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return OrderStateSingleItem();
          }),
    );
  }
}
