import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/appbar.dart';
import 'package:helperlog/utils/widgets/clip_container.dart';
import 'package:helperlog/utils/widgets/custom_button.dart';
import 'package:helperlog/utils/widgets/reusableContainer.dart';
import 'package:helperlog/utils/widgets/textformfield.dart';
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
   String? _gender;
   final _formKey = GlobalKey<FormState>();
  bool _obscureText = false;
  void _onRegisterPressed() {
    if (_isPasswordMatch) {
      // Passwords match, perform registration logic
       Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>BottomNavBar()));
    } else {
      // Passwords don't match, show error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Passwords do not match'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
    @override
  void dispose() {
    passController.dispose();
    confirmPassController.dispose();
    super.dispose();
  }
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
              height: height * 0.07,
              decoration: const BoxDecoration(
                color: AppColors.appColor,
                //   borderRadius: BorderRadius.only(
                //bottomLeft: Radius.circular(30),
                //bottomRight: Radius.circular(40),
                //  )
              ),
           
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: ReusableContainer( height:null,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children:  [
                      Text(
                        'Register',
                        style: textStyle02,
                      ),
                      // Divider(),
                      SizedBox(
                        width: 15,
                      ),
                      Text('create your new account', style: textStyle06),
                    ],
                  ),
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
                       
                        MyTextFormField(
                            decColor: AppColors.greyColorShade,
                          icon: Icons.person,
                          controller: usernameController,
                          suffixicon: null,
                          myObscureText: false, hinttext: 'Username', onChanged: (value) {  },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                       
                        MyTextFormField(
                           decColor: AppColors.greyColorShade,
                          icon: Icons.email,
                          controller: emailController,
                          suffixicon: null,
                          myObscureText: false, hinttext: 'Email', onChanged: (value) {  },
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
                          icon: Icons.lock, hinttext: 'Password', onChanged: (value) {  },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                       
                        MyTextFormField(
                           decColor: AppColors.greyColorShade,
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
                          icon: Icons.lock, hinttext: 'Confirm password',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(decoration: BoxDecoration(
                        color: AppColors.greyColorShade,
                        borderRadius: BorderRadius.circular(10)),
                          child: DropdownButtonFormField<String>(
                                    value: _gender,
                                   
                                     decoration:const InputDecoration(
                            hintText: 'Gender',
                            hintStyle: TextStyle(color:AppColors.appColor),
                             contentPadding: EdgeInsets.fromLTRB(16, 12, 10, 12), 
                            enabledBorder: InputBorder.none,  
                                    focusedBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                          ),
                                    items: ['Male', 'Female', 'Other']
                                        .map((gender) => DropdownMenuItem<String>(
                                              value: gender,
                                              child: Text(gender, style: TextStyle(color:AppColors.appColor),),
                                            ))
                                        .toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        _gender = value;
                                      });
                                    },
                                  ),
                        ),
                       
                        const SizedBox(
                          height: 15,
                        ),
                     CustomButton(
                       color:AppColors.appColor,
                          text: 'Sign up',
                          onPressed: _onRegisterPressed, textColor: textStyle04,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>const LoginScreen()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:
                                CrossAxisAlignment.center,
                            children:[
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
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
    }
    
     
////

}