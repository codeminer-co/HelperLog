import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  final double? height;
  final Widget child;
  final Color? color;
  const ReusableContainer(
      {super.key, required this.child, required this.height, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1.2,
              blurRadius: 3,
              offset: const Offset(0, 2),
            ),
          ],
          color: color,
        ),
        child: child);
  }
}
