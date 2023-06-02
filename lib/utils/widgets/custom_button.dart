import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double height;
  final VoidCallback onPressed;
  final Color color;
  final TextStyle textColor;
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
    required this.textColor,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      elevation: 6,
      borderRadius: BorderRadius.circular(8),
      child: MaterialButton(
          height: height,
          minWidth: double.infinity,
          onPressed: onPressed,
          child: Text(
            text,
            style: textColor,
          )),
    );
  }
}
