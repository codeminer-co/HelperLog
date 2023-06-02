
import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';


class CustomTile extends StatelessWidget {
  final Color? color;
    final Color? tileColor;
  final IconData? actionIcon;
  final bool trailingIcon;
  final TextStyle? textStyle;
  final VoidCallback onPressed;
  final String? title;
  final IconData? leadingIcon;
  const CustomTile(
      {super.key,
      this.color,
      this.title,
      this.leadingIcon,
      this.textStyle,
      required this.trailingIcon,
      this.actionIcon, this.tileColor, required this.onPressed});

  @override
  Widget build(BuildContext context) {

      double height = MediaQuery.of(context).size.height;
       Widget trailingWidget;
if (trailingIcon) {
      if (actionIcon != null) {
        trailingWidget = IconButton(
          icon: Icon(actionIcon!, color: color!, size: 32),
          onPressed: onPressed,
        );
      } else {
        trailingWidget = Text("English", style: textStyle09);
      }
    } else {
      trailingWidget = SizedBox();
    }
    return ListTile(tileColor: tileColor,
      title: Text(title!, style: textStyle),
      leading: Icon(
        leadingIcon,
        color: color,
        size: 24,
      ),
       trailing:   trailingWidget,
                 
    );
  }
}
