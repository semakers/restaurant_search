import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isFilled;
  final double? width;
  final double? height;

  const ActionButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.isFilled,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor:
              isFilled ? Theme.of(context).primaryColor : Colors.white,
          foregroundColor:
              isFilled ? Colors.white : Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
