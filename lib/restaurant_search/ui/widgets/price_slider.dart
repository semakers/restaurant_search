import 'package:flutter/material.dart';

class PriceRangeSlider extends StatelessWidget {
  final Function(RangeValues?) onChanged;
  final double min;
  final double max;
  final double? currentMin;
  final double? currentMax;

  const PriceRangeSlider({
    super.key,
    required this.onChanged,
    required this.min,
    required this.max,
    this.currentMin,
    this.currentMax,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('${currentMin?.toInt() ?? min.toInt()}\$'),
        Expanded(
          child: RangeSlider(
            activeColor: Theme.of(context).primaryColor,
            inactiveColor:
                Theme.of(context).primaryColor.withValues(alpha: 0.3),
            min: min,
            max: max,
            values: RangeValues(currentMin ?? min, currentMax ?? max),
            onChanged: onChanged,
          ),
        ),
        Text('${currentMax?.toInt() ?? max.toInt()}\$'),
      ],
    );
  }
}
