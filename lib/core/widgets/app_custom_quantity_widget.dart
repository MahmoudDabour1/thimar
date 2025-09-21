import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';
import '../theming/app_styles.dart';

class AppCustomQuantityWidget extends StatefulWidget {
  final int quantity;
  final ValueChanged<int> onQuantityChanged;
  final double? height;
  final double? width;
  final double? buttonHeight;
  final double? buttonWidth;

  const AppCustomQuantityWidget({super.key, required this.quantity, required this.onQuantityChanged, this.height, this.width, this.buttonHeight, this.buttonWidth});

  @override
  State<AppCustomQuantityWidget> createState() => _AppCustomQuantityWidgetState();
}

class _AppCustomQuantityWidgetState extends State<AppCustomQuantityWidget> {
  late int _quantity;

  @override
  void initState() {
    super.initState();
    _quantity = widget.quantity;
  }
  void _updateQuantity(int newQuantity) {
    setState(() {
      _quantity = newQuantity;
    });
    widget.onQuantityChanged(_quantity);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height??35.h,
      width:widget.height?? 110.w,
      decoration: BoxDecoration(
        color: AppColors.lighterGreenColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 4.w),
            child: Container(
              height:widget.buttonHeight?? 30.h,
              width:widget.buttonWidth?? 30.w,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    _updateQuantity(_quantity + 1);
                  });
                },
                icon: Icon(
                  Icons.add,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ),
          Text(
            _quantity.toString(),
            style: AppStyles.font16GreenMedium,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 4.w),
            child: Container(
              height:widget.buttonHeight?? 30.h,
              width:widget.buttonWidth?? 30.w,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    if (_quantity > 1) {
                      _updateQuantity(_quantity - 1);
                    }
                  });
                },
                icon: Icon(
                  Icons.remove,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
