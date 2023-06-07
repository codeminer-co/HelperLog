import 'package:flutter/material.dart';

class BuildAuthButton extends StatelessWidget {
  final double height;
  final double width;
  final Color btnColor;
  final TextStyle textStyle;final VoidCallback onPressed;
  final String text;
  final String image;

  const BuildAuthButton(
      {super.key,
      required this.height,
      required this.width,
      required this.btnColor,
      required this.textStyle,
      required this.text,
      required this.image,  required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color(0xffDDDDDD),
                blurRadius: 6.0,
                spreadRadius: 2.0,
                offset: Offset(0.0, 0.0),
              )
            ],
            color: btnColor,
            borderRadius: const BorderRadius.all(Radius.circular(50))),
        height: height * 0.09,
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(
                image,
              ),
              width: width * 0.06,
              height: height * 0.06,
            ),
            SizedBox(
              width: width * 0.05,
            ),
            Text(
              text,
              style: textStyle,
            ),
          ],
        ));
  }
}
