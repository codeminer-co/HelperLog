import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/view/bottom_navigation.dart';
import 'package:helperlog/view/home_screen.dart';
import 'package:helperlog/view/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HelperLog',
      theme: ThemeData(primarySwatch: AppColors.mySwatch),
      home:  BottomNavBar(),
    );
  }
}
