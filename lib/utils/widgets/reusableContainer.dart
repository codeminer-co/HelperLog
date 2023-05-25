
import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';

class ReusableContainer extends StatelessWidget {
  final double? height;
  final Widget child;
  const ReusableContainer({super.key, required this.child, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
width: double.infinity,
           decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(0, 2),
                  ),
                ],
                color:AppColors.whiteColor,
                         ),

    child:Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                             child: child,)
  );
  }
}
