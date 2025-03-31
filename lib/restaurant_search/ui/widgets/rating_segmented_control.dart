import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RatingSegmentedControl extends StatelessWidget {
  final Function(String) onValueChanged;
  final String value;
  final List<String> options;

  const RatingSegmentedControl({
    super.key,
    required this.value,
    required this.options,
    required this.onValueChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoSegmentedControl<String>(
        pressedColor: Colors.white,
        selectedColor: Theme.of(context).primaryColor,
        borderColor: Theme.of(context).primaryColor,
        groupValue: value,
        onValueChanged: onValueChanged,
        children: Map<String, Widget>.fromEntries(
          options.map((option) {
            return MapEntry<String, Widget>(
              option,
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
                child: Text(
                  option,
                ),
              ),
            );
          }),
        ));
  }
}
