import 'package:flutter/material.dart';

class AppColors {
  static const Color blackColor = Color(0xFF000000);
  static const Color whiteColor = Color(0xFFFFFFFF);

  static const Color appColor = Color.fromARGB(255, 17, 63, 100);
  static const Color orangeShadeColor = Colors.orange;
  static const Color yellowColorshade = Color.fromARGB(255, 221, 206, 73);
  static const Color greyColor = Colors.grey;
  static Color greyColorShade = const Color(0xff8592a1).withOpacity(0.1);
static Color blueColor =Colors.blue;
  static Color greyColorShade01 = const Color.fromARGB(255, 249, 248, 248);
  static Color greyColorShade02 = const Color.fromARGB(255, 126, 123, 123);
  static const mySwatch =   MaterialColor(0xFF114f64, <int, Color>{
    50: Color(0xFF114f64),
    100: Color(0xFF114f64),
    200: Color(0xFF114f64),
    300: Color(0xFF114f64),
    400: Color(0xFF114f64),
    500: Color(0xFF114f64),
    600: Color(0xFF114f64),
    700: Color(0xFF114f64),
    800: Color(0xFF114f64),
    900: Color(0xFF114f64),
  });
}

const textStyle01 = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 30,
  color: AppColors.whiteColor,
  fontWeight: FontWeight.bold,
);

const textStyle02 = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 25,
  color: AppColors.blackColor,
);
const textStyle03 = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 15,
  color: AppColors.blackColor,
);
const textStyle04 = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 15,
  color: AppColors.whiteColor,
);
const textStyle05 = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 15,
  color: AppColors.appColor,
  fontWeight: FontWeight.w600,
);
const textStyle06 = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 15,
  color: AppColors.greyColor,
);
const textStyle07 = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 25,
  color: AppColors.whiteColor,
);

const textStyle08 = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 20,
  color: AppColors.blackColor,
);

const textStyle09 = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 20,
  color: AppColors.whiteColor,
);

const textStyle10 = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 20,
  fontWeight: FontWeight.w700,
  color: AppColors.appColor,
);

final textStyle11 = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 20,
  fontWeight: FontWeight.w700,
  color: AppColors.greyColorShade02,
);
final textStyle12 = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 15,
  fontWeight: FontWeight.w700,
  color: AppColors.greyColorShade02,
);
final textStyle13 = const TextStyle(
  fontFamily: 'Roboto',
  fontSize: 20,
  color: AppColors.appColor,
);
final textStyle14 = const TextStyle(
  fontFamily: 'Roboto',
  fontSize: 25,
  fontWeight: FontWeight.w700,
  color: AppColors.appColor,
);