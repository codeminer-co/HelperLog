import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/appbar.dart';
import 'package:helperlog/utils/widgets/clip_container.dart';
import 'package:helperlog/utils/widgets/custom_button.dart';
import 'package:helperlog/utils/widgets/reusableContainer.dart';
import 'package:helperlog/utils/widgets/textformfield.dart';

class CreateCompany extends StatefulWidget {
  const CreateCompany({super.key});

  @override
  State<CreateCompany> createState() => _CreateCompanyState();
}

class _CreateCompanyState extends State<CreateCompany> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _logoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40.0),
          child: CustomAppBar(
            popup: null,
            icon: null,
            iconColor: null,
            onPressed: () {},
            backgroundColor: AppColors.appColor,
            text: 'Create company',
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
                  padding: const EdgeInsets.fromLTRB(20, 50.0, 20, 20),
                  child: ReusableContainer(
                    height: null,
                    child: Column(
                      children: [
                        MyTextFormField(
                          controller: _nameController,
                          hinttext: 'Company name',
                          icon: Icons.title,
                          suffixicon: null,
                          onChanged: (value) {},
                          myObscureText: false,
                          decColor: AppColors.greyColorShade,
                        ),
                        const SizedBox(height: 10),
                        MyTextFormField(
                          controller: _addressController,
                          hinttext: 'Address',
                          icon: Icons.add_location,
                          suffixicon: null,
                          onChanged: (value) {},
                          myObscureText: false,
                          decColor: AppColors.greyColorShade,
                        ),
                        const SizedBox(height: 10),
                        MyTextFormField(
                          controller: _phoneController,
                          hinttext: 'Phone',
                          icon: Icons.phone,
                          suffixicon: null,
                          onChanged: (value) {},
                          myObscureText: false,
                          decColor: AppColors.greyColorShade,
                        ),
                        const SizedBox(height: 10),
                        MyTextFormField(
                          controller: _logoController,
                          hinttext: 'Logo',
                          icon: Icons.image,
                          suffixicon: null,
                          onChanged: (value) {},
                          myObscureText: false,
                          decColor: AppColors.greyColorShade,
                        ),
                        const SizedBox(height: 20),
                        CustomButton(
                          color: AppColors.appColor,
                          text: 'Submit',
                          onPressed: () {},
                          textColor: textStyle04,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
