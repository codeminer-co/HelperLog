import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';

class MyTextFormField extends StatelessWidget {
  final TextEditingController? controller;
final String hinttext;
  final IconData? icon;
   final Function(String) onChanged;
  final bool myObscureText;
  final Color? decColor;
  final IconButton? suffixicon;
  const MyTextFormField(
      {super.key,
      required this.controller,
      required this.icon,
      required this.suffixicon,
      
      required this.myObscureText, required this.hinttext, required this.onChanged, required this.decColor, });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: decColor,
            borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
          obscureText: myObscureText,
          controller: controller,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: TextStyle(color:AppColors.greyColor),
            suffixIcon: suffixicon,
            enabledBorder: InputBorder.none,  contentPadding: EdgeInsets.symmetric(vertical: 20),
            focusedBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            prefixIcon: Icon(icon,color:AppColors.greyColor),
          ),textAlignVertical: TextAlignVertical.center,
          style: textStyle03,
        ));
  }
}
