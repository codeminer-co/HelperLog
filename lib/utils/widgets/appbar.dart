import 'package:flutter/material.dart';
import 'package:helperlog/utils/widgets/drawer.dart';
import 'package:helperlog/view/home_screen.dart';

class CustomAppBar extends StatelessWidget {
  final Color textColor;
final IconData? icon;
  final String text;
  final Color? iconColor;
final VoidCallback? onPressed;
  final Color backgroundColor;
   final PopupMenuButton<MenuAction>? popup;
  const CustomAppBar({
    super.key,
    required this.textColor,
    required this.backgroundColor,
    required this.text, required this.icon, required this.iconColor, required this.onPressed, required this.popup,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
       //automaticallyImplyLeading: false, 
      backgroundColor: backgroundColor,
    
  // leading: IconButton(
  //     icon: Icon(Icons.menu),
  //     onPressed: () {
  //       MyDrawer();
  //     },
  //   
 actions: [
        if (popup!= null) popup!,
      ],
      title: Text(text, style: TextStyle(color: textColor, fontSize: 20)),
      centerTitle: true,
      elevation: 0,
    );
  }
}
