import 'package:flutter/material.dart';

class AppColors {
  static const Color blackColor = Color(0xFF000000);
  static const Color whiteColor = Color(0xFFFFFFFF);

  static const Color appColor =  Color(0xFF00796B);
  static const Color yellowColorshade = Color.fromARGB(255, 221, 206, 73);
  static const Color greyColor = Colors.grey;
  static  Color greyColorShade =  const Color(0xff8592a1).withOpacity(0.1);
 static const mySwatch = MaterialColor(
      0xFF00796B,
      <int, Color>{
        50: Color(0xFFE0F2F1),
        100: Color(0xFFB2DFDB),
        200: Color(0xFF80CBC4),
        300: Color(0xFF4DB6AC),
        400: Color(0xFF26A69A),
        500: Color(0xFF009688),
        600: Color(0xFF00897B),
        700: Color(0xFF00796B),
        800: Color(0xFF00695C),
        900: Color(0xFF004D40),
      },
    );
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
);
final textStyle06 = const TextStyle(
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

// BoxDecoration reusableDecoration() {
//   return BoxDecoration(
//     // Define your decoration properties here
//    color: decColor,
//             borderRadius: BorderRadius.circular(10)
//     // Other properties...
//   );
// },
