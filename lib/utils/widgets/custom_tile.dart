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
      this.actionIcon,
      this.tileColor,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    Widget trailingWidget;
    if (trailingIcon) {
      if (actionIcon != null) {
        trailingWidget = IconButton(
          icon: Icon(actionIcon!, color: color!, size: 24),
          onPressed: onPressed,
        );
      } else {
        trailingWidget = const Text("English", style: textStyle09);
      }
    } else {
      trailingWidget = const SizedBox();
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (leadingIcon != null)
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 0, 0.0),
            child: Icon(
              leadingIcon,
              size: 24,
              color: color,
            ),
          ),

        if (leadingIcon == null)
          const SizedBox(width: 16), // Add left padding for the title
        Padding(
          padding:
              EdgeInsets.only(left: leadingIcon != null ? 10 : 10, right: 16),
          child: Text(title!, style: textStyle),
        ),
        const Spacer(), // To push the action icon to the right edge of the row
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 16, 0.0),
          child: trailingWidget,
        ),
      ],
    );
    // ListTile(tileColor: tileColor,
    //   title: Text(title!, style: textStyle),
    //   leading: Icon(
    //     leadingIcon,
    //     color: color,
    //     size: 24,
    //   ),
    //    trailing:   trailingWidget,

    // );
  }
}
