import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';

class UserFormFields extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final String placeholder;
  final TextInputType inputType;
  const UserFormFields(
      {super.key,
      required this.title,
      required this.placeholder,
      required this.controller,
      required this.inputType});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(title, style: textStyle06),
              SizedBox(height: 10),

              TextFormField(
                controller: controller,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.greyColor),
                  ),
                  hintText: placeholder,
                  hintStyle: textStyle06
                ),
                keyboardType: inputType,
              ),
              // SizedBox(
              //   height: height * 0.03,
              // ),
            ]));
  }
}
