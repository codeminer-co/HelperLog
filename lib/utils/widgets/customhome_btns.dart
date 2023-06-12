import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';

class CustomHomeButtons extends StatelessWidget {
  final Color color;
  final String? title;
  final String? value;
  const CustomHomeButtons(
      {super.key,
      required this.color,
      required this.title,
      required this.value});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
        height: height * 0.15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Center(
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
             crossAxisAlignment:CrossAxisAlignment.center,
              children: [
                Text(title!, style: textStyle09),
               const SizedBox(height:10 ,), //white font , 20 size
                Text(value!, style: textStyle09),
              ],
            )));
  }
}
