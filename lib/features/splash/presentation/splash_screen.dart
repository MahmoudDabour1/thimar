import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/app_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutBack,
    ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppAssets.backgroundImage,
            fit: BoxFit.fill,
          ),
          Center(
            child: SlideTransition(
              position: _slideAnimation,
              child: Image.asset(
                AppAssets.thimarIcon,
                width: 160.w,
                height: 157.h,
              ),
            ),
          ),
          Positioned(
            bottom: -25.h,
            right: -140.w,
            child: Image.asset(
              AppAssets.vegetablesBagIcon,
              width: 448.w,
              height: 298.h,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
