import 'package:flutter/material.dart';
import '../../../../core/theming/app_colors.dart';

class PriceFilterRangeWidget extends StatefulWidget {
  final double minPrice;
  final double maxPrice;
  final void Function(RangeValues)? onChanged;

  const PriceFilterRangeWidget({
    super.key,
    required this.minPrice,
    required this.maxPrice,
    this.onChanged,
  });

  @override
  State<PriceFilterRangeWidget> createState() => _PriceFilterRangeWidgetState();
}

class _PriceFilterRangeWidgetState extends State<PriceFilterRangeWidget> {
  late RangeValues _currentValues;

  @override
  void initState() {
    super.initState();
    _currentValues = RangeValues(widget.minPrice, widget.maxPrice);
  }

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      values: _currentValues,
      min: 0,
      max: 5000,
      divisions: 20,
      activeColor: AppColors.primaryColor,
      overlayColor: WidgetStateProperty.resolveWith(
        (states) => AppColors.whiteColor,
      ),
      labels: RangeLabels(
        "\$${_currentValues.start.toInt()}",
        "\$${_currentValues.end.toInt()}",
      ),
      onChanged: (values) {
        setState(() {
          _currentValues = values;
        });
        if (widget.onChanged != null) {
          widget.onChanged!(values);
        }
      },
    );
  }
}
