import 'package:flutter/material.dart';

class CityDropDown extends StatelessWidget {
  final String? hint;
  final String? dropdownValue;
  final Function(String?) onChanged;
  final List<String> items;
  final bool isExpanded;

  const CityDropDown({
    super.key,
    this.dropdownValue,
    required this.onChanged,
    required this.items,
    this.isExpanded = false,
    this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,
          ),
          borderRadius: BorderRadius.circular(4)),
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: DropdownButton<String>(
        hint: Text(hint ?? ''),
        focusColor: Colors.white,
        isExpanded: isExpanded,
        value: dropdownValue,
        onChanged: onChanged,
        underline: const SizedBox.shrink(),
        items: items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
