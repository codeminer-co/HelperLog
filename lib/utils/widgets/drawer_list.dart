import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';

class DrawerList extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPressed;
  const DrawerList({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          title,
          style: textStyle05,
        ),
        leading: Icon(icon, color: AppColors.appColor),
        onTap: onPressed);
  }
}
