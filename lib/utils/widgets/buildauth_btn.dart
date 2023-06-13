import 'package:flutter/material.dart';

class BuildAuthButton extends StatelessWidget {
  
  
  final Color btnColor;
  final TextStyle textStyle;final VoidCallback onPressed;
  final String text;
  final String image;

  const BuildAuthButton(
      {super.key,
      
      
      required this.btnColor,
      required this.textStyle,
      required this.text,
      required this.image,  required this.onPressed});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
          height: height * 0.07,
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
