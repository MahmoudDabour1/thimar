import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:thimar/core/theming/app_styles.dart';
import 'package:thimar/core/utils/spacing.dart';
import 'package:thimar/features/layout/logic/bottom_nav_bar_cubit.dart';

import '../../../core/theming/app_colors.dart';
import '../logic/bottom_nav_bar_state.dart';

class BottomNavBarLayout extends StatelessWidget {
  const BottomNavBarLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavBarCubit(),
      child: BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
        builder: (context, state) {
          final bottomNavCubit = context.read<BottomNavBarCubit>();

          return Scaffold(
            body: bottomNavCubit.bottomNavScreens[bottomNavCubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: AppColors.primaryColor,
              currentIndex: bottomNavCubit.currentIndex,
              iconSize: 21.r,
              selectedFontSize: 16.sp,
              unselectedFontSize: 16.sp,
              unselectedIconTheme: IconThemeData(
                size: 21.r,
              ),
              selectedIconTheme: IconThemeData(
                color: AppColors.whiteColor,
              ),
              selectedItemColor: Colors.white,
              selectedLabelStyle: AppStyles.font16WhiteBold,
              unselectedLabelStyle: AppStyles.font16WhiteBold.copyWith(
                color: AppColors.lightGreenColor,
              ),
              unselectedItemColor: AppColors.lightGreenColor,
              enableFeedback: true,
              onTap: (index) {
                bottomNavCubit.changeBottomNavIndex(index);
              },
              items: List.generate(
                bottomNavCubit.selectedIcons.length,
                (index) => BottomNavigationBarItem(
                  icon: Column(
                    children: [
                      SvgPicture.asset(
                        bottomNavCubit.unSelectedIcons[index],
                        color: AppColors.lightGreenColor,
                      ),
                      verticalSpace(6),
                    ],
                  ),
                  activeIcon: Column(
                    children: [
                      SvgPicture.asset(
                        bottomNavCubit.selectedIcons[index],
                        color: AppColors.whiteColor,
                      ),
                      verticalSpace(6),
                    ],
                  ),
                  label: bottomNavCubit.labels[index],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
