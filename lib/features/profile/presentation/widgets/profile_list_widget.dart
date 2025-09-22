import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/theming/app_colors.dart';
import 'package:thimar/core/utils/spacing.dart';
import 'package:thimar/features/profile/presentation/widgets/profile_custom_row_widget.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_assets.dart';

class ProfileListWidget extends StatelessWidget {
  const ProfileListWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
            onTap: () {},
          ),
          ProfileCustomRowWidget(
            title: "العناوين",
            iconPath: AppAssets.locationImage,
            onTap: () {},
          ),
          ProfileCustomRowWidget(
            title: "الدفع",
            iconPath: AppAssets.dollarImage,
            onTap: () {},
          ),
          Divider(
            color: AppColors.lightGrayColor,
          ),
          ProfileCustomRowWidget(
            title: "أسئلة متكررة",
            iconPath: AppAssets.questionImage,
            onTap: () {},
          ),
          ProfileCustomRowWidget(
            title: "سياسة الخصوصية",
            iconPath: AppAssets.checkImage,
            onTap: () {},
          ),
          ProfileCustomRowWidget(
            title: "تواصل معنا",
            iconPath: AppAssets.callingImage,
            onTap: () {},
          ),
          ProfileCustomRowWidget(
            title: "الشكاوي والأقتراحات",
            iconPath: AppAssets.editImage,
            onTap: () {},
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
            onTap: () {},
            changeArrow: AppAssets.logoutImage,
          ),
        ],
      ),
    );
  }
}
