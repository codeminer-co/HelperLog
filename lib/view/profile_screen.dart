import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/utils/widgets/appbar.dart';
import 'package:helperlog/utils/widgets/custom_tile.dart';
import 'package:helperlog/utils/widgets/reusableContainer.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
      
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            decoration: const BoxDecoration(
              color: AppColors.appColor,
              borderRadius: BorderRadius.only(
                bottomLeft:
                    Radius.circular(40), // Divide by 5 for a circular radius
                bottomRight: Radius.circular(40),
              ),
            ),
            height: height * 0.3,
            width: width,
            child: Center(
              child: Stack(
                children: [
                  CustomAppBar(
                    appBarHeight: 80,
                    actionIcons: Icons.person,
                    leadingIcon: Icons.menu,
                    onPressedLeadIcon: () {},
                    onPressedActionIcon: () {},
                    title: "",
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/img_3.jpg'),
                            radius:30,
                          ),
                          SizedBox(height: 5),
                          Text("John Murphy", style: textStyle09),
                          SizedBox(height: 5),
                          Text("johnmorphy@gmail.com", style: textStyle04),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Content:", style: textStyle10)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: ReusableContainer(
              height: height * 0.13,
              color: AppColors.appColor,
              child: Center(
                child: CustomTile(
                  tileColor: null,
                  trailingIcon: false,
                  color: AppColors.whiteColor,
                  leadingIcon: Icons.fire_truck,
                  textStyle: textStyle09,
                  title: "My Manifest",
                  onPressed: () {},
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Preference:", style: textStyle10)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: ReusableContainer(
                color: AppColors.appColor,
                height: height * 0.2,
                child: Center(
                  child: Column(
                    children: [
                      CustomTile(
                        tileColor: null,
                        trailingIcon: true,
                        actionIcon: null,
                        color: AppColors.whiteColor,
                        leadingIcon: Icons.language,
                        textStyle: textStyle09,
                        title: "Language",
                        onPressed: () {},
                      ),
                      CustomTile(
                        tileColor: null,
                        trailingIcon: true,
                        actionIcon: Icons.toggle_on,
                        color: AppColors.whiteColor,
                        leadingIcon: Icons.dark_mode,
                        textStyle: textStyle09,
                        title: "Dark Mode",
                        onPressed: () {},
                      ),
                    ],
                  ),
                )),
          ),
        ])));
  }
}
