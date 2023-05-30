import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/clip_container.dart';
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
      body: ListView(
        children: [
          ClipPath(
            clipper: ClipContainer(),
            child: Container(
              width: width,
              height: height * 0.25,
              decoration: const BoxDecoration(
                color: AppColors.appColor,
                //   borderRadius: BorderRadius.only(
                //bottomLeft: Radius.circular(30),
                //bottomRight: Radius.circular(40),
                //  )
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      child: Text(
                        'HelperLog',
                        style: textStyle01,
                      ),
                    ),
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: ReusableContainer(
              height: null,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Login',
                    style: textStyle02,
                  ),
                  // Divider(),
                  const SizedBox(
                    width: 15,
                  ),
                  Text('Welcome back!', style: textStyle06),
                  const SizedBox(height: 15),
                  Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // const Text(
                        //   'Email',
                        //   style: textStyle03,
                        // ),

                        MyTextFormField(
                          decColor: AppColors.greyColorShade,
                          icon: Icons.email,
                          controller: emailController,
                          suffixicon: null,
                          myObscureText: false,
                          hinttext: 'Email',
                          onChanged: (value) {},
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        MyTextFormField(
                          decColor: AppColors.greyColorShade,
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
                        const SizedBox(
                          height: 15,
                        ),
                        CustomButton(
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
                          height: 15,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterScreen()));
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
