import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/theming/app_colors.dart';
import 'package:thimar/core/theming/app_styles.dart';
import 'package:thimar/core/utils/spacing.dart';
import 'package:thimar/core/widgets/app_custom_app_bar.dart';
import 'package:thimar/core/widgets/app_custom_button.dart';
import 'package:thimar/core/widgets/app_text_form_field.dart';
import 'package:thimar/features/walltet/logic/wallet_cubit.dart';
import 'package:thimar/features/walltet/presentation/widgets/charge_wallet_card_data.dart';

import '../../../core/di/dependency_injection.dart';
import '../logic/wallet_state.dart';

class ChargeWalletScreen extends StatefulWidget {
  const ChargeWalletScreen({super.key});

  @override
  State<ChargeWalletScreen> createState() => _ChargeWalletScreenState();
}

class _ChargeWalletScreenState extends State<ChargeWalletScreen> {
  final cubit = sl<WalletCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cubit..getWalletData(),
      child: Scaffold(
        appBar: AppCustomAppBar(appBarTitle: "شحن الان"),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Form(
              key: cubit.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  verticalSpace(60),
                  Text(
                    "معلومات المبلغ",
                    style: AppStyles.font16GreenBold,
                  ),
                  verticalSpace(20),
                  AppTextFormField(
                    hintText: "المبلغ الخاص بك",
                    fillColor: AppColors.lighterGreenColor,
                    controller: cubit.amountController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'يرجى إدخال المبلغ';
                      }
                      return null;
                    },
                  ),
                  verticalSpace(40),
                  Text(
                    "معلومات البطاقة",
                    style: AppStyles.font16GreenBold,
                  ),
                  ChargeWalletCardData(),
                  Spacer(),
                  BlocBuilder<WalletCubit, WalletState>(
                    builder: (context, state) {
                      return AppCustomButton(
                          isLoading: state is ChargeWalletLoading,
                          textButton: "دفع",
                          onPressed: () {
                            cubit.chargeWallet(context).then((value) {
                              context.pop();
                              cubit.getWalletData();
                            });
                          });
                    },
                  ),
                  verticalSpace(32),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
