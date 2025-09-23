import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:thimar/core/widgets/app_custom_app_bar.dart';
import 'package:thimar/features/walltet/data/models/get_wallet_response_model.dart';
import 'package:thimar/features/walltet/presentation/widgets/wallet_history_single_item.dart';

import '../../../core/di/dependency_injection.dart';
import '../logic/wallet_cubit.dart';
import '../logic/wallet_state.dart';

class AllTransactionHistoryScreen extends StatelessWidget {
  const AllTransactionHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final walletCubit = sl<WalletCubit>();
    return Scaffold(
      appBar: AppCustomAppBar(
        appBarTitle: "سجل المعاملات",
      ),
      body: BlocProvider.value(
        value: walletCubit..getWalletData(),
        child: BlocBuilder<WalletCubit, WalletState>(
          builder: (context, state) {
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
          },
        ),
      ),
    );
  }

  Widget setupSuccess(GetWalletResponseModel data) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 32.h),
      child: ListView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemCount: data.data?.length ?? 0,
        itemBuilder: (context, index) {
          final transaction = data.data?[index];

          final rawDate = transaction?.date?.toString() ?? "";
          String formattedDate = rawDate;

          try {
            final dateTime = DateTime.parse(rawDate);

            final monthName = DateFormat.MMMM('ar').format(dateTime);

            formattedDate = " ${dateTime.day} $monthName ${dateTime.year}";
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
    );
  }
}
