import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/features/product_details/data/models/get_product_details_response_model.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_custom_quantity_widget.dart';
import '../../../cart/logic/cart_cubit.dart';

class DetailsPriceAndQuantityWidget extends StatefulWidget {
  final GetProductDetailsResponseModel data;
  final int quantity;
  final ValueChanged<int> onQuantityChanged;

  const DetailsPriceAndQuantityWidget(
      {super.key,
      required this.data,
      required this.quantity,
      required this.onQuantityChanged});

  @override
  State<DetailsPriceAndQuantityWidget> createState() =>
      _DetailsPriceAndQuantityWidgetState();
}

class _DetailsPriceAndQuantityWidgetState
    extends State<DetailsPriceAndQuantityWidget> {
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
    return Row(
      children: [
        Text(
          "السعر / 1كجم",
          style: AppStyles.font20BlackMedium,
        ),
        Spacer(),
        Container(
          height: 35.h,
          width: 110.w,
          decoration: BoxDecoration(
            color: AppColors.lighterGreenColor,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: AppCustomQuantityWidget(
            quantity: widget.quantity ?? 1,
            onQuantityChanged: (newQuantity) {
              context
                  .read<CartCubit>()
                  .updateCartData(widget.data.data?.id ?? 0, newQuantity);
            },
          ),
        ),
      ],
    );
  }
}
