import 'package:flutter/material.dart';
import 'package:helperlog/services/auth_repo.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/snackbar.dart';
import 'package:helperlog/utils/widgets/appbar.dart';
import 'package:helperlog/utils/widgets/custom_button.dart';
import 'package:helperlog/utils/widgets/reusableContainer.dart';
import 'package:helperlog/utils/widgets/textformfield.dart';
import 'package:helperlog/view/add_invoice.dart';
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
  String? _gender;
  bool _isPasswordMatch = true;
  List items = ['Male', 'Female', 'Other'];

  final _formKey = GlobalKey<FormState>();
  bool _obscureText = false;
  final AuthRepository _repo = AuthRepository();
  void _onRegisterPressed() {
    if (!_isPasswordMatch) {
      // HomeScreen() '/' : DashboardScreen() '/dashboard' -> CarViewScreen() '/dashboard/carViewScreen' -> CarPurchaseScreen() '/dashboard/carViewScreen/carPurchaseScreen';
      // Navigator.of(context).pushReplacement(MaterialPageRoute(
      //   builder: (context) =>
      //       AddInvoice(), // HomeScreen() -> DashboardScreen() -> CarViewScreen() -> AddInvoice()
      // ));
      // Passwords don't match, show error message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Passwords do not match', style: textStyle04),
          backgroundColor: AppColors.whiteColor,
        ),
      );
    } else {
      if (usernameController.text.isEmpty) {
        SnackbarHelper.showSnackbar(context, "Please fill the username field");
      }
      if (emailController.text.isEmpty) {
        SnackbarHelper.showSnackbar(context, "Please fill the email field");
      } else if (passController.text.isEmpty) {
        SnackbarHelper.showSnackbar(context, "Please fill the password field");
      } else if (passController.text.length < 6) {
        SnackbarHelper.showSnackbar(context, "Password must be greater than 6");
      } else if (_gender == null) {
        SnackbarHelper.showSnackbar(context, "Please select your gender");
      } else {
        Map data = {
          'email': emailController.text.toString(),
          'password': passController.text.toString(),
          'username': usernameController.text.toString(),
          'gender': _gender
        };
        try {
          _repo.register(data);
        } catch (e) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content:
                  Text(e.toString()))); // Error communicating with the server.
        }
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
        );
      }
    }
  }

  @override
  void dispose() {
    // Dispose the text editing controllers
    emailController.dispose();
    passController.dispose();
    confirmPassController.dispose();
    usernameController.dispose();
    super.dispose();
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
                      height: height * 0.08,
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
                      height: height * 0.08,
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
                      height: height * 0.08,
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
                      height: height * 0.08,
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
                      height: height * 0.08,
                      color: AppColors.whiteColor,
                      child: Center(
                        child: DropdownButtonFormField<String>(
                          value: _gender,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(16, 12, 10, 12),
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
                        children: const [
                          Text(
                            "Already have an account?",
                            style: textStyle06,
                          ),
                          Text(
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
