import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/appbar.dart';
import 'package:helperlog/utils/widgets/clip_container.dart';
import 'package:helperlog/utils/widgets/custom_button.dart';
import 'package:helperlog/utils/widgets/reusableContainer.dart';
import 'package:helperlog/utils/widgets/textformfield.dart';

class CompanyProfile extends StatefulWidget {
  const CompanyProfile({super.key});

  @override
  State<CompanyProfile> createState() => _CompanyProfileState();
}

class _CompanyProfileState extends State<CompanyProfile> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _logoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: CustomAppBar(
            popup: null,
            icon: null,
            iconColor: null,
            onPressed: () {},
            backgroundColor: AppColors.appColor,
            text: 'Profile',
            textColor: AppColors.whiteColor,
          ),
        ),
        body: ListView(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: ClipContainer(),
                  child: Container(
                    width: width,
                    height: height * 0.2,
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
                    padding: EdgeInsets.fromLTRB(20, 50.0, 20, 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 50, // Adjust the size of the avatar as needed
                          backgroundImage: AssetImage(
                              'assets/images/img_3.jpg'), // Replace with your image path
                        ),
                        SizedBox(height: 15),
                        ReusableContainer(
                          height: height * 0.42,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Enterprise Solutions", style: textStyle02),
                              SizedBox(height: 20),
                              Text(
                                  "123 Main Street\nAnytown, NY 12345\nUnited States",
                                  style: textStyle03),
                              SizedBox(height: 15),
                              Text("+1 (555) 123-4567", style: textStyle03),
                              SizedBox(height: 15),
                              CustomButton(
                                color: AppColors.appColor,
                                text: 'Edit ',
                                onPressed: () {
                                  //  Navigator.pushReplacement(
                                  //       context,
                                  //       MaterialPageRoute(
                                  //           builder: (context) =>BottomNavBar()));
                                },
                                textColor: textStyle04,
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ],
        ));
  }
}
