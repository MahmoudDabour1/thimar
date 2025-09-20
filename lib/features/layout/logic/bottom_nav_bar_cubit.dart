import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:thimar/features/layout/logic/bottom_nav_bar_state.dart';

import '../../../core/theming/app_assets.dart';
import '../../home/presentation/home_screen.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(BottomNavBarState.initial());
  int currentIndex = 0;

  void changeBottomNavIndex(int index) {
    currentIndex = index;
    emit(BottomNavBarState.changeNav(index));
  }

  List<Widget> bottomNavScreens = [
    HomeScreen(),
    Center(child: Text("طلباتي")),
    Center(child: Text("الإشعارات")),
    Center(child: Text("المفضلة")),
    Center(child: Text("حسابي")),
  ];

  List<String> labels = [
    "الرئيسية",
    "طلباتي",
    "الإشعارات",
    "المفضلة",
    "حسابي",
  ];
  List<String> selectedIcons = [
    AppAssets.homeIconSvg,
    AppAssets.orderIconSvg,
    AppAssets.notificationIconSvg,
    AppAssets.heartIconSvg,
    AppAssets.userIconSvg,
  ];List<String> unSelectedIcons = [
    AppAssets.homeIconSvg,
    AppAssets.orderIconSvg,
    AppAssets.notificationIconSvg,
    AppAssets.heartIconSvg,
    AppAssets.userIconSvg,
  ];
}
