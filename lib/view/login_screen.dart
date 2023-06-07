import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/images.dart';
import 'package:helperlog/utils/widgets/buildauth_btn.dart';
import 'package:helperlog/utils/widgets/custom_button.dart';
import 'package:helperlog/utils/widgets/reusableContainer.dart';
import 'package:helperlog/utils/widgets/textformfield.dart';
import 'package:helperlog/view/bottom_navigation.dart';
import 'package:helperlog/view/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool _obscureText = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Center(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Login',
                  style: textStyle08,
                ),
                SizedBox(height: 10),
                const Text(
                  'Hi, Welcome back!',
                  style: textStyle03,
                ),
                SizedBox(height: 10),
                ReusableContainer(
                  color: AppColors.whiteColor,
                  height: height * 0.1,
                  child: Center(
                    child: MyTextFormField(
                      
                      icon: Icons.email,
                      controller: emailController,
                      suffixicon: null,
                      myObscureText: false,
                      hinttext: 'Email',
                      onChanged: (value) {},
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ReusableContainer(
                  height: height * 0.1,
                  color: AppColors.whiteColor,
                  child: Center(
                    child: MyTextFormField(
                    
                      myObscureText: !_obscureText,
                      controller: passController,
                      suffixicon: IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                      icon: Icons.lock,
                      hinttext: 'Password',
                      onChanged: (value) {},
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(Icons.check_box_outline_blank,
                        color: AppColors.greyColor),
                    Text("Keep me logged in", style: textStyle06),
                    Spacer(),
                    Text("Forgot password?", style: textStyle06)
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  height: height * 0.1,
                  color: AppColors.appColor,
                  text: 'Login',
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavBar()));
                  },
                  textColor: textStyle04,
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterScreen()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "You don't have an account?",
                        style: textStyle06,
                      ),
                      const Text(
                        "Sign up",
                        style: textStyle05,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                BuildAuthButton(
                    onPressed: () {},
                    height: height,
                    width: width,
                    btnColor: AppColors.whiteColor,
                    textStyle: textStyle03,
                    text: "continue with Google",
                    image: googleLogo),
                SizedBox(
                  height: height * 0.02,
                ),
                BuildAuthButton(
                    onPressed: () {},
                    height: height,
                    width: width,
                    btnColor: AppColors.blueColor,
                    textStyle: textStyle04,
                    text: "continue with Facebook",
                    image: fbLogo),
                SizedBox(
                  height: height * 0.02,
                ),
                BuildAuthButton(
                    onPressed: () {},
                    height: height,
                    width: width,
                    btnColor: AppColors.blackColor,
                    textStyle: textStyle04,
                    text: "continue with Apple",
                    image: appleLogo),
                SizedBox(height: height * 0.02),
              ],
            )),
          ),
        ));
  }
}
