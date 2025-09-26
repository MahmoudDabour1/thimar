import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/theming/app_colors.dart';
import 'package:thimar/core/theming/app_styles.dart';
import 'package:thimar/core/utils/spacing.dart';
import 'package:thimar/core/widgets/app_custom_app_bar.dart';
import 'package:thimar/core/widgets/app_custom_button.dart';
import 'package:thimar/core/widgets/app_text_form_field.dart';
import 'package:thimar/features/walltet/logic/wallet_cubit.dart';
import 'package:thimar/features/walltet/presentation/widgets/charge_wallet_card_data.dart';

import '../logic/wallet_state.dart';

class ChargeWalletScreen extends StatefulWidget {
  final WalletCubit cubit;

  const ChargeWalletScreen({super.key, required this.cubit});

  @override
  State<ChargeWalletScreen> createState() => _ChargeWalletScreenState();
}

class _ChargeWalletScreenState extends State<ChargeWalletScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: widget.cubit,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        bottomNavigationBar: BlocBuilder<WalletCubit, WalletState>(
          builder: (context, state) {
            return Padding(
              padding: EdgeInsets.all(16.h),
              child: AppCustomButton(
                  isLoading: state is ChargeWalletLoading,
                  textButton: "دفع",
                  onPressed: () {
                    widget.cubit.chargeWallet(context);
                  }),
            );
          },
        ),
        appBar: AppCustomAppBar(appBarTitle: "شحن الان"),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Form(
              key: widget.cubit.formKey,
              child: SingleChildScrollView(
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
                      controller: widget.cubit.amountController,
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
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
