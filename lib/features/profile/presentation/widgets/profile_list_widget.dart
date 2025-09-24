import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/theming/app_colors.dart';
import 'package:thimar/core/utils/spacing.dart';
import 'package:thimar/core/widgets/app_custom_button.dart';
import 'package:thimar/features/auth/login/logic/login_cubit.dart';
import 'package:thimar/features/auth/login/logic/login_state.dart';
import 'package:thimar/features/profile/presentation/widgets/profile_custom_row_widget.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_styles.dart';

class ProfileListWidget extends StatelessWidget {
  const ProfileListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final loginCubit = sl<LoginCubit>();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          ProfileCustomRowWidget(
            title: "البيانات الشخصية",
            iconPath: AppAssets.profileUserImage,
            onTap: () {
              context.pushNamed(Routes.profileDataScreen);
            },
          ),
          ProfileCustomRowWidget(
            title: "المحفظة",
            iconPath: AppAssets.walletImage,
            onTap: () {
              context.pushNamed(Routes.walletScreen);
            },
          ),
          ProfileCustomRowWidget(
            title: "العناوين",
            iconPath: AppAssets.locationImage,
            onTap: () async {
              context.pushNamed(Routes.addressScreen);
            },
          ),
          ProfileCustomRowWidget(
            title: "الدفع",
            iconPath: AppAssets.dollarImage,
            onTap: () {
              context.pushNamed(
                Routes.paymentScreen,
              );
            },
          ),
          Divider(
            color: AppColors.lightGrayColor,
          ),
          ProfileCustomRowWidget(
            title: "أسئلة متكررة",
            iconPath: AppAssets.questionImage,
            onTap: () {
              context.pushNamed(Routes.fqsScreen);
            },
          ),
          ProfileCustomRowWidget(
            title: "سياسة الخصوصية",
            iconPath: AppAssets.checkImage,
            onTap: () {
              context.pushNamed(Routes.policyScreen);
            },
          ),
          ProfileCustomRowWidget(
            title: "تواصل معنا",
            iconPath: AppAssets.callingImage,
            onTap: () {
              context.pushNamed(Routes.contactScreen);
            },
          ),
          ProfileCustomRowWidget(
            title: "الشكاوي والأقتراحات",
            iconPath: AppAssets.editImage,
            onTap: () {
              context.pushNamed(Routes.suggestionsAndComplaintsScreen);
            },
          ),
          ProfileCustomRowWidget(
            title: "مشاركة التطبيق",
            iconPath: AppAssets.shareImage,
            onTap: () {},
          ),
          Divider(
            color: AppColors.lightGrayColor,
          ),
          ProfileCustomRowWidget(
            title: "عن التطبيق",
            iconPath: AppAssets.infoImage,
            onTap: () {
              context.pushNamed(Routes.aboutAppScreen);
            },
          ),
          ProfileCustomRowWidget(
            title: "تغيير اللغة",
            iconPath: AppAssets.languageImage,
            onTap: () {},
          ),
          ProfileCustomRowWidget(
            title: "الشروط والأحكام",
            iconPath: AppAssets.noteImage,
            onTap: () {
              context.pushNamed(Routes.termsScreen);
            },
          ),
          ProfileCustomRowWidget(
            title: "تقييم التطبيق",
            iconPath: AppAssets.starImage,
            onTap: () {},
          ),
          Divider(
            color: AppColors.lightGrayColor,
          ),
          verticalSpace(16),
          ProfileCustomRowWidget(
            title: "تسجيل الخروج",
            iconPath: AppAssets.starImage,
            isHasIcon: false,
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (_) {
                    return Container(
                      height: 200.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 16.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          verticalSpace(16),
                          Center(
                            child: Text(
                              "هل أنت متأكد من تسجيل الخروج؟",
                              style: AppStyles.font16BlackBold,
                            ),
                          ),
                          verticalSpace(16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                child: AppCustomButton(
                                    textButton: "إلغاء",
                                    isBorder: true,
                                    onPressed: () {
                                      context.pop();
                                    }),
                              ),
                              horizontalSpace(8),
                              BlocProvider.value(
                                value: loginCubit,
                                child: BlocBuilder<LoginCubit, LoginState>(
                                  builder: (context, state) {
                                    final cubit = sl<LoginCubit>();
                                    return Expanded(
                                      child: AppCustomButton(
                                          isLoading: state is LogoutLoading,
                                          textButton: "تأكيد",
                                          backgroundColor: Colors.red,
                                          onPressed: () {
                                            cubit.logout(context);
                                          }),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  });
            },
            changeArrow: AppAssets.logoutImage,
          ),
        ],
      ),
    );
  }
}
