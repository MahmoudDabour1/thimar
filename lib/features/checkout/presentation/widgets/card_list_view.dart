import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_assets.dart';
import '../../../profile/presentation/widgets/card_data_widget.dart';

class CardListView extends StatefulWidget {
  const CardListView({super.key});

  @override
  State<CardListView> createState() => _CardListViewState();
}

class _CardListViewState extends State<CardListView> {
  final List<Map<String, String>> cards = [
    {
      "background": AppAssets.blackCardImage,
      "holder": "Mahmoud Dabour",
      "number": "****  ****  ****  0197",
      "valid": "06/27",
      "type": AppAssets.visaIcon,
    },
    {
      "background": AppAssets.greenCardImage,
      "holder": "Ahmed Ali",
      "number": "****  ****  ****  0197",
      "valid": "06/27",
      "type": AppAssets.masterIcon,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: cards.length,
        separatorBuilder: (_, __) => SizedBox(width: 12.w),
        itemBuilder: (context, index) {
          final card = cards[index];
          return SizedBox(
            width: 300.w,
            child: CardDataWidget(
              backgroundImage: card["background"] ?? "",
              cardHolderName: card["holder"] ?? "",
              cardNumber: card["number"] ?? "",
              validDate: card["valid"] ?? "",
              cardTypeImage: card["type"] ?? "",
              onDelete: () {},
              isSelected: true,
              height: 300.h,
            ),
          );
        },
      ),
    );
  }
}
