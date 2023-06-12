import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/appbar.dart';
import 'package:helperlog/utils/widgets/custom_button.dart';
import 'package:helperlog/utils/widgets/reusableContainer.dart';
import 'package:helperlog/utils/widgets/textformfield.dart';
import 'package:helperlog/utils/widgets/user_form_fields.dart';
import 'package:helperlog/view/bottom_navigation.dart';
import 'package:helperlog/view/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  bool _isPasswordMatch = true;
  List items = ['Male', 'Female', 'Other'];
  String? _gender;
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = false;
  void _onRegisterPressed() {
    if (_isPasswordMatch) {
      // Passwords match, perform registration logic
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const BottomNavBar()));
    } else {
      // Passwords don't match, show error message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Passwords do not match'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: CustomAppBar(
        appBarHeight: 120,
        actionIcons: null,
        leadingIcon: null,
        onPressedLeadIcon: () {},
        onPressedActionIcon: () {},
        title: "Register",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 15),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //  const Text(
                    //   'Username',
                    //   style: textStyle03,
                    // ),

                    ReusableContainer(
                      height: height * 0.09,
                      color: AppColors.whiteColor,
                      child: Center(
                        child: MyTextFormField(
                          icon: Icons.person,
                          controller: usernameController,
                          suffixicon: null,
                          myObscureText: false,
                          hinttext: 'Username',
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    ReusableContainer(
                    height: height * 0.09,
                      color: AppColors.whiteColor,
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
                      height: 15,
                    ),

                    ReusableContainer(
                      height: height * 0.09,
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
                      height: 15,
                    ),

                    ReusableContainer(
                        height: height * 0.09,
                      color: AppColors.whiteColor,
                      child: Center(
                        child: MyTextFormField(
                          myObscureText: !_obscureText,
                          controller: confirmPassController,
                          onChanged: (value) {
                            setState(() {
                              _isPasswordMatch = value == passController.text;
                            });
                          },
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
                          hinttext: 'Confirm password',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ReusableContainer(
                       height: height * 0.09,
                      color: AppColors.whiteColor,
                      child: Center(
                        child: DropdownButtonFormField<String>(
                          value: _gender,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.fromLTRB(16, 12, 10, 12),
                            hintText: 'Gender',
                            hintStyle: textStyle06,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                          ),
                          items: items
                              .map((gender) => DropdownMenuItem<String>(
                                    value: gender,
                                    child: Text(gender, style: textStyle05),
                                  ))
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              _gender = value;
                            });
                          },
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 15,
                    ),
                    CustomButton(
                      color: AppColors.appColor,
                      text: 'Sign up',
                      onPressed: _onRegisterPressed,
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
                                builder: (context) => const LoginScreen()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: textStyle06,
                          ),
                          const Text(
                            "Login",
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
    );
  }
}
