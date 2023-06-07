import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/images.dart';
import 'package:helperlog/utils/widgets/custom_button.dart';
import 'package:helperlog/view/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: AppColors.appColor,
        body: SafeArea(
          child: Center(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: SizedBox(
                    width: width * 0.7,
                    height: height * 0.1,
                    child: const Image(
                      image: AssetImage(appLogo),
                    ),
                  ),
                ),
                CustomButton(
                  color: AppColors.whiteColor,
                  height: height * 0.1,
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  text: "Next",
                  textColor: textStyle05,
                )
              ],
            ),
          )),
        ));
  }
}
