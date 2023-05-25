
import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';

class StackWidget extends StatelessWidget {

  const StackWidget({
    super.key,
    required this.height, this.image, required this.text, required this.subtext,
  });
final Image? image;
final String text;
final String subtext;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Stack(children: [
        Container(
            height: height * 0.2,
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                color: AppColors.appColor),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(180, 0, 0, 20),
              child: image
            )),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 50, 0, 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(children: [
              Text(text, style: textStyle07),
              SizedBox(
                height: 5,
              ),
              Text(subtext, style: textStyle04)
            ]),
          ),
        )
      ]),
    );
  }
}
