import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/routing/routes.dart';
import 'package:thimar/core/widgets/app_custom_app_bar.dart';
import 'package:thimar/features/walltet/data/models/get_wallet_response_model.dart';
import 'package:thimar/features/walltet/logic/wallet_cubit.dart';
import 'package:thimar/features/walltet/logic/wallet_state.dart';
import 'package:thimar/features/walltet/presentation/widgets/wallet_history_single_item.dart';

import '../../../core/di/dependency_injection.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_styles.dart';
import '../../../core/utils/spacing.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  final cubit = sl<WalletCubit>();

  @override
  void initState() {
    super.initState();
    cubit.getWalletData();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cubit,
      child: Scaffold(
        appBar: AppCustomAppBar(appBarTitle: "المحفظة"),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child:
              BlocBuilder<WalletCubit, WalletState>(builder: (context, state) {
            return state.maybeWhen(
                getWalletLoading: () => Center(
                      child: CircularProgressIndicator(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                getWalletSuccess: (data) => setupSuccess(data),
                getWalletFailure: (error) => Center(
                      child: Text(
                        error,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                orElse: () => SizedBox.shrink());
          }),
        ),
      ),
    );
  }

  Widget setupSuccess(GetWalletResponseModel data) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            verticalSpace(70),
            Text(
              "رصيدك",
              style: AppStyles.font20GreenBold,
            ),
            verticalSpace(16),
            Text(
              "${data.wallet ?? 0} ر.س",
              style: AppStyles.font22GreenBold,
            ),
            verticalSpace(70),
            GestureDetector(
              onTap: () {
                context
                    .pushNamed(Routes.chargeWalletScreen, arguments: cubit)

                    .then((_) {
                  // cubit.updateWallet();
                  setState(() {

                  });
                });
              },
              child: DottedBorder(
                color: Colors.grey,
                strokeWidth: 1.w,
                borderType: BorderType.RRect,
                radius: Radius.circular(16.r),
                dashPattern: [6, 4],
                child: Container(
                  height: 60.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: AppColors.lighterGreenColor,
                  ),
                  child: Center(
                    child: Text(
                      "اشحن الآن",
                      style: AppStyles.font16GreenBold,
                    ),
                  ),
                ),
              ),
            ),
            verticalSpace(60),
            Row(
              children: [
                Text("سجل المعاملات", style: AppStyles.font16GreenBold),
                Spacer(),
                TextButton(
                  onPressed: () {
                    context.pushNamed(Routes.allTransactionHistoryScreen);
                  },
                  child: Text("عرض الكل", style: AppStyles.font16GreenMedium),
                ),
              ],
            ),
            verticalSpace(20),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: data.data?.length ?? 0,
              itemBuilder: (context, index) {
                final transaction = data.data?[index];

                final rawDate = transaction?.date?.toString() ?? "";
                String formattedDate = rawDate;

                try {
                  final dateTime = DateTime.parse(rawDate);

                  final monthName = DateFormat.MMMM('ar').format(dateTime);

                  formattedDate =
                      " ${dateTime.day} $monthName ${dateTime.year}";
                } catch (e) {
                  formattedDate = rawDate;
                }
                return WalletHistorySingleItem(
                  title: transaction?.statusTrans ?? "",
                  date: formattedDate ?? "",
                  amount: transaction?.amount?.toString() ?? "0",
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
