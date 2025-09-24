import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/theming/app_assets.dart';
import 'package:thimar/core/widgets/app_custom_app_bar.dart';
import 'package:thimar/features/profile/presentation/widgets/add_card_button.dart';
import 'package:thimar/features/profile/presentation/widgets/card_data_widget.dart';

import '../../../core/utils/spacing.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  List<Map<String, String>> cards = [
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

  final TextEditingController holderController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController validController = TextEditingController();
  final TextEditingController cvvController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppCustomAppBar(
        appBarTitle: "الدفع",
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                verticalSpace(30),
                ...cards.map((card) => Column(
                      children: [
                        CardDataWidget(
                          backgroundImage: card["background"]!,
                          cardHolderName: card["holder"]!,
                          cardNumber: card["number"]!,
                          validDate: card["valid"]!,
                          cardTypeImage: card["type"]!,
                          onDelete: () {
                            setState(() {
                              cards.remove(card);
                            });
                          },
                          isSelected: true,
                        ),
                        verticalSpace(16),
                      ],
                    )),
                AddCardButton(
                  cards: cards,
                  holderController: holderController,
                  numberController: numberController,
                  validController: validController,
                  cvvController: cvvController,
                  onCardAdded: (newCard) {
                    setState(() {
                      cards.add(newCard);
                    });
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
